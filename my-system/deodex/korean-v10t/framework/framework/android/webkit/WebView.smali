.class public Landroid/webkit/WebView;
.super Landroid/widget/AbsoluteLayout;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$InvokeListBox;,
        Landroid/webkit/WebView$PrivateHandler;,
        Landroid/webkit/WebView$UpdateTextEntryAdapter;,
        Landroid/webkit/WebView$FocusNode;,
        Landroid/webkit/WebView$HitTestResult;,
        Landroid/webkit/WebView$PictureListener;,
        Landroid/webkit/WebView$WebViewTransport;,
        Landroid/webkit/WebView$ExtendedZoomControls;
    }
.end annotation


# static fields
.field private static final AUTO_REDRAW_HACK:Z = false

.field static final DEBUG:Z = false

.field private static DEFAULT_MAX_ZOOM_SCALE:F = 0.0f

.field private static DEFAULT_MIN_ZOOM_SCALE:F = 0.0f

.field static DEFAULT_SCALE_PERCENT:I = 0x0

.field static final DID_FIRST_LAYOUT_MSG_ID:I = 0x12

.field private static final EVENT_LOG_DOUBLE_TAP_DURATION:I = 0x111d6

.field private static final EVENT_LOG_ZOOM_LEVEL_CHANGE:I = 0x111d5

.field private static final FIND_HEIGHT:I = 0x4f

.field private static final FIRST_SCROLL_ZOOM:I = 0x9

.field static final HandlerDebugString:[Ljava/lang/String; = null

.field static final INVAL_RECT_MSG_ID:I = 0x1a

.field private static final LAST_SCROLL_ZOOM:I = 0xb

.field static final LOGTAG:Ljava/lang/String; = "webview"

.field static final LOGV_ENABLED:Z = false

.field static final LONG_PRESS_ENTER:I = 0x17

.field private static final LONG_PRESS_TIMEOUT:I = 0x3e8

.field static final MARK_NODE_INVALID_ID:I = 0x15

.field private static final MAX_DURATION:I = 0x2ee

.field private static final MAX_SLOPE_FOR_DIAG:F = 1.5f

.field private static final MIN_BREAK_SNAP_CROSS_DISTANCE:I = 0x50

.field private static final MIN_FLING_TIME:I = 0xfa

.field private static final NEVER_REMEMBER_PASSWORD:I = 0x2

.field static final NEW_PICTURE_MSG_ID:I = 0xe

.field static final NOTIFY_FOCUS_SET_MSG_ID:I = 0x14

.field private static final PAGE_SCROLL_OVERLAP:I = 0x18

.field static final PREVENT_TOUCH_ID:I = 0x18

.field static final RECOMPUTE_FOCUS_MSG_ID:I = 0x13

.field private static final REMEMBER_PASSWORD:I = 0x1

.field private static final RESUME_WEBCORE_UPDATE:I = 0x8

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field static final SCROLL_BY_MSG_ID:I = 0xb

.field static final SCROLL_TO_MSG_ID:I = 0xa

.field private static final SCROLL_ZOOM_ANIMATION_IN:I = 0x9

.field private static final SCROLL_ZOOM_ANIMATION_OUT:I = 0xa

.field private static final SCROLL_ZOOM_DURATION:I = 0x1f4

.field private static final SCROLL_ZOOM_FINGER_BUFFER:I = 0x20

.field private static final SCROLL_ZOOM_GRID:I = 0x6

.field private static final SCROLL_ZOOM_OUT:I = 0xb

.field private static final SELECT_CURSOR_OFFSET:I = 0x10

.field private static final SNAP_NONE:I = 0x1

.field private static final SNAP_X:I = 0x2

.field private static final SNAP_X_LOCK:I = 0x4

.field private static final SNAP_Y:I = 0x3

.field private static final SNAP_Y_LOCK:I = 0x5

.field static final SPAWN_SCROLL_TO_MSG_ID:I = 0xc

.field private static final STD_SPEED:I = 0x1e0

.field private static final SWITCH_TO_ENTER:I = 0x7

.field private static final SWITCH_TO_LONGPRESS:I = 0x4

.field private static final SWITCH_TO_SHORTPRESS:I = 0x3

.field static final SYNC_SCROLL_TO_MSG_ID:I = 0xd

.field private static final TAP_TIMEOUT:I = 0xc8

.field private static final TOUCH_DONE_MODE:I = 0x7

.field private static final TOUCH_DOUBLECLICK_MODE:I = 0x6

.field private static final TOUCH_DRAG_MODE:I = 0x3

.field private static final TOUCH_DRAG_START_MODE:I = 0x2

.field private static final TOUCH_INIT_MODE:I = 0x1

.field private static final TOUCH_SELECT_MODE:I = 0x8

.field private static final TOUCH_SENT_INTERVAL:I = 0x64

.field private static final TOUCH_SHORTPRESS_MODE:I = 0x5

.field private static final TOUCH_SHORTPRESS_START_MODE:I = 0x4

.field private static final TRACKBALL_KEY_TIMEOUT:I = 0x3e8

.field private static final TRACKBALL_MOVE_COUNT:I = 0xa

.field private static final TRACKBALL_MULTIPLIER:I = 0x3

.field private static final TRACKBALL_SCALE:I = 0x190

.field private static final TRACKBALL_SCROLL_COUNT:I = 0x5

.field private static final TRACKBALL_TIMEOUT:I = 0xc8

.field private static final TRACKBALL_WAIT:I = 0x64

.field static final UPDATE_CLIPBOARD:I = 0x16

.field static final UPDATE_TEXTFIELD_TEXT_MSG_ID:I = 0x11

.field private static final UPDATE_TEXT_ENTRY_ADAPTER:I = 0x6

.field static final UPDATE_TEXT_ENTRY_MSG_ID:I = 0xf

.field static final WEBCORE_INITIALIZED_MSG_ID:I = 0x10

.field static final WEBCORE_NEED_TOUCH_EVENTS:I = 0x19

.field private static final ZOOM_ANIMATION_LENGTH:I = 0x1f4

#the value of this static final field might be set in the static constructor
.field private static final ZOOM_CONTROLS_TIMEOUT:J = 0x0L

.field static final ZOOM_OUT_WIDTH:I = 0x3f0

.field static mLogEvent:Z

.field private static sPluginList:Landroid/webkit/PluginList;


# instance fields
.field private mActualScale:F

.field private mAutoRedraw:Z

.field private mBackgroundColor:I

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCertificate:Landroid/net/http/SslCertificate;

.field private mContentHeight:I

.field private mContentWidth:I

.field private final mDatabase:Landroid/webkit/WebViewDatabase;

.field private mDefaultScale:F

.field private mDrawFocusRing:Z

.field private mDrawHistory:Z

.field private mExtendSelection:Z

.field private mFindIsUp:Z

.field private mFocusData:Landroid/webkit/WebViewCore$FocusData;

.field private mFocusNode:Landroid/webkit/WebView$FocusNode;

.field private mForwardTouchEvents:Z

.field private mGotEnterDown:Z

.field private mGotKeyDown:Z

.field mHeightCanMeasure:Z

.field private mHistoryHeight:I

.field private mHistoryPicture:Landroid/graphics/Picture;

.field private mHistoryWidth:I

.field private mInitialScale:I

.field private mInvActualScale:F

.field private mInvFinalZoomScale:F

.field private mInvInitialZoomScale:F

.field private mLastFocusBounds:Landroid/graphics/Rect;

.field private mLastFocusTime:J

.field private mLastGlobalRect:Landroid/graphics/Rect;

.field mLastHeightSent:I

.field private mLastScrollX:I

.field private mLastScrollY:I

.field private mLastSentTouchTime:J

.field private mLastTouchTime:J

.field private mLastTouchUpTime:J

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLastVisibleRectSent:Landroid/graphics/Rect;

.field mLastWidthSent:I

.field private mLastZoomScrollRawX:F

.field private mLastZoomScrollRawY:F

.field private mMapTrackballToArrowKeys:Z

.field private mMaxZoomScale:F

.field private mMaximumFling:I

.field private mMinLockSnapReverseDistance:I

.field private mMinZoomScale:F

.field private mMinZoomScaleFixed:Z

.field private mNativeClass:I

.field private mNavSlop:I

.field private mNeedsUpdateTextEntry:Z

.field private mOverlayHorizontalScrollbar:Z

.field private mOverlayVerticalScrollbar:Z

.field private mPictureListener:Landroid/webkit/WebView$PictureListener;

.field private mPreventDrag:Z

.field private mPreviewZoomOnly:Z

.field final mPrivateHandler:Landroid/os/Handler;

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectX:I

.field private mSelectY:I

.field private mShiftIsPressed:Z

.field private mSnapPositive:Z

.field private mSnapScrollMode:I

.field private mTextEntry:Landroid/webkit/TextDialog;

.field private mTextGeneration:I

.field private mTouchMode:I

.field private mTouchSelection:Z

.field private mTouchSlopSquare:I

.field private mTrackballDown:Z

.field private mTrackballFirstTime:J

.field private mTrackballLastTime:J

.field private mTrackballRemainsX:F

.field private mTrackballRemainsY:F

.field private mTrackballUpTime:J

.field private mTrackballXMove:I

.field private mTrackballYMove:I

.field private mUserScroll:Z

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field mWidthCanMeasure:Z

.field private mWrapContent:Z

.field private mZoomButtonsController:Landroid/widget/ZoomButtonsController;

.field private mZoomCenterX:F

.field private mZoomCenterY:F

.field private mZoomControlRunnable:Ljava/lang/Runnable;

.field private mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

.field private mZoomListener:Landroid/widget/ZoomButtonsController$OnZoomListener;

.field private mZoomOverviewButton:Landroid/widget/ImageView;

.field private mZoomScale:F

.field private mZoomScrollInvLimit:F

.field private mZoomScrollLimit:F

.field private mZoomScrollStart:J

.field private mZoomScrollX:I

.field private mZoomScrollY:I

.field private mZoomStart:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 295
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v0

    sput-wide v0, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    .line 367
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "REMEMBER_PASSWORD"

    aput-object v2, v0, v1

    const-string v1, "NEVER_REMEMBER_PASSWORD"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "SWITCH_TO_SHORTPRESS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SWITCH_TO_LONGPRESS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "UPDATE_TEXT_ENTRY_ADAPTER"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SWITCH_TO_ENTER"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "RESUME_WEBCORE_UPDATE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SCROLL_TO_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SCROLL_BY_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SPAWN_SCROLL_TO_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SYNC_SCROLL_TO_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "NEW_PICTURE_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "UPDATE_TEXT_ENTRY_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "WEBCORE_INITIALIZED_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "UPDATE_TEXTFIELD_TEXT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "DID_FIRST_LAYOUT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "RECOMPUTE_FOCUS_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "NOTIFY_FOCUS_SET_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "MARK_NODE_INVALID_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "UPDATE_CLIPBOARD"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "LONG_PRESS_ENTER"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "PREVENT_TOUCH_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "WEBCORE_NEED_TOUCH_EVENTS"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "INVAL_RECT_MSG_ID"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebView;->HandlerDebugString:[Ljava/lang/String;

    .line 440
    sput-boolean v3, Landroid/webkit/WebView;->mLogEvent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 580
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 581
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 589
    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 590
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x0

    const/high16 v5, -0x3b86

    const/4 v1, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 599
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 205
    new-instance v0, Landroid/webkit/WebView$PrivateHandler;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$PrivateHandler;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    .line 245
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 263
    iput-boolean v2, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    .line 272
    iput-boolean v2, p0, Landroid/webkit/WebView;->mNeedsUpdateTextEntry:Z

    .line 275
    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawFocusRing:Z

    .line 318
    iput-boolean v1, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 319
    iput-boolean v2, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    .line 405
    iput-boolean v2, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    .line 408
    iput v2, p0, Landroid/webkit/WebView;->mInitialScale:I

    .line 415
    iput-boolean v2, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    .line 427
    iput-boolean v2, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 429
    iput v1, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 445
    iput-wide v3, p0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    .line 460
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    .line 554
    new-instance v0, Landroid/webkit/WebView$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$1;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomListener:Landroid/widget/ZoomButtonsController$OnZoomListener;

    .line 2776
    iput v5, p0, Landroid/webkit/WebView;->mLastZoomScrollRawX:F

    .line 2777
    iput v5, p0, Landroid/webkit/WebView;->mLastZoomScrollRawY:F

    .line 2792
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 2793
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 2794
    iput v2, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 2795
    iput v2, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 2874
    new-instance v0, Landroid/webkit/WebView$FocusNode;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$FocusNode;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mFocusNode:Landroid/webkit/WebView$FocusNode;

    .line 3063
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotEnterDown:Z

    .line 3852
    iput-wide v3, p0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    .line 3853
    iput-wide v3, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 3854
    iput v6, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 3855
    iput v6, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    .line 3856
    iput v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 3857
    iput v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    .line 3858
    iput-boolean v2, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 3859
    iput-boolean v2, p0, Landroid/webkit/WebView;->mTouchSelection:Z

    .line 3868
    iput v2, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 3869
    iput v2, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 3870
    iput-boolean v2, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 3871
    iput-boolean v2, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 3872
    iput-wide v3, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    .line 3873
    iput-wide v3, p0, Landroid/webkit/WebView;->mLastFocusTime:J

    .line 3879
    iput-boolean v1, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    .line 600
    invoke-direct {p0}, Landroid/webkit/WebView;->init()V

    .line 602
    new-instance v0, Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p1, p0}, Landroid/webkit/CallbackProxy;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 603
    new-instance v0, Landroid/webkit/WebViewCore;

    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p1, p0, v1}, Landroid/webkit/WebViewCore;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 604
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    .line 605
    new-instance v0, Landroid/webkit/WebViewCore$FocusData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$FocusData;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    .line 606
    iget-object v0, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    iput v2, v0, Landroid/webkit/WebViewCore$FocusData;->mFrame:I

    .line 607
    iget-object v0, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    iput v2, v0, Landroid/webkit/WebViewCore$FocusData;->mNode:I

    .line 608
    iget-object v0, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    iput v2, v0, Landroid/webkit/WebViewCore$FocusData;->mX:I

    .line 609
    iget-object v0, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    iput v2, v0, Landroid/webkit/WebViewCore$FocusData;->mY:I

    .line 610
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    .line 612
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->initZoomController(Landroid/content/Context;)V

    .line 613
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/webkit/WebView;->updateZoomButtonsEnabled()V

    return-void
.end method

.method static synthetic access$100(Landroid/webkit/WebView;)Landroid/widget/ZoomButtonsController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/webkit/WebView;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100()J
    .registers 2

    .prologue
    .line 101
    sget-wide v0, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$1200(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$1202(Landroid/webkit/WebView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Landroid/webkit/WebView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$1300(Landroid/webkit/WebView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/webkit/WebView;->updateSelection()V

    return-void
.end method

.method static synthetic access$1400(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/webkit/WebView;->mPreventDrag:Z

    return v0
.end method

.method static synthetic access$1402(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Landroid/webkit/WebView;->mPreventDrag:Z

    return p1
.end method

.method static synthetic access$1500(Landroid/webkit/WebView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/webkit/WebView;->updateTextEntry()V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkit/WebView;IIZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->setContentScrollBy(IIZ)V

    return-void
.end method

.method static synthetic access$1700(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/webkit/WebView;->mUserScroll:Z

    return v0
.end method

.method static synthetic access$1702(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Landroid/webkit/WebView;->mUserScroll:Z

    return p1
.end method

.method static synthetic access$1800(Landroid/webkit/WebView;II)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->setContentScrollTo(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/WebView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/webkit/WebView;->zoomScrollOut()V

    return-void
.end method

.method static synthetic access$2000(Landroid/webkit/WebView;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->spawnContentScrollTo(II)V

    return-void
.end method

.method static synthetic access$2100(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Landroid/webkit/WebView;->mZoomScale:F

    return v0
.end method

.method static synthetic access$2102(Landroid/webkit/WebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Landroid/webkit/WebView;->mZoomScale:F

    return p1
.end method

.method static synthetic access$2200(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    return v0
.end method

.method static synthetic access$2302(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    return p1
.end method

.method static synthetic access$2402(Landroid/webkit/WebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    return p1
.end method

.method static synthetic access$2500(Landroid/webkit/WebView;IIZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->recordNewContentSize(IIZ)V

    return-void
.end method

.method static synthetic access$2600(Landroid/webkit/WebView;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->contentToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Landroid/webkit/WebView;)Landroid/webkit/WebView$PictureListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/webkit/WebView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeCreate(I)V

    return-void
.end method

.method static synthetic access$2900(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/webkit/WebView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/webkit/WebView;)Landroid/webkit/TextDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    return v0
.end method

.method static synthetic access$3200(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    return v0
.end method

.method static synthetic access$3300()F
    .registers 1

    .prologue
    .line 101
    sget v0, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    return v0
.end method

.method static synthetic access$3402(Landroid/webkit/WebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    return p1
.end method

.method static synthetic access$3500()F
    .registers 1

    .prologue
    .line 101
    sget v0, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    return v0
.end method

.method static synthetic access$3600(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    return v0
.end method

.method static synthetic access$3700(Landroid/webkit/WebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Landroid/webkit/WebView;->mDefaultScale:F

    return v0
.end method

.method static synthetic access$3800(Landroid/webkit/WebView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Landroid/webkit/WebView;->mInitialScale:I

    return v0
.end method

.method static synthetic access$3900(Landroid/webkit/WebView;FZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->setNewZoomScale(FZ)V

    return-void
.end method

.method static synthetic access$4000(Landroid/webkit/WebView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeMarkNodeInvalid(I)V

    return-void
.end method

.method static synthetic access$4100(Landroid/webkit/WebView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeNotifyFocusSet(Z)V

    return-void
.end method

.method static synthetic access$4200(Landroid/webkit/WebView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeUpdateFocusNode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Landroid/webkit/WebView;)Landroid/webkit/WebView$FocusNode;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/webkit/WebView;->mFocusNode:Landroid/webkit/WebView$FocusNode;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/webkit/WebView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeRecomputeFocus()V

    return-void
.end method

.method static synthetic access$4500(Landroid/webkit/WebView;IIII)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->viewInvalidate(IIII)V

    return-void
.end method

.method static synthetic access$4602(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Landroid/webkit/WebView;->mGotEnterDown:Z

    return p1
.end method

.method static synthetic access$4702(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    return p1
.end method

.method static synthetic access$4802(Landroid/webkit/WebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    return p1
.end method

.method static synthetic access$5000(Landroid/webkit/WebView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5100(Landroid/webkit/WebView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5200(Landroid/webkit/WebView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    return-object v0
.end method

.method static synthetic access$800(Landroid/webkit/WebView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Landroid/webkit/WebView;)Landroid/webkit/WebView$ExtendedZoomControls;
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    return-object v0
.end method

.method private calcOurContentVisibleRect(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 1751
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 1752
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1753
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1754
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1755
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1756
    return-void
.end method

.method private calcOurVisibleRect(Landroid/graphics/Rect;)V
    .registers 5
    .parameter "r"

    .prologue
    .line 1744
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1745
    .local v0, p:Landroid/graphics/Point;
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 1746
    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1747
    return-void
.end method

.method private canZoomScrollOut()Z
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 2643
    iget v5, p0, Landroid/webkit/WebView;->mContentWidth:I

    if-eqz v5, :cond_9

    iget v5, p0, Landroid/webkit/WebView;->mContentHeight:I

    if-nez v5, :cond_b

    :cond_9
    move v5, v7

    .line 2664
    :goto_a
    return v5

    .line 2646
    :cond_b
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    .line 2647
    .local v2, width:I
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    .line 2648
    .local v0, height:I
    int-to-float v5, v2

    iget v6, p0, Landroid/webkit/WebView;->mContentWidth:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 2649
    .local v3, x:F
    int-to-float v5, v0

    iget v6, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 2650
    .local v4, y:F
    sget v5, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Landroid/webkit/WebView;->mZoomScrollLimit:F

    .line 2651
    const/high16 v5, 0x3f80

    iget v6, p0, Landroid/webkit/WebView;->mZoomScrollLimit:F

    div-float/2addr v5, v6

    iput v5, p0, Landroid/webkit/WebView;->mZoomScrollInvLimit:F

    .line 2663
    iget v5, p0, Landroid/webkit/WebView;->mZoomScrollLimit:F

    const/high16 v6, 0x4000

    mul-float v1, v5, v6

    .line 2664
    .local v1, limit:F
    iget v5, p0, Landroid/webkit/WebView;->mContentWidth:I

    int-to-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v6, v1

    cmpl-float v5, v5, v6

    if-gez v5, :cond_4a

    iget v5, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v5, v5

    int-to-float v6, v0

    mul-float/2addr v6, v1

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_4c

    :cond_4a
    const/4 v5, 0x1

    goto :goto_a

    :cond_4c
    move v5, v7

    goto :goto_a
.end method

.method private clearTextEntry()V
    .registers 2

    .prologue
    .line 1428
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1429
    iget-object v0, p0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    invoke-virtual {v0}, Landroid/webkit/TextDialog;->remove()V

    .line 1431
    :cond_b
    return-void
.end method

.method private commitCopy()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3308
    const/4 v0, 0x0

    .line 3309
    .local v0, copiedSomething:Z
    iget-boolean v2, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    if-eqz v2, :cond_2b

    .line 3311
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetSelection()Landroid/graphics/Region;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    .line 3312
    .local v1, selection:Landroid/graphics/Region;
    invoke-virtual {v1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_29

    .line 3313
    iget-object v2, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    const v3, 0x10401c9

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3316
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x81

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3317
    const/4 v0, 0x1

    .line 3319
    :cond_29
    iput-boolean v4, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 3321
    .end local v1           #selection:Landroid/graphics/Region;
    :cond_2b
    iput-boolean v4, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 3322
    iget v2, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_36

    .line 3323
    const/4 v2, 0x1

    iput v2, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 3325
    :cond_36
    return v0
.end method

.method private static computeDuration(II)I
    .registers 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 2040
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2041
    .local v0, distance:I
    mul-int/lit16 v2, v0, 0x3e8

    div-int/lit16 v1, v2, 0x1e0

    .line 2042
    .local v1, duration:I
    const/16 v2, 0x2ee

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private contentSizeChanged(Z)V
    .registers 4
    .parameter "updateLayout"

    .prologue
    .line 2153
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    or-int/2addr v0, v1

    if-nez v0, :cond_8

    .line 2172
    :cond_7
    :goto_7
    return-void

    .line 2157
    :cond_8
    iget-boolean v0, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v0, :cond_1e

    .line 2158
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v1

    if-eq v0, v1, :cond_7

    if-eqz p1, :cond_7

    .line 2160
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_7

    .line 2162
    :cond_1e
    iget-boolean v0, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    if-eqz v0, :cond_34

    .line 2163
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v1

    if-eq v0, v1, :cond_7

    if-eqz p1, :cond_7

    .line 2165
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_7

    .line 2170
    :cond_34
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    goto :goto_7
.end method

.method private contentToView(I)I
    .registers 4
    .parameter "x"

    .prologue
    .line 1610
    int-to-float v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private contentToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7
    .parameter "x"

    .prologue
    .line 1628
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v4}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private createZoomControls()Landroid/webkit/WebView$ExtendedZoomControls;
    .registers 4

    .prologue
    .line 4259
    new-instance v0, Landroid/webkit/WebView$ExtendedZoomControls;

    iget-object v1, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/webkit/WebView$ExtendedZoomControls;-><init>(Landroid/webkit/WebView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4261
    .local v0, zoomControls:Landroid/webkit/WebView$ExtendedZoomControls;
    new-instance v1, Landroid/webkit/WebView$8;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$8;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 4270
    new-instance v1, Landroid/webkit/WebView$9;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$9;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 4279
    new-instance v1, Landroid/webkit/WebView$10;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$10;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->setOnZoomMagnifyClickListener(Landroid/view/View$OnClickListener;)V

    .line 4287
    return-object v0
.end method

.method public static disablePlatformNotifications()V
    .registers 0

    .prologue
    .line 936
    invoke-static {}, Landroid/webkit/Network;->disablePlatformNotifications()V

    .line 937
    return-void
.end method

.method private displaySoftKeyboard()V
    .registers 8

    .prologue
    .line 2902
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2904
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2905
    iget-object v4, p0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/TextDialog;->enableScrollOnScreen(Z)V

    .line 2908
    iget-object v4, p0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    invoke-virtual {v4}, Landroid/webkit/TextDialog;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 2910
    .local v1, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    if-eqz v1, :cond_3b

    .line 2913
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:F

    iget v5, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v6, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float v2, v4, v5

    .line 2914
    .local v2, x:F
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:F

    iget v5, p0, Landroid/webkit/WebView;->mScrollY:I

    iget v6, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float v3, v4, v5

    .line 2915
    .local v3, y:F
    iget-object v4, p0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    invoke-virtual {v4, v2, v3}, Landroid/webkit/TextDialog;->fakeTouchEvent(FF)V

    .line 2917
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_3b
    return-void
.end method

.method private doFling()V
    .registers 13

    .prologue
    const/4 v5, 0x0

    .line 4154
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 4186
    :goto_5
    return-void

    .line 4157
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeHorizontalScrollRange()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 4158
    .local v6, maxX:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeVerticalScrollRange()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 4160
    .local v8, maxY:I
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroid/webkit/WebView;->mMaximumFling:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4161
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v10, v0

    .line 4162
    .local v10, vx:I
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v11, v0

    .line 4164
    .local v11, vy:I
    iget v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_48

    .line 4165
    iget v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_47

    iget v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6e

    .line 4166
    :cond_47
    const/4 v11, 0x0

    .line 4174
    :cond_48
    :goto_48
    mul-int/lit8 v0, v10, 0x3

    div-int/lit8 v10, v0, 0x4

    .line 4175
    mul-int/lit8 v0, v11, 0x3

    div-int/lit8 v11, v0, 0x4

    .line 4178
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    neg-int v3, v10

    neg-int v4, v11

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 4183
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v9

    .line 4184
    .local v9, time:I
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    int-to-long v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4185
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_5

    .line 4168
    .end local v9           #time:I
    :cond_6e
    const/4 v10, 0x0

    goto :goto_48
.end method

.method private doShortPress()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 4348
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_6

    .line 4365
    :cond_5
    :goto_5
    return-void

    .line 4351
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 4353
    iget v2, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v0

    .line 4354
    .local v0, contentX:I
    iget v2, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v1

    .line 4355
    .local v1, contentY:I
    iget v2, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v0, v1, v2, v6}, Landroid/webkit/WebView;->nativeMotionUp(IIIZ)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 4356
    sget-boolean v2, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v2, :cond_36

    .line 4357
    iget-object v2, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Checkin$Stats$Tag;->BROWSER_SNAP_CENTER:Landroid/provider/Checkin$Stats$Tag;

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v6, v4, v5}, Landroid/provider/Checkin;->updateStats(Landroid/content/ContentResolver;Landroid/provider/Checkin$Stats$Tag;ID)Landroid/net/Uri;

    .line 4361
    :cond_36
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeUpdateFocusNode()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/webkit/WebView;->mFocusNode:Landroid/webkit/WebView$FocusNode;

    iget-boolean v2, v2, Landroid/webkit/WebView$FocusNode;->mIsTextField:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/webkit/WebView;->mFocusNode:Landroid/webkit/WebView$FocusNode;

    iget-boolean v2, v2, Landroid/webkit/WebView$FocusNode;->mIsTextArea:Z

    if-nez v2, :cond_5

    .line 4363
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->playSoundEffect(I)V

    goto :goto_5
.end method

.method private doTrackball(J)V
    .registers 29
    .parameter "time"

    .prologue
    .line 4053
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mTrackballLastTime:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    move-wide v10, v0

    sub-long/2addr v8, v10

    long-to-int v13, v8

    .line 4054
    .local v13, elapsed:I
    if-nez v13, :cond_10

    .line 4055
    const/16 v13, 0xc8

    .line 4057
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v5, v0

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    int-to-float v6, v13

    div-float v23, v5, v6

    .line 4058
    .local v23, xRate:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v5, v0

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    int-to-float v6, v13

    div-float v25, v5, v6

    .line 4059
    .local v25, yRate:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    move v5, v0

    if-eqz v5, :cond_42

    .line 4060
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->moveSelection(FF)V

    .line 4061
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 4143
    :goto_41
    return-void

    .line 4064
    :cond_42
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 4065
    .local v11, ax:F
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 4066
    .local v12, ay:F
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 4074
    .local v15, maxA:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move v5, v0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v6

    sub-int v21, v5, v6

    .line 4075
    .local v21, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move v5, v0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v6

    sub-int v14, v5, v6

    .line 4076
    .local v14, height:I
    if-gez v21, :cond_68

    const/16 v21, 0x0

    .line 4077
    :cond_68
    if-gez v14, :cond_6b

    const/4 v14, 0x0

    .line 4078
    :cond_6b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/16 v6, 0xb

    if-ne v5, v6, :cond_fe

    .line 4079
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScrollX:I

    move/from16 v19, v0

    .line 4080
    .local v19, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScrollY:I

    move/from16 v20, v0

    .line 4081
    .local v20, oldY:I
    move/from16 v0, v21

    move v1, v14

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 4082
    .local v16, maxWH:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScrollX:I

    move v5, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballX(FI)I

    move-result v6

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomScrollX:I

    .line 4083
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScrollY:I

    move v5, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballY(FI)I

    move-result v6

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomScrollY:I

    .line 4089
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScrollX:I

    move v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v0, v21

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomScrollX:I

    .line 4090
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScrollY:I

    move v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v14, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomScrollY:I

    .line 4091
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScrollX:I

    move v5, v0

    move/from16 v0, v19

    move v1, v5

    if-ne v0, v1, :cond_ee

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScrollY:I

    move v5, v0

    move/from16 v0, v20

    move v1, v5

    if-eq v0, v1, :cond_f1

    .line 4092
    :cond_ee
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4094
    :cond_f1
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsX:F

    goto/16 :goto_41

    .line 4097
    .end local v16           #maxWH:I
    .end local v19           #oldX:I
    .end local v20           #oldY:I
    :cond_fe
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v5, v0

    const/high16 v6, 0x4040

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 4098
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v5, v0

    const/high16 v6, 0x4040

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 4099
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 4100
    const/4 v5, 0x0

    float-to-int v6, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 4101
    .local v7, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v17, v0

    .line 4102
    .local v17, oldScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v18, v0

    .line 4103
    .local v18, oldScrollY:I
    if-lez v7, :cond_168

    .line 4104
    cmpg-float v5, v11, v12

    if-gez v5, :cond_1cc

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v5, v0

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1c7

    const/16 v5, 0x13

    move v6, v5

    .line 4108
    .local v6, selectKeyCode:I
    :goto_13f
    const/16 v5, 0xa

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 4115
    const/4 v8, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v9, p1

    invoke-direct/range {v5 .. v10}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v5

    if-eqz v5, :cond_15d

    .line 4116
    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 4118
    :cond_15d
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 4120
    .end local v6           #selectKeyCode:I
    :cond_168
    const/4 v5, 0x5

    if-lt v7, v5, :cond_1bb

    .line 4121
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballX(FI)I

    move-result v22

    .line 4122
    .local v22, xMove:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move v2, v14

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballY(FI)I

    move-result v24

    .line 4131
    .local v24, yMove:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move v5, v0

    sub-int v5, v5, v17

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_191

    .line 4132
    const/16 v22, 0x0

    .line 4134
    :cond_191
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move v5, v0

    sub-int v5, v5, v18

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_1a4

    .line 4135
    const/16 v24, 0x0

    .line 4137
    :cond_1a4
    if-nez v22, :cond_1a8

    if-eqz v24, :cond_1b5

    .line 4138
    :cond_1a8
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 4140
    :cond_1b5
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mUserScroll:Z

    .line 4142
    .end local v22           #xMove:I
    .end local v24           #yMove:I
    :cond_1bb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x7f

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto/16 :goto_41

    .line 4104
    :cond_1c7
    const/16 v5, 0x14

    move v6, v5

    goto/16 :goto_13f

    :cond_1cc
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v5, v0

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1db

    const/16 v5, 0x15

    move v6, v5

    goto/16 :goto_13f

    :cond_1db
    const/16 v5, 0x16

    move v6, v5

    goto/16 :goto_13f
.end method

.method private drawCoreAndFocusRing(Landroid/graphics/Canvas;IZ)V
    .registers 17
    .parameter "canvas"
    .parameter "color"
    .parameter "drawFocus"

    .prologue
    .line 2357
    iget-boolean v9, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v9, :cond_11

    .line 2358
    iget v9, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v10, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2359
    iget-object v9, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 2432
    :cond_10
    :goto_10
    return-void

    .line 2363
    :cond_11
    iget v9, p0, Landroid/webkit/WebView;->mZoomScale:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_c5

    const/4 v9, 0x1

    move v1, v9

    .line 2364
    .local v1, animateZoom:Z
    :goto_1a
    iget-object v9, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_26

    iget-object v9, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_c9

    :cond_26
    const/4 v9, 0x1

    move v0, v9

    .line 2366
    .local v0, animateScroll:Z
    :goto_28
    if-eqz v1, :cond_d4

    .line 2368
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Landroid/webkit/WebView;->mZoomStart:J

    sub-long/2addr v9, v11

    long-to-int v3, v9

    .line 2369
    .local v3, interval:I
    const/16 v9, 0x1f4

    if-ge v3, v9, :cond_cd

    .line 2370
    int-to-float v9, v3

    const/high16 v10, 0x43fa

    div-float v4, v9, v10

    .line 2371
    .local v4, ratio:F
    const/high16 v9, 0x3f80

    iget v10, p0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    iget v11, p0, Landroid/webkit/WebView;->mInvFinalZoomScale:F

    iget v12, p0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    sub-float/2addr v11, v12

    mul-float/2addr v11, v4

    add-float/2addr v10, v11

    div-float v8, v9, v10

    .line 2373
    .local v8, zoomScale:F
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 2379
    .end local v4           #ratio:F
    :goto_4b
    iget v9, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float/2addr v9, v8

    iget v10, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float v5, v9, v10

    .line 2380
    .local v5, scale:F
    iget v9, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    iget v10, p0, Landroid/webkit/WebView;->mScrollX:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float v6, v5, v9

    .line 2381
    .local v6, tx:F
    iget v9, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    iget v10, p0, Landroid/webkit/WebView;->mScrollY:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float v7, v5, v9

    .line 2388
    .local v7, ty:F
    iget v9, p0, Landroid/webkit/WebView;->mScrollX:I

    int-to-float v9, v9

    sub-float/2addr v6, v9

    .line 2389
    iget v9, p0, Landroid/webkit/WebView;->mScrollY:I

    int-to-float v9, v9

    sub-float/2addr v7, v9

    .line 2390
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v9

    neg-int v9, v9

    invoke-direct {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v10

    iget v11, p0, Landroid/webkit/WebView;->mContentWidth:I

    int-to-float v11, v11

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v9

    neg-int v9, v9

    int-to-float v6, v9

    .line 2392
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    neg-int v9, v9

    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v10

    iget v11, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v11, v11

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v9

    neg-int v9, v9

    int-to-float v7, v9

    .line 2394
    iget v9, p0, Landroid/webkit/WebView;->mScrollX:I

    int-to-float v9, v9

    add-float/2addr v6, v9

    .line 2395
    iget v9, p0, Landroid/webkit/WebView;->mScrollY:I

    int-to-float v9, v9

    add-float/2addr v7, v9

    .line 2397
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2398
    invoke-virtual {p1, v8, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2403
    .end local v3           #interval:I
    .end local v5           #scale:F
    .end local v6           #tx:F
    .end local v7           #ty:F
    .end local v8           #zoomScale:F
    :goto_a6
    iget-object v9, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v9, p1, p2, v1, v0}, Landroid/webkit/WebViewCore;->drawContentPicture(Landroid/graphics/Canvas;IZZ)V

    .line 2406
    iget v9, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v9, :cond_10

    .line 2407
    iget-boolean v9, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    if-eqz v9, :cond_e6

    .line 2408
    iget-boolean v9, p0, Landroid/webkit/WebView;->mTouchSelection:Z

    if-eqz v9, :cond_dc

    .line 2409
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeDrawSelectionRegion(Landroid/graphics/Canvas;)V

    .line 2429
    :cond_ba
    :goto_ba
    iget-boolean v9, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    if-eqz v9, :cond_10

    if-nez v0, :cond_10

    .line 2430
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeDrawMatches(Landroid/graphics/Canvas;)V

    goto/16 :goto_10

    .line 2363
    .end local v0           #animateScroll:Z
    .end local v1           #animateZoom:Z
    :cond_c5
    const/4 v9, 0x0

    move v1, v9

    goto/16 :goto_1a

    .line 2364
    .restart local v1       #animateZoom:Z
    :cond_c9
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_28

    .line 2375
    .restart local v0       #animateScroll:Z
    .restart local v3       #interval:I
    :cond_cd
    iget v8, p0, Landroid/webkit/WebView;->mZoomScale:F

    .line 2377
    .restart local v8       #zoomScale:F
    const/4 v9, 0x0

    iput v9, p0, Landroid/webkit/WebView;->mZoomScale:F

    goto/16 :goto_4b

    .line 2400
    .end local v3           #interval:I
    .end local v8           #zoomScale:F
    :cond_d4
    iget v9, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v10, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_a6

    .line 2411
    :cond_dc
    iget v9, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v10, p0, Landroid/webkit/WebView;->mSelectY:I

    iget-boolean v11, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    invoke-direct {p0, p1, v9, v10, v11}, Landroid/webkit/WebView;->nativeDrawSelection(Landroid/graphics/Canvas;IIZ)V

    goto :goto_ba

    .line 2414
    :cond_e6
    if-eqz p3, :cond_ba

    .line 2415
    iget v9, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_10a

    .line 2416
    const/4 v9, 0x5

    iput v9, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 2417
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v2

    .line 2418
    .local v2, hitTest:Landroid/webkit/WebView$HitTestResult;
    if-eqz v2, :cond_10a

    invoke-static {v2}, Landroid/webkit/WebView$HitTestResult;->access$600(Landroid/webkit/WebView$HitTestResult;)I

    move-result v9

    if-eqz v9, :cond_10a

    .line 2420
    iget-object v9, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v10, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2425
    .end local v2           #hitTest:Landroid/webkit/WebView$HitTestResult;
    :cond_10a
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeDrawFocusRing(Landroid/graphics/Canvas;)V

    goto :goto_ba
.end method

.method private drawMagnifyFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 12
    .parameter "canvas"
    .parameter "frame"
    .parameter "paint"

    .prologue
    const/high16 v7, 0x4180

    const/high16 v5, -0x3e80

    const/4 v6, 0x0

    .line 2459
    const/high16 v0, 0x4180

    .line 2460
    .local v0, ADORNMENT_LEN:F
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v3, v4

    .line 2461
    .local v3, width:F
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v1, v4

    .line 2462
    .local v1, height:F
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 2463
    .local v2, path:Landroid/graphics/Path;
    invoke-virtual {v2, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2464
    invoke-virtual {v2, v6, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2465
    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2466
    add-float v4, v3, v7

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2467
    add-float v4, v1, v7

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2468
    invoke-virtual {v2, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2469
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2470
    add-float v4, v3, v7

    add-float v5, v1, v7

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2471
    invoke-virtual {v2, v6, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2472
    invoke-virtual {v2, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2473
    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2474
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2475
    iget v4, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->offset(FF)V

    .line 2476
    invoke-virtual {p1, v2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2477
    return-void
.end method

.method public static enablePlatformNotifications()V
    .registers 0

    .prologue
    .line 928
    invoke-static {}, Landroid/webkit/Network;->enablePlatformNotifications()V

    .line 929
    return-void
.end method

.method private extendScroll(I)Z
    .registers 6
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 1334
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    .line 1335
    .local v0, finalY:I
    add-int v2, v0, p1

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v1

    .line 1336
    .local v1, newY:I
    if-ne v1, v0, :cond_11

    move v2, v3

    .line 1339
    :goto_10
    return v2

    .line 1337
    :cond_11
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 1338
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-static {v3, p1}, Landroid/webkit/WebView;->computeDuration(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->extendDuration(I)V

    .line 1339
    const/4 v2, 0x1

    goto :goto_10
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "addr"

    .prologue
    .line 1993
    invoke-static {p0}, Landroid/webkit/WebViewCore;->nativeFindAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getPluginList()Landroid/webkit/PluginList;
    .registers 2

    .prologue
    .line 2270
    const-class v0, Landroid/webkit/WebView;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/webkit/WebView;->sPluginList:Landroid/webkit/PluginList;

    if-nez v1, :cond_e

    .line 2271
    new-instance v1, Landroid/webkit/PluginList;

    invoke-direct {v1}, Landroid/webkit/PluginList;-><init>()V

    sput-object v1, Landroid/webkit/WebView;->sPluginList:Landroid/webkit/PluginList;

    .line 2273
    :cond_e
    sget-object v1, Landroid/webkit/WebView;->sPluginList:Landroid/webkit/PluginList;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 2270
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getScaledMaxXScroll()I
    .registers 4

    .prologue
    .line 5126
    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v2, :cond_f

    .line 5127
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x4

    .line 5134
    .local v1, width:I
    :goto_a
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v2

    return v2

    .line 5129
    .end local v1           #width:I
    :cond_f
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 5130
    .local v0, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 5131
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #width:I
    goto :goto_a
.end method

.method private getScaledMaxYScroll()I
    .registers 4

    .prologue
    .line 5139
    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v2, :cond_f

    .line 5140
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x4

    .line 5149
    .local v0, height:I
    :goto_a
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v2

    return v2

    .line 5142
    .end local v0           #height:I
    :cond_f
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 5143
    .local v1, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 5144
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .restart local v0       #height:I
    goto :goto_a
.end method

.method private getViewHeight()I
    .registers 3

    .prologue
    .line 828
    invoke-virtual {p0}, Landroid/webkit/WebView;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    if-eqz v0, :cond_f

    .line 829
    :cond_a
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 831
    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollbarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_e
.end method

.method private getViewWidth()I
    .registers 3

    .prologue
    .line 816
    invoke-virtual {p0}, Landroid/webkit/WebView;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    if-eqz v0, :cond_f

    .line 817
    :cond_a
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    .line 819
    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_e
.end method

.method private goBackOrForward(IZ)V
    .registers 6
    .parameter "steps"
    .parameter "ignoreSnapshot"

    .prologue
    .line 1325
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    .line 1326
    if-eqz p1, :cond_12

    .line 1327
    invoke-direct {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    .line 1328
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6a

    if-eqz p2, :cond_13

    const/4 v2, 0x1

    :goto_f
    invoke-virtual {v0, v1, p1, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 1331
    :cond_12
    return-void

    .line 1328
    :cond_13
    const/4 v2, 0x0

    goto :goto_f
.end method

.method private inEditingMode()Z
    .registers 2

    .prologue
    .line 1423
    iget-object v0, p0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    invoke-virtual {v0}, Landroid/webkit/TextDialog;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    invoke-virtual {v0}, Landroid/webkit/TextDialog;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private init()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 671
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    .line 672
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 673
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 674
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setClickable(Z)V

    .line 675
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 677
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 678
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 679
    .local v2, slop:I
    mul-int v3, v2, v2

    iput v3, p0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    .line 680
    iput v2, p0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    .line 681
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 684
    .local v1, density:F
    const/high16 v3, 0x4180

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    .line 686
    const/high16 v3, 0x42c8

    mul-float/2addr v3, v1

    float-to-int v3, v3

    sput v3, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    .line 687
    iput v1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 688
    iput v1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 689
    const/high16 v3, 0x3f80

    div-float/2addr v3, v1

    iput v3, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 690
    const/high16 v3, 0x4080

    mul-float/2addr v3, v1

    sput v3, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    .line 691
    const/high16 v3, 0x3e80

    mul-float/2addr v3, v1

    sput v3, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    .line 692
    sget v3, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    iput v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 693
    sget v3, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    iput v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 694
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mMaximumFling:I

    .line 695
    return-void
.end method

.method private initZoomController(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    .line 617
    new-instance v6, Landroid/widget/ZoomButtonsController;

    invoke-direct {v6, p0}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v6, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 618
    iget-object v6, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    iget-object v7, p0, Landroid/webkit/WebView;->mZoomListener:Landroid/widget/ZoomButtonsController$OnZoomListener;

    invoke-virtual {v6, v7}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    .line 622
    iget-object v6, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v6}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v2

    .line 623
    .local v2, controls:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 624
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v6, v5, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v6, :cond_23

    .line 625
    move-object v0, v5

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    move-object v3, v0

    .line 627
    .local v3, frameParams:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, 0x5

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 631
    .end local v3           #frameParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_23
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 633
    .local v4, inflater:Landroid/view/LayoutInflater;
    iget-object v6, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v6}, Landroid/widget/ZoomButtonsController;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    .line 634
    .local v1, container:Landroid/view/ViewGroup;
    const v6, 0x1090068

    invoke-virtual {v4, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 635
    const v6, 0x10201e8

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Landroid/webkit/WebView;->mZoomOverviewButton:Landroid/widget/ImageView;

    .line 637
    iget-object v6, p0, Landroid/webkit/WebView;->mZoomOverviewButton:Landroid/widget/ImageView;

    new-instance v7, Landroid/webkit/WebView$2;

    invoke-direct {v7, p0}, Landroid/webkit/WebView$2;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    return-void
.end method

.method private keyCodeToSoundsEffect(I)I
    .registers 4
    .parameter "keyCode"

    .prologue
    .line 4037
    packed-switch p1, :pswitch_data_14

    .line 4047
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyCode must be one of {KEYCODE_DPAD_UP, KEYCODE_DPAD_RIGHT, KEYCODE_DPAD_DOWN, KEYCODE_DPAD_LEFT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4039
    :pswitch_b
    const/4 v0, 0x2

    .line 4045
    :goto_c
    return v0

    .line 4041
    :pswitch_d
    const/4 v0, 0x3

    goto :goto_c

    .line 4043
    :pswitch_f
    const/4 v0, 0x4

    goto :goto_c

    .line 4045
    :pswitch_11
    const/4 v0, 0x1

    goto :goto_c

    .line 4037
    nop

    :pswitch_data_14
    .packed-switch 0x13
        :pswitch_b
        :pswitch_f
        :pswitch_11
        :pswitch_d
    .end packed-switch
.end method

.method private moveZoomScrollWindow(FF)V
    .registers 15
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x0

    const/high16 v9, 0x3fc0

    .line 2716
    iget v8, p0, Landroid/webkit/WebView;->mLastZoomScrollRawX:F

    sub-float v8, p1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1e

    iget v8, p0, Landroid/webkit/WebView;->mLastZoomScrollRawY:F

    sub-float v8, p2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1e

    .line 2763
    :cond_1d
    :goto_1d
    return-void

    .line 2720
    :cond_1e
    iput p1, p0, Landroid/webkit/WebView;->mLastZoomScrollRawX:F

    .line 2721
    iput p2, p0, Landroid/webkit/WebView;->mLastZoomScrollRawY:F

    .line 2722
    iget v5, p0, Landroid/webkit/WebView;->mZoomScrollX:I

    .line 2723
    .local v5, oldX:I
    iget v6, p0, Landroid/webkit/WebView;->mZoomScrollY:I

    .line 2724
    .local v6, oldY:I
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    .line 2725
    .local v7, width:I
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    .line 2726
    .local v0, height:I
    iget v8, p0, Landroid/webkit/WebView;->mContentWidth:I

    sub-int v3, v8, v7

    .line 2727
    .local v3, maxZoomX:I
    if-lez v3, :cond_60

    .line 2728
    int-to-float v8, v7

    iget v9, p0, Landroid/webkit/WebView;->mZoomScrollLimit:F

    mul-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    sub-int v8, v7, v8

    sub-int v1, v8, v11

    .line 2735
    .local v1, maxScreenX:I
    iget v8, p0, Landroid/webkit/WebView;->mLastScrollX:I

    mul-int/2addr v8, v1

    div-int/2addr v8, v3

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebView;->mLastTouchX:F

    sub-float/2addr v8, v9

    add-float/2addr p1, v8

    .line 2736
    div-int v8, v3, v1

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebView;->mZoomScrollInvLimit:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float/2addr p1, v8

    .line 2737
    float-to-int v8, p1

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Landroid/webkit/WebView;->mZoomScrollX:I

    .line 2739
    .end local v1           #maxScreenX:I
    :cond_60
    iget v8, p0, Landroid/webkit/WebView;->mContentHeight:I

    sub-int v4, v8, v0

    .line 2740
    .local v4, maxZoomY:I
    if-lez v4, :cond_92

    .line 2741
    int-to-float v8, v0

    iget v9, p0, Landroid/webkit/WebView;->mZoomScrollLimit:F

    mul-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    sub-int v8, v0, v8

    sub-int v2, v8, v11

    .line 2748
    .local v2, maxScreenY:I
    iget v8, p0, Landroid/webkit/WebView;->mLastScrollY:I

    mul-int/2addr v8, v2

    div-int/2addr v8, v4

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebView;->mLastTouchY:F

    sub-float/2addr v8, v9

    add-float/2addr p2, v8

    .line 2749
    div-int v8, v4, v2

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebView;->mZoomScrollInvLimit:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float/2addr p2, v8

    .line 2750
    float-to-int v8, p2

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Landroid/webkit/WebView;->mZoomScrollY:I

    .line 2752
    .end local v2           #maxScreenY:I
    :cond_92
    iget v8, p0, Landroid/webkit/WebView;->mZoomScrollX:I

    if-ne v5, v8, :cond_9a

    iget v8, p0, Landroid/webkit/WebView;->mZoomScrollY:I

    if-eq v6, v8, :cond_1d

    .line 2753
    :cond_9a
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_1d
.end method

.method private native nativeClearFocus(II)V
.end method

.method private native nativeCreate(I)V
.end method

.method private native nativeDebugDump()V
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeDrawFocusRing(Landroid/graphics/Canvas;)V
.end method

.method private native nativeDrawMatches(Landroid/graphics/Canvas;)V
.end method

.method private native nativeDrawSelection(Landroid/graphics/Canvas;IIZ)V
.end method

.method private native nativeDrawSelectionRegion(Landroid/graphics/Canvas;)V
.end method

.method private native nativeDumpDisplayTree(Ljava/lang/String;)V
.end method

.method private native nativeFindAll(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeFindNext(Z)V
.end method

.method private native nativeFocusNodeWantsKeyEvents()Z
.end method

.method private native nativeGetFocusRingBounds()Landroid/graphics/Rect;
.end method

.method private native nativeGetNavBounds()Landroid/graphics/Rect;
.end method

.method private native nativeGetSelection()Landroid/graphics/Region;
.end method

.method private native nativeImageURI(II)Ljava/lang/String;
.end method

.method private native nativeInstrumentReport()V
.end method

.method private native nativeMarkNodeInvalid(I)V
.end method

.method private native nativeMotionUp(IIIZ)Z
.end method

.method private native nativeMoveFocus(IIZ)Z
.end method

.method private native nativeMoveSelection(IIZ)V
.end method

.method private native nativeNotifyFocusSet(Z)V
.end method

.method private native nativeRecomputeFocus()V
.end method

.method private native nativeRecordButtons(ZZZ)V
.end method

.method private native nativeResetFocus()V
.end method

.method private native nativeResetNavClipBounds()V
.end method

.method private native nativeSelectBestAt(Landroid/graphics/Rect;)V
.end method

.method private native nativeSetFindIsDown()V
.end method

.method private native nativeSetFollowedLink(Z)V
.end method

.method private native nativeSetHeightCanMeasure(Z)V
.end method

.method private native nativeSetNavBounds(Landroid/graphics/Rect;)V
.end method

.method private native nativeSetNavClipBounds(Landroid/graphics/Rect;)V
.end method

.method private native nativeUpdateCachedTextfield(Ljava/lang/String;I)V
.end method

.method private native nativeUpdateFocusNode()Z
.end method

.method private navHandledKey(IIZJ)Z
    .registers 17
    .parameter "keyCode"
    .parameter "count"
    .parameter "noScroll"
    .parameter "time"

    .prologue
    .line 5162
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v8, :cond_6

    .line 5163
    const/4 v8, 0x0

    .line 5205
    :goto_5
    return v8

    .line 5165
    :cond_6
    iput-wide p4, p0, Landroid/webkit/WebView;->mLastFocusTime:J

    .line 5166
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetFocusRingBounds()Landroid/graphics/Rect;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebView;->mLastFocusBounds:Landroid/graphics/Rect;

    .line 5167
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->nativeMoveFocus(IIZ)Z

    move-result v8

    if-nez v8, :cond_1e

    const/4 v8, 0x1

    move v1, v8

    .line 5173
    .local v1, keyHandled:Z
    :goto_16
    if-eqz v1, :cond_1c

    iget-boolean v8, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v8, :cond_21

    :cond_1c
    move v8, v1

    .line 5174
    goto :goto_5

    .line 5167
    .end local v1           #keyHandled:Z
    :cond_1e
    const/4 v8, 0x0

    move v1, v8

    goto :goto_16

    .line 5176
    .restart local v1       #keyHandled:Z
    :cond_21
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetFocusRingBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 5177
    .local v0, contentFocus:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2d

    move v8, v1

    goto :goto_5

    .line 5178
    :cond_2d
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 5179
    .local v6, viewFocus:Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 5180
    .local v7, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v7}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 5181
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 5182
    .local v5, outset:Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v3, v8, 0x2

    .line 5183
    .local v3, maxXScroll:I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v4, v8, 0x2

    .line 5184
    .local v4, maxYScroll:I
    neg-int v8, v3

    neg-int v9, v4

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->inset(II)V

    .line 5185
    invoke-static {v5, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_57

    move v8, v1

    .line 5186
    goto :goto_5

    .line 5189
    :cond_57
    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5190
    .local v2, maxH:I
    if-lez v2, :cond_72

    .line 5191
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v2, v8, v9, v10}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 5198
    :cond_68
    :goto_68
    iget-object v8, p0, Landroid/webkit/WebView;->mLastFocusBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_85

    move v8, v1

    goto :goto_5

    .line 5193
    :cond_72
    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v9, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    neg-int v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5194
    if-gez v2, :cond_68

    .line 5195
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v2, v8, v9, v10}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    goto :goto_68

    .line 5199
    :cond_85
    iget-object v8, p0, Landroid/webkit/WebView;->mLastFocusBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_90

    move v8, v1

    goto/16 :goto_5

    .line 5203
    :cond_90
    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 5204
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebView;->mUserScroll:Z

    move v8, v1

    .line 5205
    goto/16 :goto_5
.end method

.method private overrideLoading(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 4370
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    .line 4371
    return-void
.end method

.method private static pinLoc(III)I
    .registers 4
    .parameter "x"
    .parameter "viewMax"
    .parameter "docMax"

    .prologue
    .line 1581
    if-ge p2, p1, :cond_4

    .line 1583
    const/4 p0, 0x0

    .line 1592
    :cond_3
    :goto_3
    return p0

    .line 1585
    :cond_4
    if-gez p0, :cond_8

    .line 1586
    const/4 p0, 0x0

    goto :goto_3

    .line 1588
    :cond_8
    add-int v0, p0, p1

    if-le v0, p2, :cond_3

    .line 1589
    sub-int p0, p2, p1

    goto :goto_3
.end method

.method private pinLocX(I)I
    .registers 4
    .parameter "x"

    .prologue
    .line 1597
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->computeHorizontalScrollRange()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v0

    return v0
.end method

.method private pinLocY(I)I
    .registers 4
    .parameter "y"

    .prologue
    .line 1602
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->computeVerticalScrollRange()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v0

    return v0
.end method

.method private pinScrollBy(IIZI)Z
    .registers 7
    .parameter "dx"
    .parameter "dy"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 2048
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v1, p2

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v0

    return v0
.end method

.method private pinScrollTo(IIZI)Z
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 2054
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result p1

    .line 2055
    invoke-direct {p0, p2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result p2

    .line 2056
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int v3, p1, v0

    .line 2057
    .local v3, dx:I
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int v4, p2, v0

    .line 2059
    .local v4, dy:I
    or-int v0, v3, v4

    if-nez v0, :cond_16

    .line 2060
    const/4 v0, 0x0

    .line 2073
    :goto_15
    return v0

    .line 2063
    :cond_16
    if-eqz p3, :cond_2e

    .line 2066
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-lez p4, :cond_29

    move v5, p4

    :goto_21
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2068
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 2073
    :goto_27
    const/4 v0, 0x1

    goto :goto_15

    .line 2066
    :cond_29
    invoke-static {v3, v4}, Landroid/webkit/WebView;->computeDuration(II)I

    move-result v5

    goto :goto_21

    .line 2070
    :cond_2e
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2071
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->scrollTo(II)V

    goto :goto_27
.end method

.method private recordNewContentSize(IIZ)V
    .registers 7
    .parameter "w"
    .parameter "h"
    .parameter "updateLayout"

    .prologue
    .line 1637
    or-int v2, p1, p2

    if-nez v2, :cond_5

    .line 1663
    :goto_4
    return-void

    .line 1642
    :cond_5
    iget v2, p0, Landroid/webkit/WebView;->mContentWidth:I

    if-ne v2, p1, :cond_d

    iget v2, p0, Landroid/webkit/WebView;->mContentHeight:I

    if-eq v2, p2, :cond_39

    .line 1644
    :cond_d
    iput p1, p0, Landroid/webkit/WebView;->mContentWidth:I

    .line 1645
    iput p2, p0, Landroid/webkit/WebView;->mContentHeight:I

    .line 1648
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-nez v2, :cond_39

    .line 1650
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 1651
    .local v0, oldX:I
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 1652
    .local v1, oldY:I
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 1653
    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 1656
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1657
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ne v0, v2, :cond_36

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v1, v2, :cond_39

    .line 1658
    :cond_36
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 1662
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    :cond_39
    invoke-direct {p0, p3}, Landroid/webkit/WebView;->contentSizeChanged(Z)V

    goto :goto_4
.end method

.method private scaleTrackballX(FI)I
    .registers 7
    .parameter "xRate"
    .parameter "width"

    .prologue
    .line 4009
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 4010
    .local v1, xMove:I
    move v0, v1

    .line 4011
    .local v0, nextXMove:I
    if-lez v1, :cond_14

    .line 4012
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    if-le v1, v2, :cond_11

    .line 4013
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    sub-int/2addr v1, v2

    .line 4018
    :cond_11
    :goto_11
    iput v0, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 4019
    return v1

    .line 4015
    :cond_14
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    if-ge v1, v2, :cond_11

    .line 4016
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    sub-int/2addr v1, v2

    goto :goto_11
.end method

.method private scaleTrackballY(FI)I
    .registers 7
    .parameter "yRate"
    .parameter "height"

    .prologue
    .line 4023
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 4024
    .local v1, yMove:I
    move v0, v1

    .line 4025
    .local v0, nextYMove:I
    if-lez v1, :cond_14

    .line 4026
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    if-le v1, v2, :cond_11

    .line 4027
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    sub-int/2addr v1, v2

    .line 4032
    :cond_11
    :goto_11
    iput v0, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    .line 4033
    return v1

    .line 4029
    :cond_14
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    if-ge v1, v2, :cond_11

    .line 4030
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    sub-int/2addr v1, v2

    goto :goto_11
.end method

.method private scrollZoomDraw(Landroid/graphics/Canvas;)V
    .registers 29
    .parameter "canvas"

    .prologue
    .line 2525
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScrollInvLimit:F

    move v12, v0

    .line 2526
    .local v12, invScale:F
    const/4 v7, 0x0

    .line 2527
    .local v7, elapsed:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0xb

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_58

    .line 2528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mZoomScrollStart:J

    move-wide/from16 v25, v0

    sub-long v23, v23, v25

    const-wide/16 v25, 0x1f4

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move v7, v0

    .line 2530
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScrollInvLimit:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvActualScale:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move v0, v7

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    const/high16 v24, 0x43fa

    div-float v21, v23, v24

    .line 2532
    .local v21, transitionScale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_190

    .line 2533
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvActualScale:F

    move/from16 v23, v0

    add-float v12, v23, v21

    .line 2538
    .end local v21           #transitionScale:F
    :cond_58
    :goto_58
    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->scrollZoomGridScale(F)F

    move-result v19

    .line 2539
    .local v19, scale:F
    const/high16 v23, 0x3f80

    div-float v12, v23, v19

    .line 2540
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v22

    .line 2541
    .local v22, width:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v11

    .line 2542
    .local v11, height:I
    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->scrollZoomMagScale(F)F

    move-result v8

    .line 2543
    .local v8, halfScale:F
    move-object/from16 v0, p0

    move/from16 v1, v22

    move v2, v11

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->scrollZoomFrame(IIF)Landroid/graphics/Rect;

    move-result-object v20

    .line 2544
    .local v20, scrollFrame:Landroid/graphics/Rect;
    const/16 v23, 0x1f4

    move v0, v7

    move/from16 v1, v23

    if-ne v0, v1, :cond_eb

    .line 2545
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_19a

    .line 2546
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 2547
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 2548
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->updateTextEntry()V

    .line 2549
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerX()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    shr-int/lit8 v24, v22, 0x1

    sub-int v23, v23, v24

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerY()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    shr-int/lit8 v25, v11, 0x1

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 2552
    const/16 v23, 0x7

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 2557
    :cond_eb
    :goto_eb
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->scrollZoomX(F)F

    move-result v15

    .line 2558
    .local v15, newX:F
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->scrollZoomY(F)F

    move-result v16

    .line 2565
    .local v16, newY:F
    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2566
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2567
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0xb

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1a4

    const/16 v23, 0x1

    move/from16 v5, v23

    .line 2568
    .local v5, animating:Z
    :goto_11e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawHistory:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1aa

    .line 2569
    const/16 v23, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v18

    .line 2570
    .local v18, sc:I
    new-instance v6, Landroid/graphics/Rect;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Picture;->getWidth()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Picture;->getHeight()I

    move-result v26

    move-object v0, v6

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2572
    .local v6, clip:Landroid/graphics/Rect;
    sget-object v23, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object v1, v6

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2573
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mBackgroundColor:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2574
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2575
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 2580
    .end local v6           #clip:Landroid/graphics/Rect;
    .end local v18           #sc:I
    :goto_181
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x7

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1c5

    .line 2621
    :cond_18f
    :goto_18f
    return-void

    .line 2535
    .end local v5           #animating:Z
    .end local v8           #halfScale:F
    .end local v11           #height:I
    .end local v15           #newX:F
    .end local v16           #newY:F
    .end local v19           #scale:F
    .end local v20           #scrollFrame:Landroid/graphics/Rect;
    .end local v22           #width:I
    .restart local v21       #transitionScale:F
    :cond_190
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScrollInvLimit:F

    move/from16 v23, v0

    sub-float v12, v23, v21

    goto/16 :goto_58

    .line 2554
    .end local v21           #transitionScale:F
    .restart local v8       #halfScale:F
    .restart local v11       #height:I
    .restart local v19       #scale:F
    .restart local v20       #scrollFrame:Landroid/graphics/Rect;
    .restart local v22       #width:I
    :cond_19a
    const/16 v23, 0xb

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_eb

    .line 2567
    .restart local v15       #newX:F
    .restart local v16       #newY:F
    :cond_1a4
    const/16 v23, 0x0

    move/from16 v5, v23

    goto/16 :goto_11e

    .line 2577
    .restart local v5       #animating:Z
    :cond_1aa
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mBackgroundColor:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    move v3, v5

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewCore;->drawContentPicture(Landroid/graphics/Canvas;IZZ)V

    goto :goto_181

    .line 2583
    :cond_1c5
    new-instance v17, Landroid/graphics/Paint;

    const/16 v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 2584
    .local v17, paint:Landroid/graphics/Paint;
    sget-object v23, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2585
    const/high16 v23, 0x41f0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2586
    const/16 v23, 0x50

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 2587
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move/from16 v23, v0

    sub-int v13, v23, v22

    .line 2588
    .local v13, maxX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move/from16 v23, v0

    sub-int v14, v23, v11

    .line 2590
    .local v14, maxY:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->drawMagnifyFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2594
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v18

    .line 2595
    .restart local v18       #sc:I
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 2596
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScrollX:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move v0, v13

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v9, v23, v24

    .line 2597
    .local v9, halfX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScrollLimit:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_257

    .line 2598
    const/high16 v23, 0x3f00

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move v3, v9

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->zoomFrameScaleX(IFF)F

    move-result v9

    .line 2600
    :cond_257
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScrollY:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move v0, v14

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v10, v23, v24

    .line 2601
    .local v10, halfY:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScrollLimit:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move v0, v11

    int-to-float v0, v0

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_28f

    .line 2602
    const/high16 v23, 0x3f00

    move-object/from16 v0, p0

    move v1, v11

    move/from16 v2, v23

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->zoomFrameScaleY(IFF)F

    move-result v10

    .line 2604
    :cond_28f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScrollX:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v9

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScrollY:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move v0, v11

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v10

    add-float v24, v24, v25

    move-object/from16 v0, p1

    move v1, v8

    move v2, v8

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2611
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawHistory:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2f0

    .line 2612
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 2617
    :goto_2d6
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2618
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0xb

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_18f

    .line 2619
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_18f

    .line 2614
    :cond_2f0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mBackgroundColor:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    move v3, v5

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewCore;->drawContentPicture(Landroid/graphics/Canvas;IZZ)V

    goto :goto_2d6
.end method

.method private scrollZoomFrame(IIF)Landroid/graphics/Rect;
    .registers 14
    .parameter "width"
    .parameter "height"
    .parameter "halfScale"

    .prologue
    const/high16 v9, 0x3f80

    const/high16 v8, 0x3f00

    .line 2483
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2484
    .local v3, scrollFrame:Landroid/graphics/Rect;
    iget v4, p0, Landroid/webkit/WebView;->mZoomScrollX:I

    iget v5, p0, Landroid/webkit/WebView;->mZoomScrollY:I

    iget v6, p0, Landroid/webkit/WebView;->mZoomScrollX:I

    add-int/2addr v6, p1

    iget v7, p0, Landroid/webkit/WebView;->mZoomScrollY:I

    add-int/2addr v7, p2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2486
    iget v4, p0, Landroid/webkit/WebView;->mContentWidth:I

    int-to-float v4, v4

    iget v5, p0, Landroid/webkit/WebView;->mZoomScrollLimit:F

    mul-float/2addr v4, v5

    int-to-float v5, p1

    cmpg-float v4, v4, v5

    if-gez v4, :cond_39

    .line 2487
    invoke-direct {p0, p1, p3, v9}, Landroid/webkit/WebView;->zoomFrameScaleX(IFF)F

    move-result v2

    .line 2488
    .local v2, scale:F
    int-to-float v4, p1

    mul-float/2addr v4, v2

    int-to-float v5, p1

    sub-float/2addr v4, v5

    mul-float v0, v4, v8

    .line 2489
    .local v0, offsetX:F
    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2490
    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2492
    .end local v0           #offsetX:F
    .end local v2           #scale:F
    :cond_39
    iget v4, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v4, v4

    iget v5, p0, Landroid/webkit/WebView;->mZoomScrollLimit:F

    mul-float/2addr v4, v5

    int-to-float v5, p2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5c

    .line 2493
    invoke-direct {p0, p2, p3, v9}, Landroid/webkit/WebView;->zoomFrameScaleY(IFF)F

    move-result v2

    .line 2494
    .restart local v2       #scale:F
    int-to-float v4, p2

    mul-float/2addr v4, v2

    int-to-float v5, p2

    sub-float/2addr v4, v5

    mul-float v1, v4, v8

    .line 2495
    .local v1, offsetY:F
    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2496
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 2498
    .end local v1           #offsetY:F
    .end local v2           #scale:F
    :cond_5c
    return-object v3
.end method

.method private scrollZoomGridScale(F)F
    .registers 5
    .parameter "invScale"

    .prologue
    const/high16 v2, 0x40c0

    .line 2437
    mul-float v1, p1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v0, v1, v2

    .line 2439
    .local v0, griddedInvScale:F
    const/high16 v1, 0x3f80

    div-float/2addr v1, v0

    return v1
.end method

.method private scrollZoomMagScale(F)F
    .registers 4
    .parameter "invScale"

    .prologue
    .line 2521
    const/high16 v0, 0x4000

    mul-float/2addr v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mInvActualScale:F

    add-float/2addr v0, v1

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    return v0
.end method

.method private scrollZoomX(F)F
    .registers 7
    .parameter "scale"

    .prologue
    .line 2443
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    .line 2444
    .local v2, width:I
    iget v3, p0, Landroid/webkit/WebView;->mContentWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    int-to-float v4, v2

    sub-float v0, v3, v4

    .line 2445
    .local v0, maxScrollZoomX:F
    iget v3, p0, Landroid/webkit/WebView;->mContentWidth:I

    sub-int v1, v3, v2

    .line 2446
    .local v1, maxX:I
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1c

    iget v3, p0, Landroid/webkit/WebView;->mZoomScrollX:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    int-to-float v4, v1

    div-float/2addr v3, v4

    :goto_1a
    neg-float v3, v3

    return v3

    :cond_1c
    const/high16 v3, 0x4000

    div-float v3, v0, v3

    goto :goto_1a
.end method

.method private scrollZoomY(F)F
    .registers 7
    .parameter "scale"

    .prologue
    .line 2451
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    .line 2452
    .local v0, height:I
    iget v3, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    int-to-float v4, v0

    sub-float v1, v3, v4

    .line 2453
    .local v1, maxScrollZoomY:F
    iget v3, p0, Landroid/webkit/WebView;->mContentHeight:I

    sub-int v2, v3, v0

    .line 2454
    .local v2, maxY:I
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1c

    iget v3, p0, Landroid/webkit/WebView;->mZoomScrollY:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    :goto_1a
    neg-float v3, v3

    return v3

    :cond_1c
    const/high16 v3, 0x4000

    div-float v3, v1, v3

    goto :goto_1a
.end method

.method private sendFinalFocus(IIII)V
    .registers 9
    .parameter "frame"
    .parameter "node"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 5079
    new-instance v0, Landroid/webkit/WebViewCore$FocusData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$FocusData;-><init>()V

    .line 5080
    .local v0, focusData:Landroid/webkit/WebViewCore$FocusData;
    iput p1, v0, Landroid/webkit/WebViewCore$FocusData;->mFrame:I

    .line 5081
    iput p2, v0, Landroid/webkit/WebViewCore$FocusData;->mNode:I

    .line 5082
    iput p3, v0, Landroid/webkit/WebViewCore$FocusData;->mX:I

    .line 5083
    iput p4, v0, Landroid/webkit/WebViewCore$FocusData;->mY:I

    .line 5084
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x87

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 5086
    return-void
.end method

.method private sendKitFocus()V
    .registers 4

    .prologue
    .line 5102
    new-instance v0, Landroid/webkit/WebViewCore$FocusData;

    iget-object v1, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    invoke-direct {v0, v1}, Landroid/webkit/WebViewCore$FocusData;-><init>(Landroid/webkit/WebViewCore$FocusData;)V

    .line 5103
    .local v0, focusData:Landroid/webkit/WebViewCore$FocusData;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x88

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5104
    return-void
.end method

.method private sendMotionUp(IIIIIIIZZ)V
    .registers 13
    .parameter "touchGeneration"
    .parameter "buildGeneration"
    .parameter "frame"
    .parameter "node"
    .parameter "x"
    .parameter "y"
    .parameter "size"
    .parameter "isClick"
    .parameter "retry"

    .prologue
    .line 5110
    new-instance v0, Landroid/webkit/WebViewCore$TouchUpData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$TouchUpData;-><init>()V

    .line 5111
    .local v0, touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    iput p1, v0, Landroid/webkit/WebViewCore$TouchUpData;->mMoveGeneration:I

    .line 5112
    iput p2, v0, Landroid/webkit/WebViewCore$TouchUpData;->mBuildGeneration:I

    .line 5113
    iput p7, v0, Landroid/webkit/WebViewCore$TouchUpData;->mSize:I

    .line 5114
    iput-boolean p8, v0, Landroid/webkit/WebViewCore$TouchUpData;->mIsClick:Z

    .line 5115
    iput-boolean p9, v0, Landroid/webkit/WebViewCore$TouchUpData;->mRetry:Z

    .line 5116
    iget-object v1, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    iput p3, v0, Landroid/webkit/WebViewCore$TouchUpData;->mFrame:I

    iput p3, v1, Landroid/webkit/WebViewCore$FocusData;->mFrame:I

    .line 5117
    iget-object v1, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    iput p4, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNode:I

    iput p4, v1, Landroid/webkit/WebViewCore$FocusData;->mNode:I

    .line 5118
    iget-object v1, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    iput p5, v0, Landroid/webkit/WebViewCore$TouchUpData;->mX:I

    iput p5, v1, Landroid/webkit/WebViewCore$FocusData;->mX:I

    .line 5119
    iget-object v1, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    iput p6, v0, Landroid/webkit/WebViewCore$TouchUpData;->mY:I

    iput p6, v1, Landroid/webkit/WebViewCore$FocusData;->mY:I

    .line 5120
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8c

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5121
    return-void
.end method

.method private sendOurVisibleRect()Landroid/graphics/Rect;
    .registers 7

    .prologue
    .line 1719
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1720
    .local v1, rect:Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 1721
    iget-boolean v2, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    if-eqz v2, :cond_17

    .line 1722
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    const/16 v3, 0x4f

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1725
    :cond_17
    iget-object v2, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 1726
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x6b

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 1728
    iput-object v1, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 1730
    :cond_2c
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1731
    .local v0, globalRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 1736
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x74

    invoke-virtual {v2, v3, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1737
    iput-object v0, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    .line 1739
    :cond_48
    return-object v1
.end method

.method private sendViewSizeZoom()Z
    .registers 7

    .prologue
    .line 1765
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1766
    .local v1, newWidth:I
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1775
    .local v0, newHeight:I
    iget v2, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-le v1, v2, :cond_21

    iget-boolean v2, p0, Landroid/webkit/WebView;->mWrapContent:Z

    if-eqz v2, :cond_21

    .line 1776
    const/4 v0, 0x0

    .line 1779
    :cond_21
    iget v2, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-ne v1, v2, :cond_29

    iget v2, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    if-eq v0, v2, :cond_3d

    .line 1780
    :cond_29
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x69

    new-instance v4, Ljava/lang/Float;

    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-direct {v4, v5}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 1782
    iput v1, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    .line 1783
    iput v0, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 1784
    const/4 v2, 0x1

    .line 1786
    :goto_3c
    return v2

    :cond_3d
    const/4 v2, 0x0

    goto :goto_3c
.end method

.method private setContentScrollBy(IIZ)V
    .registers 7
    .parameter "cx"
    .parameter "cy"
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 2079
    iget-boolean v1, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v1, :cond_6

    .line 2107
    :cond_5
    :goto_5
    return-void

    .line 2086
    :cond_6
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->contentToView(I)I

    move-result p1

    .line 2087
    invoke-direct {p0, p2}, Landroid/webkit/WebView;->contentToView(I)I

    move-result p2

    .line 2088
    iget-boolean v1, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v1, :cond_2a

    .line 2090
    if-eqz p2, :cond_22

    .line 2091
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2092
    .local v0, tempRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 2093
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 2094
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 2101
    .end local v0           #tempRect:Landroid/graphics/Rect;
    :cond_22
    if-nez p2, :cond_5

    if-eqz p1, :cond_5

    .line 2102
    invoke-direct {p0, p1, v2, p3, v2}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    goto :goto_5

    .line 2105
    :cond_2a
    invoke-direct {p0, p1, p2, p3, v2}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    goto :goto_5
.end method

.method private setContentScrollTo(II)Z
    .registers 7
    .parameter "cx"
    .parameter "cy"

    .prologue
    const/4 v3, 0x0

    .line 2113
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_7

    move v2, v3

    .line 2129
    :goto_6
    return v2

    .line 2121
    :cond_7
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v0

    .line 2122
    .local v0, vx:I
    invoke-direct {p0, p2}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v1

    .line 2125
    .local v1, vy:I
    invoke-direct {p0, v0, v1, v3, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 2126
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ne v2, v0, :cond_1a

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v2, v1, :cond_1c

    .line 2127
    :cond_1a
    const/4 v2, 0x1

    goto :goto_6

    :cond_1c
    move v2, v3

    .line 2129
    goto :goto_6
.end method

.method private setFocusData(IIIIIIZ)V
    .registers 9
    .parameter "moveGeneration"
    .parameter "buildGeneration"
    .parameter "frame"
    .parameter "node"
    .parameter "x"
    .parameter "y"
    .parameter "ignoreNullFocus"

    .prologue
    .line 5091
    iget-object v0, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    iput p1, v0, Landroid/webkit/WebViewCore$FocusData;->mMoveGeneration:I

    .line 5092
    iget-object v0, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    iput p2, v0, Landroid/webkit/WebViewCore$FocusData;->mBuildGeneration:I

    .line 5093
    iget-object v0, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    iput p3, v0, Landroid/webkit/WebViewCore$FocusData;->mFrame:I

    .line 5094
    iget-object v0, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    iput p4, v0, Landroid/webkit/WebViewCore$FocusData;->mNode:I

    .line 5095
    iget-object v0, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    iput p5, v0, Landroid/webkit/WebViewCore$FocusData;->mX:I

    .line 5096
    iget-object v0, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    iput p6, v0, Landroid/webkit/WebViewCore$FocusData;->mY:I

    .line 5097
    iget-object v0, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    iput-boolean p7, v0, Landroid/webkit/WebViewCore$FocusData;->mIgnoreNullFocus:Z

    .line 5098
    return-void
.end method

.method private setNewZoomScale(FZ)V
    .registers 12
    .parameter "scale"
    .parameter "force"

    .prologue
    const/high16 v8, 0x3f80

    .line 1666
    iget v5, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpg-float v5, p1, v5

    if-gez v5, :cond_35

    .line 1667
    iget p1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 1671
    :cond_a
    :goto_a
    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v5, p1, v5

    if-nez v5, :cond_12

    if-eqz p2, :cond_34

    .line 1672
    :cond_12
    iget-boolean v5, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v5, :cond_3e

    .line 1675
    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v5, p1, v5

    if-eqz v5, :cond_27

    iget-boolean v5, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-nez v5, :cond_27

    .line 1676
    iget-object v5, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget v6, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-virtual {v5, v6, p1}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 1678
    :cond_27
    iput p1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 1679
    div-float v5, v8, p1

    iput v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 1680
    iget-boolean v5, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-nez v5, :cond_34

    .line 1681
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 1712
    :cond_34
    :goto_34
    return-void

    .line 1668
    :cond_35
    iget v5, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpl-float v5, p1, v5

    if-lez v5, :cond_a

    .line 1669
    iget p1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    goto :goto_a

    .line 1687
    :cond_3e
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 1688
    .local v0, oldX:I
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 1689
    .local v1, oldY:I
    iget v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float v2, p1, v5

    .line 1690
    .local v2, ratio:F
    int-to-float v5, v0

    mul-float/2addr v5, v2

    sub-float v6, v2, v8

    iget v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    mul-float/2addr v6, v7

    add-float v3, v5, v6

    .line 1691
    .local v3, sx:F
    int-to-float v5, v1

    mul-float/2addr v5, v2

    sub-float v6, v2, v8

    iget v7, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    mul-float/2addr v6, v7

    add-float v4, v5, v6

    .line 1694
    .local v4, sy:F
    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v5, p1, v5

    if-eqz v5, :cond_69

    iget-boolean v5, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-nez v5, :cond_69

    .line 1695
    iget-object v5, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget v6, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-virtual {v5, v6, p1}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 1697
    :cond_69
    iput p1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 1698
    div-float v5, v8, p1

    iput v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 1703
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 1704
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v5

    iput v5, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 1706
    iget-boolean v5, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-nez v5, :cond_34

    .line 1707
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 1708
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_34
.end method

.method private setTextEntryRect(IIII)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3054
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->contentToView(I)I

    move-result p1

    .line 3055
    invoke-direct {p0, p2}, Landroid/webkit/WebView;->contentToView(I)I

    move-result p2

    .line 3056
    invoke-direct {p0, p3}, Landroid/webkit/WebView;->contentToView(I)I

    move-result p3

    .line 3057
    invoke-direct {p0, p4}, Landroid/webkit/WebView;->contentToView(I)I

    move-result p4

    .line 3058
    iget-object v0, p0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/TextDialog;->setRect(IIII)V

    .line 3059
    return-void
.end method

.method private setZoomScrollIn()V
    .registers 3

    .prologue
    .line 2766
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/webkit/WebView;->mZoomScrollStart:J

    .line 2767
    return-void
.end method

.method private spawnContentScrollTo(II)V
    .registers 7
    .parameter "cx"
    .parameter "cy"

    .prologue
    .line 2135
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_5

    .line 2143
    :goto_4
    return-void

    .line 2140
    :cond_5
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v0

    .line 2141
    .local v0, vx:I
    invoke-direct {p0, p2}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v1

    .line 2142
    .local v1, vy:I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto :goto_4
.end method

.method private startZoomScrollOut()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 2669
    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 2670
    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 2671
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v5

    if-eqz v5, :cond_76

    .line 2672
    iget-object v5, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v5}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 2673
    iget-object v5, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v5, v7}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 2683
    :cond_1e
    :goto_1e
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    .line 2684
    .local v3, width:I
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v2

    .line 2685
    .local v2, height:I
    shr-int/lit8 v1, v3, 0x1

    .line 2686
    .local v1, halfW:I
    int-to-float v5, v1

    iput v5, p0, Landroid/webkit/WebView;->mLastTouchX:F

    .line 2687
    shr-int/lit8 v0, v2, 0x1

    .line 2688
    .local v0, halfH:I
    int-to-float v5, v0

    iput v5, p0, Landroid/webkit/WebView;->mLastTouchY:F

    .line 2689
    iget-object v5, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2690
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/webkit/WebView;->mZoomScrollStart:J

    .line 2691
    iget v5, p0, Landroid/webkit/WebView;->mZoomScrollInvLimit:F

    invoke-direct {p0, v5}, Landroid/webkit/WebView;->scrollZoomMagScale(F)F

    move-result v5

    invoke-direct {p0, v3, v2, v5}, Landroid/webkit/WebView;->scrollZoomFrame(IIF)Landroid/graphics/Rect;

    move-result-object v4

    .line 2693
    .local v4, zoomFrame:Landroid/graphics/Rect;
    iget v5, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    sub-int/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Landroid/webkit/WebView;->mZoomScrollX:I

    .line 2695
    iget v5, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v5, v0

    int-to-float v5, v5

    iget v6, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    sub-int/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Landroid/webkit/WebView;->mZoomScrollY:I

    .line 2697
    invoke-virtual {p0, v7, v7}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 2698
    invoke-direct {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    .line 2703
    return-void

    .line 2676
    .end local v0           #halfH:I
    .end local v1           #halfW:I
    .end local v2           #height:I
    .end local v3           #width:I
    .end local v4           #zoomFrame:Landroid/graphics/Rect;
    :cond_76
    iget-object v5, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_81

    .line 2677
    iget-object v5, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v6, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2679
    :cond_81
    iget-object v5, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-eqz v5, :cond_1e

    .line 2680
    iget-object v5, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v5}, Landroid/webkit/WebView$ExtendedZoomControls;->hide()V

    goto :goto_1e
.end method

.method private updateSelection()V
    .registers 8

    .prologue
    .line 4323
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_5

    .line 4336
    :goto_4
    return-void

    .line 4327
    :cond_5
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v0

    .line 4328
    .local v0, contentX:I
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v1

    .line 4329
    .local v1, contentY:I
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    sub-int v3, v0, v3

    iget v4, p0, Landroid/webkit/WebView;->mNavSlop:I

    sub-int v4, v1, v4

    iget v5, p0, Landroid/webkit/WebView;->mNavSlop:I

    add-int/2addr v5, v0

    iget v6, p0, Landroid/webkit/WebView;->mNavSlop:I

    add-int/2addr v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4332
    .local v2, rect:Landroid/graphics/Rect;
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 4333
    iget-object v3, p0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    invoke-virtual {v3}, Landroid/webkit/TextDialog;->updateCachedTextfield()V

    .line 4335
    :cond_37
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->nativeSelectBestAt(Landroid/graphics/Rect;)V

    goto :goto_4
.end method

.method private updateTextEntry()V
    .registers 28

    .prologue
    .line 2920
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    move-object/from16 v23, v0

    if-nez v23, :cond_27

    .line 2921
    new-instance v23, Landroid/webkit/TextDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Landroid/webkit/TextDialog;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    .line 2923
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTextGeneration:I

    .line 2926
    :cond_27
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v23

    if-nez v23, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/webkit/TextDialog;->hasFocus()Z

    move-result v23

    if-eqz v23, :cond_55

    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x9

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_5e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0xb

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_5e

    .line 2929
    :cond_55
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mNeedsUpdateTextEntry:Z

    .line 3029
    :cond_5d
    :goto_5d
    return-void

    .line 2932
    :cond_5e
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v6

    .line 2933
    .local v6, alreadyThere:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move/from16 v23, v0

    if-eqz v23, :cond_70

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeUpdateFocusNode()Z

    move-result v23

    if-nez v23, :cond_7c

    .line 2934
    :cond_70
    if-eqz v6, :cond_5d

    .line 2935
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/webkit/TextDialog;->remove()V

    goto :goto_5d

    .line 2939
    :cond_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mFocusNode:Landroid/webkit/WebView$FocusNode;

    move-object v12, v0

    .line 2940
    .local v12, node:Landroid/webkit/WebView$FocusNode;
    move-object v0, v12

    iget-boolean v0, v0, Landroid/webkit/WebView$FocusNode;->mIsTextField:Z

    move/from16 v23, v0

    if-nez v23, :cond_9b

    move-object v0, v12

    iget-boolean v0, v0, Landroid/webkit/WebView$FocusNode;->mIsTextArea:Z

    move/from16 v23, v0

    if-nez v23, :cond_9b

    .line 2941
    if-eqz v6, :cond_5d

    .line 2942
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/webkit/TextDialog;->remove()V

    goto :goto_5d

    .line 2946
    :cond_9b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    move-object/from16 v23, v0

    move-object v0, v12

    iget v0, v0, Landroid/webkit/WebView$FocusNode;->mTextSize:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/webkit/TextDialog;->setTextSize(F)V

    .line 2947
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    move-result-object v19

    .line 2950
    .local v19, visibleRect:Landroid/graphics/Rect;
    move-object v0, v12

    iget-object v0, v0, Landroid/webkit/WebView$FocusNode;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v23

    if-eqz v23, :cond_5d

    .line 2954
    move-object v0, v12

    iget-object v0, v0, Landroid/webkit/WebView$FocusNode;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    .line 2955
    .local v21, x:I
    move-object v0, v12

    iget-object v0, v0, Landroid/webkit/WebView$FocusNode;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    .line 2956
    .local v22, y:I
    move-object v0, v12

    iget-object v0, v0, Landroid/webkit/WebView$FocusNode;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v20

    .line 2957
    .local v20, width:I
    move-object v0, v12

    iget-object v0, v0, Landroid/webkit/WebView$FocusNode;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 2958
    .local v9, height:I
    if-eqz v6, :cond_15e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    move-object/from16 v23, v0

    move-object v0, v12

    iget v0, v0, Landroid/webkit/WebView$FocusNode;->mNodePointer:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/webkit/TextDialog;->isSameTextField(I)Z

    move-result v23

    if-eqz v23, :cond_15e

    .line 2965
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/webkit/TextDialog;->getText()Landroid/text/Editable;

    move-result-object v13

    .line 2966
    .local v13, spannable:Landroid/text/Spannable;
    invoke-static {v13}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v14

    .line 2967
    .local v14, start:I
    invoke-static {v13}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v8

    .line 2968
    .local v8, end:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v20

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->setTextEntryRect(IIII)V

    .line 2972
    move-object v0, v12

    iget-object v0, v0, Landroid/webkit/WebView$FocusNode;->mText:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_159

    move-object v0, v12

    iget-object v0, v0, Landroid/webkit/WebView$FocusNode;->mText:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_159

    move-object v0, v12

    iget v0, v0, Landroid/webkit/WebView$FocusNode;->mRootTextGeneration:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTextGeneration:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_159

    .line 2974
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    move-object/from16 v23, v0

    move-object v0, v12

    iget-object v0, v0, Landroid/webkit/WebView$FocusNode;->mText:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/webkit/TextDialog;->setTextAndKeepSelection(Ljava/lang/String;)V

    goto/16 :goto_5d

    .line 2976
    :cond_159
    invoke-static {v13, v14, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_5d

    .line 2979
    .end local v8           #end:I
    .end local v13           #spannable:Landroid/text/Spannable;
    .end local v14           #start:I
    :cond_15e
    move-object v0, v12

    iget-object v0, v0, Landroid/webkit/WebView$FocusNode;->mText:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2980
    .local v16, text:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v20

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->setTextEntryRect(IIII)V

    .line 2981
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    move-object/from16 v23, v0

    move-object v0, v12

    iget-boolean v0, v0, Landroid/webkit/WebView$FocusNode;->mIsRtlText:Z

    move/from16 v24, v0

    if-eqz v24, :cond_254

    const/16 v24, 0x5

    :goto_17e
    invoke-virtual/range {v23 .. v24}, Landroid/webkit/TextDialog;->setGravity(I)V

    .line 2985
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    move-object/from16 v23, v0

    move-object v0, v12

    iget v0, v0, Landroid/webkit/WebView$FocusNode;->mNodePointer:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/webkit/TextDialog;->setNodePointer(I)V

    .line 2986
    const/4 v11, -0x1

    .line 2987
    .local v11, maxLength:I
    move-object v0, v12

    iget-boolean v0, v0, Landroid/webkit/WebView$FocusNode;->mIsTextField:Z

    move/from16 v23, v0

    if-eqz v23, :cond_203

    .line 2988
    iget v11, v12, Landroid/webkit/WebView$FocusNode;->mMaxLength:I

    .line 2989
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v23

    if-eqz v23, :cond_203

    move-object v0, v12

    iget-object v0, v0, Landroid/webkit/WebView$FocusNode;->mName:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_203

    .line 2991
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2992
    .local v7, data:Ljava/util/HashMap;
    const-string v23, "text"

    move-object v0, v12

    iget-object v0, v0, Landroid/webkit/WebView$FocusNode;->mText:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v7

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2993
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x6

    move-object v0, v12

    iget v0, v0, Landroid/webkit/WebView$FocusNode;->mNodePointer:I

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    .line 2996
    .local v17, update:Landroid/os/Message;
    new-instance v18, Landroid/webkit/WebView$UpdateTextEntryAdapter;

    move-object v0, v12

    iget-object v0, v0, Landroid/webkit/WebView$FocusNode;->mName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView$UpdateTextEntryAdapter;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2998
    .local v18, updater:Landroid/webkit/WebView$UpdateTextEntryAdapter;
    new-instance v15, Ljava/lang/Thread;

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2999
    .local v15, t:Ljava/lang/Thread;
    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    .line 3002
    .end local v7           #data:Ljava/util/HashMap;
    .end local v15           #t:Ljava/lang/Thread;
    .end local v17           #update:Landroid/os/Message;
    .end local v18           #updater:Landroid/webkit/WebView$UpdateTextEntryAdapter;
    :cond_203
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/webkit/TextDialog;->setMaxLength(I)V

    .line 3003
    const/4 v5, 0x0

    .line 3004
    .local v5, adapter:Landroid/webkit/TextDialog$AutoCompleteAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/TextDialog;->setAdapterCustom(Landroid/webkit/TextDialog$AutoCompleteAdapter;)V

    .line 3005
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    move-object/from16 v23, v0

    move-object v0, v12

    iget-boolean v0, v0, Landroid/webkit/WebView$FocusNode;->mIsTextField:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/webkit/TextDialog;->setSingleLine(Z)V

    .line 3006
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    move-object/from16 v23, v0

    move-object v0, v12

    iget-boolean v0, v0, Landroid/webkit/WebView$FocusNode;->mIsPassword:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/webkit/TextDialog;->setInPassword(Z)V

    .line 3007
    if-nez v16, :cond_258

    .line 3008
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    move-object/from16 v23, v0

    const-string v24, ""

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Landroid/webkit/TextDialog;->setText(Ljava/lang/CharSequence;II)V

    .line 3027
    :goto_249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/webkit/TextDialog;->requestFocus()Z

    goto/16 :goto_5d

    .line 2981
    .end local v5           #adapter:Landroid/webkit/TextDialog$AutoCompleteAdapter;
    .end local v11           #maxLength:I
    :cond_254
    const/16 v24, 0x0

    goto/16 :goto_17e

    .line 3020
    .restart local v5       #adapter:Landroid/webkit/TextDialog$AutoCompleteAdapter;
    .restart local v11       #maxLength:I
    :cond_258
    move-object v0, v12

    iget-boolean v0, v0, Landroid/webkit/WebView$FocusNode;->mIsTextField:Z

    move/from16 v23, v0

    if-eqz v23, :cond_273

    .line 3021
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v10

    .line 3022
    .local v10, length:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move v2, v10

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/TextDialog;->setText(Ljava/lang/CharSequence;II)V

    goto :goto_249

    .line 3024
    .end local v10           #length:I
    :cond_273
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/TextDialog;->setText(Ljava/lang/CharSequence;II)V

    goto :goto_249
.end method

.method private updateZoomButtonsEnabled()V
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 651
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_30

    move v0, v5

    .line 652
    .local v0, canZoomIn:Z
    :goto_d
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_32

    move v1, v5

    .line 653
    .local v1, canZoomOut:Z
    :goto_16
    if-nez v0, :cond_34

    if-nez v1, :cond_34

    .line 656
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 666
    :goto_23
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomOverviewButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/webkit/WebView;->canZoomScrollOut()Z

    move-result v3

    if-eqz v3, :cond_48

    move v3, v4

    :goto_2c
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 668
    return-void

    .end local v0           #canZoomIn:Z
    .end local v1           #canZoomOut:Z
    :cond_30
    move v0, v4

    .line 651
    goto :goto_d

    .restart local v0       #canZoomIn:Z
    :cond_32
    move v1, v4

    .line 652
    goto :goto_16

    .line 659
    .restart local v1       #canZoomOut:Z
    :cond_34
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v0}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 664
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v1}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    goto :goto_23

    :cond_48
    move v3, v6

    .line 666
    goto :goto_2c
.end method

.method private viewInvalidate()V
    .registers 1

    .prologue
    .line 5156
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5157
    return-void
.end method

.method private viewInvalidate(IIII)V
    .registers 9
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1616
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v0

    invoke-direct {p0, p2}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v1

    invoke-direct {p0, p3}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v2

    invoke-direct {p0, p4}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->invalidate(IIII)V

    .line 1618
    return-void
.end method

.method private viewInvalidateDelayed(JIIII)V
    .registers 14
    .parameter "delay"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1623
    invoke-direct {p0, p3}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v3

    invoke-direct {p0, p4}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v4

    invoke-direct {p0, p5}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v5

    invoke-direct {p0, p6}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/WebView;->postInvalidateDelayed(JIIII)V

    .line 1625
    return-void
.end method

.method private zoomFrameScaleX(IFF)F
    .registers 9
    .parameter "width"
    .parameter "halfScale"
    .parameter "noScale"

    .prologue
    const/high16 v4, 0x3f80

    .line 2503
    iget v1, p0, Landroid/webkit/WebView;->mContentWidth:I

    if-gt v1, p1, :cond_8

    move v1, p2

    .line 2508
    :goto_7
    return v1

    .line 2506
    :cond_8
    int-to-float v1, p1

    iget v2, p0, Landroid/webkit/WebView;->mContentWidth:I

    int-to-float v2, v2

    iget v3, p0, Landroid/webkit/WebView;->mZoomScrollLimit:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    int-to-float v2, p1

    iget v3, p0, Landroid/webkit/WebView;->mZoomScrollLimit:F

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    div-float v0, v1, v2

    .line 2508
    .local v0, part:F
    mul-float v1, p2, v0

    sub-float v2, v4, v0

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    goto :goto_7
.end method

.method private zoomFrameScaleY(IFF)F
    .registers 9
    .parameter "height"
    .parameter "halfScale"
    .parameter "noScale"

    .prologue
    const/high16 v4, 0x3f80

    .line 2512
    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    if-gt v1, p1, :cond_8

    move v1, p2

    .line 2517
    :goto_7
    return v1

    .line 2515
    :cond_8
    int-to-float v1, p1

    iget v2, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v2, v2

    iget v3, p0, Landroid/webkit/WebView;->mZoomScrollLimit:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    int-to-float v2, p1

    iget v3, p0, Landroid/webkit/WebView;->mZoomScrollLimit:F

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    div-float v0, v1, v2

    .line 2517
    .local v0, part:F
    mul-float v1, p2, v0

    sub-float v2, v4, v0

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    goto :goto_7
.end method

.method private zoomScrollOut()V
    .registers 2

    .prologue
    .line 2706
    invoke-direct {p0}, Landroid/webkit/WebView;->canZoomScrollOut()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2707
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 2713
    :goto_9
    return-void

    .line 2710
    :cond_a
    invoke-direct {p0}, Landroid/webkit/WebView;->startZoomScrollOut()V

    .line 2711
    const/16 v0, 0xa

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 2712
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_9
.end method

.method private zoomScrollTap(FF)V
    .registers 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x4000

    .line 2624
    iget v5, p0, Landroid/webkit/WebView;->mZoomScrollInvLimit:F

    invoke-direct {p0, v5}, Landroid/webkit/WebView;->scrollZoomGridScale(F)F

    move-result v2

    .line 2625
    .local v2, scale:F
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->scrollZoomX(F)F

    move-result v1

    .line 2626
    .local v1, left:F
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->scrollZoomY(F)F

    move-result v3

    .line 2627
    .local v3, top:F
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v4

    .line 2628
    .local v4, width:I
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    .line 2629
    .local v0, height:I
    int-to-float v5, v4

    mul-float/2addr v5, v2

    div-float/2addr v5, v6

    sub-float/2addr p1, v5

    .line 2630
    int-to-float v5, v0

    mul-float/2addr v5, v2

    div-float/2addr v5, v6

    sub-float/2addr p2, v5

    .line 2631
    iget v5, p0, Landroid/webkit/WebView;->mContentWidth:I

    sub-int/2addr v5, v4

    sub-float v6, p1, v1

    div-float/2addr v6, v2

    float-to-int v6, v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Landroid/webkit/WebView;->mZoomScrollX:I

    .line 2633
    iget v5, p0, Landroid/webkit/WebView;->mContentHeight:I

    sub-int/2addr v5, v0

    sub-float v6, p2, v3

    div-float/2addr v6, v2

    float-to-int v6, v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Landroid/webkit/WebView;->mZoomScrollY:I

    .line 2640
    return-void
.end method

.method private zoomWithPreview(F)Z
    .registers 11
    .parameter "scale"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    const-wide v5, 0x3fa999999999999aL

    .line 4189
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 4192
    .local v0, oldScale:F
    float-to-double v1, p1

    iget v3, p0, Landroid/webkit/WebView;->mDefaultScale:F

    float-to-double v3, v3

    sub-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1e

    float-to-double v1, p1

    iget v3, p0, Landroid/webkit/WebView;->mDefaultScale:F

    float-to-double v3, v3

    add-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1e

    .line 4193
    iget p1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 4196
    :cond_1e
    invoke-direct {p0, p1, v8}, Landroid/webkit/WebView;->setNewZoomScale(FZ)V

    .line 4198
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_40

    .line 4200
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/webkit/WebView;->mZoomStart:J

    .line 4201
    div-float v1, v7, v0

    iput v1, p0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    .line 4202
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    div-float v1, v7, v1

    iput v1, p0, Landroid/webkit/WebView;->mInvFinalZoomScale:F

    .line 4203
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    iput v1, p0, Landroid/webkit/WebView;->mZoomScale:F

    .line 4204
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4205
    const/4 v1, 0x1

    .line 4207
    :goto_3f
    return v1

    :cond_40
    move v1, v8

    goto :goto_3f
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6
    .parameter "obj"
    .parameter "interfaceName"

    .prologue
    .line 2249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2250
    .local v0, arg:Ljava/util/HashMap;
    const-string v1, "object"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2251
    const-string v1, "interfaceName"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2252
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8a

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2253
    return-void
.end method

.method public canGoBack()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1250
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1251
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 1252
    :try_start_8
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1253
    monitor-exit v0

    move v1, v2

    .line 1255
    :goto_10
    return v1

    :cond_11
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    if-lez v1, :cond_1d

    const/4 v1, 0x1

    :goto_18
    monitor-exit v0

    goto :goto_10

    .line 1257
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1a

    throw v1

    :cond_1d
    move v1, v2

    .line 1255
    goto :goto_18
.end method

.method public canGoBackOrForward(I)Z
    .registers 6
    .parameter "steps"

    .prologue
    const/4 v3, 0x0

    .line 1296
    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1297
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 1298
    :try_start_8
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1299
    monitor-exit v0

    move v2, v3

    .line 1302
    :goto_10
    return v2

    .line 1301
    :cond_11
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    add-int v1, v2, p1

    .line 1302
    .local v1, newIndex:I
    if-ltz v1, :cond_25

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_25

    const/4 v2, 0x1

    :goto_20
    monitor-exit v0

    goto :goto_10

    .line 1304
    .end local v1           #newIndex:I
    :catchall_22
    move-exception v2

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_22

    throw v2

    .restart local v1       #newIndex:I
    :cond_25
    move v2, v3

    .line 1302
    goto :goto_20
.end method

.method public canGoForward()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1272
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1273
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 1274
    :try_start_9
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1275
    monitor-exit v0

    move v1, v3

    .line 1277
    :goto_11
    return v1

    :cond_12
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_23

    move v1, v4

    :goto_1e
    monitor-exit v0

    goto :goto_11

    .line 1279
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_20

    throw v1

    :cond_23
    move v1, v3

    .line 1277
    goto :goto_1e
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .registers 2

    .prologue
    .line 1415
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1416
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->copyContentPicture()Landroid/graphics/Picture;

    move-result-object v0

    goto :goto_5
.end method

.method public clearCache(Z)V
    .registers 6
    .parameter "includeDiskFiles"

    .prologue
    const/4 v3, 0x0

    .line 1898
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6f

    if-eqz p1, :cond_c

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 1900
    return-void

    :cond_c
    move v2, v3

    .line 1898
    goto :goto_8
.end method

.method public clearFormData()V
    .registers 3

    .prologue
    .line 1907
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1908
    const/4 v0, 0x0

    .line 1909
    .local v0, adapter:Landroid/webkit/TextDialog$AutoCompleteAdapter;
    iget-object v1, p0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    invoke-virtual {v1, v0}, Landroid/webkit/TextDialog;->setAdapterCustom(Landroid/webkit/TextDialog$AutoCompleteAdapter;)V

    .line 1911
    .end local v0           #adapter:Landroid/webkit/TextDialog$AutoCompleteAdapter;
    :cond_c
    return-void
.end method

.method public clearHistory()V
    .registers 3

    .prologue
    .line 1917
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->setClearPending()V

    .line 1918
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1919
    return-void
.end method

.method public clearMatches()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2000
    iput-boolean v2, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    .line 2001
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetFindIsDown()V

    .line 2004
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 2005
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 2006
    return-void
.end method

.method public clearSslPreferences()V
    .registers 3

    .prologue
    .line 1926
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1927
    return-void
.end method

.method public clearView()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1400
    iput v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    .line 1401
    iput v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    .line 1402
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1403
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .registers 2

    .prologue
    .line 1791
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v0, :cond_7

    .line 1792
    iget v0, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 1794
    :goto_6
    return v0

    :cond_7
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v0

    goto :goto_6
.end method

.method public computeScroll()V
    .registers 4

    .prologue
    .line 2023
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2024
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 2025
    .local v0, oldX:I
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 2026
    .local v1, oldY:I
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 2027
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 2028
    invoke-virtual {p0}, Landroid/webkit/WebView;->postInvalidate()V

    .line 2029
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ne v0, v2, :cond_27

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v1, v2, :cond_2a

    .line 2032
    :cond_27
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 2037
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    :cond_2a
    :goto_2a
    return-void

    .line 2035
    :cond_2b
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->computeScroll()V

    goto :goto_2a
.end method

.method protected computeVerticalScrollRange()I
    .registers 3

    .prologue
    .line 1803
    iget-boolean v1, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v1, :cond_7

    .line 1804
    iget v1, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 1810
    :goto_6
    return v1

    .line 1806
    :cond_7
    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v0

    .line 1807
    .local v0, height:I
    iget-boolean v1, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    if-eqz v1, :cond_13

    .line 1808
    add-int/lit8 v0, v0, 0x4f

    :cond_13
    move v1, v0

    .line 1810
    goto :goto_6
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .registers 2

    .prologue
    .line 1938
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->clone()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public debugDump()V
    .registers 3

    .prologue
    .line 5219
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeDebugDump()V

    .line 5220
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5221
    return-void
.end method

.method deleteSelection(II)V
    .registers 7
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2884
    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 2885
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7a

    new-instance v2, Landroid/webkit/WebViewCore$FocusData;

    iget-object v3, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    invoke-direct {v2, v3}, Landroid/webkit/WebViewCore$FocusData;-><init>(Landroid/webkit/WebViewCore$FocusData;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 2887
    return-void
.end method

.method public destroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 899
    invoke-direct {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    .line 900
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_2c

    .line 903
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 904
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 906
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 907
    .local v0, webViewCore:Landroid/webkit/WebViewCore;
    iput-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 908
    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->destroy()V

    .line 910
    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 911
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 914
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    monitor-enter v1

    .line 915
    :try_start_26
    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 916
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_37

    .line 918
    .end local v0           #webViewCore:Landroid/webkit/WebViewCore;
    :cond_2c
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v1, :cond_36

    .line 919
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeDestroy()V

    .line 920
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    .line 922
    :cond_36
    return-void

    .line 916
    .restart local v0       #webViewCore:Landroid/webkit/WebViewCore;
    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 3485
    const/4 v0, 0x1

    .line 3487
    .local v0, dispatch:Z
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-nez v1, :cond_11

    .line 3488
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_18

    .line 3489
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    .line 3502
    :cond_11
    :goto_11
    if-eqz v0, :cond_20

    .line 3503
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 3506
    :goto_17
    return v1

    .line 3491
    :cond_18
    iget-boolean v1, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    if-nez v1, :cond_1d

    .line 3496
    const/4 v0, 0x0

    .line 3498
    :cond_1d
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    goto :goto_11

    :cond_20
    move v1, v2

    .line 3506
    goto :goto_17
.end method

.method public documentAsText(Landroid/os/Message;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 2225
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2226
    return-void
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 2015
    if-nez p1, :cond_3

    .line 2019
    :goto_2
    return-void

    .line 2018
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method drawHistory()Z
    .registers 2

    .prologue
    .line 2799
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    return v0
.end method

.method public emulateShiftHeld()V
    .registers 5

    .prologue
    .line 3300
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 3301
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 3302
    iget v2, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v0

    .line 3303
    .local v0, contentX:I
    iget v2, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v1

    .line 3304
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->nativeClearFocus(II)V

    .line 3305
    return-void
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 2217
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2218
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2295
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    .line 2296
    return-void
.end method

.method public findAll(Ljava/lang/String;)I
    .registers 5
    .parameter "find"

    .prologue
    .line 1959
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    .line 1960
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebView;->nativeFindAll(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1961
    .local v0, result:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 1962
    return v0
.end method

.method public findNext(Z)V
    .registers 2
    .parameter "forward"

    .prologue
    .line 1949
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeFindNext(Z)V

    .line 1950
    return-void
.end method

.method public flingScroll(II)V
    .registers 12
    .parameter "vx"
    .parameter "vy"

    .prologue
    const/4 v5, 0x0

    .line 4146
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeHorizontalScrollRange()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 4147
    .local v6, maxX:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeVerticalScrollRange()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 4149
    .local v8, maxY:I
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    move v3, p1

    move v4, p2

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 4150
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4151
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .registers 2

    .prologue
    .line 840
    iget-object v0, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method public getContentHeight()I
    .registers 2

    .prologue
    .line 1870
    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 1854
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 1855
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    .registers 12

    .prologue
    const/4 v7, 0x7

    const-string v10, "tel:"

    const-string v9, "mailto:"

    const-string v8, "geo:0,0?q="

    .line 1492
    iget v6, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v6, :cond_d

    .line 1493
    const/4 v6, 0x0

    .line 1534
    :goto_c
    return-object v6

    .line 1496
    :cond_d
    new-instance v3, Landroid/webkit/WebView$HitTestResult;

    invoke-direct {v3, p0}, Landroid/webkit/WebView$HitTestResult;-><init>(Landroid/webkit/WebView;)V

    .line 1498
    .local v3, result:Landroid/webkit/WebView$HitTestResult;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeUpdateFocusNode()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 1499
    iget-object v2, p0, Landroid/webkit/WebView;->mFocusNode:Landroid/webkit/WebView$FocusNode;

    .line 1500
    .local v2, node:Landroid/webkit/WebView$FocusNode;
    iget-boolean v6, v2, Landroid/webkit/WebView$FocusNode;->mIsTextField:Z

    if-nez v6, :cond_22

    iget-boolean v6, v2, Landroid/webkit/WebView$FocusNode;->mIsTextArea:Z

    if-eqz v6, :cond_54

    .line 1501
    :cond_22
    const/16 v6, 0x9

    invoke-static {v3, v6}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 1520
    .end local v2           #node:Landroid/webkit/WebView$FocusNode;
    :cond_27
    :goto_27
    invoke-virtual {v3}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v5

    .line 1521
    .local v5, type:I
    if-eqz v5, :cond_2f

    if-ne v5, v7, :cond_52

    .line 1524
    :cond_2f
    iget v6, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v6, v7

    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v0

    .line 1525
    .local v0, contentX:I
    iget v6, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v6, v7

    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v1

    .line 1526
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->nativeImageURI(II)Ljava/lang/String;

    move-result-object v4

    .line 1527
    .local v4, text:Ljava/lang/String;
    if-eqz v4, :cond_52

    .line 1528
    if-nez v5, :cond_b9

    const/4 v6, 0x5

    :goto_4c
    invoke-static {v3, v6}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 1531
    invoke-static {v3, v4}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    .end local v0           #contentX:I
    .end local v1           #contentY:I
    .end local v4           #text:Ljava/lang/String;
    :cond_52
    move-object v6, v3

    .line 1534
    goto :goto_c

    .line 1502
    .end local v5           #type:I
    .restart local v2       #node:Landroid/webkit/WebView$FocusNode;
    :cond_54
    iget-object v6, v2, Landroid/webkit/WebView$FocusNode;->mText:Ljava/lang/String;

    if-eqz v6, :cond_27

    .line 1503
    iget-object v4, v2, Landroid/webkit/WebView$FocusNode;->mText:Ljava/lang/String;

    .line 1504
    .restart local v4       #text:Ljava/lang/String;
    const-string v6, "tel:"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 1505
    const/4 v6, 0x2

    invoke-static {v3, v6}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 1506
    const-string v6, "tel:"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_27

    .line 1507
    :cond_74
    const-string v6, "mailto:"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 1508
    const/4 v6, 0x4

    invoke-static {v3, v6}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 1509
    const-string v6, "mailto:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_27

    .line 1510
    :cond_8e
    const-string v6, "geo:0,0?q="

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ad

    .line 1511
    const/4 v6, 0x3

    invoke-static {v3, v6}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 1512
    const-string v6, "geo:0,0?q="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 1514
    :cond_ad
    iget-boolean v6, v2, Landroid/webkit/WebView$FocusNode;->mIsAnchor:Z

    if-eqz v6, :cond_27

    .line 1515
    invoke-static {v3, v7}, Landroid/webkit/WebView$HitTestResult;->access$400(Landroid/webkit/WebView$HitTestResult;I)V

    .line 1516
    invoke-static {v3, v4}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto/16 :goto_27

    .line 1528
    .end local v2           #node:Landroid/webkit/WebView$FocusNode;
    .restart local v0       #contentX:I
    .restart local v1       #contentY:I
    .restart local v5       #type:I
    :cond_b9
    const/16 v6, 0x8

    goto :goto_4c
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 890
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewDatabase;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1834
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 1835
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getProgress()I
    .registers 2

    .prologue
    .line 1863
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getProgress()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .registers 2

    .prologue
    .line 1438
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    return v0
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .registers 2

    .prologue
    .line 2262
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1844
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 1845
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1821
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 1822
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method getWebViewCore()Landroid/webkit/WebViewCore;
    .registers 2

    .prologue
    .line 4532
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method public getZoomButtonsController()Landroid/widget/ZoomButtonsController;
    .registers 2

    .prologue
    .line 4299
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method public getZoomControls()Landroid/view/View;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4226
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_13

    .line 4227
    const-string v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4228
    const/4 v0, 0x0

    .line 4255
    :goto_12
    return-object v0

    .line 4230
    :cond_13
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-nez v0, :cond_2a

    .line 4231
    invoke-direct {p0}, Landroid/webkit/WebView;->createZoomControls()Landroid/webkit/WebView$ExtendedZoomControls;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    .line 4238
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->setVisibility(I)V

    .line 4239
    new-instance v0, Landroid/webkit/WebView$7;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$7;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    .line 4255
    :cond_2a
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    goto :goto_12
.end method

.method public goBack()V
    .registers 2

    .prologue
    .line 1264
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 1265
    return-void
.end method

.method public goBackOrForward(I)V
    .registers 3
    .parameter "steps"

    .prologue
    .line 1315
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->goBackOrForward(IZ)V

    .line 1316
    return-void
.end method

.method public goForward()V
    .registers 2

    .prologue
    .line 1286
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 1287
    return-void
.end method

.method public invokeZoomPicker()V
    .registers 5

    .prologue
    .line 1459
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1460
    const-string v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :goto_11
    return-void

    .line 1463
    :cond_12
    invoke-direct {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    .line 1464
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1465
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    goto :goto_11

    .line 1467
    :cond_26
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1468
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    sget-wide v2, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_11
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1184
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "failUrl"

    .prologue
    .line 1212
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1213
    invoke-virtual {p0, p2, p3, p4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    :goto_11
    return-void

    .line 1216
    :cond_12
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 1217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1218
    .local v0, arg:Ljava/util/HashMap;
    const-string v1, "baseUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    const-string v1, "mimeType"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    const-string v1, "encoding"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    const-string v1, "failUrl"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1224
    invoke-direct {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    goto :goto_11
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 4
    .parameter "url"

    .prologue
    .line 1146
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 1147
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1148
    invoke-direct {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    .line 1149
    return-void
.end method

.method moveSelection(FF)V
    .registers 16
    .parameter "xRate"
    .parameter "yRate"

    .prologue
    const/16 v12, -0x10

    const/4 v11, 0x0

    const/16 v10, 0x10

    .line 3972
    iget v7, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v7, :cond_a

    .line 4006
    :goto_9
    return-void

    .line 3974
    :cond_a
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v6

    .line 3975
    .local v6, width:I
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    .line 3976
    .local v0, height:I
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-direct {p0, p1, v6}, Landroid/webkit/WebView;->scaleTrackballX(FI)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 3977
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-direct {p0, p2, v0}, Landroid/webkit/WebView;->scaleTrackballY(FI)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 3978
    iget v7, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int v1, v6, v7

    .line 3979
    .local v1, maxX:I
    iget v7, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int v2, v0, v7

    .line 3980
    .local v2, maxY:I
    iget v7, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int/2addr v7, v10

    iget v8, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 3982
    iget v7, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int/2addr v7, v10

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 3994
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v7

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v8

    iget-boolean v9, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    invoke-direct {p0, v7, v8, v9}, Landroid/webkit/WebView;->nativeMoveSelection(IIZ)V

    .line 3996
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v8, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ge v7, v8, :cond_85

    move v3, v12

    .line 3999
    .local v3, scrollX:I
    :goto_62
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    iget v8, p0, Landroid/webkit/WebView;->mScrollY:I

    if-ge v7, v8, :cond_8f

    move v4, v12

    .line 4002
    .local v4, scrollY:I
    :goto_69
    const/4 v7, 0x1

    invoke-direct {p0, v3, v4, v7, v11}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 4003
    new-instance v5, Landroid/graphics/Rect;

    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    iget v9, p0, Landroid/webkit/WebView;->mSelectX:I

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Landroid/webkit/WebView;->mSelectY:I

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4004
    .local v5, select:Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 4005
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_9

    .line 3996
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    .end local v5           #select:Landroid/graphics/Rect;
    :cond_85
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    sub-int v8, v1, v10

    if-le v7, v8, :cond_8d

    move v3, v10

    goto :goto_62

    :cond_8d
    move v3, v11

    goto :goto_62

    .line 3999
    .restart local v3       #scrollX:I
    :cond_8f
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    sub-int v8, v2, v10

    if-le v7, v8, :cond_97

    move v4, v10

    goto :goto_69

    :cond_97
    move v4, v11

    goto :goto_69
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    .line 3332
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onAttachedToWindow()V

    .line 3333
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 3334
    .local v2, parent:Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_12

    .line 3335
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 3336
    .local v1, p:Landroid/view/ViewGroup;
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 3338
    .end local v1           #p:Landroid/view/ViewGroup;
    :cond_12
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 3354
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter "p"
    .parameter "child"

    .prologue
    .line 3357
    if-ne p2, p0, :cond_e

    .line 3358
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3359
    invoke-direct {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    .line 3360
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mNeedsUpdateTextEntry:Z

    .line 3363
    :cond_e
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 6

    .prologue
    .line 3342
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onDetachedFromWindow()V

    .line 3343
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 3344
    .local v2, parent:Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_13

    .line 3345
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 3346
    .local v1, p:Landroid/view/ViewGroup;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 3350
    .end local v1           #p:Landroid/view/ViewGroup;
    :cond_13
    iget-object v3, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 3351
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    const/16 v3, 0xb

    const/16 v2, 0x9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2301
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_b

    .line 2336
    :goto_a
    return-void

    .line 2304
    :cond_b
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-boolean v1, v1, Landroid/webkit/WebViewCore;->mEndScaleZoom:Z

    if-eqz v1, :cond_26

    .line 2305
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iput-boolean v4, v1, Landroid/webkit/WebViewCore;->mEndScaleZoom:Z

    .line 2306
    iget v1, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-lt v1, v2, :cond_26

    iget v1, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-gt v1, v3, :cond_26

    .line 2308
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 2309
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 2310
    const/4 v1, 0x7

    iput v1, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 2313
    :cond_26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2314
    .local v0, sc:I
    iget v1, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-lt v1, v2, :cond_39

    iget v1, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-gt v1, v3, :cond_39

    .line 2315
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->scrollZoomDraw(Landroid/graphics/Canvas;)V

    .line 2331
    :goto_35
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_a

    .line 2317
    :cond_39
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeRecomputeFocus()V

    .line 2326
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_62

    move v1, v5

    :goto_49
    iget v2, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_56

    iget-boolean v2, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    if-nez v2, :cond_56

    iget-boolean v2, p0, Landroid/webkit/WebView;->mGotEnterDown:Z

    if-eqz v2, :cond_64

    :cond_56
    move v2, v5

    :goto_57
    invoke-direct {p0, v1, v2, v4}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 2329
    iget v1, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawFocusRing:Z

    invoke-direct {p0, p1, v1, v2}, Landroid/webkit/WebView;->drawCoreAndFocusRing(Landroid/graphics/Canvas;IZ)V

    goto :goto_35

    :cond_62
    move v1, v4

    .line 2326
    goto :goto_49

    :cond_64
    move v2, v4

    goto :goto_57
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 7
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3426
    if-eqz p1, :cond_20

    .line 3429
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3430
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawFocusRing:Z

    .line 3431
    iget-boolean v0, p0, Landroid/webkit/WebView;->mNeedsUpdateTextEntry:Z

    if-eqz v0, :cond_15

    .line 3432
    invoke-direct {p0}, Landroid/webkit/WebView;->updateTextEntry()V

    .line 3433
    iput-boolean v1, p0, Landroid/webkit/WebView;->mNeedsUpdateTextEntry:Z

    .line 3435
    :cond_15
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_1c

    .line 3436
    invoke-direct {p0, v2, v1, v2}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 3455
    :cond_1c
    :goto_1c
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3456
    return-void

    .line 3446
    :cond_20
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 3447
    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawFocusRing:Z

    .line 3448
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_2f

    .line 3449
    invoke-direct {p0, v1, v1, v2}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 3452
    :cond_2f
    iput-boolean v1, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    goto :goto_1c
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .parameter "oldFocus"
    .parameter "newFocus"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3372
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v4, 0x17

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3072
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_a

    move v0, v3

    .line 3174
    :goto_9
    return v0

    .line 3089
    :cond_a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_24

    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_26

    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v1, 0xb

    if-gt v0, v1, :cond_26

    :cond_24
    move v0, v3

    .line 3092
    goto :goto_9

    .line 3095
    :cond_26
    iget-boolean v0, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    if-nez v0, :cond_6f

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusNodeWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_6f

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_38

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_6f

    .line 3098
    :cond_38
    iput-boolean v3, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 3099
    iput-boolean v2, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 3100
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeUpdateFocusNode()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 3101
    iget-object v8, p0, Landroid/webkit/WebView;->mFocusNode:Landroid/webkit/WebView$FocusNode;

    .line 3102
    .local v8, node:Landroid/webkit/WebView$FocusNode;
    iget-object v0, v8, Landroid/webkit/WebView$FocusNode;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 3103
    iget-object v0, v8, Landroid/webkit/WebView$FocusNode;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToView(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 3108
    .end local v8           #node:Landroid/webkit/WebView$FocusNode;
    :goto_58
    iget v0, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v6

    .line 3109
    .local v6, contentX:I
    iget v0, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v7

    .line 3110
    .local v7, contentY:I
    invoke-direct {p0, v6, v7}, Landroid/webkit/WebView;->nativeClearFocus(II)V

    .line 3113
    .end local v6           #contentX:I
    .end local v7           #contentY:I
    :cond_6f
    const/16 v0, 0x13

    if-lt p1, v0, :cond_a4

    const/16 v0, 0x16

    if-gt p1, v0, :cond_a4

    .line 3116
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 3117
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 3118
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->playSoundEffect(I)V

    move v0, v2

    .line 3119
    goto/16 :goto_9

    .line 3105
    :cond_90
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v1, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 3106
    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    iget v1, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mSelectY:I

    goto :goto_58

    :cond_a1
    move v0, v3

    .line 3122
    goto/16 :goto_9

    .line 3125
    :cond_a4
    if-eq p1, v4, :cond_aa

    const/16 v0, 0x42

    if-ne p1, v0, :cond_da

    .line 3127
    :cond_aa
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 3128
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_d7

    .line 3129
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotEnterDown:Z

    .line 3130
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3134
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_d5

    move v0, v2

    :goto_cf
    invoke-direct {p0, v0, v2, v2}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    move v0, v2

    .line 3135
    goto/16 :goto_9

    :cond_d5
    move v0, v3

    .line 3134
    goto :goto_cf

    :cond_d7
    move v0, v3

    .line 3138
    goto/16 :goto_9

    .line 3141
    :cond_da
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getNavDump()Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 3142
    packed-switch p1, :pswitch_data_124

    .line 3170
    :cond_e7
    :goto_e7
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusNodeWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_ed

    .line 3172
    :cond_ed
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move v0, v2

    .line 3174
    goto/16 :goto_9

    .line 3145
    :pswitch_f7
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->nativeDumpDisplayTree(Ljava/lang/String;)V

    goto :goto_e7

    .line 3152
    :pswitch_ff
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xaa

    const/16 v4, 0xc

    if-ne p1, v4, :cond_10c

    move v4, v2

    :goto_108
    invoke-virtual {v0, v1, v4, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_e7

    :cond_10c
    move v4, v3

    goto :goto_108

    .line 3160
    :pswitch_10e
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xab

    const/16 v4, 0xe

    if-ne p1, v4, :cond_11b

    move v4, v2

    :goto_117
    invoke-virtual {v0, v1, v4, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_e7

    :cond_11b
    move v4, v3

    goto :goto_117

    .line 3164
    :pswitch_11d
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeInstrumentReport()V

    move v0, v2

    .line 3165
    goto/16 :goto_9

    .line 3142
    nop

    :pswitch_data_124
    .packed-switch 0xb
        :pswitch_f7
        :pswitch_ff
        :pswitch_ff
        :pswitch_10e
        :pswitch_10e
        :pswitch_11d
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 14
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v10, 0x6

    const/16 v7, 0x9

    const/16 v6, 0x17

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3188
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v4, :cond_d

    move v4, v8

    .line 3289
    :goto_c
    return v4

    .line 3193
    :cond_d
    const/4 v4, 0x5

    if-ne p1, v4, :cond_40

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeUpdateFocusNode()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 3194
    iget-object v1, p0, Landroid/webkit/WebView;->mFocusNode:Landroid/webkit/WebView$FocusNode;

    .line 3195
    .local v1, node:Landroid/webkit/WebView$FocusNode;
    iget-object v2, v1, Landroid/webkit/WebView$FocusNode;->mText:Ljava/lang/String;

    .line 3196
    .local v2, text:Ljava/lang/String;
    iget-boolean v4, v1, Landroid/webkit/WebView$FocusNode;->mIsTextField:Z

    if-nez v4, :cond_40

    iget-boolean v4, v1, Landroid/webkit/WebView$FocusNode;->mIsTextArea:Z

    if-nez v4, :cond_40

    if-eqz v2, :cond_40

    const-string v4, "tel:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 3198
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3199
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v9

    .line 3200
    goto :goto_c

    .line 3207
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #node:Landroid/webkit/WebView$FocusNode;
    .end local v2           #text:Ljava/lang/String;
    :cond_40
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v4

    if-nez v4, :cond_4e

    iget-object v4, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v4, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_50

    :cond_4e
    move v4, v8

    .line 3208
    goto :goto_c

    .line 3212
    :cond_50
    iget v4, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-lt v4, v7, :cond_6c

    iget v4, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v5, 0xb

    if-gt v4, v5, :cond_6c

    .line 3213
    if-ne v6, p1, :cond_6a

    iget v4, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-eq v4, v7, :cond_6a

    .line 3215
    invoke-direct {p0}, Landroid/webkit/WebView;->setZoomScrollIn()V

    .line 3216
    iput v7, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 3217
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    move v4, v9

    .line 3218
    goto :goto_c

    :cond_6a
    move v4, v8

    .line 3220
    goto :goto_c

    .line 3223
    :cond_6c
    const/16 v4, 0x3b

    if-eq p1, v4, :cond_74

    const/16 v4, 0x3c

    if-ne p1, v4, :cond_7c

    .line 3225
    :cond_74
    invoke-direct {p0}, Landroid/webkit/WebView;->commitCopy()Z

    move-result v4

    if-eqz v4, :cond_7c

    move v4, v9

    .line 3226
    goto :goto_c

    .line 3230
    :cond_7c
    const/16 v4, 0x13

    if-lt p1, v4, :cond_86

    const/16 v4, 0x16

    if-gt p1, v4, :cond_86

    move v4, v8

    .line 3234
    goto :goto_c

    .line 3237
    :cond_86
    if-eq p1, v6, :cond_8c

    const/16 v4, 0x42

    if-ne p1, v4, :cond_102

    .line 3240
    :cond_8c
    iget-object v4, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3241
    iput-boolean v8, p0, Landroid/webkit/WebView;->mGotEnterDown:Z

    .line 3243
    if-ne v6, p1, :cond_c1

    .line 3244
    iget-boolean v4, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    if-eqz v4, :cond_9c

    move v4, v8

    .line 3245
    goto/16 :goto_c

    .line 3247
    :cond_9c
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 3248
    iget v4, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-ne v4, v10, :cond_b0

    .line 3249
    invoke-direct {p0}, Landroid/webkit/WebView;->zoomScrollOut()V

    :goto_ad
    move v4, v9

    .line 3258
    goto/16 :goto_c

    .line 3254
    :cond_b0
    iget-object v4, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3256
    iput v10, p0, Landroid/webkit/WebView;->mTouchMode:I

    goto :goto_ad

    .line 3262
    :cond_c1
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 3265
    .local v3, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeUpdateFocusNode()Z

    move-result v4

    if-eqz v4, :cond_ff

    .line 3266
    iget-object v4, p0, Landroid/webkit/WebView;->mFocusNode:Landroid/webkit/WebView$FocusNode;

    iget-object v4, v4, Landroid/webkit/WebView$FocusNode;->mBounds:Landroid/graphics/Rect;

    invoke-static {v4, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_fc

    .line 3267
    invoke-direct {p0, v9}, Landroid/webkit/WebView;->nativeSetFollowedLink(Z)V

    .line 3268
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x87

    new-instance v6, Landroid/webkit/WebViewCore$FocusData;

    iget-object v7, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    invoke-direct {v6, v7}, Landroid/webkit/WebViewCore$FocusData;-><init>(Landroid/webkit/WebViewCore$FocusData;)V

    invoke-virtual {v4, v5, v9, v8, v6}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 3271
    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 3272
    iget-object v4, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget-object v5, p0, Landroid/webkit/WebView;->mFocusNode:Landroid/webkit/WebView$FocusNode;

    iget-object v5, v5, Landroid/webkit/WebView$FocusNode;->mText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_fc

    .line 3275
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x76

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    :cond_fc
    move v4, v9

    .line 3278
    goto/16 :goto_c

    :cond_ff
    move v4, v8

    .line 3281
    goto/16 :goto_c

    .line 3285
    .end local v3           #visibleRect:Landroid/graphics/Rect;
    :cond_102
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusNodeWantsKeyEvents()Z

    move-result v4

    if-nez v4, :cond_108

    .line 3287
    :cond_108
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x68

    invoke-virtual {v4, v5, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move v4, v9

    .line 3289
    goto/16 :goto_c
.end method

.method protected onMeasure(II)V
    .registers 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 4411
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    .line 4413
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 4414
    .local v2, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 4415
    .local v3, heightSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 4416
    .local v6, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 4418
    .local v7, widthSize:I
    move v4, v3

    .line 4419
    .local v4, measuredHeight:I
    move v5, v7

    .line 4422
    .local v5, measuredWidth:I
    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    .line 4423
    .local v0, contentHeight:I
    iget v1, p0, Landroid/webkit/WebView;->mContentWidth:I

    .line 4427
    .local v1, contentWidth:I
    const/high16 v8, 0x4000

    if-eq v2, v8, :cond_3f

    .line 4428
    iput-boolean v10, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    .line 4429
    move v4, v0

    .line 4430
    const/high16 v8, -0x8000

    if-ne v2, v8, :cond_2b

    .line 4433
    if-le v4, v3, :cond_2b

    .line 4434
    move v4, v3

    .line 4435
    iput-boolean v9, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    .line 4441
    :cond_2b
    :goto_2b
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v8, :cond_34

    .line 4442
    iget-boolean v8, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    invoke-direct {p0, v8}, Landroid/webkit/WebView;->nativeSetHeightCanMeasure(Z)V

    .line 4445
    :cond_34
    if-nez v6, :cond_42

    .line 4446
    iput-boolean v10, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    .line 4447
    move v5, v1

    .line 4452
    :goto_39
    monitor-enter p0

    .line 4453
    :try_start_3a
    invoke-virtual {p0, v5, v4}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    .line 4454
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_45

    .line 4455
    return-void

    .line 4439
    :cond_3f
    iput-boolean v9, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    goto :goto_2b

    .line 4449
    :cond_42
    iput-boolean v9, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    goto :goto_39

    .line 4454
    :catchall_45
    move-exception v8

    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v8
.end method

.method onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .registers 13
    .parameter "schemePlusHost"
    .parameter "username"
    .parameter "password"
    .parameter "resumeMsg"

    .prologue
    const-string v7, "username"

    const-string v6, "password"

    const-string v5, "host"

    .line 716
    const/4 v1, 0x0

    .line 717
    .local v1, rVal:Z
    if-nez p4, :cond_f

    .line 719
    iget-object v3, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v3, p1, p2, p3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :goto_e
    return v1

    .line 721
    :cond_f
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 723
    .local v2, remember:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "username"

    invoke-virtual {v3, v7, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "password"

    invoke-virtual {v3, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iput-object p4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 728
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 730
    .local v0, neverRemember:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "username"

    invoke-virtual {v3, v7, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "password"

    invoke-virtual {v3, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 735
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x10401bf

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10401c4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10401c5

    new-instance v5, Landroid/webkit/WebView$6;

    invoke-direct {v5, p0, p4}, Landroid/webkit/WebView$6;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10401c6

    new-instance v5, Landroid/webkit/WebView$5;

    invoke-direct {v5, p0, v2}, Landroid/webkit/WebView$5;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10401c7

    new-instance v5, Landroid/webkit/WebView$4;

    invoke-direct {v5, p0, v0}, Landroid/webkit/WebView$4;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Landroid/webkit/WebView$3;

    invoke-direct {v4, p0, p4}, Landroid/webkit/WebView$3;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 763
    const/4 v1, 0x1

    goto/16 :goto_e
.end method

.method protected onScrollChanged(IIII)V
    .registers 5
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 3478
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onScrollChanged(IIII)V

    .line 3479
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 3480
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 8
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    const/high16 v1, 0x3f00

    .line 3460
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    .line 3462
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 3463
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 3466
    iget-boolean v0, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    if-nez v0, :cond_2a

    .line 3467
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x3f0

    iget v2, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 3473
    :cond_2a
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->setNewZoomScale(FZ)V

    .line 3474
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 29
    .parameter "ev"

    .prologue
    .line 3522
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move/from16 v22, v0

    if-eqz v22, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isClickable()Z

    move-result v22

    if-eqz v22, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isLongClickable()Z

    move-result v22

    if-nez v22, :cond_17

    .line 3523
    :cond_14
    const/16 v22, 0x0

    .line 3849
    :goto_16
    return v22

    .line 3531
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 3532
    .local v4, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    .line 3533
    .local v20, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    .line 3534
    .local v21, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    .line 3540
    .local v12, eventTime:J
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v22

    const/16 v23, 0x1

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v22, v20, v22

    if-lez v22, :cond_45

    .line 3541
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v22

    const/16 v23, 0x1

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v20, v0

    .line 3543
    :cond_45
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v22

    const/16 v23, 0x1

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v22, v21, v22

    if-lez v22, :cond_63

    .line 3544
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v22

    const/16 v23, 0x1

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v21, v0

    .line 3548
    :cond_63
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    move/from16 v22, v0

    if-eqz v22, :cond_100

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_100

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x9

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_100

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_100

    const/16 v22, 0x2

    move v0, v4

    move/from16 v1, v22

    if-ne v0, v1, :cond_aa

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastSentTouchTime:J

    move-wide/from16 v22, v0

    sub-long v22, v12, v22

    const-wide/16 v24, 0x64

    cmp-long v22, v22, v24

    if-lez v22, :cond_100

    .line 3553
    :cond_aa
    new-instance v19, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v19 .. v19}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 3554
    .local v19, ted:Landroid/webkit/WebViewCore$TouchEventData;
    move v0, v4

    move-object/from16 v1, v19

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 3555
    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 3556
    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 3557
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v22, v0

    const/16 v23, 0x8d

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3558
    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastSentTouchTime:J

    .line 3561
    .end local v19           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_100
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchX:F

    move/from16 v22, v0

    sub-float v22, v22, v20

    move/from16 v0, v22

    float-to-int v0, v0

    move v9, v0

    .line 3562
    .local v9, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchY:F

    move/from16 v22, v0

    sub-float v22, v22, v21

    move/from16 v0, v22

    float-to-int v0, v0

    move v10, v0

    .line 3564
    .local v10, deltaY:I
    packed-switch v4, :pswitch_data_846

    .line 3849
    :cond_11b
    :goto_11b
    const/16 v22, 0x1

    goto/16 :goto_16

    .line 3566
    :pswitch_11f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x9

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_11b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_11b

    .line 3570
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1ab

    .line 3571
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScrollX:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastScrollX:I

    .line 3572
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScrollY:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastScrollY:I

    .line 3597
    :cond_161
    :goto_161
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_186

    .line 3598
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    const-wide/16 v24, 0xc8

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3602
    :cond_186
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 3603
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 3604
    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 3605
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3606
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    goto/16 :goto_11b

    .line 3574
    :cond_1ab
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Scroller;->isFinished()Z

    move-result v22

    if-nez v22, :cond_1d4

    .line 3575
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3576
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 3577
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_161

    .line 3578
    :cond_1d4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    move/from16 v22, v0

    if-eqz v22, :cond_243

    .line 3579
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v22, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSelectX:I

    .line 3580
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v22, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSelectY:I

    .line 3581
    const/16 v22, 0x8

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 3585
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSelectX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSelectY:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->nativeMoveSelection(IIZ)V

    .line 3587
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mExtendSelection:Z

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mTouchSelection:Z

    goto/16 :goto_161

    .line 3589
    :cond_243
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 3590
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mPreventDrag:Z

    .line 3591
    sget-boolean v22, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v22, :cond_161

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    move-wide/from16 v22, v0

    sub-long v22, v12, v22

    const-wide/16 v24, 0x3e8

    cmp-long v22, v22, v24

    if-gez v22, :cond_161

    .line 3592
    const v22, 0x111d6

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    move-wide/from16 v25, v0

    sub-long v25, v12, v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_161

    .line 3610
    :pswitch_291
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_11b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x9

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_11b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_11b

    .line 3616
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2d4

    .line 3618
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->moveZoomScrollWindow(FF)V

    goto/16 :goto_11b

    .line 3621
    :cond_2d4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3623
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_465

    .line 3624
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_351

    .line 3625
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v22, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSelectX:I

    .line 3626
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v22, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSelectY:I

    .line 3630
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSelectX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSelectY:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v23

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->nativeMoveSelection(IIZ)V

    .line 3632
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_11b

    .line 3635
    :cond_351
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mPreventDrag:Z

    move/from16 v22, v0

    if-nez v22, :cond_11b

    mul-int v22, v9, v9

    mul-int v23, v10, v10

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_11b

    .line 3640
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_387

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4fb

    .line 3642
    :cond_387
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    .line 3648
    :cond_392
    :goto_392
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 3649
    .local v5, ax:I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 3650
    .local v6, ay:I
    move v0, v5

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3fc0

    move v0, v6

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    cmpl-float v22, v22, v23

    if-lez v22, :cond_51a

    .line 3651
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 3652
    if-lez v9, :cond_516

    const/16 v22, 0x1

    :goto_3b6
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mSnapPositive:Z

    .line 3658
    :cond_3bc
    :goto_3bc
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 3659
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/webkit/WebViewCore;->pauseUpdate(Landroid/webkit/WebViewCore;)V

    .line 3660
    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v7

    .line 3661
    .local v7, contentX:I
    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v8

    .line 3662
    .local v8, contentY:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v22

    if-eqz v22, :cond_406

    .line 3663
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/webkit/TextDialog;->updateCachedTextfield()V

    .line 3665
    :cond_406
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->nativeClearFocus(II)V

    .line 3667
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScale:F

    move/from16 v22, v0

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_428

    .line 3668
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v22, v0

    const/16 v23, 0x79

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v22 .. v25}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3671
    :cond_428
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v16

    .line 3672
    .local v16, settings:Landroid/webkit/WebSettings;
    invoke-virtual/range {v16 .. v16}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v22

    if-eqz v22, :cond_465

    invoke-virtual/range {v16 .. v16}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v22

    if-eqz v22, :cond_465

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v22

    if-nez v22, :cond_465

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->canZoomScrollOut()Z

    move-result v22

    if-nez v22, :cond_45a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_465

    .line 3677
    :cond_45a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 3682
    .end local v5           #ax:I
    .end local v6           #ay:I
    .end local v7           #contentX:I
    .end local v8           #contentY:I
    .end local v16           #settings:Landroid/webkit/WebSettings;
    :cond_465
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v22, v0

    add-int v22, v22, v9

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v14

    .line 3683
    .local v14, newScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v22, v0

    sub-int v9, v14, v22

    .line 3684
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v22, v0

    add-int v22, v22, v10

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v15

    .line 3685
    .local v15, newScrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v22, v0

    sub-int v10, v15, v22

    .line 3686
    const/4 v11, 0x0

    .line 3687
    .local v11, done:Z
    if-nez v9, :cond_541

    if-nez v10, :cond_541

    .line 3688
    const/4 v11, 0x1

    .line 3741
    :goto_49b
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v22

    if-nez v22, :cond_4f5

    .line 3742
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_6b7

    const/16 v22, 0x1

    move/from16 v18, v22

    .line 3743
    .local v18, showPlusMinus:Z
    :goto_4b9
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->canZoomScrollOut()Z

    move-result v17

    .line 3744
    .local v17, showMagnify:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4f5

    if-nez v18, :cond_4c9

    if-eqz v17, :cond_4f5

    .line 3745
    :cond_4c9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/webkit/WebView$ExtendedZoomControls;->getVisibility()I

    move-result v22

    if-nez v22, :cond_6bd

    .line 3746
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3750
    :goto_4e4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    sget-wide v24, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3755
    .end local v17           #showMagnify:Z
    .end local v18           #showPlusMinus:Z
    :cond_4f5
    if-eqz v11, :cond_11b

    .line 3758
    const/16 v22, 0x0

    goto/16 :goto_16

    .line 3643
    .end local v11           #done:Z
    .end local v14           #newScrollX:I
    .end local v15           #newScrollY:I
    :cond_4fb
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_392

    .line 3644
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_392

    .line 3652
    .restart local v5       #ax:I
    .restart local v6       #ay:I
    :cond_516
    const/16 v22, 0x0

    goto/16 :goto_3b6

    .line 3653
    :cond_51a
    move v0, v6

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3fc0

    move v0, v5

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    cmpl-float v22, v22, v23

    if-lez v22, :cond_3bc

    .line 3654
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 3655
    if-lez v10, :cond_53e

    const/16 v22, 0x1

    :goto_536
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mSnapPositive:Z

    goto/16 :goto_3bc

    :cond_53e
    const/16 v22, 0x0

    goto :goto_536

    .line 3690
    .end local v5           #ax:I
    .end local v6           #ay:I
    .restart local v11       #done:Z
    .restart local v14       #newScrollX:I
    .restart local v15       #newScrollY:I
    :cond_541
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_55d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5d5

    .line 3691
    :cond_55d
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 3692
    .restart local v5       #ax:I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 3693
    .restart local v6       #ay:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_610

    .line 3695
    move v0, v6

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3fc0

    move v0, v5

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    cmpl-float v22, v22, v23

    if-lez v22, :cond_592

    const/16 v22, 0x50

    move v0, v6

    move/from16 v1, v22

    if-le v0, v1, :cond_592

    .line 3697
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 3700
    :cond_592
    move v0, v5

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3fc0

    move v0, v6

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    cmpl-float v22, v22, v23

    if-lez v22, :cond_5d5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5ba

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move v0, v9

    move/from16 v1, v22

    if-lt v0, v1, :cond_5cd

    :cond_5ba
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    move/from16 v22, v0

    if-nez v22, :cond_5d5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move/from16 v22, v0

    move v0, v9

    move/from16 v1, v22

    if-le v0, v1, :cond_5d5

    .line 3705
    :cond_5cd
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 3724
    .end local v5           #ax:I
    .end local v6           #ay:I
    :cond_5d5
    :goto_5d5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5f1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_674

    .line 3726
    :cond_5f1
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 3727
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 3737
    :goto_601
    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 3738
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mUserScroll:Z

    goto/16 :goto_49b

    .line 3709
    .restart local v5       #ax:I
    .restart local v6       #ay:I
    :cond_610
    move v0, v5

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3fc0

    move v0, v6

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    cmpl-float v22, v22, v23

    if-lez v22, :cond_62f

    const/16 v22, 0x50

    move v0, v5

    move/from16 v1, v22

    if-le v0, v1, :cond_62f

    .line 3711
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 3714
    :cond_62f
    move v0, v6

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3fc0

    move v0, v5

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    cmpl-float v22, v22, v23

    if-lez v22, :cond_5d5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    move/from16 v22, v0

    if-eqz v22, :cond_657

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move v0, v10

    move/from16 v1, v22

    if-lt v0, v1, :cond_66a

    :cond_657
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    move/from16 v22, v0

    if-nez v22, :cond_5d5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move/from16 v22, v0

    move v0, v10

    move/from16 v1, v22

    if-le v0, v1, :cond_5d5

    .line 3719
    :cond_66a
    const/16 v22, 0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    goto/16 :goto_5d5

    .line 3728
    .end local v5           #ax:I
    .end local v6           #ay:I
    :cond_674
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_690

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move/from16 v22, v0

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6a2

    .line 3730
    :cond_690
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 3731
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    goto/16 :goto_601

    .line 3733
    :cond_6a2
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 3734
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 3735
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    goto/16 :goto_601

    .line 3742
    :cond_6b7
    const/16 v22, 0x0

    move/from16 v18, v22

    goto/16 :goto_4b9

    .line 3748
    .restart local v17       #showMagnify:Z
    .restart local v18       #showPlusMinus:Z
    :cond_6bd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView$ExtendedZoomControls;->show(ZZ)V

    goto/16 :goto_4e4

    .line 3763
    .end local v11           #done:Z
    .end local v14           #newScrollX:I
    .end local v15           #newScrollY:I
    .end local v17           #showMagnify:Z
    .end local v18           #showPlusMinus:Z
    :pswitch_6ce
    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchUpTime:J

    .line 3764
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_852

    .line 3817
    :goto_6dc
    :pswitch_6dc
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-eqz v22, :cond_11b

    .line 3818
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->recycle()V

    .line 3819
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_11b

    .line 3768
    :pswitch_6f7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    .line 3769
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    .line 3770
    const/16 v22, 0x7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 3771
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    goto :goto_6dc

    .line 3774
    :pswitch_719
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->commitCopy()Z

    .line 3775
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mTouchSelection:Z

    goto :goto_6dc

    .line 3790
    :pswitch_725
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastTouchTime:J

    move-wide/from16 v22, v0

    sub-long v22, v12, v22

    const-wide/16 v24, 0xc8

    cmp-long v22, v22, v24

    if-gez v22, :cond_73c

    .line 3791
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->zoomScrollTap(FF)V

    .line 3794
    :cond_73c
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->setZoomScrollIn()V

    .line 3795
    const/16 v22, 0x9

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 3796
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_6dc

    .line 3802
    :pswitch_74b
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastTouchTime:J

    move-wide/from16 v22, v0

    sub-long v22, v12, v22

    const-wide/16 v24, 0xfa

    cmp-long v22, v22, v24

    if-gtz v22, :cond_76b

    .line 3803
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3804
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doFling()V

    goto/16 :goto_6dc

    .line 3807
    :cond_76b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/webkit/WebViewCore;->resumeUpdate(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_6dc

    .line 3827
    :pswitch_776
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-eqz v22, :cond_78f

    .line 3828
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->recycle()V

    .line 3829
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3831
    :cond_78f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7ab

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_82c

    .line 3833
    :cond_7ab
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScrollX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScrollY:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 3837
    :cond_7c0
    :goto_7c0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    .line 3838
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    .line 3839
    const/16 v22, 0x7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 3840
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchX:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v7

    .line 3841
    .restart local v7       #contentX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchY:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v8

    .line 3842
    .restart local v8       #contentY:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v22

    if-eqz v22, :cond_823

    .line 3843
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/webkit/TextDialog;->updateCachedTextfield()V

    .line 3845
    :cond_823
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->nativeClearFocus(II)V

    goto/16 :goto_11b

    .line 3834
    .end local v7           #contentX:I
    .end local v8           #contentY:I
    :cond_82c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7c0

    .line 3835
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/webkit/WebViewCore;->resumeUpdate(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_7c0

    .line 3564
    nop

    :pswitch_data_846
    .packed-switch 0x0
        :pswitch_11f
        :pswitch_6ce
        :pswitch_291
        :pswitch_776
    .end packed-switch

    .line 3764
    :pswitch_data_852
    .packed-switch 0x1
        :pswitch_6f7
        :pswitch_6dc
        :pswitch_74b
        :pswitch_6f7
        :pswitch_6f7
        :pswitch_6dc
        :pswitch_6dc
        :pswitch_719
        :pswitch_6dc
        :pswitch_6dc
        :pswitch_725
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v6, 0xc8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3891
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 3892
    .local v0, time:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_29

    .line 3893
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1c

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageDown(Z)Z

    .line 3894
    :cond_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_27

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageUp(Z)Z

    :cond_27
    move v2, v4

    .line 3968
    :goto_28
    return v2

    .line 3897
    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_71

    .line 3898
    iget-object v2, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3899
    iput-boolean v4, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 3900
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v2, :cond_4b

    .line 3901
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_6f

    move v2, v4

    :goto_48
    invoke-direct {p0, v2, v4, v4}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 3903
    :cond_4b
    iget-wide v2, p0, Landroid/webkit/WebView;->mLastFocusTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-gtz v2, :cond_64

    iget-object v2, p0, Landroid/webkit/WebView;->mLastFocusBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetFocusRingBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 3905
    iget-object v2, p0, Landroid/webkit/WebView;->mLastFocusBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->nativeSelectBestAt(Landroid/graphics/Rect;)V

    .line 3912
    :cond_64
    invoke-virtual {p0}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-virtual {p0}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    :cond_6d
    move v2, v5

    .line 3913
    goto :goto_28

    :cond_6f
    move v2, v5

    .line 3901
    goto :goto_48

    .line 3915
    :cond_71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_92

    .line 3917
    iget-object v2, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3918
    iput-boolean v5, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 3919
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    .line 3920
    iget-boolean v2, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    if-eqz v2, :cond_8d

    .line 3921
    iget-boolean v2, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    if-eqz v2, :cond_8f

    .line 3922
    invoke-direct {p0}, Landroid/webkit/WebView;->commitCopy()Z

    :cond_8d
    :goto_8d
    move v2, v5

    .line 3932
    goto :goto_28

    .line 3924
    :cond_8f
    iput-boolean v4, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    goto :goto_8d

    .line 3934
    :cond_92
    iget-boolean v2, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    if-eqz v2, :cond_9c

    iget-boolean v2, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    if-nez v2, :cond_9c

    move v2, v5

    .line 3936
    goto :goto_28

    .line 3939
    :cond_9c
    iget v2, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_a3

    move v2, v4

    .line 3941
    goto :goto_28

    .line 3943
    :cond_a3
    iget-boolean v2, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    if-eqz v2, :cond_a9

    move v2, v4

    .line 3945
    goto :goto_28

    .line 3947
    :cond_a9
    iget-wide v2, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-gez v2, :cond_b4

    move v2, v4

    .line 3949
    goto/16 :goto_28

    .line 3952
    :cond_b4
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 3953
    iget-wide v2, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_c5

    .line 3958
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    .line 3959
    iput v5, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    iput v5, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 3961
    :cond_c5
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 3965
    iget v2, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 3966
    iget v2, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    .line 3967
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->doTrackball(J)V

    move v2, v4

    .line 3968
    goto/16 :goto_28
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3378
    if-eqz p1, :cond_24

    .line 3379
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3383
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawFocusRing:Z

    .line 3384
    iget-boolean v0, p0, Landroid/webkit/WebView;->mNeedsUpdateTextEntry:Z

    if-eqz v0, :cond_13

    .line 3385
    invoke-direct {p0}, Landroid/webkit/WebView;->updateTextEntry()V

    .line 3387
    :cond_13
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_1a

    .line 3388
    invoke-direct {p0, v2, v1, v2}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 3416
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3417
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowFocusChanged(Z)V

    .line 3418
    return-void

    .line 3393
    :cond_21
    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawFocusRing:Z

    goto :goto_1a

    .line 3399
    :cond_24
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_38

    .line 3408
    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawFocusRing:Z

    .line 3410
    :cond_38
    iput-boolean v1, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    .line 3411
    iput-boolean v1, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 3412
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_1a

    .line 3413
    invoke-direct {p0, v1, v1, v2}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    goto :goto_1a
.end method

.method public overlayHorizontalScrollbar()Z
    .registers 2

    .prologue
    .line 800
    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .registers 2

    .prologue
    .line 808
    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    return v0
.end method

.method public pageDown(Z)Z
    .registers 8
    .parameter "bottom"

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1375
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_9

    move v2, v4

    .line 1391
    :goto_8
    return v2

    .line 1378
    :cond_9
    invoke-direct {p0, v3, v3}, Landroid/webkit/WebView;->nativeClearFocus(II)V

    .line 1379
    if-eqz p1, :cond_17

    .line 1380
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v3, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-direct {p0, v2, v3, v5, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_8

    .line 1383
    :cond_17
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 1385
    .local v0, h:I
    const/16 v2, 0x30

    if-le v0, v2, :cond_32

    .line 1386
    const/16 v2, 0x18

    sub-int v1, v0, v2

    .line 1390
    .local v1, y:I
    :goto_23
    iput-boolean v5, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 1391
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-direct {p0, v4, v1, v5, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_8

    .line 1388
    .end local v1           #y:I
    :cond_32
    div-int/lit8 v1, v0, 0x2

    .restart local v1       #y:I
    goto :goto_23

    .line 1391
    :cond_35
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->extendScroll(I)Z

    move-result v2

    goto :goto_8
.end method

.method public pageUp(Z)Z
    .registers 8
    .parameter "top"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1348
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_9

    move v2, v3

    .line 1365
    :goto_8
    return v2

    .line 1351
    :cond_9
    invoke-direct {p0, v5, v5}, Landroid/webkit/WebView;->nativeClearFocus(II)V

    .line 1352
    if-eqz p1, :cond_15

    .line 1354
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-direct {p0, v2, v3, v4, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_8

    .line 1357
    :cond_15
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 1359
    .local v0, h:I
    const/16 v2, 0x30

    if-le v0, v2, :cond_2f

    .line 1360
    neg-int v2, v0

    add-int/lit8 v1, v2, 0x18

    .line 1364
    .local v1, y:I
    :goto_20
    iput-boolean v4, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 1365
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-direct {p0, v3, v1, v4, v3}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_8

    .line 1362
    .end local v1           #y:I
    :cond_2f
    neg-int v2, v0

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #y:I
    goto :goto_20

    .line 1365
    :cond_33
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->extendScroll(I)Z

    move-result v2

    goto :goto_8
.end method

.method passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .registers 9
    .parameter "currentText"
    .parameter "event"

    .prologue
    const/16 v5, 0x80

    .line 4515
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4516
    .local v0, arg:Ljava/util/HashMap;
    const-string v1, "focusData"

    new-instance v2, Landroid/webkit/WebViewCore$FocusData;

    iget-object v3, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    invoke-direct {v2, v3}, Landroid/webkit/WebViewCore$FocusData;-><init>(Landroid/webkit/WebViewCore$FocusData;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4517
    const-string v1, "event"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4518
    const-string v1, "currentText"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4520
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 4521
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x73

    iget v3, p0, Landroid/webkit/WebView;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 4526
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v5}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 4527
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    new-instance v2, Landroid/webkit/WebViewCore$FocusData;

    iget-object v3, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    invoke-direct {v2, v3}, Landroid/webkit/WebViewCore$FocusData;-><init>(Landroid/webkit/WebViewCore$FocusData;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/webkit/WebViewCore;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 4529
    return-void
.end method

.method public pauseTimers()V
    .registers 3

    .prologue
    .line 1878
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1879
    return-void
.end method

.method public performLongClick()Z
    .registers 2

    .prologue
    .line 2348
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2349
    iget-object v0, p0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    invoke-virtual {v0}, Landroid/webkit/TextDialog;->performLongClick()Z

    move-result v0

    .line 2351
    :goto_c
    return v0

    :cond_d
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->performLongClick()Z

    move-result v0

    goto :goto_c
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .registers 6
    .parameter "url"
    .parameter "postData"

    .prologue
    .line 1162
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1163
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 1164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1165
    .local v0, arg:Ljava/util/HashMap;
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8e

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1168
    invoke-direct {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    .line 1172
    .end local v0           #arg:Ljava/util/HashMap;
    :goto_22
    return-void

    .line 1170
    :cond_23
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_22
.end method

.method public refreshPlugins(Z)V
    .registers 5
    .parameter "reloadOpenPages"

    .prologue
    .line 2284
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_f

    .line 2285
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x84

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2287
    :cond_f
    return-void
.end method

.method public reload()V
    .registers 3

    .prologue
    .line 1241
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 1242
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1243
    return-void
.end method

.method replaceTextfieldText(IILjava/lang/String;II)V
    .registers 10
    .parameter "oldStart"
    .parameter "oldEnd"
    .parameter "replace"
    .parameter "newStart"
    .parameter "newEnd"

    .prologue
    .line 4505
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4506
    .local v0, arg:Ljava/util/HashMap;
    const-string v1, "focusData"

    new-instance v2, Landroid/webkit/WebViewCore$FocusData;

    iget-object v3, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    invoke-direct {v2, v3}, Landroid/webkit/WebViewCore$FocusData;-><init>(Landroid/webkit/WebViewCore$FocusData;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4507
    const-string v1, "replace"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4508
    const-string v1, "start"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4509
    const-string v1, "end"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4510
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 4511
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x72

    invoke-virtual {v1, v2, p1, p2, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 4512
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 16
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v11, 0x0

    .line 4461
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 4464
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollbarHeight()I

    move-result v9

    sub-int v0, v8, v9

    .line 4465
    .local v0, height:I
    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 4466
    .local v4, screenTop:I
    add-int v1, v4, v0

    .line 4468
    .local v1, screenBottom:I
    const/4 v6, 0x0

    .line 4470
    .local v6, scrollYDelta:I
    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    if-le v8, v1, :cond_69

    iget v8, p2, Landroid/graphics/Rect;->top:I

    if-le v8, v4, :cond_69

    .line 4471
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v0, :cond_64

    .line 4472
    iget v8, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    .line 4480
    :cond_37
    :goto_37
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v9

    sub-int v7, v8, v9

    .line 4481
    .local v7, width:I
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 4482
    .local v2, screenLeft:I
    add-int v3, v2, v7

    .line 4484
    .local v3, screenRight:I
    const/4 v5, 0x0

    .line 4486
    .local v5, scrollXDelta:I
    iget v8, p2, Landroid/graphics/Rect;->right:I

    if-le v8, v3, :cond_78

    iget v8, p2, Landroid/graphics/Rect;->left:I

    if-le v8, v2, :cond_78

    .line 4487
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v8, v7, :cond_73

    .line 4488
    iget v8, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v2

    add-int/2addr v5, v8

    .line 4496
    :cond_58
    :goto_58
    or-int v8, v6, v5

    if-eqz v8, :cond_84

    .line 4497
    if-nez p3, :cond_82

    const/4 v8, 0x1

    :goto_5f
    invoke-direct {p0, v5, v6, v8, v11}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v8

    .line 4500
    :goto_63
    return v8

    .line 4474
    .end local v2           #screenLeft:I
    .end local v3           #screenRight:I
    .end local v5           #scrollXDelta:I
    .end local v7           #width:I
    :cond_64
    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v1

    add-int/2addr v6, v8

    goto :goto_37

    .line 4476
    :cond_69
    iget v8, p2, Landroid/graphics/Rect;->top:I

    if-ge v8, v4, :cond_37

    .line 4477
    iget v8, p2, Landroid/graphics/Rect;->top:I

    sub-int v8, v4, v8

    sub-int/2addr v6, v8

    goto :goto_37

    .line 4490
    .restart local v2       #screenLeft:I
    .restart local v3       #screenRight:I
    .restart local v5       #scrollXDelta:I
    .restart local v7       #width:I
    :cond_73
    iget v8, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v3

    add-int/2addr v5, v8

    goto :goto_58

    .line 4492
    :cond_78
    iget v8, p2, Landroid/graphics/Rect;->left:I

    if-ge v8, v2, :cond_58

    .line 4493
    iget v8, p2, Landroid/graphics/Rect;->left:I

    sub-int v8, v2, v8

    sub-int/2addr v5, v8

    goto :goto_58

    :cond_82
    move v8, v11

    .line 4497
    goto :goto_5f

    :cond_84
    move v8, v11

    .line 4500
    goto :goto_63
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 11
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x1

    .line 4375
    const/4 v6, 0x0

    .line 4376
    .local v6, result:Z
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4377
    iget-object v0, p0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/TextDialog;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    :cond_e
    :goto_e
    move v7, v6

    .line 4406
    .end local v6           #result:Z
    .local v7, result:Z
    :goto_f
    return v7

    .line 4379
    .end local v7           #result:Z
    .restart local v6       #result:Z
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    .line 4380
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getNeedInitialFocus()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4384
    const/4 v1, 0x0

    .line 4385
    .local v1, fakeKeyDirection:I
    sparse-switch p1, :sswitch_data_44

    move v7, v6

    .line 4399
    .end local v6           #result:Z
    .restart local v7       #result:Z
    goto :goto_f

    .line 4387
    .end local v7           #result:Z
    .restart local v6       #result:Z
    :sswitch_26
    const/16 v1, 0x13

    .line 4401
    :goto_28
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_e

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeUpdateFocusNode()Z

    move-result v0

    if-nez v0, :cond_e

    .line 4402
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    goto :goto_e

    .line 4390
    :sswitch_3a
    const/16 v1, 0x14

    .line 4391
    goto :goto_28

    .line 4393
    :sswitch_3d
    const/16 v1, 0x15

    .line 4394
    goto :goto_28

    .line 4396
    :sswitch_40
    const/16 v1, 0x16

    .line 4397
    goto :goto_28

    .line 4385
    nop

    :sswitch_data_44
    .sparse-switch
        0x11 -> :sswitch_3d
        0x21 -> :sswitch_26
        0x42 -> :sswitch_40
        0x82 -> :sswitch_3a
    .end sparse-switch
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .registers 7
    .parameter "hrefMsg"

    .prologue
    .line 1547
    if-eqz p1, :cond_6

    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_7

    .line 1560
    :cond_6
    :goto_6
    return-void

    .line 1550
    :cond_7
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeUpdateFocusNode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1551
    iget-object v0, p0, Landroid/webkit/WebView;->mFocusNode:Landroid/webkit/WebView$FocusNode;

    .line 1552
    .local v0, node:Landroid/webkit/WebView$FocusNode;
    iget-boolean v1, v0, Landroid/webkit/WebView$FocusNode;->mIsAnchor:Z

    if-eqz v1, :cond_6

    .line 1556
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x89

    iget v3, v0, Landroid/webkit/WebView$FocusNode;->mFramePointer:I

    iget v4, v0, Landroid/webkit/WebView$FocusNode;->mNodePointer:I

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_6
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 1570
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v0

    .line 1571
    .local v0, contentX:I
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v1

    .line 1572
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->nativeImageURI(II)Ljava/lang/String;

    move-result-object v3

    .line 1573
    .local v3, ref:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 1574
    .local v2, data:Landroid/os/Bundle;
    const-string v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    invoke-virtual {p1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1576
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1577
    return-void
.end method

.method requestListBox([Ljava/lang/String;[ZI)V
    .registers 11
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selection"

    .prologue
    .line 5073
    iget-object v6, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebView$InvokeListBox;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[ZILandroid/webkit/WebView$1;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5075
    return-void
.end method

.method requestListBox([Ljava/lang/String;[Z[I)V
    .registers 11
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selectedArray"

    .prologue
    .line 5060
    iget-object v6, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebView$InvokeListBox;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[Z[ILandroid/webkit/WebView$1;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5062
    return-void
.end method

.method resetTrackballTime()V
    .registers 3

    .prologue
    .line 3886
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 3887
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .registers 12
    .parameter "b"
    .parameter "src"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1042
    if-eqz p2, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move v6, v7

    .line 1077
    :goto_7
    return v6

    .line 1045
    :cond_8
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 1046
    const/4 v2, 0x0

    .line 1048
    .local v2, p:Landroid/graphics/Picture;
    :try_start_f
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1049
    .local v1, in:Ljava/io/FileInputStream;
    invoke-static {v1}, Landroid/graphics/Picture;->createFromStream(Ljava/io/InputStream;)Landroid/graphics/Picture;

    move-result-object v2

    .line 1050
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_1b} :catch_58
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_1b} :catch_5e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1b} :catch_64

    .line 1058
    .end local v1           #in:Ljava/io/FileInputStream;
    :goto_1b
    if-eqz v2, :cond_6a

    .line 1059
    const-string v6, "scrollX"

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1060
    .local v4, sx:I
    const-string v6, "scrollY"

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1061
    .local v5, sy:I
    const-string v6, "scale"

    const/high16 v7, 0x3f80

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 1062
    .local v3, scale:F
    iput-boolean v8, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 1063
    iput-object v2, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 1064
    iput v4, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 1065
    iput v5, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 1066
    invoke-virtual {v2}, Landroid/graphics/Picture;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 1067
    invoke-virtual {v2}, Landroid/graphics/Picture;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 1072
    iput v3, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 1073
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    move v6, v8

    .line 1074
    goto :goto_7

    .line 1051
    .end local v3           #scale:F
    .end local v4           #sx:I
    .end local v5           #sy:I
    :catch_58
    move-exception v6

    move-object v0, v6

    .line 1052
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1b

    .line 1053
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_5e
    move-exception v6

    move-object v0, v6

    .line 1054
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1b

    .line 1055
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_64
    move-exception v6

    move-object v0, v6

    .line 1056
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b

    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #p:Landroid/graphics/Picture;
    :cond_6a
    move v6, v7

    .line 1077
    goto :goto_7
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .registers 14
    .parameter "inState"

    .prologue
    const/4 v9, 0x0

    const-string v11, "index"

    const-string v10, "history"

    .line 1095
    const/4 v6, 0x0

    .line 1096
    .local v6, returnList:Landroid/webkit/WebBackForwardList;
    if-nez p1, :cond_a

    move-object v8, v6

    .line 1138
    :goto_9
    return-object v8

    .line 1099
    :cond_a
    const-string v8, "index"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_74

    const-string v8, "history"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 1100
    const-string v8, "certificate"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8}, Landroid/net/http/SslCertificate;->restoreState(Landroid/os/Bundle;)Landroid/net/http/SslCertificate;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    .line 1103
    iget-object v8, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v8}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 1104
    .local v5, list:Landroid/webkit/WebBackForwardList;
    const-string v8, "index"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1108
    .local v3, index:I
    monitor-enter v5

    .line 1109
    :try_start_33
    const-string v8, "history"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1111
    .local v1, history:Ljava/util/List;,"Ljava/util/List<[B>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 1114
    .local v7, size:I
    if-ltz v3, :cond_43

    if-lt v3, v7, :cond_46

    .line 1115
    :cond_43
    monitor-exit v5

    move-object v8, v9

    goto :goto_9

    .line 1117
    :cond_46
    const/4 v2, 0x0

    .local v2, i:I
    :goto_47
    if-ge v2, v7, :cond_60

    .line 1118
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1119
    .local v0, data:[B
    if-nez v0, :cond_55

    .line 1122
    monitor-exit v5

    move-object v8, v9

    goto :goto_9

    .line 1124
    :cond_55
    new-instance v4, Landroid/webkit/WebHistoryItem;

    invoke-direct {v4, v0}, Landroid/webkit/WebHistoryItem;-><init>([B)V

    .line 1125
    .local v4, item:Landroid/webkit/WebHistoryItem;
    invoke-virtual {v5, v4}, Landroid/webkit/WebBackForwardList;->addHistoryItem(Landroid/webkit/WebHistoryItem;)V

    .line 1117
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 1128
    .end local v0           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_60
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v6

    .line 1130
    invoke-virtual {v6, v3}, Landroid/webkit/WebBackForwardList;->setCurrentIndex(I)V

    .line 1131
    monitor-exit v5
    :try_end_68
    .catchall {:try_start_33 .. :try_end_68} :catchall_76

    .line 1134
    iget-object v8, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v8}, Landroid/webkit/WebViewCore;->removeMessages()V

    .line 1136
    iget-object v8, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v9, 0x6c

    invoke-virtual {v8, v9, v3}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .end local v1           #history:Ljava/util/List;,"Ljava/util/List<[B>;"
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v5           #list:Landroid/webkit/WebBackForwardList;
    .end local v7           #size:I
    :cond_74
    move-object v8, v6

    .line 1138
    goto :goto_9

    .line 1131
    .restart local v3       #index:I
    .restart local v5       #list:Landroid/webkit/WebBackForwardList;
    :catchall_76
    move-exception v8

    :try_start_77
    monitor-exit v5
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v8
.end method

.method public resumeTimers()V
    .registers 3

    .prologue
    .line 1886
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1887
    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "host"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 863
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .registers 11
    .parameter "b"
    .parameter "dest"

    .prologue
    const/4 v7, 0x0

    .line 1010
    if-eqz p2, :cond_5

    if-nez p1, :cond_7

    :cond_5
    move v3, v7

    .line 1031
    :goto_6
    return v3

    .line 1013
    :cond_7
    invoke-virtual {p0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v2

    .line 1015
    .local v2, p:Landroid/graphics/Picture;
    :try_start_b
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1016
    .local v1, out:Ljava/io/FileOutputStream;
    invoke-virtual {v2, v1}, Landroid/graphics/Picture;->writeToStream(Ljava/io/OutputStream;)V

    .line 1017
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_16} :catch_37
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_16} :catch_43

    .line 1025
    .end local v1           #out:Ljava/io/FileOutputStream;
    :goto_16
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_49

    .line 1026
    const-string v3, "scrollX"

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1027
    const-string v3, "scrollY"

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1028
    const-string v3, "scale"

    iget v4, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1029
    const/4 v3, 0x1

    goto :goto_6

    .line 1018
    :catch_37
    move-exception v3

    move-object v0, v3

    .line 1019
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_16

    .line 1020
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_3d
    move-exception v3

    move-object v0, v3

    .line 1021
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16

    .line 1022
    .end local v0           #e:Ljava/io/IOException;
    :catch_43
    move-exception v3

    move-object v0, v3

    .line 1023
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_16

    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_49
    move v3, v7

    .line 1031
    goto :goto_6
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .registers 11
    .parameter "outState"

    .prologue
    const/4 v8, 0x0

    .line 964
    if-nez p1, :cond_5

    move-object v7, v8

    .line 998
    :goto_4
    return-object v7

    .line 969
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 970
    .local v5, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 971
    .local v0, currentIndex:I
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v6

    .line 974
    .local v6, size:I
    if-ltz v0, :cond_17

    if-ge v0, v6, :cond_17

    if-nez v6, :cond_19

    :cond_17
    move-object v7, v8

    .line 975
    goto :goto_4

    .line 977
    :cond_19
    const-string v7, "index"

    invoke-virtual {p1, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 981
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 982
    .local v2, history:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_24
    if-ge v3, v6, :cond_38

    .line 983
    invoke-virtual {v5, v3}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v4

    .line 984
    .local v4, item:Landroid/webkit/WebHistoryItem;
    invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getFlattenedData()[B

    move-result-object v1

    .line 985
    .local v1, data:[B
    if-nez v1, :cond_32

    move-object v7, v8

    .line 989
    goto :goto_4

    .line 991
    :cond_32
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 993
    .end local v1           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_38
    const-string v7, "history"

    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 994
    iget-object v7, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    if-eqz v7, :cond_4c

    .line 995
    const-string v7, "certificate"

    iget-object v8, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-static {v8}, Landroid/net/http/SslCertificate;->saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4c
    move-object v7, v5

    .line 998
    goto :goto_4
.end method

.method public setBackgroundColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    .line 5214
    iput p1, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    .line 5215
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 5216
    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .registers 2
    .parameter "certificate"

    .prologue
    .line 848
    iput-object p1, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    .line 849
    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 2190
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 2191
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .registers 2
    .parameter "overlay"

    .prologue
    .line 784
    iput-boolean p1, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 785
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 877
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewDatabase;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    return-void
.end method

.method public setInitialScale(I)V
    .registers 2
    .parameter "scaleInPercent"

    .prologue
    .line 1450
    iput p1, p0, Landroid/webkit/WebView;->mInitialScale:I

    .line 1451
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 2340
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_8

    .line 2341
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mWrapContent:Z

    .line 2343
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2344
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .registers 2
    .parameter "setMap"

    .prologue
    .line 3882
    iput-boolean p1, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    .line 3883
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .registers 6
    .parameter "networkUp"

    .prologue
    const/4 v3, 0x0

    .line 946
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x77

    if-eqz p1, :cond_c

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 948
    return-void

    :cond_c
    move v2, v3

    .line 946
    goto :goto_8
.end method

.method public setPictureListener(Landroid/webkit/WebView$PictureListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 2209
    iput-object p1, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    .line 2210
    return-void
.end method

.method public setScrollBarStyle(I)V
    .registers 3
    .parameter "style"

    .prologue
    .line 770
    const/high16 v0, 0x100

    if-eq p1, v0, :cond_8

    const/high16 v0, 0x300

    if-ne p1, v0, :cond_11

    .line 772
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 776
    :goto_d
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setScrollBarStyle(I)V

    .line 777
    return-void

    .line 774
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    goto :goto_d
.end method

.method setSelection(II)V
    .registers 7
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2896
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x71

    new-instance v2, Landroid/webkit/WebViewCore$FocusData;

    iget-object v3, p0, Landroid/webkit/WebView;->mFocusData:Landroid/webkit/WebViewCore$FocusData;

    invoke-direct {v2, v3}, Landroid/webkit/WebViewCore$FocusData;-><init>(Landroid/webkit/WebViewCore$FocusData;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 2898
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .registers 2
    .parameter "overlay"

    .prologue
    .line 792
    iput-boolean p1, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    .line 793
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .registers 3
    .parameter "client"

    .prologue
    .line 2200
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 2201
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 3
    .parameter "client"

    .prologue
    .line 2180
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2181
    return-void
.end method

.method shortPressOnTextField()V
    .registers 6

    .prologue
    .line 4339
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 4340
    iget-object v0, p0, Landroid/webkit/WebView;->mTextEntry:Landroid/webkit/TextDialog;

    .line 4341
    .local v0, v:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v1

    .line 4342
    .local v1, x:I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContent(I)I

    move-result v2

    .line 4343
    .local v2, y:I
    iget v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/webkit/WebView;->nativeMotionUp(IIIZ)Z

    .line 4345
    .end local v0           #v:Landroid/view/View;
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_2c
    return-void
.end method

.method public stopLoading()V
    .registers 3

    .prologue
    .line 1233
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 1234
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1235
    return-void
.end method

.method switchOutDrawHistory()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2804
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v2, :cond_6

    .line 2819
    :cond_5
    :goto_5
    return-void

    .line 2805
    :cond_6
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_5

    .line 2806
    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 2807
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 2808
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 2809
    .local v0, oldScrollX:I
    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 2810
    .local v1, oldScrollY:I
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollX:I

    .line 2811
    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollY:I

    .line 2812
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ne v0, v2, :cond_2b

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v1, v2, :cond_34

    .line 2813
    :cond_2b
    iput-boolean v3, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 2814
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x83

    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2817
    :cond_34
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_5
.end method

.method updateCachedTextfield(Ljava/lang/String;)V
    .registers 3
    .parameter "updatedText"

    .prologue
    .line 5230
    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->nativeUpdateCachedTextfield(Ljava/lang/String;I)V

    .line 5231
    return-void
.end method

.method updateDefaultZoomDensity(I)V
    .registers 9
    .parameter "zoomDensity"

    .prologue
    const/high16 v6, 0x42c8

    .line 698
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v6

    int-to-float v3, p1

    div-float v0, v2, v3

    .line 700
    .local v0, density:F
    iget v2, p0, Landroid/webkit/WebView;->mDefaultScale:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3f847ae147ae147bL

    cmpl-double v2, v2, v4

    if-lez v2, :cond_52

    .line 701
    iget v2, p0, Landroid/webkit/WebView;->mDefaultScale:F

    div-float v1, v0, v2

    .line 703
    .local v1, scaleFactor:F
    const/high16 v2, 0x4180

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Landroid/webkit/WebView;->mNavSlop:I

    .line 704
    mul-float v2, v6, v0

    float-to-int v2, v2

    sput v2, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    .line 705
    const/high16 v2, 0x4080

    mul-float/2addr v2, v0

    sput v2, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    .line 706
    const/high16 v2, 0x3e80

    mul-float/2addr v2, v0

    sput v2, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    .line 707
    iput v0, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 708
    iget v2, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    mul-float/2addr v2, v1

    iput v2, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 709
    iget v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    mul-float/2addr v2, v1

    iput v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 710
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v2, v1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/webkit/WebView;->setNewZoomScale(FZ)V

    .line 712
    .end local v1           #scaleFactor:F
    :cond_52
    return-void
.end method

.method viewToContent(I)I
    .registers 4
    .parameter "x"

    .prologue
    .line 1606
    int-to-float v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public zoomIn()Z
    .registers 3

    .prologue
    .line 4308
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 4309
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    const/high16 v1, 0x3fa0

    mul-float/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->zoomWithPreview(F)Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .registers 3

    .prologue
    .line 4318
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 4319
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    const v1, 0x3f4ccccd

    mul-float/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->zoomWithPreview(F)Z

    move-result v0

    return v0
.end method
