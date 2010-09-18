.class public Lcom/android/browser/BrowserActivity;
.super Landroid/app/Activity;
.source "BrowserActivity.java"

# interfaces
.implements Lcom/android/browser/KeyTracker$OnKeyTracker;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserActivity$AnimatingView;,
        Lcom/android/browser/BrowserActivity$TabListener;,
        Lcom/android/browser/BrowserActivity$PromptUserConsentListener;,
        Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;,
        Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener;,
        Lcom/android/browser/BrowserActivity$PromptListener;,
        Lcom/android/browser/BrowserActivity$DownloadContentObserver;,
        Lcom/android/browser/BrowserActivity$Download;,
        Lcom/android/browser/BrowserActivity$Copy;,
        Lcom/android/browser/BrowserActivity$ClearThumbnails;,
        Lcom/android/browser/BrowserActivity$CopyPlugins;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field static final ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern; = null

.field private static final ANIMATE_FROM_OVERVIEW:I = 0x68

.field private static final ANIMATE_TO_OVERVIEW:I = 0x69

.field static final BROWSER_CONTROL_BUTTON_PARAMS:Landroid/widget/LinearLayout$LayoutParams; = null

.field static final BROWSER_INVOKE_PANEL_PARAMS:Landroid/widget/FrameLayout$LayoutParams; = null

.field static final BROWSER_TOOLBAR_PANEL_PARAMS:Landroid/widget/FrameLayout$LayoutParams; = null

.field private static final CANCEL_CREDS_REQUEST:I = 0x67

.field private static final CHECK_MEMORY:I = 0x6b

.field static final CHECK_MEMORY_INTERVAL:I = 0x7530

.field static final COMBO_PAGE:I = 0x1

.field static final COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams; = null

.field static final DOWNLOAD_PAGE:I = 0x2

.field private static final EMPTY_MENU:I = -0x1

.field static final EXIT_CONFIRMATION_DIALOG:I = 0x1

.field private static final FOCUS_NODE_HREF:I = 0x66

.field static final GOOGLE_SEARCH_SOURCE_GOTO:Ljava/lang/String; = "browser-goto"

.field static final GOOGLE_SEARCH_SOURCE_SEARCHKEY:Ljava/lang/String; = "browser-key"

.field static final GOOGLE_SEARCH_SOURCE_SUGGEST:Ljava/lang/String; = "browser-suggest"

.field static final GOOGLE_SEARCH_SOURCE_TYPE:Ljava/lang/String; = "browser-type"

.field static final GOOGLE_SEARCH_SOURCE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final LOAD_URL:I = 0x3e9

.field private static final LOCK_ICON_MIXED:I = 0x2

.field private static final LOCK_ICON_SECURE:I = 0x1

.field private static final LOCK_ICON_UNSECURE:I = 0x0

.field private static final LOGTAG:Ljava/lang/String; = "browser"

.field private static final OPEN_TAB_AND_SHOW:I = 0x6a

.field private static final PANNEL_TIMEOUT:I = 0x1388

.field static final PREFERENCES_PAGE:I = 0x3

.field static final QUERY_PLACE_HOLDER:Ljava/lang/String; = "%s"

.field static final QuickSearch_D:Ljava/lang/String; = "http://dictionary.reference.com/search?q=%s"

.field static QuickSearch_G:Ljava/lang/String; = null

.field static final QuickSearch_L:Ljava/lang/String; = "http://www.google.com/m/search?site=local&q=%s&near=mountain+view"

.field static final QuickSearch_W:Ljava/lang/String; = "http://en.wikipedia.org/w/index.php?search=%s&go=Go"

.field private static final RELEASE_WAKELOCK:I = 0x6c

.field static final SCHEME_WTAI:Ljava/lang/String; = "wtai://wp/"

.field static final SCHEME_WTAI_AP:Ljava/lang/String; = "wtai://wp/ap;"

.field static final SCHEME_WTAI_MC:Ljava/lang/String; = "wtai://wp/mc;"

.field static final SCHEME_WTAI_SD:Ljava/lang/String; = "wtai://wp/sd;"

.field public static final STOP_LOAD:I = 0x3ea

.field private static final SYSTEM_CPU_FORMAT:[I = null

.field private static final TAB_ANIMATION_DURATION:I = 0x1f4

.field private static final TAB_OVERVIEW_DELAY:I = 0x320

.field private static final WAKELOCK_TIMEOUT:I = 0x493e0

.field private static final WINDOW_SHORTCUT_ID_ARRAY:[I

.field private static mInTrace:Z

.field private static mObserverCount:I

.field private static mOmaDrmHandlerV2ID:I

.field private static mOmaDrmHandlerV2List:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/lge/browser/OmaDrmHandlerV2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private installNotifyURITable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityInPause:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAnimationCount:I

.field private mBackButton:Landroid/widget/ImageView;

.field private mBacklightOn:Z

.field private mBookmarksButton:Landroid/widget/ImageView;

.field mCanChord:Z

.field private mContentView:Landroid/widget/FrameLayout;

.field private mCredsDlg:Landroid/app/ProgressDialog;

.field private mCurrentMenuState:I

.field private mDownloadFilter:Landroid/content/IntentFilter;

.field private mDownloadReceiver:Landroid/content/BroadcastReceiver;

.field private mDrmUserConsentDlg:Landroid/app/AlertDialog;

.field public mExitDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mFindDialog:Lcom/android/browser/FindDialog;

.field private mForwardButton:Landroid/widget/ImageView;

.field private mGenericFavicon:Landroid/graphics/drawable/Drawable;

.field private mGls:Lcom/google/android/googleapps/IGoogleLoginService;

.field private mGlsConnection:Landroid/content/ServiceConnection;

.field private mHandler:Landroid/os/Handler;

.field private mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

.field private mHttpAuthenticationDialog:Landroid/app/AlertDialog;

.field private mIdleStart:J

.field private mInLoad:Z

.field private mInvokePanel:Landroid/widget/LinearLayout;

.field private mIrqStart:J

.field private mIsNetworkUp:Z

.field private final mKeyTracker:Lcom/android/browser/KeyTracker;

.field private mLastEnteredUrl:Ljava/lang/String;

.field private mLockIconType:I

.field private mMenu:Landroid/view/Menu;

.field private mMenuIsDown:Z

.field private mMenuState:I

.field private mMixLockIcon:Landroid/graphics/drawable/Drawable;

.field private mNetworkStateChangedFilter:Landroid/content/IntentFilter;

.field private mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNewwindowButton:Landroid/widget/ImageView;

.field private mObserver:Lcom/android/browser/BrowserActivity$DownloadContentObserver;

.field private mPageInfoDialog:Landroid/app/AlertDialog;

.field private mPageInfoFromShowSSLCertificateOnError:Ljava/lang/Boolean;

.field private mPageInfoView:Lcom/android/browser/TabControl$Tab;

.field private mPageStarted:Z

.field private mPrevLockType:I

.field private mProcessStart:J

.field private mRefreshStopButton:Landroid/widget/ImageView;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRoapDlg:Landroid/app/AlertDialog;

.field private mSSLCertificateDialog:Landroid/app/AlertDialog;

.field private mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

.field private mSSLCertificateOnErrorError:Landroid/net/http/SslError;

.field private mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

.field private mSSLCertificateOnErrorView:Landroid/webkit/WebView;

.field private mSSLCertificateView:Lcom/android/browser/TabControl$Tab;

.field private mSecLockIcon:Landroid/graphics/drawable/Drawable;

.field private final mSensorListener:Landroid/hardware/SensorListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingButton:Landroid/widget/ImageView;

.field private mSettings:Lcom/android/browser/BrowserSettings;

.field private mStart:J

.field private mStopToast:Landroid/widget/Toast;

.field private mSystemStart:J

.field private mTabControl:Lcom/android/browser/TabControl;

.field private mTabListener:Lcom/android/browser/BrowserActivity$TabListener;

.field private mTabOverview:Lcom/android/browser/ImageGrid;

.field private mTitle:Ljava/lang/String;

.field private mToolBarPanel:Landroid/widget/LinearLayout;

.field private final mToolBarPanelHandler:Landroid/os/Handler;

.field private mToolBarPanelRunnable:Ljava/lang/Runnable;

.field private mTrackTrackball:Z

.field private mUiStart:J

.field private mUrl:Ljava/lang/String;

.field private mUserStart:J

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private final mWebViewClient:Landroid/webkit/WebViewClient;

.field private nextURITable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 165
    const-class v0, Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_47

    const/4 v0, 0x1

    :goto_e
    sput-boolean v0, Lcom/android/browser/BrowserActivity;->$assertionsDisabled:Z

    .line 180
    sput v3, Lcom/android/browser/BrowserActivity;->mOmaDrmHandlerV2ID:I

    .line 4831
    sput v3, Lcom/android/browser/BrowserActivity;->mObserverCount:I

    .line 5508
    const-string v0, "(?i)((?:http|https|file):\\/\\/|(?:data|about|content|javascript):)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/browser/BrowserActivity;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    .line 5658
    new-array v0, v4, [I

    fill-array-data v0, :array_4a

    sput-object v0, Lcom/android/browser/BrowserActivity;->SYSTEM_CPU_FORMAT:[I

    .line 5720
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 5726
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/browser/BrowserActivity;->BROWSER_TOOLBAR_PANEL_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 5730
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/browser/BrowserActivity;->BROWSER_INVOKE_PANEL_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 5734
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/browser/BrowserActivity;->BROWSER_CONTROL_BUTTON_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 5783
    new-array v0, v4, [I

    fill-array-data v0, :array_5e

    sput-object v0, Lcom/android/browser/BrowserActivity;->WINDOW_SHORTCUT_ID_ARRAY:[I

    return-void

    :cond_47
    move v0, v3

    .line 165
    goto :goto_e

    .line 5658
    nop

    :array_4a
    .array-data 0x4
        0x20t 0x1t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 5783
    :array_5e
    .array-data 0x4
        0x86t 0x0t 0xct 0x7ft
        0x87t 0x0t 0xct 0x7ft
        0x88t 0x0t 0xct 0x7ft
        0x89t 0x0t 0xct 0x7ft
        0x8at 0x0t 0xct 0x7ft
        0x8bt 0x0t 0xct 0x7ft
        0x8ct 0x0t 0xct 0x7ft
        0x8dt 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 170
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mGls:Lcom/google/android/googleapps/IGoogleLoginService;

    .line 171
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mGlsConnection:Landroid/content/ServiceConnection;

    .line 173
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 181
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mRoapDlg:Landroid/app/AlertDialog;

    .line 182
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mDrmUserConsentDlg:Landroid/app/AlertDialog;

    .line 183
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mDownloadFilter:Landroid/content/IntentFilter;

    .line 184
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    .line 185
    iput-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mBacklightOn:Z

    .line 218
    new-instance v0, Lcom/android/browser/BrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$1;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mToolBarPanelHandler:Landroid/os/Handler;

    .line 224
    new-instance v0, Lcom/android/browser/BrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$2;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mToolBarPanelRunnable:Ljava/lang/Runnable;

    .line 1024
    new-instance v0, Lcom/android/browser/BrowserActivity$7;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$7;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mSensorListener:Landroid/hardware/SensorListener;

    .line 1579
    new-instance v0, Lcom/android/browser/BrowserActivity$8;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$8;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mExitDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2847
    new-instance v0, Lcom/android/browser/BrowserActivity$11;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$11;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    .line 2960
    new-instance v0, Lcom/android/browser/BrowserActivity$12;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$12;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 3596
    new-instance v0, Lcom/android/browser/BrowserActivity$13;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$13;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 4828
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->installNotifyURITable:Ljava/util/Hashtable;

    .line 4829
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->nextURITable:Ljava/util/Hashtable;

    .line 4830
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mObserver:Lcom/android/browser/BrowserActivity$DownloadContentObserver;

    .line 5621
    iput v2, p0, Lcom/android/browser/BrowserActivity;->mLockIconType:I

    .line 5622
    iput v2, p0, Lcom/android/browser/BrowserActivity;->mPrevLockType:I

    .line 5632
    iput v2, p0, Lcom/android/browser/BrowserActivity;->mCurrentMenuState:I

    .line 5633
    const v0, 0x7f0c0073

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 5646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 5650
    new-instance v0, Lcom/android/browser/KeyTracker;

    invoke-direct {v0, p0}, Lcom/android/browser/KeyTracker;-><init>(Lcom/android/browser/KeyTracker$OnKeyTracker;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mKeyTracker:Lcom/android/browser/KeyTracker;

    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/browser/BrowserActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/browser/BrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showInvokePanel()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/browser/BrowserActivity;ZI)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->promptOmaDrmV2Roap(ZI)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/browser/BrowserActivity;ILjava/lang/String;I)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/BrowserActivity;->promptUserConsent(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/ImageGrid;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/browser/BrowserActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mAnimationCount:I

    return v0
.end method

.method static synthetic access$1308(Lcom/android/browser/BrowserActivity;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 165
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mAnimationCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/browser/BrowserActivity;->mAnimationCount:I

    return v0
.end method

.method static synthetic access$1310(Lcom/android/browser/BrowserActivity;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 165
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mAnimationCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/browser/BrowserActivity;->mAnimationCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/browser/BrowserActivity;)Landroid/widget/FrameLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/BrowserActivity$TabListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabListener:Lcom/android/browser/BrowserActivity$TabListener;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/browser/BrowserActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput p1, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/browser/BrowserActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->dismissTabOverview(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/browser/BrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resetTitle()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->copy(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/BrowserSettings;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/browser/BrowserActivity;Lcom/android/browser/BrowserActivity$AnimatingView;ZLandroid/os/Message;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/BrowserActivity;->animateFromTabOverview(Lcom/android/browser/BrowserActivity$AnimatingView;ZLandroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/browser/BrowserActivity;IZLcom/android/browser/BrowserActivity$AnimatingView;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/BrowserActivity;->animateToTabOverview(IZLcom/android/browser/BrowserActivity$AnimatingView;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/browser/BrowserActivity;Ljava/lang/String;Landroid/os/Message;ZLjava/lang/String;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/browser/BrowserActivity;->openTabAndShow(Ljava/lang/String;Landroid/os/Message;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->loadURL(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->openTab(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/browser/BrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->stopLoading()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/browser/BrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->checkMemory()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/browser/BrowserActivity;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->resetLockIcon(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/browser/BrowserActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/browser/BrowserActivity;)Lcom/google/android/googleapps/IGoogleLoginService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mGls:Lcom/google/android/googleapps/IGoogleLoginService;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/browser/BrowserActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->updateIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/browser/BrowserActivity;Lcom/google/android/googleapps/IGoogleLoginService;)Lcom/google/android/googleapps/IGoogleLoginService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mGls:Lcom/google/android/googleapps/IGoogleLoginService;

    return-object p1
.end method

.method static synthetic access$3100()Z
    .registers 1

    .prologue
    .line 165
    sget-boolean v0, Lcom/android/browser/BrowserActivity;->mInTrace:Z

    return v0
.end method

.method static synthetic access$3102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 165
    sput-boolean p0, Lcom/android/browser/BrowserActivity;->mInTrace:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/android/browser/BrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mPageStarted:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/browser/BrowserActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/browser/BrowserActivity;->mPageStarted:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/browser/BrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resumeWebView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/browser/BrowserActivity;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mToolBarPanelRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/browser/BrowserActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mToolBarPanelHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/browser/BrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateInLoadMenuItems()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/browser/BrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/browser/BrowserActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/browser/BrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->pauseWebView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/browser/BrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resumeAfterCredentials()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/browser/BrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/android/browser/BrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mBacklightOn:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/browser/BrowserActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/browser/BrowserActivity;->mBacklightOn:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->resetTitleAndIcon(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/browser/BrowserActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mLockIconType:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/browser/BrowserActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput p1, p0, Lcom/android/browser/BrowserActivity;->mLockIconType:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/browser/BrowserActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->updateLockIconImage(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/browser/BrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/browser/BrowserActivity;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/BrowserActivity;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 165
    invoke-direct/range {p0 .. p7}, Lcom/android/browser/BrowserActivity;->showHttpAuthentication(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/browser/BrowserActivity;)Landroid/content/ServiceConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mGlsConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl$Tab;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->attachSubWindow(Lcom/android/browser/TabControl$Tab;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/browser/BrowserActivity;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mGlsConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/android/browser/BrowserActivity;IIZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/BrowserActivity;->switchTabs(IIZ)V

    return-void
.end method

.method static synthetic access$5302(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl$Tab;)Lcom/android/browser/TabControl$Tab;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mPageInfoView:Lcom/android/browser/TabControl$Tab;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/android/browser/BrowserActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mPageInfoFromShowSSLCertificateOnError:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/android/browser/BrowserActivity;)Landroid/webkit/WebView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/android/browser/BrowserActivity;)Landroid/webkit/SslErrorHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/android/browser/BrowserActivity;Landroid/webkit/SslErrorHandler;)Landroid/webkit/SslErrorHandler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/android/browser/BrowserActivity;)Landroid/net/http/SslError;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/android/browser/BrowserActivity;Landroid/net/http/SslError;)Landroid/net/http/SslError;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl$Tab;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->showSSLCertificate(Lcom/android/browser/TabControl$Tab;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/browser/BrowserActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/browser/BrowserActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->bookmarksOrHistoryPicker(Z)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/browser/BrowserActivity;ZIZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/BrowserActivity;->tabPicker(ZIZ)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/browser/BrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->toolbarPanelSetting()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/browser/BrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showToolbar()V

    return-void
.end method

.method static synthetic access$6402(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl$Tab;)Lcom/android/browser/TabControl$Tab;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateView:Lcom/android/browser/TabControl$Tab;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl$Tab;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->showPageInfo(Lcom/android/browser/TabControl$Tab;Z)V

    return-void
.end method

.method static synthetic access$6702(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$6800(Lcom/android/browser/BrowserActivity;)Landroid/webkit/WebViewClient;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;
    .registers 2
    .parameter "x0"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;)Landroid/webkit/HttpAuthHandler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/android/browser/BrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->handleDownloadComplete()V

    return-void
.end method

.method static synthetic access$7502(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mRoapDlg:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$7902(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mDrmUserConsentDlg:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl$Tab;ZLjava/lang/String;ILandroid/os/Message;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 165
    invoke-direct/range {p0 .. p5}, Lcom/android/browser/BrowserActivity;->sendAnimateFromOverview(Lcom/android/browser/TabControl$Tab;ZLjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method private animateFromTabOverview(Lcom/android/browser/BrowserActivity$AnimatingView;ZLandroid/os/Message;)V
    .registers 13
    .parameter "view"
    .parameter "newTab"
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 2334
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    invoke-virtual {v6}, Lcom/android/browser/ImageGrid;->getFirstVisiblePosition()I

    move-result v1

    .line 2336
    .local v1, firstVisible:I
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v7, p1, Lcom/android/browser/BrowserActivity$AnimatingView;->mTab:Lcom/android/browser/TabControl$Tab;

    invoke-virtual {v6, v7}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/TabControl$Tab;)I

    move-result v4

    .line 2337
    .local v4, tabPosition:I
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    invoke-virtual {v6}, Lcom/android/browser/ImageGrid;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/browser/ImageAdapter;

    invoke-virtual {v6}, Lcom/android/browser/ImageAdapter;->maxedOut()Z

    move-result v6

    if-nez v6, :cond_1f

    .line 2339
    add-int/lit8 v4, v4, 0x1

    .line 2342
    :cond_1f
    if-eqz p2, :cond_22

    .line 2343
    const/4 v4, 0x0

    .line 2348
    :cond_22
    sub-int v3, v4, v1

    .line 2351
    .local v3, location:I
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    invoke-virtual {v6, v3}, Lcom/android/browser/ImageGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2354
    .local v5, v:Landroid/view/View;
    new-instance v2, Lcom/android/browser/BrowserActivity$10;

    invoke-direct {v2, p0, p1, v5, p3}, Lcom/android/browser/BrowserActivity$10;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/BrowserActivity$AnimatingView;Landroid/view/View;Landroid/os/Message;)V

    .line 2387
    .local v2, l:Landroid/view/animation/Animation$AnimationListener;
    if-eqz v5, :cond_3f

    .line 2388
    invoke-direct {p0, p1, v5, v8}, Lcom/android/browser/BrowserActivity;->createTabAnimation(Lcom/android/browser/BrowserActivity$AnimatingView;Landroid/view/View;Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2390
    .local v0, anim:Landroid/view/animation/Animation;
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2391
    invoke-virtual {p1, v0}, Lcom/android/browser/BrowserActivity$AnimatingView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2393
    invoke-virtual {p1, v8}, Lcom/android/browser/BrowserActivity$AnimatingView;->setVisibility(I)V

    .line 2398
    .end local v0           #anim:Landroid/view/animation/Animation;
    :goto_3e
    return-void

    .line 2396
    :cond_3f
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    goto :goto_3e
.end method

.method private animateToTabOverview(IZLcom/android/browser/BrowserActivity$AnimatingView;)V
    .registers 11
    .parameter "newIndex"
    .parameter "remove"
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 2236
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v5, p3, Lcom/android/browser/BrowserActivity$AnimatingView;->mTab:Lcom/android/browser/TabControl$Tab;

    invoke-virtual {v4, v5}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/TabControl$Tab;)I

    move-result v2

    .line 2237
    .local v2, position:I
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    invoke-virtual {v4}, Lcom/android/browser/ImageGrid;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/browser/ImageAdapter;

    invoke-virtual {v4}, Lcom/android/browser/ImageAdapter;->maxedOut()Z

    move-result v4

    if-nez v4, :cond_19

    .line 2238
    add-int/lit8 v2, v2, 0x1

    .line 2243
    :cond_19
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    invoke-virtual {v4}, Lcom/android/browser/ImageGrid;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v2, v4

    .line 2246
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    invoke-virtual {v4, v2}, Lcom/android/browser/ImageGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2248
    .local v3, v:Landroid/view/View;
    new-instance v1, Lcom/android/browser/BrowserActivity$9;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/browser/BrowserActivity$9;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/BrowserActivity$AnimatingView;IZ)V

    .line 2314
    .local v1, l:Landroid/view/animation/Animation$AnimationListener;
    if-eqz v3, :cond_39

    .line 2316
    const/4 v4, 0x1

    invoke-direct {p0, p3, v3, v4}, Lcom/android/browser/BrowserActivity;->createTabAnimation(Lcom/android/browser/BrowserActivity$AnimatingView;Landroid/view/View;Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2317
    .local v0, anim:Landroid/view/animation/Animation;
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2319
    invoke-virtual {p3, v0}, Lcom/android/browser/BrowserActivity$AnimatingView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2326
    .end local v0           #anim:Landroid/view/animation/Animation;
    :goto_38
    return-void

    .line 2323
    :cond_39
    invoke-interface {v1, v6}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 2324
    invoke-interface {v1, v6}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    goto :goto_38
.end method

.method private attachSubWindow(Lcom/android/browser/TabControl$Tab;)V
    .registers 6
    .parameter "t"

    .prologue
    .line 2044
    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 2045
    .local v1, subView:Landroid/webkit/WebView;
    if-eqz v1, :cond_14

    .line 2046
    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getSubWebViewContainer()Landroid/view/View;

    move-result-object v0

    .line 2047
    .local v0, container:Landroid/view/View;
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    sget-object v3, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2048
    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2050
    .end local v0           #container:Landroid/view/View;
    :cond_14
    return-void
.end method

.method private attachTabToContentView(Lcom/android/browser/TabControl$Tab;)V
    .registers 5
    .parameter "t"

    .prologue
    .line 2032
    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 2034
    .local v0, main:Landroid/webkit/WebView;
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2036
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->attachSubWindow(Lcom/android/browser/TabControl$Tab;)V

    .line 2038
    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2039
    return-void
.end method

.method private bookmarksOrHistoryPicker(Z)V
    .registers 10
    .parameter "startWithHistory"

    .prologue
    const/4 v7, 0x1

    .line 5433
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 5434
    .local v0, current:Landroid/webkit/WebView;
    if-nez v0, :cond_a

    .line 5463
    :goto_9
    return-void

    .line 5437
    :cond_a
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/browser/CombinedBookmarkHistoryActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5439
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 5440
    .local v2, title:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 5443
    .local v3, url:Ljava/lang/String;
    if-nez v3, :cond_25

    .line 5444
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mLastEnteredUrl:Ljava/lang/String;

    .line 5446
    if-nez v3, :cond_25

    .line 5447
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v3

    .line 5451
    :cond_25
    if-nez v2, :cond_28

    .line 5452
    move-object v2, v3

    .line 5454
    :cond_28
    const-string v4, "title"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5455
    const-string v4, "url"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5456
    const-string v4, "maxTabsOpen"

    iget-object v5, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_4f

    move v5, v7

    :goto_3f
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5458
    if-eqz p1, :cond_4b

    .line 5459
    sget-object v4, Lcom/android/browser/CombinedBookmarkHistoryActivity;->STARTING_TAB:Ljava/lang/String;

    sget-object v5, Lcom/android/browser/CombinedBookmarkHistoryActivity;->HISTORY_TAB:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5462
    :cond_4b
    invoke-virtual {p0, v1, v7}, Lcom/android/browser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_9

    .line 5456
    :cond_4f
    const/4 v5, 0x0

    goto :goto_3f
.end method

.method private static buildTitleUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "url"

    .prologue
    .line 2587
    const/4 v2, 0x0

    .line 2589
    .local v2, titleUrl:Ljava/lang/String;
    if-eqz p0, :cond_3e

    .line 2592
    :try_start_3
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2593
    .local v3, urlObj:Ljava/net/URL;
    if-eqz v3, :cond_3e

    .line 2594
    const-string v2, ""

    .line 2596
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 2597
    .local v1, protocol:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 2599
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3e

    .line 2600
    move-object v2, v0

    .line 2601
    if-eqz v1, :cond_3e

    .line 2603
    const-string v4, "https"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 2604
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3d
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3d} :catch_3f

    move-result-object v2

    .line 2612
    .end local v0           #host:Ljava/lang/String;
    .end local v1           #protocol:Ljava/lang/String;
    .end local v3           #urlObj:Ljava/net/URL;
    :cond_3e
    :goto_3e
    return-object v2

    .line 2609
    :catch_3f
    move-exception v4

    goto :goto_3e
.end method

.method private buildUrlTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "url"
    .parameter "title"

    .prologue
    .line 2557
    const-string v1, ""

    .line 2559
    .local v1, urlTitle:Ljava/lang/String;
    if-eqz p1, :cond_2f

    .line 2560
    invoke-static {p1}, Lcom/android/browser/BrowserActivity;->buildTitleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2562
    .local v0, titleUrl:Ljava/lang/String;
    if-eqz p2, :cond_32

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_32

    .line 2563
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_30

    .line 2564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2575
    .end local v0           #titleUrl:Ljava/lang/String;
    :cond_2f
    :goto_2f
    return-object v1

    .line 2566
    .restart local v0       #titleUrl:Ljava/lang/String;
    :cond_30
    move-object v1, p2

    goto :goto_2f

    .line 2569
    :cond_32
    if-eqz v0, :cond_2f

    .line 2570
    move-object v1, v0

    goto :goto_2f
.end method

.method private cancelStopToast()V
    .registers 2

    .prologue
    .line 2814
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    if-eqz v0, :cond_c

    .line 2815
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2816
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    .line 2818
    :cond_c
    return-void
.end method

.method private checkMemory()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x400

    .line 5477
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 5478
    .local v0, mi:Landroid/app/ActivityManager$MemoryInfo;
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 5483
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_4d

    .line 5484
    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Browser is freeing memory now because: available="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K threshold="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5487
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->freeMemory()V

    .line 5489
    :cond_4d
    return-void
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "text"

    .prologue
    .line 2477
    :try_start_0
    const-string v2, "clipboard"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v0

    .line 2478
    .local v0, clip:Landroid/text/IClipboard;
    if-eqz v0, :cond_f

    .line 2479
    invoke-interface {v0, p1}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 2484
    .end local v0           #clip:Landroid/text/IClipboard;
    :cond_f
    :goto_f
    return-void

    .line 2481
    :catch_10
    move-exception v2

    move-object v1, v2

    .line 2482
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "browser"

    const-string v3, "Copy failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method private copyPlugins(Z)V
    .registers 5
    .parameter "overwrite"

    .prologue
    .line 660
    new-instance v0, Lcom/android/browser/BrowserActivity$CopyPlugins;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/browser/BrowserActivity$CopyPlugins;-><init>(Lcom/android/browser/BrowserActivity;ZLandroid/content/Context;)V

    .line 661
    .local v0, copyPluginsFromAssets:Lcom/android/browser/BrowserActivity$CopyPlugins;
    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity$CopyPlugins;->initPluginsPath()V

    .line 662
    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity$CopyPlugins;->newSystemImage()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 663
    invoke-static {v0}, Lcom/android/browser/BrowserActivity$CopyPlugins;->access$800(Lcom/android/browser/BrowserActivity$CopyPlugins;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 664
    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity$CopyPlugins;->cleanPluginsDirectory()V

    .line 665
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 666
    .local v1, copyplugins:Ljava/lang/Thread;
    const-string v2, "CopyPlugins"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 667
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 670
    .end local v1           #copyplugins:Ljava/lang/Thread;
    :cond_24
    return-void
.end method

.method private createGoogleSearchSourceBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .parameter "source"

    .prologue
    .line 1555
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1556
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    return-object v0
.end method

.method private createTabAnimation(Lcom/android/browser/BrowserActivity$AnimatingView;Landroid/view/View;Z)Landroid/view/animation/Animation;
    .registers 11
    .parameter "view"
    .parameter "cell"
    .parameter "scaleDown"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    .line 2211
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2212
    .local v2, set:Landroid/view/animation/AnimationSet;
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/android/browser/BrowserActivity$AnimatingView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 2213
    .local v0, scaleX:F
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/android/browser/BrowserActivity$AnimatingView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 2214
    .local v1, scaleY:F
    if-eqz p3, :cond_4b

    .line 2215
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v3, v5, v0, v5, v1}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2216
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v6, v4, v6, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2223
    :goto_3d
    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 2224
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2225
    return-object v2

    .line 2219
    :cond_4b
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v3, v0, v5, v1, v5}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2220
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v4, v6, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3d
.end method

.method public static deleteOmaDrmHandlerV2FromListbyID(I)Z
    .registers 8
    .parameter "Id"

    .prologue
    .line 4003
    sget-object v4, Lcom/android/browser/BrowserActivity;->mOmaDrmHandlerV2List:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    .line 4004
    .local v3, size:I
    const/4 v1, 0x0

    .line 4005
    .local v1, handler:Lcom/lge/browser/OmaDrmHandlerV2;
    const/4 v0, 0x0

    .line 4007
    .local v0, deleteID:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    if-ge v2, v3, :cond_3d

    .line 4008
    sget-object v4, Lcom/android/browser/BrowserActivity;->mOmaDrmHandlerV2List:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #handler:Lcom/lge/browser/OmaDrmHandlerV2;
    check-cast v1, Lcom/lge/browser/OmaDrmHandlerV2;

    .line 4009
    .restart local v1       #handler:Lcom/lge/browser/OmaDrmHandlerV2;
    if-nez v1, :cond_18

    .line 4007
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4011
    :cond_18
    invoke-virtual {v1}, Lcom/lge/browser/OmaDrmHandlerV2;->getOmaDrmHandlerV2ID()I

    move-result v0

    .line 4012
    if-ne v0, p0, :cond_15

    .line 4013
    sget-object v4, Lcom/android/browser/BrowserActivity;->mOmaDrmHandlerV2List:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 4014
    const-string v4, "browser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Download] DRM2 List Deleted = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4015
    const/4 v4, 0x1

    .line 4018
    :goto_3c
    return v4

    :cond_3d
    const/4 v4, 0x0

    goto :goto_3c
.end method

.method private dismissTabOverview(Z)V
    .registers 9
    .parameter "fade"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 2402
    if-eqz p1, :cond_1b

    .line 2403
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2404
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2405
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    .line 2406
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    invoke-virtual {v2, v0}, Lcom/android/browser/ImageGrid;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2410
    .end local v0           #anim:Landroid/view/animation/AlphaAnimation;
    :cond_1b
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 2411
    .local v1, current:Landroid/webkit/WebView;
    if-eqz v1, :cond_64

    .line 2412
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2417
    :goto_26
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 2418
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl$Tab;->getSubWebViewContainer()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2421
    :cond_3b
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2422
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    invoke-virtual {v2}, Lcom/android/browser/ImageGrid;->clear()V

    .line 2423
    iput-object v6, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    .line 2424
    iput-object v6, p0, Lcom/android/browser/BrowserActivity;->mTabListener:Lcom/android/browser/BrowserActivity$TabListener;

    .line 2427
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mInvokePanel:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_54

    .line 2428
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mInvokePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2429
    :cond_54
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mToolBarPanel:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_5d

    .line 2430
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mToolBarPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2432
    :cond_5d
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->setupBrowserToolbar()V

    .line 2433
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showInvokePanel()V

    .line 2436
    return-void

    .line 2414
    :cond_64
    const-string v2, "browser"

    const-string v3, "No current WebView in dismissTabOverview"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public static findAndCancelOmaDrmHandlerV2byDbID(I)Z
    .registers 9
    .parameter "Id"

    .prologue
    const/4 v7, 0x1

    .line 3975
    sget-object v4, Lcom/android/browser/BrowserActivity;->mOmaDrmHandlerV2List:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    .line 3976
    .local v3, size:I
    const/4 v1, 0x0

    .line 3977
    .local v1, handler:Lcom/lge/browser/OmaDrmHandlerV2;
    const/4 v0, 0x0

    .line 3979
    .local v0, downloadID:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v3, :cond_49

    .line 3980
    sget-object v4, Lcom/android/browser/BrowserActivity;->mOmaDrmHandlerV2List:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #handler:Lcom/lge/browser/OmaDrmHandlerV2;
    check-cast v1, Lcom/lge/browser/OmaDrmHandlerV2;

    .line 3981
    .restart local v1       #handler:Lcom/lge/browser/OmaDrmHandlerV2;
    if-nez v1, :cond_19

    .line 3979
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3983
    :cond_19
    invoke-virtual {v1}, Lcom/lge/browser/OmaDrmHandlerV2;->getDownloadDbID()I

    move-result v0

    .line 3984
    if-ne v0, p0, :cond_16

    .line 3985
    invoke-virtual {v1}, Lcom/lge/browser/OmaDrmHandlerV2;->getMuliPartHandler()Lcom/lge/browser/MultipartRelatedHandler;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/lge/browser/MultipartRelatedHandler;->setDownloadCanceled(Z)V

    .line 3986
    sget-object v4, Lcom/android/browser/BrowserActivity;->mOmaDrmHandlerV2List:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 3987
    const-string v4, "browser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Download] DRM2 List Deleted = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/lge/browser/OmaDrmHandlerV2;->getOmaDrmHandlerV2ID()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 3992
    :goto_48
    return v4

    :cond_49
    const/4 v4, 0x0

    goto :goto_48
.end method

.method static fixUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "inUrl"

    .prologue
    .line 1003
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "rtsp://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1011
    :cond_18
    :goto_18
    return-object p0

    .line 1005
    :cond_19
    const-string v0, "http:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "https:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "rtsp:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1006
    :cond_31
    const-string v0, "http:/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    const-string v0, "https:/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    const-string v0, "rtsp:/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1007
    :cond_49
    const-string v0, "/"

    const-string v1, "//"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    .line 1008
    :cond_52
    const-string v0, ":"

    const-string v1, "://"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_18
.end method

.method private getResultText(I)Ljava/lang/String;
    .registers 3
    .parameter "status"

    .prologue
    .line 4873
    sparse-switch p1, :sswitch_data_12

    .line 4885
    const-string v0, "952 Device Aborted"

    :goto_5
    return-object v0

    .line 4877
    :sswitch_6
    const-string v0, "900 Success"

    goto :goto_5

    .line 4879
    :sswitch_9
    const-string v0, "902 User Cancelled"

    goto :goto_5

    .line 4881
    :sswitch_c
    const-string v0, "953 Non-Acceptable Content"

    goto :goto_5

    .line 4883
    :sswitch_f
    const-string v0, "901 Insufficient memory"

    goto :goto_5

    .line 4873
    :sswitch_data_12
    .sparse-switch
        0xc8 -> :sswitch_6
        0x122 -> :sswitch_6
        0x123 -> :sswitch_6
        0x196 -> :sswitch_c
        0x1ea -> :sswitch_9
        0x1ec -> :sswitch_f
    .end sparse-switch
.end method

.method private getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .registers 10
    .parameter "intent"

    .prologue
    .line 946
    const/4 v5, 0x0

    .line 947
    .local v5, url:Ljava/lang/String;
    if-eqz p1, :cond_42

    .line 948
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 950
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserActivity;->smartUrlFilter(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 951
    if-eqz v5, :cond_42

    const-string v6, "content:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 953
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 954
    .local v2, mimeType:Ljava/lang/String;
    if-eqz v2, :cond_42

    .line 955
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 988
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_42
    :goto_42
    return-object v5

    .line 958
    .restart local v0       #action:Ljava/lang/String;
    :cond_43
    const-string v6, "android.intent.action.SEARCH"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5b

    const-string v6, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5b

    const-string v6, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 961
    :cond_5b
    const-string v6, "query"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 962
    if-eqz v5, :cond_42

    .line 963
    iput-object v5, p0, Lcom/android/browser/BrowserActivity;->mLastEnteredUrl:Ljava/lang/String;

    .line 966
    sget-object v6, Landroid/text/util/Regex;->WEB_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_77

    .line 967
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    invoke-static {v6, v5, v7}, Landroid/provider/Browser;->updateVisitedHistory(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 971
    :cond_77
    invoke-static {v5}, Lcom/android/browser/BrowserActivity;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 972
    invoke-virtual {p0, v5}, Lcom/android/browser/BrowserActivity;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 973
    const-string v3, "&source=android-browser-suggest&"

    .line 974
    .local v3, searchSource:Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 975
    const/4 v4, 0x0

    .line 976
    .local v4, source:Ljava/lang/String;
    const-string v6, "app_data"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 977
    .local v1, appData:Landroid/os/Bundle;
    if-eqz v1, :cond_96

    .line 978
    const-string v6, "source"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 980
    :cond_96
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 981
    const-string v4, "unknown"

    .line 983
    :cond_9e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&source=android-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_42
.end method

.method private goBackOnePageOrQuit()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 2684
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v0

    .line 2685
    .local v0, current:Lcom/android/browser/TabControl$Tab;
    if-nez v0, :cond_c

    .line 2693
    invoke-virtual {p0, v5}, Lcom/android/browser/BrowserActivity;->moveTaskToBack(Z)Z

    .line 2695
    :cond_c
    invoke-virtual {v0}, Lcom/android/browser/TabControl$Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 2696
    .local v2, w:Landroid/webkit/WebView;
    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2697
    invoke-virtual {v2}, Landroid/webkit/WebView;->goBack()V

    .line 2727
    :goto_19
    return-void

    .line 2701
    :cond_1a
    invoke-virtual {v0}, Lcom/android/browser/TabControl$Tab;->getParentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v1

    .line 2702
    .local v1, parent:Lcom/android/browser/TabControl$Tab;
    if-eqz v1, :cond_30

    .line 2703
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v3

    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4, v1}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/TabControl$Tab;)I

    move-result v4

    invoke-direct {p0, v3, v4, v5}, Lcom/android/browser/BrowserActivity;->switchTabs(IIZ)V

    goto :goto_19

    .line 2706
    :cond_30
    invoke-virtual {v0}, Lcom/android/browser/TabControl$Tab;->closeOnExit()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 2707
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v3

    if-ne v3, v5, :cond_42

    .line 2708
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    goto :goto_19

    .line 2713
    :cond_42
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->pauseWebView()Z

    .line 2714
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/TabControl$Tab;)V

    .line 2715
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3, v0}, Lcom/android/browser/TabControl;->removeTab(Lcom/android/browser/TabControl$Tab;)Z

    .line 2724
    :cond_4d
    invoke-virtual {p0, v5}, Lcom/android/browser/BrowserActivity;->moveTaskToBack(Z)Z

    goto :goto_19
.end method

.method private handleDownloadComplete()V
    .registers 24

    .prologue
    .line 4892
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "status >= \'200\' AND visibility == \'1\'"

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 4898
    .local v11, cursor:Landroid/database/Cursor;
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 4899
    .local v12, idColumn:I
    const-string v3, "status"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 4900
    .local v18, statusColumn:I
    const-string v3, "useragent"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 4901
    .local v21, userAgentColumn:I
    const-string v3, "cookiedata"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 4902
    .local v10, cookieColumn:I
    const-string v3, "referer"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 4905
    .local v16, refererColumn:I
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_31
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_141

    .line 4906
    move-object v0, v11

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 4907
    .local v17, status:I
    invoke-static/range {v17 .. v17}, Landroid/provider/Downloads;->isStatusCompleted(I)Z

    move-result v3

    if-eqz v3, :cond_148

    .line 4908
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 4909
    .local v19, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->installNotifyURITable:Ljava/util/Hashtable;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 4910
    .local v13, installNotifyURI:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->nextURITable:Ljava/util/Hashtable;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 4911
    .local v14, nextURI:Ljava/lang/String;
    if-nez v13, :cond_85

    if-eqz v14, :cond_148

    .line 4912
    :cond_85
    const-string v3, "browser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDownloadComplete(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Completed with notify code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity;->getResultText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4914
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 4915
    .local v22, values:Landroid/content/ContentValues;
    if-eqz v13, :cond_c2

    .line 4916
    const-string v3, "installNotifyURI"

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4918
    :cond_c2
    if-eqz v14, :cond_cd

    .line 4919
    const-string v3, "nextURI"

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4920
    :cond_cd
    if-ltz v21, :cond_e2

    .line 4921
    move-object v0, v11

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 4922
    .local v20, userAgent:Ljava/lang/String;
    if-eqz v20, :cond_e2

    .line 4923
    const-string v3, "useragent"

    move-object/from16 v0, v22

    move-object v1, v3

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4925
    .end local v20           #userAgent:Ljava/lang/String;
    :cond_e2
    if-ltz v10, :cond_f3

    .line 4926
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4927
    .local v9, cookie:Ljava/lang/String;
    if-eqz v9, :cond_f3

    .line 4928
    const-string v3, "cookiedata"

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4930
    .end local v9           #cookie:Ljava/lang/String;
    :cond_f3
    if-ltz v16, :cond_107

    .line 4931
    move-object v0, v11

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 4932
    .local v15, referer:Ljava/lang/String;
    if-eqz v15, :cond_107

    .line 4933
    const-string v3, "referer"

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4935
    .end local v15           #referer:Ljava/lang/String;
    :cond_107
    const-string v3, "notify_code"

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity;->getResultText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4936
    new-instance v3, Lcom/lge/browser/DDHandlerV1;

    const/4 v4, 0x2

    move-object v0, v3

    move-object/from16 v1, p0

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/lge/browser/DDHandlerV1;-><init>(Lcom/android/browser/BrowserActivity;I)V

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/content/ContentValues;

    const/4 v5, 0x0

    aput-object v22, v4, v5

    invoke-virtual {v3, v4}, Lcom/lge/browser/DDHandlerV1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4938
    sget v3, Lcom/android/browser/BrowserActivity;->mObserverCount:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    sput v3, Lcom/android/browser/BrowserActivity;->mObserverCount:I

    .line 4939
    sget v3, Lcom/android/browser/BrowserActivity;->mObserverCount:I

    if-nez v3, :cond_148

    .line 4940
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mObserver:Lcom/android/browser/BrowserActivity$DownloadContentObserver;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4947
    .end local v13           #installNotifyURI:Ljava/lang/String;
    .end local v14           #nextURI:Ljava/lang/String;
    .end local v17           #status:I
    .end local v19           #uri:Landroid/net/Uri;
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_141
    if-eqz v11, :cond_147

    .line 4948
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 4949
    const/4 v11, 0x0

    .line 4951
    :cond_147
    return-void

    .line 4905
    .restart local v17       #status:I
    :cond_148
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_31
.end method

.method private inflateCertificateView(Landroid/net/http/SslCertificate;)Landroid/view/View;
    .registers 10
    .parameter "certificate"

    .prologue
    const/4 v7, 0x0

    .line 4575
    if-nez p1, :cond_5

    move-object v6, v7

    .line 4618
    .end local p0
    :goto_4
    return-object v6

    .line 4579
    .restart local p0
    :cond_5
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 4581
    .local v2, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f030017

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4585
    .local v0, certificateView:Landroid/view/View;
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v5

    .line 4586
    .local v5, issuedTo:Landroid/net/http/SslCertificate$DName;
    if-eqz v5, :cond_46

    .line 4587
    const v6, 0x7f0c0053

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4589
    const v6, 0x7f0c0055

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4591
    const v6, 0x7f0c0057

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4596
    :cond_46
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    .line 4597
    .local v3, issuedBy:Landroid/net/http/SslCertificate$DName;
    if-eqz v3, :cond_7c

    .line 4598
    const v6, 0x7f0c0059

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4600
    const v6, 0x7f0c005b

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4602
    const v6, 0x7f0c005d

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4607
    :cond_7c
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getValidNotBefore()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserActivity;->reformatCertificateDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4609
    .local v4, issuedOn:Ljava/lang/String;
    const v6, 0x7f0c0060

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4613
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getValidNotAfter()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserActivity;->reformatCertificateDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4615
    .local v1, expiresOn:Ljava/lang/String;
    const v6, 0x7f0c0062

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v6, v0

    .line 4618
    goto/16 :goto_4
.end method

.method private loadURL(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 5468
    if-eqz p2, :cond_19

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_19

    if-eqz p1, :cond_19

    .line 5469
    invoke-virtual {p0, p2}, Lcom/android/browser/BrowserActivity;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5470
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 5471
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 5474
    :cond_19
    return-void
.end method

.method private openTab(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 2439
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2440
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->createNewTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v0

    .line 2441
    .local v0, t:Lcom/android/browser/TabControl$Tab;
    if-eqz v0, :cond_18

    .line 2442
    invoke-virtual {v0}, Lcom/android/browser/TabControl$Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2447
    .end local v0           #t:Lcom/android/browser/TabControl$Tab;
    :cond_18
    :goto_18
    return-void

    .line 2445
    :cond_19
    const/4 v1, 0x0

    invoke-direct {p0, p1, v2, v1, v2}, Lcom/android/browser/BrowserActivity;->openTabAndShow(Ljava/lang/String;Landroid/os/Message;ZLjava/lang/String;)V

    goto :goto_18
.end method

.method private openTabAndShow(Ljava/lang/String;Landroid/os/Message;ZLjava/lang/String;)V
    .registers 21
    .parameter "url"
    .parameter "msg"
    .parameter "closeOnExit"
    .parameter "appId"

    .prologue
    .line 2163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_37

    const/4 v4, 0x1

    move v15, v4

    .line 2164
    .local v15, newTab:Z
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v10

    .line 2165
    .local v10, currentTab:Lcom/android/browser/TabControl$Tab;
    if-eqz v15, :cond_7a

    .line 2166
    const/4 v8, 0x0

    .line 2169
    .local v8, delay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    move-object v4, v0

    if-eqz v4, :cond_4b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserActivity;->mAnimationCount:I

    move v4, v0

    if-lez v4, :cond_4b

    .line 2170
    if-eqz p1, :cond_4a

    .line 2174
    sget-boolean v4, Lcom/android/browser/BrowserActivity;->$assertionsDisabled:Z

    if-nez v4, :cond_3a

    if-eqz p2, :cond_3a

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2163
    .end local v8           #delay:I
    .end local v10           #currentTab:Lcom/android/browser/TabControl$Tab;
    .end local v15           #newTab:Z
    :cond_37
    const/4 v4, 0x0

    move v15, v4

    goto :goto_f

    .line 2176
    .restart local v8       #delay:I
    .restart local v10       #currentTab:Lcom/android/browser/TabControl$Tab;
    .restart local v15       #newTab:Z
    :cond_3a
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/TabControl$Tab;)V

    .line 2177
    invoke-virtual {v10}, Lcom/android/browser/TabControl$Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2207
    .end local v8           #delay:I
    :cond_4a
    :goto_4a
    return-void

    .line 2181
    .restart local v8       #delay:I
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    move-object v4, v0

    if-nez v4, :cond_5f

    .line 2185
    const/16 v8, 0x514

    .line 2186
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/BrowserActivity;->tabPicker(ZIZ)V

    .line 2190
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/TabControl;->createNewTab(ZLjava/lang/String;Ljava/lang/String;)Lcom/android/browser/TabControl$Tab;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/browser/BrowserActivity;->sendAnimateFromOverview(Lcom/android/browser/TabControl$Tab;ZLjava/lang/String;ILandroid/os/Message;)V

    goto :goto_4a

    .line 2194
    .end local v8           #delay:I
    :cond_7a
    if-eqz p1, :cond_4a

    .line 2196
    sget-boolean v4, Lcom/android/browser/BrowserActivity;->$assertionsDisabled:Z

    if-nez v4, :cond_88

    if-eqz p2, :cond_88

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2197
    :cond_88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    move-object v4, v0

    if-eqz v4, :cond_a2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserActivity;->mAnimationCount:I

    move v4, v0

    if-nez v4, :cond_a2

    .line 2198
    const/4 v11, 0x0

    const/16 v13, 0x320

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v12, p1

    invoke-direct/range {v9 .. v14}, Lcom/android/browser/BrowserActivity;->sendAnimateFromOverview(Lcom/android/browser/TabControl$Tab;ZLjava/lang/String;ILandroid/os/Message;)V

    goto :goto_4a

    .line 2202
    :cond_a2
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/TabControl$Tab;)V

    .line 2204
    invoke-virtual {v10}, Lcom/android/browser/TabControl$Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_4a
.end method

.method private pauseWebView()Z
    .registers 3

    .prologue
    .line 1333
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v1, :cond_1c

    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mPageStarted:Z

    if-nez v1, :cond_1c

    .line 1334
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 1335
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 1336
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_1a

    .line 1337
    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 1339
    :cond_1a
    const/4 v1, 0x1

    .line 1341
    .end local v0           #w:Landroid/webkit/WebView;
    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private promptOmaDrmV2Roap(ZI)V
    .registers 10
    .parameter "bShow"
    .parameter "nOmaDrmHandlerV2"

    .prologue
    const/4 v4, 0x0

    const-string v6, "browser"

    .line 5149
    const/4 v3, 0x1

    if-ne p1, v3, :cond_79

    .line 5150
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mRoapDlg:Landroid/app/AlertDialog;

    if-nez v3, :cond_60

    .line 5151
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 5152
    .local v0, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f03000a

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 5153
    .local v2, roapView:Landroid/view/View;
    const v3, 0x7f0c002a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f07011b

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5155
    new-instance v1, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;

    invoke-direct {v1, p0, p2}, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;-><init>(Lcom/android/browser/BrowserActivity;I)V

    .line 5157
    .local v1, listener:Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07000a

    invoke-static {v1}, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;->access$7600(Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mRoapDlg:Landroid/app/AlertDialog;

    .line 5161
    const-string v3, "browser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Download] showing roap popup is succeeded. id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5175
    .end local v0           #factory:Landroid/view/LayoutInflater;
    .end local v1           #listener:Lcom/android/browser/BrowserActivity$PromptOmaDrmV2RoapListener;
    .end local v2           #roapView:Landroid/view/View;
    :goto_5f
    return-void

    .line 5164
    :cond_60
    const-string v3, "browser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Download] showing roap popup is skipped. id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 5167
    :cond_79
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mRoapDlg:Landroid/app/AlertDialog;

    if-eqz v3, :cond_9d

    .line 5168
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mRoapDlg:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    .line 5169
    iput-object v4, p0, Lcom/android/browser/BrowserActivity;->mRoapDlg:Landroid/app/AlertDialog;

    .line 5170
    const-string v3, "browser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Download] hiding roap popup is succeeded. id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 5173
    :cond_9d
    const-string v3, "browser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Download] hiding roap popup is skipped. id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f
.end method

.method private promptUserConsent(ILjava/lang/String;I)V
    .registers 11
    .parameter "popupID"
    .parameter "msg"
    .parameter "nOmaDrmHandlerV2"

    .prologue
    const-string v6, "browser"

    .line 5210
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mDrmUserConsentDlg:Landroid/app/AlertDialog;

    if-nez v3, :cond_61

    .line 5211
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 5212
    .local v0, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f03000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 5213
    .local v2, userConsentView:Landroid/view/View;
    const v3, 0x7f0c002a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5215
    new-instance v1, Lcom/android/browser/BrowserActivity$PromptUserConsentListener;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/browser/BrowserActivity$PromptUserConsentListener;-><init>(Lcom/android/browser/BrowserActivity;II)V

    .line 5217
    .local v1, listener:Lcom/android/browser/BrowserActivity$PromptUserConsentListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07000b

    invoke-static {v1}, Lcom/android/browser/BrowserActivity$PromptUserConsentListener;->access$8000(Lcom/android/browser/BrowserActivity$PromptUserConsentListener;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07000a

    invoke-static {v1}, Lcom/android/browser/BrowserActivity$PromptUserConsentListener;->access$8000(Lcom/android/browser/BrowserActivity$PromptUserConsentListener;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mDrmUserConsentDlg:Landroid/app/AlertDialog;

    .line 5222
    const-string v3, "browser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Download] showing DrmUserConsent popup is succeeded. id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5226
    .end local v0           #factory:Landroid/view/LayoutInflater;
    .end local v1           #listener:Lcom/android/browser/BrowserActivity$PromptUserConsentListener;
    .end local v2           #userConsentView:Landroid/view/View;
    :goto_60
    return-void

    .line 5225
    :cond_61
    const-string v3, "browser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Download] showing DrmUserConsent popup is skipped. id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60
.end method

.method private reformatCertificateDate(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "certificateDate"

    .prologue
    .line 4629
    const/4 v2, 0x0

    .line 4631
    .local v2, reformattedDate:Ljava/lang/String;
    if-eqz p1, :cond_16

    .line 4632
    const/4 v0, 0x0

    .line 4634
    .local v0, date:Ljava/util/Date;
    :try_start_4
    invoke-static {}, Ljava/text/DateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_b
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_b} :catch_1a

    move-result-object v0

    .line 4639
    :goto_c
    if-eqz v0, :cond_16

    .line 4640
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 4645
    .end local v0           #date:Ljava/util/Date;
    :cond_16
    if-eqz v2, :cond_1e

    move-object v3, v2

    :goto_19
    return-object v3

    .line 4635
    .restart local v0       #date:Ljava/util/Date;
    :catch_1a
    move-exception v3

    move-object v1, v3

    .line 4636
    .local v1, e:Ljava/text/ParseException;
    const/4 v0, 0x0

    goto :goto_c

    .line 4645
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #e:Ljava/text/ParseException;
    :cond_1e
    if-eqz p1, :cond_22

    move-object v3, p1

    goto :goto_19

    :cond_22
    const-string v3, ""

    goto :goto_19
.end method

.method private removeTabFromContentView(Lcom/android/browser/TabControl$Tab;)V
    .registers 5
    .parameter "t"

    .prologue
    .line 2057
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2059
    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 2060
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getSubWebViewContainer()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 2067
    :cond_18
    :goto_18
    return-void

    .line 2063
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 2065
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "browser"

    const-string v2, "removeTabFromContentView() error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private resetLockIcon()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 4073
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->saveLockIcon()V

    .line 4075
    iput v0, p0, Lcom/android/browser/BrowserActivity;->mLockIconType:I

    .line 4082
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->updateLockIconImage(I)V

    .line 4083
    return-void
.end method

.method private resetLockIcon(Ljava/lang/String;)V
    .registers 4
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 4052
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->saveLockIcon()V

    .line 4054
    iput v1, p0, Lcom/android/browser/BrowserActivity;->mLockIconType:I

    .line 4055
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4056
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mLockIconType:I

    .line 4063
    :cond_f
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->updateLockIconImage(I)V

    .line 4064
    return-void
.end method

.method private resetTitle()V
    .registers 1

    .prologue
    .line 2491
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resetLockIcon()V

    .line 2492
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resetTitleIconAndProgress()V

    .line 2493
    return-void
.end method

.method private resetTitleAndIcon(Landroid/webkit/WebView;)V
    .registers 5
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 2523
    invoke-virtual {p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 2524
    .local v0, item:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_1e

    .line 2525
    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/browser/BrowserActivity;->setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 2526
    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 2531
    :goto_1d
    return-void

    .line 2528
    :cond_1e
    invoke-direct {p0, v2, v2}, Lcom/android/browser/BrowserActivity;->setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    invoke-direct {p0, v2}, Lcom/android/browser/BrowserActivity;->setFavicon(Landroid/graphics/Bitmap;)V

    goto :goto_1d
.end method

.method private resetTitleIconAndProgress()V
    .registers 4

    .prologue
    .line 2512
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 2513
    .local v0, current:Landroid/webkit/WebView;
    if-nez v0, :cond_9

    .line 2519
    :goto_8
    return-void

    .line 2516
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->resetTitleAndIcon(Landroid/webkit/WebView;)V

    .line 2517
    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v1

    .line 2518
    .local v1, progress:I
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    goto :goto_8
.end method

.method private resumeAfterCredentials()V
    .registers 4

    .prologue
    .line 1370
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mCredsDlg:Landroid/app/ProgressDialog;

    if-nez v1, :cond_5

    .line 1393
    :goto_4
    return-void

    .line 1375
    :cond_5
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mCredsDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1376
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mCredsDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1378
    :cond_12
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mCredsDlg:Landroid/app/ProgressDialog;

    .line 1381
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1384
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 1385
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_2d

    .line 1386
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1392
    :cond_2d
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1, p0}, Lcom/android/browser/BrowserSettings;->setLoginInitialized(Landroid/content/Context;)V

    goto :goto_4
.end method

.method private resumeWebView()Z
    .registers 3

    .prologue
    .line 1319
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mPageStarted:Z

    if-eqz v1, :cond_10

    :cond_8
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v1, :cond_24

    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mPageStarted:Z

    if-eqz v1, :cond_24

    .line 1321
    :cond_10
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 1322
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 1323
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_22

    .line 1324
    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 1326
    :cond_22
    const/4 v1, 0x1

    .line 1328
    .end local v0           #w:Landroid/webkit/WebView;
    :goto_23
    return v1

    :cond_24
    const/4 v1, 0x0

    goto :goto_23
.end method

.method private retainIconsOnStartup()V
    .registers 8

    .prologue
    .line 1397
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    .line 1398
    .local v1, db:Landroid/webkit/WebIconDatabase;
    const-string v5, "icons"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/browser/BrowserActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/webkit/WebIconDatabase;->open(Ljava/lang/String;)V

    .line 1400
    :try_start_12
    iget-object v5, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5}, Landroid/provider/Browser;->getAllBookmarks(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 1401
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_22

    .line 1402
    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 1414
    .end local v0           #c:Landroid/database/Cursor;
    :goto_21
    return-void

    .line 1405
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_22
    const-string v5, "url"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1407
    .local v4, urlIndex:I
    :cond_28
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1408
    .local v3, url:Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    .line 1409
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_28

    .line 1410
    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V
    :try_end_38
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_38} :catch_39

    goto :goto_21

    .line 1411
    .end local v0           #c:Landroid/database/Cursor;
    .end local v3           #url:Ljava/lang/String;
    .end local v4           #urlIndex:I
    :catch_39
    move-exception v5

    move-object v2, v5

    .line 1412
    .local v2, e:Ljava/lang/IllegalStateException;
    const-string v5, "browser"

    const-string v6, "retainIconsOnStartup"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method private revertLockIcon()V
    .registers 2

    .prologue
    .line 2651
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mPrevLockType:I

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mLockIconType:I

    .line 2658
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mLockIconType:I

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->updateLockIconImage(I)V

    .line 2659
    return-void
.end method

.method private saveLockIcon()V
    .registers 2

    .prologue
    .line 2642
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mLockIconType:I

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mPrevLockType:I

    .line 2643
    return-void
.end method

.method private sendAnimateFromOverview(Lcom/android/browser/TabControl$Tab;ZLjava/lang/String;ILandroid/os/Message;)V
    .registers 14
    .parameter "tab"
    .parameter "newTab"
    .parameter "url"
    .parameter "delay"
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x4

    .line 2091
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, p1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/TabControl$Tab;)Z

    .line 2093
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/TabControl$Tab;)V

    .line 2095
    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2097
    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 2098
    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getSubWebViewContainer()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2101
    :cond_1f
    new-instance v1, Lcom/android/browser/BrowserActivity$AnimatingView;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/BrowserActivity$AnimatingView;-><init>(Landroid/content/Context;Lcom/android/browser/TabControl$Tab;)V

    .line 2104
    .local v1, view:Lcom/android/browser/BrowserActivity$AnimatingView;
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    sget-object v3, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2105
    invoke-virtual {v1, v4}, Lcom/android/browser/BrowserActivity$AnimatingView;->setVisibility(I)V

    .line 2107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2108
    .local v0, map:Ljava/util/HashMap;
    const-string v2, "view"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2112
    if-eqz p3, :cond_44

    .line 2113
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/TabControl$Tab;)V

    .line 2114
    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2116
    :cond_44
    const-string v2, "msg"

    invoke-virtual {v0, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2117
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x68

    if-eqz p2, :cond_6b

    const/4 v5, 0x1

    :goto_52
    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, p4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2120
    iget v2, p0, Lcom/android/browser/BrowserActivity;->mAnimationCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/browser/BrowserActivity;->mAnimationCount:I

    .line 2122
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    invoke-virtual {v2, v7}, Lcom/android/browser/ImageGrid;->setListener(Lcom/android/browser/ImageGrid$Listener;)V

    .line 2123
    iput-object v7, p0, Lcom/android/browser/BrowserActivity;->mTabListener:Lcom/android/browser/BrowserActivity$TabListener;

    .line 2125
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 2127
    return-void

    :cond_6b
    move v5, v6

    .line 2117
    goto :goto_52
.end method

.method private setFavicon(Landroid/graphics/Bitmap;)V
    .registers 10
    .parameter "icon"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 2619
    iget v3, p0, Lcom/android/browser/BrowserActivity;->mAnimationCount:I

    if-gtz v3, :cond_a

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    if-eqz v3, :cond_b

    .line 2634
    :cond_a
    :goto_a
    return-void

    .line 2622
    :cond_b
    new-array v6, v2, [Landroid/graphics/drawable/Drawable;

    .line 2623
    .local v6, array:[Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/graphics/drawable/PaintDrawable;

    const/4 v3, -0x1

    invoke-direct {v7, v3}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 2624
    .local v7, p:Landroid/graphics/drawable/PaintDrawable;
    const/high16 v3, 0x4040

    invoke-virtual {v7, v3}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 2625
    const/4 v3, 0x0

    aput-object v7, v6, v3

    .line 2626
    if-nez p1, :cond_35

    .line 2627
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mGenericFavicon:Landroid/graphics/drawable/Drawable;

    aput-object v3, v6, v1

    .line 2631
    :goto_21
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v0, d:Landroid/graphics/drawable/LayerDrawable;
    move v3, v2

    move v4, v2

    move v5, v2

    .line 2632
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 2633
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 2629
    .end local v0           #d:Landroid/graphics/drawable/LayerDrawable;
    :cond_35
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v3, v6, v1

    goto :goto_21
.end method

.method private setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "url"
    .parameter "title"

    .prologue
    .line 2539
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mUrl:Ljava/lang/String;

    .line 2540
    iput-object p2, p0, Lcom/android/browser/BrowserActivity;->mTitle:Ljava/lang/String;

    .line 2544
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mAnimationCount:I

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    if-nez v0, :cond_13

    .line 2545
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->buildUrlTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2547
    :cond_13
    return-void
.end method

.method private setupBrowserToolbar()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 4227
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4230
    .local v0, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4231
    .local v1, invokepanelview:Landroid/view/View;
    const v3, 0x7f030008

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 4233
    .local v2, toolbar_panelview:Landroid/view/View;
    sget-object v3, Lcom/android/browser/BrowserActivity;->BROWSER_TOOLBAR_PANEL_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4234
    sget-object v3, Lcom/android/browser/BrowserActivity;->BROWSER_TOOLBAR_PANEL_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x3c

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 4235
    sget-object v3, Lcom/android/browser/BrowserActivity;->BROWSER_TOOLBAR_PANEL_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 4237
    sget-object v3, Lcom/android/browser/BrowserActivity;->BROWSER_INVOKE_PANEL_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x15

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4238
    sget-object v3, Lcom/android/browser/BrowserActivity;->BROWSER_INVOKE_PANEL_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x37

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 4239
    sget-object v3, Lcom/android/browser/BrowserActivity;->BROWSER_INVOKE_PANEL_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x41

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 4241
    sget-object v3, Lcom/android/browser/BrowserActivity;->BROWSER_CONTROL_BUTTON_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 4243
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    sget-object v4, Lcom/android/browser/BrowserActivity;->BROWSER_INVOKE_PANEL_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4244
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    sget-object v4, Lcom/android/browser/BrowserActivity;->BROWSER_TOOLBAR_PANEL_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4247
    const v3, 0x7f0c001e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mRefreshStopButton:Landroid/widget/ImageView;

    .line 4249
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mRefreshStopButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/browser/BrowserActivity$17;

    invoke-direct {v4, p0}, Lcom/android/browser/BrowserActivity$17;-><init>(Lcom/android/browser/BrowserActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4265
    const v3, 0x7f0c001f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mForwardButton:Landroid/widget/ImageView;

    .line 4267
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mForwardButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4269
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mForwardButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/browser/BrowserActivity$18;

    invoke-direct {v4, p0}, Lcom/android/browser/BrowserActivity$18;-><init>(Lcom/android/browser/BrowserActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4295
    const v3, 0x7f0c0020

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mBackButton:Landroid/widget/ImageView;

    .line 4297
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4298
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mBackButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/browser/BrowserActivity$19;

    invoke-direct {v4, p0}, Lcom/android/browser/BrowserActivity$19;-><init>(Lcom/android/browser/BrowserActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4311
    const v3, 0x7f0c0021

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mBookmarksButton:Landroid/widget/ImageView;

    .line 4313
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mBookmarksButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/browser/BrowserActivity$20;

    invoke-direct {v4, p0}, Lcom/android/browser/BrowserActivity$20;-><init>(Lcom/android/browser/BrowserActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4320
    const v3, 0x7f0c0022

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mNewwindowButton:Landroid/widget/ImageView;

    .line 4322
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mNewwindowButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/browser/BrowserActivity$21;

    invoke-direct {v4, p0}, Lcom/android/browser/BrowserActivity$21;-><init>(Lcom/android/browser/BrowserActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4334
    const v3, 0x7f0c0023

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mSettingButton:Landroid/widget/ImageView;

    .line 4336
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mSettingButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/browser/BrowserActivity$22;

    invoke-direct {v4, p0}, Lcom/android/browser/BrowserActivity$22;-><init>(Lcom/android/browser/BrowserActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4348
    const v3, 0x7f0c0019

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mInvokePanel:Landroid/widget/LinearLayout;

    .line 4349
    const v3, 0x7f0c001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mToolBarPanel:Landroid/widget/LinearLayout;

    .line 4353
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mInvokePanel:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/browser/BrowserActivity$23;

    invoke-direct {v4, p0}, Lcom/android/browser/BrowserActivity$23;-><init>(Lcom/android/browser/BrowserActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4363
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mToolBarPanel:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/browser/BrowserActivity$24;

    invoke-direct {v4, p0}, Lcom/android/browser/BrowserActivity$24;-><init>(Lcom/android/browser/BrowserActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4370
    return-void
.end method

.method private setupHomePage()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 236
    new-instance v1, Lcom/android/browser/BrowserActivity$3;

    invoke-direct {v1, p0}, Lcom/android/browser/BrowserActivity$3;-><init>(Lcom/android/browser/BrowserActivity;)V

    .line 294
    .local v1, getAccount:Ljava/lang/Runnable;
    new-array v0, v4, [Z

    aput-boolean v2, v0, v2

    .line 299
    .local v0, done:[Z
    new-instance v2, Lcom/android/browser/BrowserActivity$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/browser/BrowserActivity$4;-><init>(Lcom/android/browser/BrowserActivity;[ZLjava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/browser/BrowserActivity;->mGlsConnection:Landroid/content/ServiceConnection;

    .line 314
    sget-object v2, Lcom/google/android/googlelogin/GoogleLoginServiceConstants;->SERVICE_INTENT:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mGlsConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/browser/BrowserActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 316
    return-void
.end method

.method private showHttpAuthentication(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 19
    .parameter "handler"
    .parameter "host"
    .parameter "realm"
    .parameter "title"
    .parameter "name"
    .parameter "password"
    .parameter "focusId"

    .prologue
    .line 4655
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 4656
    .local v9, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030014

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 4658
    .local v4, v:Landroid/view/View;
    if-eqz p5, :cond_1d

    .line 4659
    const v2, 0x7f0c004b

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object v0, v2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4661
    :cond_1d
    if-eqz p6, :cond_2b

    .line 4662
    const v2, 0x7f0c004d

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    .end local p5
    check-cast p5, Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4665
    :cond_2b
    move-object v10, p4

    .line 4666
    .local v10, titleText:Ljava/lang/String;
    if-nez v10, :cond_45

    .line 4667
    const v2, 0x7f070006

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s1"

    invoke-virtual {v2, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s2"

    invoke-virtual {v2, v3, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 4671
    :cond_45
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    .line 4672
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f070009

    new-instance v2, Lcom/android/browser/BrowserActivity$32;

    .end local v9           #factory:Landroid/view/LayoutInflater;
    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/browser/BrowserActivity$32;-><init>(Lcom/android/browser/BrowserActivity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v8, v9, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07000a

    new-instance v5, Lcom/android/browser/BrowserActivity$31;

    invoke-direct {v5, p0, p1}, Lcom/android/browser/BrowserActivity$31;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/browser/BrowserActivity$30;

    invoke-direct {v3, p0, p1}, Lcom/android/browser/BrowserActivity$30;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 4710
    .local v8, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 4712
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 4713
    if-eqz p7, :cond_9e

    .line 4714
    move-object v0, v8

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 4718
    :goto_9b
    iput-object v8, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    .line 4719
    return-void

    .line 4716
    :cond_9e
    const v2, 0x7f0c004b

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_9b
.end method

.method private showInvokePanel()V
    .registers 3

    .prologue
    .line 4412
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mInvokePanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4413
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mToolBarPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4414
    return-void
.end method

.method private showPageInfo(Lcom/android/browser/TabControl$Tab;Z)V
    .registers 12
    .parameter "tab"
    .parameter "fromShowSSLCertificateOnError"

    .prologue
    .line 4112
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4115
    .local v1, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f030016

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 4117
    .local v2, pageInfoView:Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    .line 4119
    .local v5, view:Landroid/webkit/WebView;
    const/4 v4, 0x0

    .line 4120
    .local v4, url:Ljava/lang/String;
    const/4 v3, 0x0

    .line 4122
    .local v3, title:Ljava/lang/String;
    if-nez v5, :cond_8d

    .line 4123
    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 4124
    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 4134
    :goto_1c
    if-nez v4, :cond_20

    .line 4135
    const-string v4, ""

    .line 4137
    :cond_20
    if-nez v3, :cond_24

    .line 4138
    const-string v3, ""

    .line 4141
    :cond_24
    const v6, 0x7f0c0005

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4142
    const v6, 0x7f0c0001

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4144
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mPageInfoView:Lcom/android/browser/TabControl$Tab;

    .line 4145
    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v6, p0, Lcom/android/browser/BrowserActivity;->mPageInfoFromShowSSLCertificateOnError:Ljava/lang/Boolean;

    .line 4147
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f07000c

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x108009b

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f07000b

    new-instance v8, Lcom/android/browser/BrowserActivity$15;

    invoke-direct {v8, p0, p2}, Lcom/android/browser/BrowserActivity$15;-><init>(Lcom/android/browser/BrowserActivity;Z)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/browser/BrowserActivity$14;

    invoke-direct {v7, p0, p2}, Lcom/android/browser/BrowserActivity$14;-><init>(Lcom/android/browser/BrowserActivity;Z)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 4190
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    if-nez p2, :cond_7b

    if-eqz v5, :cond_86

    invoke-virtual {v5}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v6

    if-eqz v6, :cond_86

    .line 4193
    :cond_7b
    const v6, 0x7f070012

    new-instance v7, Lcom/android/browser/BrowserActivity$16;

    invoke-direct {v7, p0, p2, v5, p1}, Lcom/android/browser/BrowserActivity$16;-><init>(Lcom/android/browser/BrowserActivity;ZLandroid/webkit/WebView;Lcom/android/browser/TabControl$Tab;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4220
    :cond_86
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/BrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    .line 4221
    return-void

    .line 4125
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_8d
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v6}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v6

    if-ne v5, v6, :cond_9a

    .line 4127
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mUrl:Ljava/lang/String;

    .line 4128
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTitle:Ljava/lang/String;

    goto :goto_1c

    .line 4130
    :cond_9a
    invoke-virtual {v5}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 4131
    invoke-virtual {v5}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1c
.end method

.method private showSSLCertificate(Lcom/android/browser/TabControl$Tab;)V
    .registers 9
    .parameter "tab"

    .prologue
    .line 4424
    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/browser/BrowserActivity;->inflateCertificateView(Landroid/net/http/SslCertificate;)Landroid/view/View;

    move-result-object v0

    .line 4426
    .local v0, certificateView:Landroid/view/View;
    if-nez v0, :cond_f

    .line 4466
    :goto_e
    return-void

    .line 4430
    :cond_f
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4432
    .local v1, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f0c004f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 4435
    .local v3, placeholder:Landroid/widget/LinearLayout;
    const v4, 0x7f030018

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 4437
    .local v2, ll:Landroid/widget/LinearLayout;
    const v4, 0x7f0c0063

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f070018

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4440
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateView:Lcom/android/browser/TabControl$Tab;

    .line 4441
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f070017

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f020025

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07000b

    new-instance v6, Lcom/android/browser/BrowserActivity$26;

    invoke-direct {v6, p0, p1}, Lcom/android/browser/BrowserActivity$26;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl$Tab;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/browser/BrowserActivity$25;

    invoke-direct {v5, p0, p1}, Lcom/android/browser/BrowserActivity$25;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl$Tab;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    goto :goto_e
.end method

.method private showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 12
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    const v7, 0x7f0c0064

    const v6, 0x7f030019

    .line 4478
    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/browser/BrowserActivity;->inflateCertificateView(Landroid/net/http/SslCertificate;)Landroid/view/View;

    move-result-object v0

    .line 4480
    .local v0, certificateView:Landroid/view/View;
    if-nez v0, :cond_11

    .line 4565
    :goto_10
    return-void

    .line 4484
    :cond_11
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4486
    .local v1, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f0c004f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 4489
    .local v3, placeholder:Landroid/widget/LinearLayout;
    const/4 v4, 0x3

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 4490
    invoke-virtual {v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 4492
    .local v2, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f070013

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4496
    .end local v2           #ll:Landroid/widget/LinearLayout;
    :cond_37
    const/4 v4, 0x2

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 4497
    invoke-virtual {v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 4499
    .restart local v2       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f070014

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4503
    .end local v2           #ll:Landroid/widget/LinearLayout;
    :cond_50
    const/4 v4, 0x1

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 4504
    invoke-virtual {v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 4506
    .restart local v2       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f070015

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4510
    .end local v2           #ll:Landroid/widget/LinearLayout;
    :cond_69
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 4511
    invoke-virtual {v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 4513
    .restart local v2       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f070016

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4517
    .end local v2           #ll:Landroid/widget/LinearLayout;
    :cond_82
    iput-object p2, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    .line 4518
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    .line 4519
    iput-object p3, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    .line 4520
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f070017

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f020024

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07000b

    new-instance v6, Lcom/android/browser/BrowserActivity$29;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/browser/BrowserActivity$29;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07000d

    new-instance v6, Lcom/android/browser/BrowserActivity$28;

    invoke-direct {v6, p0, p1}, Lcom/android/browser/BrowserActivity$28;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/browser/BrowserActivity$27;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/android/browser/BrowserActivity$27;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    goto/16 :goto_10
.end method

.method private showTab(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)V
    .registers 9
    .parameter "t"
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 2140
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mAnimationCount:I

    if-lez v0, :cond_6

    .line 2151
    :goto_5
    return-void

    .line 2143
    :cond_6
    const/4 v4, 0x0

    .line 2144
    .local v4, delay:I
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    if-nez v0, :cond_16

    .line 2147
    const/16 v4, 0x514

    .line 2148
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/TabControl$Tab;)I

    move-result v0

    invoke-direct {p0, v2, v0, v2}, Lcom/android/browser/BrowserActivity;->tabPicker(ZIZ)V

    .line 2150
    :cond_16
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/BrowserActivity;->sendAnimateFromOverview(Lcom/android/browser/TabControl$Tab;ZLjava/lang/String;ILandroid/os/Message;)V

    goto :goto_5
.end method

.method private showToolbar()V
    .registers 3

    .prologue
    .line 4407
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mInvokePanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4408
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mToolBarPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4409
    return-void
.end method

.method private smartUrlFilter(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "inUri"

    .prologue
    .line 5492
    if-eqz p1, :cond_b

    .line 5493
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5495
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private stopLoading()V
    .registers 4

    .prologue
    .line 2802
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->resetTitleAndRevertLockIcon()V

    .line 2803
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 2804
    .local v0, w:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 2805
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2807
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->cancelStopToast()V

    .line 2808
    const v1, 0x7f070022

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    .line 2810
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2811
    return-void
.end method

.method private storeExtras(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "uri"
    .parameter "installNotifyURI"
    .parameter "nextURI"

    .prologue
    .line 4856
    if-eqz p2, :cond_7

    .line 4857
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->installNotifyURITable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4858
    :cond_7
    if-eqz p3, :cond_e

    .line 4859
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->nextURITable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4861
    :cond_e
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mObserver:Lcom/android/browser/BrowserActivity$DownloadContentObserver;

    if-nez v0, :cond_19

    .line 4862
    new-instance v0, Lcom/android/browser/BrowserActivity$DownloadContentObserver;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$DownloadContentObserver;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mObserver:Lcom/android/browser/BrowserActivity$DownloadContentObserver;

    .line 4864
    :cond_19
    sget v0, Lcom/android/browser/BrowserActivity;->mObserverCount:I

    if-nez v0, :cond_29

    .line 4865
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mObserver:Lcom/android/browser/BrowserActivity$DownloadContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4866
    :cond_29
    sget v0, Lcom/android/browser/BrowserActivity;->mObserverCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/browser/BrowserActivity;->mObserverCount:I

    .line 4867
    return-void
.end method

.method private switchTabs(IIZ)V
    .registers 11
    .parameter "indexFrom"
    .parameter "indexToShow"
    .parameter "remove"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2662
    const/16 v4, 0x514

    .line 2665
    .local v4, delay:I
    invoke-direct {p0, v2, p1, p3}, Lcom/android/browser/BrowserActivity;->tabPicker(ZIZ)V

    .line 2667
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p2}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/TabControl$Tab;

    move-result-object v1

    .line 2668
    .local v1, tab:Lcom/android/browser/TabControl$Tab;
    if-eqz v1, :cond_15

    move-object v0, p0

    move-object v5, v3

    .line 2669
    invoke-direct/range {v0 .. v5}, Lcom/android/browser/BrowserActivity;->sendAnimateFromOverview(Lcom/android/browser/TabControl$Tab;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 2681
    :goto_14
    return-void

    .line 2675
    :cond_15
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mAnimationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mAnimationCount:I

    .line 2677
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    iget-object v5, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v5}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v5, v4

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_14
.end method

.method private tabPicker(ZIZ)V
    .registers 16
    .parameter "stay"
    .parameter "index"
    .parameter "remove"

    .prologue
    const/4 v11, 0x0

    .line 5379
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    if-eqz v7, :cond_6

    .line 5430
    :goto_5
    return-void

    .line 5383
    :cond_6
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v7}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    .line 5385
    .local v4, size:I
    const/4 v3, 0x0

    .line 5386
    .local v3, l:Lcom/android/browser/BrowserActivity$TabListener;
    if-eqz p1, :cond_16

    .line 5387
    new-instance v3, Lcom/android/browser/BrowserActivity$TabListener;

    .end local v3           #l:Lcom/android/browser/BrowserActivity$TabListener;
    invoke-direct {v3, p0, v11}, Lcom/android/browser/BrowserActivity$TabListener;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/BrowserActivity$1;)V

    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabListener:Lcom/android/browser/BrowserActivity$TabListener;

    .line 5389
    .restart local v3       #l:Lcom/android/browser/BrowserActivity$TabListener;
    :cond_16
    new-instance v7, Lcom/android/browser/ImageGrid;

    invoke-direct {v7, p0, p1, v3}, Lcom/android/browser/ImageGrid;-><init>(Landroid/content/Context;ZLcom/android/browser/ImageGrid$Listener;)V

    iput-object v7, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    .line 5391
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1e
    if-ge v2, v4, :cond_33

    .line 5392
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v7, v2}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/TabControl$Tab;

    move-result-object v5

    .line 5393
    .local v5, t:Lcom/android/browser/TabControl$Tab;
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v7, v5}, Lcom/android/browser/TabControl;->populatePickerData(Lcom/android/browser/TabControl$Tab;)V

    .line 5394
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    invoke-virtual {v7, v5}, Lcom/android/browser/ImageGrid;->add(Lcom/android/browser/TabControl$Tab;)V

    .line 5391
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 5399
    .end local v5           #t:Lcom/android/browser/TabControl$Tab;
    :cond_33
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v7}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v1

    .line 5400
    .local v1, currentIndex:I
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    invoke-virtual {v7, v1}, Lcom/android/browser/ImageGrid;->setCurrentIndex(I)V

    .line 5403
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    sget-object v9, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v7, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5406
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v7}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v0

    .line 5407
    .local v0, current:Lcom/android/browser/TabControl$Tab;
    new-instance v6, Lcom/android/browser/BrowserActivity$AnimatingView;

    invoke-direct {v6, p0, v0}, Lcom/android/browser/BrowserActivity$AnimatingView;-><init>(Landroid/content/Context;Lcom/android/browser/TabControl$Tab;)V

    .line 5408
    .local v6, v:Lcom/android/browser/BrowserActivity$AnimatingView;
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    sget-object v8, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v7, v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5409
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/TabControl$Tab;)V

    .line 5411
    invoke-virtual {v0}, Lcom/android/browser/TabControl$Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebView;->pauseTimers()V

    .line 5415
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x69

    if-eqz p3, :cond_9d

    const/4 v10, 0x1

    :goto_6c
    invoke-virtual {v8, v9, p2, v10, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5420
    iget v7, p0, Lcom/android/browser/BrowserActivity;->mAnimationCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/browser/BrowserActivity;->mAnimationCount:I

    .line 5423
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v11}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 5424
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8, v11}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 5425
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, -0x2

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setFeatureInt(II)V

    .line 5427
    const v7, 0x7f070044

    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserActivity;->setTitle(I)V

    .line 5429
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    goto/16 :goto_5

    .line 5415
    :cond_9d
    const/4 v10, 0x0

    goto :goto_6c
.end method

.method private toolbarPanelSetting()V
    .registers 9

    .prologue
    const/16 v7, 0x30

    const/16 v6, 0x2d

    const/16 v5, 0x8

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 4375
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_58

    const/4 v1, 0x1

    move v0, v1

    .line 4377
    .local v0, isLandscape:Z
    :goto_17
    if-eqz v0, :cond_5a

    .line 4380
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mToolBarPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v3, v5, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 4381
    sget-object v1, Lcom/android/browser/BrowserActivity;->BROWSER_CONTROL_BUTTON_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 4382
    sget-object v1, Lcom/android/browser/BrowserActivity;->BROWSER_CONTROL_BUTTON_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 4383
    sget-object v1, Lcom/android/browser/BrowserActivity;->BROWSER_CONTROL_BUTTON_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 4396
    :goto_2a
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mRefreshStopButton:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/browser/BrowserActivity;->BROWSER_CONTROL_BUTTON_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4397
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mForwardButton:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/browser/BrowserActivity;->BROWSER_CONTROL_BUTTON_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4398
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBackButton:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/browser/BrowserActivity;->BROWSER_CONTROL_BUTTON_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4399
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBookmarksButton:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/browser/BrowserActivity;->BROWSER_CONTROL_BUTTON_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4400
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mNewwindowButton:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/browser/BrowserActivity;->BROWSER_CONTROL_BUTTON_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4401
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSettingButton:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/browser/BrowserActivity;->BROWSER_CONTROL_BUTTON_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4402
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateRefreshStopicon()V

    .line 4403
    return-void

    .end local v0           #isLandscape:Z
    :cond_58
    move v0, v3

    .line 4375
    goto :goto_17

    .line 4387
    .restart local v0       #isLandscape:Z
    :cond_5a
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mToolBarPanel:Landroid/widget/LinearLayout;

    const/16 v2, 0x1e

    invoke-virtual {v1, v4, v2, v5, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 4388
    sget-object v1, Lcom/android/browser/BrowserActivity;->BROWSER_CONTROL_BUTTON_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0xa

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 4389
    sget-object v1, Lcom/android/browser/BrowserActivity;->BROWSER_CONTROL_BUTTON_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 4390
    sget-object v1, Lcom/android/browser/BrowserActivity;->BROWSER_CONTROL_BUTTON_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_2a
.end method

.method private updateIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "url"
    .parameter "icon"

    .prologue
    .line 2953
    if-eqz p2, :cond_7

    .line 2954
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;->updateBookmarkFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2957
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/browser/BrowserActivity;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 2958
    return-void
.end method

.method private updateInLoadMenuItems()V
    .registers 2

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mRefreshStopButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 1441
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateRefreshStopicon()V

    .line 1457
    :cond_7
    return-void
.end method

.method private updateLockIconImage(I)V
    .registers 5
    .parameter "lockIconType"

    .prologue
    .line 4089
    const/4 v0, 0x0

    .line 4090
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    .line 4091
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSecLockIcon:Landroid/graphics/drawable/Drawable;

    .line 4097
    :cond_6
    :goto_6
    iget v1, p0, Lcom/android/browser/BrowserActivity;->mAnimationCount:I

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    if-nez v1, :cond_16

    .line 4098
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 4100
    :cond_16
    return-void

    .line 4092
    :cond_17
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 4093
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mMixLockIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_6
.end method

.method private updateRefreshStopicon()V
    .registers 7

    .prologue
    .line 1463
    iget-boolean v3, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v3, :cond_1d

    .line 1465
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mRefreshStopButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02004a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1476
    :goto_14
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mForwardButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mBackButton:Landroid/widget/ImageView;

    if-nez v3, :cond_2e

    .line 1521
    :cond_1c
    :goto_1c
    return-void

    .line 1471
    :cond_1d
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mRefreshStopButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_14

    .line 1482
    :cond_2e
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    .line 1483
    .local v2, w:Landroid/webkit/WebView;
    const/4 v1, 0x0

    .line 1484
    .local v1, canGoForward:Z
    const/4 v0, 0x0

    .line 1485
    .local v0, canGoBack:Z
    if-eqz v2, :cond_3e

    .line 1487
    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    .line 1488
    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    .line 1490
    :cond_3e
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mForwardButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1493
    if-nez v1, :cond_6d

    .line 1496
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mForwardButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1505
    :goto_55
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1507
    if-nez v0, :cond_7e

    .line 1510
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1c

    .line 1501
    :cond_6d
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mForwardButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_55

    .line 1515
    :cond_7e
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1c
.end method

.method private waitForCredentials()V
    .registers 4

    .prologue
    .line 1352
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mCredsDlg:Landroid/app/ProgressDialog;

    .line 1353
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCredsDlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1354
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCredsDlg:Landroid/app/ProgressDialog;

    const v1, 0x7f070021

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1357
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCredsDlg:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    .line 1358
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCredsDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1363
    return-void
.end method


# virtual methods
.method public addToOmaDrmHandlerV2List(Lcom/lge/browser/OmaDrmHandlerV2;)V
    .registers 5
    .parameter "handler"

    .prologue
    .line 3997
    sget-object v0, Lcom/android/browser/BrowserActivity;->mOmaDrmHandlerV2List:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3998
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Download] DRM2 List Inserted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/browser/OmaDrmHandlerV2;->getOmaDrmHandlerV2ID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3999
    return-void
.end method

.method public cancelSaveImage()V
    .registers 3

    .prologue
    .line 2822
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->cancelStopToast()V

    .line 2823
    const v0, 0x7f070110

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    .line 2824
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2825
    return-void
.end method

.method public closeFind()V
    .registers 2

    .prologue
    .line 1833
    const v0, 0x7f0c0073

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 1834
    return-void
.end method

.method composeSearchUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "search"

    .prologue
    .line 5586
    sget-object v0, Lcom/android/browser/BrowserActivity;->QuickSearch_G:Ljava/lang/String;

    const-string v1, "%s"

    invoke-static {p1, v0, v1}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method dismissSubWindow(Lcom/android/browser/TabControl$Tab;)V
    .registers 5
    .parameter "t"

    .prologue
    .line 2072
    if-nez p1, :cond_3

    .line 2084
    :cond_2
    :goto_2
    return-void

    .line 2074
    :cond_3
    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 2075
    .local v0, mainView:Landroid/webkit/WebView;
    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2077
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/android/browser/TabControl$Tab;->getSubWebViewContainer()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2078
    if-eqz v0, :cond_1b

    .line 2079
    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2082
    :cond_1b
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, p1}, Lcom/android/browser/TabControl;->dismissSubWindow(Lcom/android/browser/TabControl$Tab;)V

    goto :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "ev"

    .prologue
    .line 5839
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mToolBarPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_27

    .line 5841
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mToolBarPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-nez v0, :cond_27

    .line 5843
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    .line 5845
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mToolBarPanelHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mToolBarPanelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5846
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mToolBarPanelHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mToolBarPanelRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5852
    :cond_27
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public findOmaDrmHandlerV2byID(I)Lcom/lge/browser/OmaDrmHandlerV2;
    .registers 7
    .parameter "Id"

    .prologue
    .line 4028
    sget-object v4, Lcom/android/browser/BrowserActivity;->mOmaDrmHandlerV2List:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    .line 4029
    .local v3, size:I
    const/4 v0, 0x0

    .line 4030
    .local v0, handler:Lcom/lge/browser/OmaDrmHandlerV2;
    const/4 v2, 0x0

    .line 4032
    .local v2, nOmaDrmHandlerV2ID:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v3, :cond_20

    .line 4033
    sget-object v4, Lcom/android/browser/BrowserActivity;->mOmaDrmHandlerV2List:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #handler:Lcom/lge/browser/OmaDrmHandlerV2;
    check-cast v0, Lcom/lge/browser/OmaDrmHandlerV2;

    .line 4034
    .restart local v0       #handler:Lcom/lge/browser/OmaDrmHandlerV2;
    if-nez v0, :cond_18

    .line 4032
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 4036
    :cond_18
    invoke-virtual {v0}, Lcom/lge/browser/OmaDrmHandlerV2;->getOmaDrmHandlerV2ID()I

    move-result v2

    .line 4037
    if-ne v2, p1, :cond_15

    move-object v4, v0

    .line 4042
    :goto_1f
    return-object v4

    :cond_20
    const/4 v4, 0x0

    goto :goto_1f
.end method

.method public getNewOmaDrmHandlerV2ID()I
    .registers 2

    .prologue
    .line 4023
    sget v0, Lcom/android/browser/BrowserActivity;->mOmaDrmHandlerV2ID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/browser/BrowserActivity;->mOmaDrmHandlerV2ID:I

    return v0
.end method

.method public getProgress()I
    .registers 3

    .prologue
    .line 4722
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 4723
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_d

    .line 4724
    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v1

    .line 4726
    :goto_c
    return v1

    :cond_d
    const/16 v1, 0x64

    goto :goto_c
.end method

.method getTopWindow()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method getWebChromeClient()Landroid/webkit/WebChromeClient;
    .registers 2

    .prologue
    .line 3593
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method getWebViewClient()Landroid/webkit/WebViewClient;
    .registers 2

    .prologue
    .line 2949
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method getWindowCount()I
    .registers 2

    .prologue
    .line 5502
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    if-eqz v0, :cond_b

    .line 5503
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    .line 5505
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public loadURL(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 5254
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/browser/BrowserActivity;->loadURL(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 5255
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 4780
    packed-switch p1, :pswitch_data_50

    .line 4808
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 4809
    return-void

    .line 4782
    :pswitch_c
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    if-eqz p3, :cond_4

    .line 4783
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 4784
    .local v3, data:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 4785
    .local v6, extras:Landroid/os/Bundle;
    if-eqz v6, :cond_27

    const-string v0, "new_window"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 4786
    invoke-direct {p0, v3}, Lcom/android/browser/BrowserActivity;->openTab(Ljava/lang/String;)V

    goto :goto_4

    .line 4788
    :cond_27
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v1

    .line 4793
    .local v1, currentTab:Lcom/android/browser/TabControl$Tab;
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    if-eqz v0, :cond_3d

    iget v0, p0, Lcom/android/browser/BrowserActivity;->mAnimationCount:I

    if-nez v0, :cond_3d

    .line 4794
    const/16 v4, 0x320

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/BrowserActivity;->sendAnimateFromOverview(Lcom/android/browser/TabControl$Tab;ZLjava/lang/String;ILandroid/os/Message;)V

    goto :goto_4

    .line 4797
    :cond_3d
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/TabControl$Tab;)V

    .line 4798
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 4799
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_4

    .line 4780
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 10
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    .line 1266
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1268
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_18

    .line 1269
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1270
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPageInfoView:Lcom/android/browser/TabControl$Tab;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mPageInfoFromShowSSLCertificateOnError:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->showPageInfo(Lcom/android/browser/TabControl$Tab;Z)V

    .line 1274
    :cond_18
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_26

    .line 1275
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1276
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateView:Lcom/android/browser/TabControl$Tab;

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->showSSLCertificate(Lcom/android/browser/TabControl$Tab;)V

    .line 1279
    :cond_26
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_38

    .line 1280
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1281
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/browser/BrowserActivity;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 1286
    :cond_38
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8b

    .line 1287
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    const v1, 0x1020150

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1290
    .local v4, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0c004b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1292
    .local v5, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0c004d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1294
    .local v6, password:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    .line 1296
    .local v7, focusId:I
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1297
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/android/browser/BrowserActivity;->showHttpAuthentication(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1300
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #password:Ljava/lang/String;
    .end local v7           #focusId:I
    :cond_8b
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    invoke-virtual {v0}, Lcom/android/browser/FindDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 1301
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    invoke-virtual {v0, p1}, Lcom/android/browser/FindDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1305
    :cond_9c
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mToolBarPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a7

    .line 1308
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showInvokePanel()V

    .line 1311
    :cond_a7
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 10
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1528
    iput-boolean v7, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    .line 1529
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 1530
    .local v1, id:I
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v3

    .line 1531
    .local v3, webView:Landroid/webkit/WebView;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1532
    .local v0, hrefMap:Ljava/util/HashMap;
    const-string v4, "webview"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-virtual {v4, v5, v1, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1535
    .local v2, msg:Landroid/os/Message;
    sparse-switch v1, :sswitch_data_2e

    .line 1548
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    .line 1551
    :goto_25
    return v4

    .line 1543
    :sswitch_26
    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 1550
    iput-boolean v6, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    move v4, v7

    .line 1551
    goto :goto_25

    .line 1535
    nop

    :sswitch_data_2e
    .sparse-switch
        0x7f0c006b -> :sswitch_26
        0x7f0c009f -> :sswitch_26
        0x7f0c00a0 -> :sswitch_26
        0x7f0c00a1 -> :sswitch_26
        0x7f0c00a2 -> :sswitch_26
        0x7f0c00a3 -> :sswitch_26
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "icicle"

    .prologue
    const/4 v9, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v10, "browser"

    .line 686
    const-string v7, "browser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BrowserActivity.onCreate: this="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 689
    invoke-virtual {p0, v9}, Lcom/android/browser/BrowserActivity;->requestWindowFeature(I)Z

    .line 690
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserActivity;->requestWindowFeature(I)Z

    .line 691
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserActivity;->requestWindowFeature(I)Z

    .line 692
    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserActivity;->requestWindowFeature(I)Z

    .line 697
    invoke-virtual {p0, v9}, Lcom/android/browser/BrowserActivity;->setDefaultKeyMode(I)V

    .line 699
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    .line 701
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "search_url"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserActivity;->setBaseSearchUrl(Ljava/lang/String;)V

    .line 714
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1080061

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/BrowserActivity;->mSecLockIcon:Landroid/graphics/drawable/Drawable;

    .line 716
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x108005c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/BrowserActivity;->mMixLockIcon:Landroid/graphics/drawable/Drawable;

    .line 718
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f02

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/BrowserActivity;->mGenericFavicon:Landroid/graphics/drawable/Drawable;

    .line 721
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020002

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 725
    new-instance v7, Lcom/android/browser/TabControl;

    invoke-direct {v7, p0}, Lcom/android/browser/TabControl;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v7, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    .line 728
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->retainIconsOnStartup()V

    .line 731
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 732
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    iget-object v8, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v7, v8}, Lcom/android/browser/BrowserSettings;->setTabControl(Lcom/android/browser/TabControl;)V

    .line 733
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v7, p0}, Lcom/android/browser/BrowserSettings;->loadFromDb(Landroid/content/Context;)V

    .line 735
    const-string v7, "power"

    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 738
    .local v2, pm:Landroid/os/PowerManager;
    const v7, 0x20000006

    const-string v8, "Browser"

    invoke-virtual {v2, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 739
    const-string v7, "browser"

    const-string v7, "[WakeLock] Created!"

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v7, p1}, Lcom/android/browser/TabControl;->restoreState(Landroid/os/Bundle;)Z

    move-result v7

    if-nez v7, :cond_1a9

    .line 745
    new-instance v7, Lcom/android/browser/BrowserActivity$ClearThumbnails;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/browser/BrowserActivity$ClearThumbnails;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/BrowserActivity$1;)V

    iget-object v8, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v8}, Lcom/android/browser/TabControl;->getThumbnailDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/browser/BrowserActivity$ClearThumbnails;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 747
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 748
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 753
    .local v0, extra:Landroid/os/Bundle;
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 754
    .local v5, url:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19e

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_19e

    move v8, v12

    :goto_f2
    const-string v9, "com.android.browser.application_id"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v5}, Lcom/android/browser/TabControl;->createNewTab(ZLjava/lang/String;Ljava/lang/String;)Lcom/android/browser/TabControl$Tab;

    move-result-object v4

    .line 758
    .local v4, t:Lcom/android/browser/TabControl$Tab;
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v7, v4}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/TabControl$Tab;)Z

    .line 761
    invoke-direct {p0, v4}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/TabControl$Tab;)V

    .line 762
    invoke-virtual {v4}, Lcom/android/browser/TabControl$Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    .line 763
    .local v6, webView:Landroid/webkit/WebView;
    if-eqz v0, :cond_119

    .line 764
    const-string v7, "browser.initialZoomLevel"

    invoke-virtual {v0, v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 765
    .local v3, scale:I
    if-lez v3, :cond_119

    const/16 v7, 0x3e8

    if-gt v3, v7, :cond_119

    .line 766
    invoke-virtual {v6, v3}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 773
    .end local v3           #scale:I
    :cond_119
    if-eqz v0, :cond_123

    const-string v7, "testing"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12e

    :cond_123
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v7}, Lcom/android/browser/BrowserSettings;->isLoginInitialized()Z

    move-result v7

    if-nez v7, :cond_12e

    .line 775
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->setupHomePage()V

    .line 777
    :cond_12e
    invoke-direct {p0, v12}, Lcom/android/browser/BrowserActivity;->copyPlugins(Z)V

    .line 779
    if-eqz v5, :cond_139

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1a5

    .line 780
    :cond_139
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v7}, Lcom/android/browser/BrowserSettings;->isLoginInitialized()Z

    move-result v7

    if-eqz v7, :cond_1a1

    .line 781
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v7}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 797
    .end local v0           #extra:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #t:Lcom/android/browser/TabControl$Tab;
    .end local v5           #url:Ljava/lang/String;
    .end local v6           #webView:Landroid/webkit/WebView;
    :goto_14a
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    iput-object v7, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 798
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 800
    new-instance v7, Lcom/android/browser/BrowserActivity$5;

    invoke-direct {v7, p0}, Lcom/android/browser/BrowserActivity$5;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v7, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 814
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    sput-object v7, Lcom/android/browser/BrowserActivity;->mOmaDrmHandlerV2List:Ljava/util/Vector;

    .line 816
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    iput-object v7, p0, Lcom/android/browser/BrowserActivity;->mDownloadFilter:Landroid/content/IntentFilter;

    .line 817
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mDownloadFilter:Landroid/content/IntentFilter;

    const-string v8, "com.lge.browser.download.DD_POPUP"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mDownloadFilter:Landroid/content/IntentFilter;

    const-string v8, "com.lge.browser.download.ROAP_POPUP"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 819
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mDownloadFilter:Landroid/content/IntentFilter;

    const-string v8, "com.lge.browser.download.USER_CONSENT_POPUP"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 820
    new-instance v7, Lcom/android/browser/BrowserActivity$6;

    invoke-direct {v7, p0}, Lcom/android/browser/BrowserActivity$6;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v7, p0, Lcom/android/browser/BrowserActivity;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    .line 844
    const-string v7, "browser"

    const-string v7, "[kylee] DownloadReceiver registered !!!"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/android/browser/BrowserActivity;->mDownloadFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v7, v8}, Lcom/android/browser/BrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 849
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->setupBrowserToolbar()V

    .line 850
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showInvokePanel()V

    .line 852
    return-void

    .restart local v0       #extra:Landroid/os/Bundle;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v5       #url:Ljava/lang/String;
    :cond_19e
    move v8, v11

    .line 754
    goto/16 :goto_f2

    .line 783
    .restart local v4       #t:Lcom/android/browser/TabControl$Tab;
    .restart local v6       #webView:Landroid/webkit/WebView;
    :cond_1a1
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->waitForCredentials()V

    goto :goto_14a

    .line 786
    :cond_1a5
    invoke-virtual {v6, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_14a

    .line 792
    .end local v0           #extra:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #t:Lcom/android/browser/TabControl$Tab;
    .end local v5           #url:Ljava/lang/String;
    .end local v6           #webView:Landroid/webkit/WebView;
    :cond_1a9
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v7}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/TabControl$Tab;)V

    goto :goto_14a
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 22
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1922
    move-object/from16 v0, p2

    check-cast v0, Landroid/webkit/WebView;

    move-object v12, v0

    .line 1923
    .local v12, webview:Landroid/webkit/WebView;
    invoke-virtual {v12}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v7

    .line 1924
    .local v7, result:Landroid/webkit/WebView$HitTestResult;
    if-nez v7, :cond_c

    .line 2028
    :cond_b
    :goto_b
    return-void

    .line 1928
    :cond_c
    invoke-virtual {v7}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v11

    .line 1929
    .local v11, type:I
    if-nez v11, :cond_1a

    .line 1930
    const-string v13, "browser"

    const-string v14, "We should not show context menu when nothing is touched"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1934
    :cond_1a
    const/16 v13, 0x9

    if-eq v11, v13, :cond_b

    .line 1942
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    .line 1943
    .local v5, inflater:Landroid/view/MenuInflater;
    const v13, 0x7f0b0003

    move-object v0, v5

    move v1, v13

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1946
    invoke-virtual {v7}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v4

    .line 1947
    .local v4, extra:Ljava/lang/String;
    const v13, 0x7f0c0094

    const/4 v14, 0x2

    if-ne v11, v14, :cond_89

    const/4 v14, 0x1

    :goto_37
    move-object/from16 v0, p1

    move v1, v13

    move v2, v14

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1949
    const v13, 0x7f0c0098

    const/4 v14, 0x4

    if-ne v11, v14, :cond_8b

    const/4 v14, 0x1

    :goto_45
    move-object/from16 v0, p1

    move v1, v13

    move v2, v14

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1951
    const v13, 0x7f0c009b

    const/4 v14, 0x3

    if-ne v11, v14, :cond_8d

    const/4 v14, 0x1

    :goto_53
    move-object/from16 v0, p1

    move v1, v13

    move v2, v14

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1953
    const v13, 0x7f0c00a4

    const/4 v14, 0x5

    if-eq v11, v14, :cond_64

    const/16 v14, 0x8

    if-ne v11, v14, :cond_8f

    :cond_64
    const/4 v14, 0x1

    :goto_65
    move-object/from16 v0, p1

    move v1, v13

    move v2, v14

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1956
    const v13, 0x7f0c009e

    const/4 v14, 0x7

    if-eq v11, v14, :cond_76

    const/16 v14, 0x8

    if-ne v11, v14, :cond_91

    :cond_76
    const/4 v14, 0x1

    :goto_77
    move-object/from16 v0, p1

    move v1, v13

    move v2, v14

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1961
    packed-switch v11, :pswitch_data_236

    .line 2025
    :pswitch_81
    const-string v13, "browser"

    const-string v14, "We should not get here."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1947
    :cond_89
    const/4 v14, 0x0

    goto :goto_37

    .line 1949
    :cond_8b
    const/4 v14, 0x0

    goto :goto_45

    .line 1951
    :cond_8d
    const/4 v14, 0x0

    goto :goto_53

    .line 1953
    :cond_8f
    const/4 v14, 0x0

    goto :goto_65

    .line 1956
    :cond_91
    const/4 v14, 0x0

    goto :goto_77

    .line 1963
    :pswitch_93
    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1964
    const v13, 0x7f0c0095

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "tel:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1967
    new-instance v3, Landroid/content/Intent;

    const-string v13, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v3, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1968
    .local v3, addIntent:Landroid/content/Intent;
    const-string v13, "phone"

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1969
    const-string v13, "vnd.android.cursor.item/person"

    invoke-virtual {v3, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1970
    const v13, 0x7f0c0096

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    invoke-interface {v13, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1972
    const v13, 0x7f0c0097

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Lcom/android/browser/BrowserActivity$Copy;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/browser/BrowserActivity$Copy;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 1977
    .end local v3           #addIntent:Landroid/content/Intent;
    :pswitch_105
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1978
    const v13, 0x7f0c0099

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mailto:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1981
    const v13, 0x7f0c009a

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Lcom/android/browser/BrowserActivity$Copy;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/browser/BrowserActivity$Copy;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 1986
    :pswitch_151
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1987
    const v13, 0x7f0c009c

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "geo:0,0?q="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1991
    const v13, 0x7f0c009d

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Lcom/android/browser/BrowserActivity$Copy;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/browser/BrowserActivity$Copy;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 1997
    :pswitch_19e
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x109000e

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2000
    .local v10, titleView:Landroid/widget/TextView;
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2001
    move-object/from16 v0, p1

    move-object v1, v10

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 2003
    const v13, 0x7f0c009f

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v14

    const/16 v15, 0x8

    if-ge v14, v15, :cond_232

    const/4 v14, 0x1

    :goto_1cd
    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2005
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 2006
    .local v6, pm:Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/Intent;

    const-string v13, "android.intent.action.SEND"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2007
    .local v9, send:Landroid/content/Intent;
    const-string v13, "text/plain"

    invoke-virtual {v9, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2008
    const/high16 v13, 0x1

    invoke-virtual {v6, v9, v13}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 2009
    .local v8, ri:Landroid/content/pm/ResolveInfo;
    const v13, 0x7f0c00a2

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    if-eqz v8, :cond_234

    const/4 v14, 0x1

    :goto_1f3
    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2010
    const/4 v13, 0x7

    if-eq v11, v13, :cond_b

    .line 2015
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    .end local v8           #ri:Landroid/content/pm/ResolveInfo;
    .end local v9           #send:Landroid/content/Intent;
    .end local v10           #titleView:Landroid/widget/TextView;
    :pswitch_1f9
    const/4 v13, 0x5

    if-ne v11, v13, :cond_202

    .line 2016
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2018
    :cond_202
    const v13, 0x7f0c00a6

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2020
    const v13, 0x7f0c00a5

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Lcom/android/browser/BrowserActivity$Download;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/browser/BrowserActivity$Download;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 2003
    .restart local v10       #titleView:Landroid/widget/TextView;
    :cond_232
    const/4 v14, 0x0

    goto :goto_1cd

    .line 2009
    .restart local v6       #pm:Landroid/content/pm/PackageManager;
    .restart local v8       #ri:Landroid/content/pm/ResolveInfo;
    .restart local v9       #send:Landroid/content/Intent;
    :cond_234
    const/4 v14, 0x0

    goto :goto_1f3

    .line 1961
    :pswitch_data_236
    .packed-switch 0x2
        :pswitch_93
        :pswitch_151
        :pswitch_105
        :pswitch_1f9
        :pswitch_81
        :pswitch_19e
        :pswitch_19e
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 1590
    packed-switch p1, :pswitch_data_36

    .line 1600
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 1592
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07003e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mExitDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 1590
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 1423
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1425
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1426
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0b0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1427
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    .line 1428
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateInLoadMenuItems()V

    .line 1429
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    const-string v3, "browser"

    .line 1233
    const-string v1, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserActivity.onDestroy: this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const-string v1, "browser"

    const-string v1, "[kylee] DownloadReceiver unregistered !!!"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1240
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1242
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v0

    .line 1243
    .local v0, t:Lcom/android/browser/TabControl$Tab;
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/TabControl$Tab;)V

    .line 1244
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/TabControl$Tab;)V

    .line 1246
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->destroy()V

    .line 1247
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebIconDatabase;->close()V

    .line 1248
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mGlsConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_4d

    .line 1249
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mGlsConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1250
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mGlsConnection:Landroid/content/ServiceConnection;

    .line 1262
    :cond_4d
    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 3829
    invoke-virtual/range {p0 .. p6}, Lcom/android/browser/BrowserActivity;->onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 3830
    return-void
.end method

.method onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 31
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 3846
    const/4 v14, 0x0

    .line 3847
    .local v14, filename:Ljava/lang/String;
    if-eqz p3, :cond_29

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "attachment"

    const/4 v7, 0x0

    const/16 v8, 0xa

    move-object/from16 v3, p3

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 3848
    const-string v4, "="

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 3849
    .local v17, indexOfEqual:I
    add-int/lit8 v4, v17, 0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p3

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 3851
    .end local v17           #indexOfEqual:I
    :cond_29
    if-nez v14, :cond_35

    .line 3852
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3857
    :cond_35
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    .line 3859
    .local v20, status:Ljava/lang/String;
    const-string v4, "mounted"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a7

    .line 3860
    if-eqz p4, :cond_a7

    const-string v4, "application/vnd.oma.dd+xml"

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a7

    .line 3866
    const-string v4, "shared"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 3867
    const v4, 0x7f0700c4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 3868
    .local v18, msg:Ljava/lang/String;
    const v21, 0x7f0700c3

    .line 3874
    .local v21, title:I
    :goto_69
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07000b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3969
    .end local v18           #msg:Ljava/lang/String;
    .end local v21           #title:I
    :goto_91
    return-void

    .line 3870
    :cond_92
    const v4, 0x7f0700c2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 3871
    .restart local v18       #msg:Ljava/lang/String;
    const v21, 0x7f0700c1

    .restart local v21       #title:I
    goto :goto_69

    .line 3886
    .end local v18           #msg:Ljava/lang/String;
    .end local v21           #title:I
    :cond_a7
    const/4 v3, 0x0

    .line 3889
    .local v3, uri:Ljava/net/URI;
    :try_start_a8
    new-instance v19, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Landroid/webkit/URLUtil;->decode([B)[B

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 3891
    .local v19, newUrl:Ljava/lang/String;
    new-instance v23, Landroid/net/WebAddress;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 3892
    .local v23, w:Landroid/net/WebAddress;
    const/4 v10, 0x0

    .line 3893
    .local v10, frag:Ljava/lang/String;
    const/4 v9, 0x0

    .line 3894
    .local v9, query:Ljava/lang/String;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    move-object v8, v0

    .line 3896
    .local v8, path:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_104

    .line 3898
    const/16 v4, 0x23

    invoke-virtual {v8, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 3899
    .local v16, idx:I
    const/4 v4, -0x1

    move/from16 v0, v16

    move v1, v4

    if-eq v0, v1, :cond_e9

    .line 3900
    add-int/lit8 v4, v16, 0x1

    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 3901
    const/4 v4, 0x0

    move-object v0, v8

    move v1, v4

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 3903
    :cond_e9
    const/16 v4, 0x3f

    invoke-virtual {v8, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 3904
    const/4 v4, -0x1

    move/from16 v0, v16

    move v1, v4

    if-eq v0, v1, :cond_104

    .line 3905
    add-int/lit8 v4, v16, 0x1

    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 3906
    const/4 v4, 0x0

    move-object v0, v8

    move v1, v4

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 3909
    .end local v16           #idx:I
    :cond_104
    new-instance v3, Ljava/net/URI;

    .end local v3           #uri:Ljava/net/URI;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/WebAddress;->mPort:I

    move v7, v0

    invoke-direct/range {v3 .. v10}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_11d} :catch_1d4

    .line 3918
    .restart local v3       #uri:Ljava/net/URI;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3920
    .local v12, cookies:Ljava/lang/String;
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 3921
    .local v22, values:Landroid/content/ContentValues;
    const-string v4, "uri"

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3922
    const-string v4, "cookiedata"

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3923
    const-string v4, "useragent"

    move-object/from16 v0, v22

    move-object v1, v4

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3924
    const-string v4, "notificationpackage"

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3926
    const-string v4, "notificationclass"

    const-class v5, Lcom/android/browser/BrowserDownloadPage;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3928
    const-string v4, "visibility"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3929
    const-string v4, "mimetype"

    move-object/from16 v0, v22

    move-object v1, v4

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3930
    const-string v4, "hint"

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3931
    const-string v4, "description"

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3932
    const-string v4, "destination"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3933
    const-wide/16 v4, 0x0

    cmp-long v4, p5, v4

    if-lez v4, :cond_1b8

    .line 3934
    const-string v4, "total_bytes"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3936
    :cond_1b8
    if-nez p4, :cond_1f3

    .line 3939
    const-string v4, "browser"

    const-string v5, "[Download] started for mimetype = null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3940
    new-instance v4, Lcom/android/browser/FetchUrlMimeType;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/browser/FetchUrlMimeType;-><init>(Lcom/android/browser/BrowserActivity;)V

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/content/ContentValues;

    const/4 v6, 0x0

    aput-object v22, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/browser/FetchUrlMimeType;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_91

    .line 3911
    .end local v3           #uri:Ljava/net/URI;
    .end local v8           #path:Ljava/lang/String;
    .end local v9           #query:Ljava/lang/String;
    .end local v10           #frag:Ljava/lang/String;
    .end local v12           #cookies:Ljava/lang/String;
    .end local v19           #newUrl:Ljava/lang/String;
    .end local v22           #values:Landroid/content/ContentValues;
    .end local v23           #w:Landroid/net/WebAddress;
    :catch_1d4
    move-exception v4

    move-object v13, v4

    .line 3912
    .local v13, e:Ljava/lang/Exception;
    const-string v4, "browser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse url for download: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_91

    .line 3943
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v3       #uri:Ljava/net/URI;
    .restart local v8       #path:Ljava/lang/String;
    .restart local v9       #query:Ljava/lang/String;
    .restart local v10       #frag:Ljava/lang/String;
    .restart local v12       #cookies:Ljava/lang/String;
    .restart local v19       #newUrl:Ljava/lang/String;
    .restart local v22       #values:Landroid/content/ContentValues;
    .restart local v23       #w:Landroid/net/WebAddress;
    :cond_1f3
    const-string v4, "application/vnd.oma.dd+xml"

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21a

    .line 3944
    const-string v4, "browser"

    const-string v5, "[Download] started for DD1"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3945
    new-instance v4, Lcom/lge/browser/DDHandlerV1;

    const/4 v5, 0x1

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/lge/browser/DDHandlerV1;-><init>(Lcom/android/browser/BrowserActivity;I)V

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/content/ContentValues;

    const/4 v6, 0x0

    aput-object v22, v5, v6

    invoke-virtual {v4, v5}, Lcom/lge/browser/DDHandlerV1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_91

    .line 3947
    :cond_21a
    const-string v4, "multipart/related"

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_251

    sget-object v4, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM_20:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_251

    .line 3949
    const-string v4, "browser"

    const-string v5, "[Download] started for multipart/related"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3950
    new-instance v15, Lcom/lge/browser/OmaDrmHandlerV2;

    const/16 v4, 0x64

    move-object v0, v15

    move-object/from16 v1, p0

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/lge/browser/OmaDrmHandlerV2;-><init>(Lcom/android/browser/BrowserActivity;I)V

    .line 3951
    .local v15, handler:Lcom/lge/browser/OmaDrmHandlerV2;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->addToOmaDrmHandlerV2List(Lcom/lge/browser/OmaDrmHandlerV2;)V

    .line 3952
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/content/ContentValues;

    const/4 v5, 0x0

    aput-object v22, v4, v5

    invoke-virtual {v15, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_91

    .line 3954
    .end local v15           #handler:Lcom/lge/browser/OmaDrmHandlerV2;
    :cond_251
    const-string v4, "application/vnd.oma.drm.roap-trigger+xml"

    move-object/from16 v0, p4

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_288

    sget-object v4, Lcom/lge/browser/OpCfgItem;->CFG_DOWNLOAD_SUPPORT_DRM_20:Lcom/lge/browser/OpCfgItem;

    invoke-static {v4}, Lcom/lge/browser/OpCfgManager;->getIntValue(Lcom/lge/browser/OpCfgItem;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_288

    .line 3956
    const-string v4, "browser"

    const-string v5, "[Download] started for ROAP trigger"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3957
    new-instance v15, Lcom/lge/browser/OmaDrmHandlerV2;

    const/16 v4, 0x65

    move-object v0, v15

    move-object/from16 v1, p0

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/lge/browser/OmaDrmHandlerV2;-><init>(Lcom/android/browser/BrowserActivity;I)V

    .line 3958
    .restart local v15       #handler:Lcom/lge/browser/OmaDrmHandlerV2;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->addToOmaDrmHandlerV2List(Lcom/lge/browser/OmaDrmHandlerV2;)V

    .line 3959
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/content/ContentValues;

    const/4 v5, 0x0

    aput-object v22, v4, v5

    invoke-virtual {v15, v4}, Lcom/lge/browser/OmaDrmHandlerV2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_91

    .line 3963
    .end local v15           #handler:Lcom/lge/browser/OmaDrmHandlerV2;
    :cond_288
    const-string v4, "browser"

    const-string v5, "[Download] started for normal content"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3964
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 3966
    .local v11, contentUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->viewDownloads(Landroid/net/Uri;)V

    goto/16 :goto_91
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2772
    const/16 v1, 0x52

    if-ne p1, v1, :cond_8

    .line 2773
    iput-boolean v3, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    .line 2775
    :cond_8
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mKeyTracker:Lcom/android/browser/KeyTracker;

    invoke-virtual {v1, p1, p2}, Lcom/android/browser/KeyTracker;->doKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2776
    .local v0, handled:Z
    if-nez v0, :cond_13

    .line 2777
    packed-switch p1, :pswitch_data_36

    .line 2791
    :cond_13
    :goto_13
    if-nez v0, :cond_1b

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_34

    :cond_1b
    move v1, v3

    :goto_1c
    return v1

    .line 2779
    :pswitch_1d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2780
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->pageUp(Z)Z

    .line 2784
    :goto_2a
    const/4 v0, 0x1

    .line 2785
    goto :goto_13

    .line 2782
    :cond_2c
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->pageDown(Z)Z

    goto :goto_2a

    :cond_34
    move v1, v2

    .line 2791
    goto :goto_1c

    .line 2777
    :pswitch_data_36
    .packed-switch 0x3e
        :pswitch_1d
    .end packed-switch
.end method

.method public onKeyTracker(ILandroid/view/KeyEvent;Lcom/android/browser/KeyTracker$Stage;I)Lcom/android/browser/KeyTracker$State;
    .registers 8
    .parameter "keyCode"
    .parameter "event"
    .parameter "stage"
    .parameter "duration"

    .prologue
    .line 2736
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    .line 2737
    .local v1, topWindow:Landroid/webkit/WebView;
    if-nez v1, :cond_9

    .line 2738
    sget-object v2, Lcom/android/browser/KeyTracker$State;->NOT_TRACKING:Lcom/android/browser/KeyTracker$State;

    .line 2768
    :goto_8
    return-object v2

    .line 2740
    :cond_9
    const/4 v2, 0x4

    if-ne p1, v2, :cond_47

    .line 2744
    iget v2, p0, Lcom/android/browser/BrowserActivity;->mAnimationCount:I

    if-lez v2, :cond_13

    .line 2745
    sget-object v2, Lcom/android/browser/KeyTracker$State;->DONE_TRACKING:Lcom/android/browser/KeyTracker$State;

    goto :goto_8

    .line 2747
    :cond_13
    sget-object v2, Lcom/android/browser/KeyTracker$Stage;->LONG_REPEAT:Lcom/android/browser/KeyTracker$Stage;

    if-ne p3, v2, :cond_1e

    .line 2748
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/browser/BrowserActivity;->bookmarksOrHistoryPicker(Z)V

    .line 2749
    sget-object v2, Lcom/android/browser/KeyTracker$State;->DONE_TRACKING:Lcom/android/browser/KeyTracker$State;

    goto :goto_8

    .line 2750
    :cond_1e
    sget-object v2, Lcom/android/browser/KeyTracker$Stage;->UP:Lcom/android/browser/KeyTracker$Stage;

    if-ne p3, v2, :cond_44

    .line 2754
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 2755
    .local v0, subwindow:Landroid/webkit/WebView;
    if-eqz v0, :cond_40

    .line 2756
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2757
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 2764
    :goto_33
    sget-object v2, Lcom/android/browser/KeyTracker$State;->DONE_TRACKING:Lcom/android/browser/KeyTracker$State;

    goto :goto_8

    .line 2759
    :cond_36
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/TabControl$Tab;)V

    goto :goto_33

    .line 2762
    :cond_40
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->goBackOnePageOrQuit()V

    goto :goto_33

    .line 2766
    .end local v0           #subwindow:Landroid/webkit/WebView;
    :cond_44
    sget-object v2, Lcom/android/browser/KeyTracker$State;->KEEP_TRACKING:Lcom/android/browser/KeyTracker$State;

    goto :goto_8

    .line 2768
    :cond_47
    sget-object v2, Lcom/android/browser/KeyTracker$State;->NOT_TRACKING:Lcom/android/browser/KeyTracker$State;

    goto :goto_8
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 2795
    const/16 v0, 0x52

    if-ne p1, v0, :cond_7

    .line 2796
    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    .line 2798
    :cond_7
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mKeyTracker:Lcom/android/browser/KeyTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/KeyTracker;->doKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 1314
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 1315
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->freeMemory()V

    .line 1316
    return-void
.end method

.method public onNetworkToggle(Z)V
    .registers 6
    .parameter "up"

    .prologue
    const/4 v3, 0x0

    .line 4753
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    if-ne p1, v1, :cond_6

    .line 4775
    :cond_5
    :goto_5
    return-void

    .line 4755
    :cond_6
    if-eqz p1, :cond_22

    .line 4756
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    .line 4757
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_16

    .line 4758
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 4759
    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 4771
    :cond_16
    :goto_16
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 4772
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_5

    .line 4773
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    goto :goto_5

    .line 4762
    .end local v0           #w:Landroid/webkit/WebView;
    :cond_22
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    .line 4763
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_16

    .line 4764
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700a1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700a2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07000b

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_16
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 15
    .parameter "intent"

    .prologue
    .line 856
    const-string v0, "browser"

    const-string v1, "[kylee] received new intent !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v10

    .line 860
    .local v10, current:Lcom/android/browser/TabControl$Tab;
    if-nez v10, :cond_28

    .line 862
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/TabControl$Tab;

    move-result-object v10

    .line 863
    if-nez v10, :cond_19

    .line 943
    :cond_18
    :goto_18
    return-void

    .line 867
    :cond_19
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, v10}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/TabControl$Tab;)Z

    .line 868
    invoke-direct {p0, v10}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/TabControl$Tab;)V

    .line 869
    invoke-virtual {v10}, Lcom/android/browser/TabControl$Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->resetTitleAndIcon(Landroid/webkit/WebView;)V

    .line 871
    :cond_28
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 872
    .local v8, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v11

    .line 873
    .local v11, flags:I
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const/high16 v0, 0x10

    and-int/2addr v0, v11

    if-nez v0, :cond_18

    .line 878
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 882
    :cond_5d
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 883
    .local v5, url:Ljava/lang/String;
    if-eqz v5, :cond_69

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6f

    .line 884
    :cond_69
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v5

    .line 886
    :cond_6f
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    const/high16 v0, 0x40

    and-int/2addr v0, v11

    if-eqz v0, :cond_e7

    .line 888
    const-string v0, "com.android.browser.application_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 890
    .local v9, appId:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, v9}, Lcom/android/browser/TabControl;->getTabFromId(Ljava/lang/String;)Lcom/android/browser/TabControl$Tab;

    move-result-object v1

    .line 891
    .local v1, appTab:Lcom/android/browser/TabControl$Tab;
    if-eqz v1, :cond_e0

    .line 892
    const-string v0, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reusing tab for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/TabControl$Tab;)V

    .line 897
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/TabControl$Tab;)V

    .line 901
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, v1, v5}, Lcom/android/browser/TabControl;->recreateWebView(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)Z

    move-result v12

    .line 903
    .local v12, needsLoad:Z
    if-eq v10, v1, :cond_ba

    .line 904
    if-eqz v12, :cond_b8

    move-object v0, v5

    :goto_b3
    invoke-direct {p0, v1, v0}, Lcom/android/browser/BrowserActivity;->showTab(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_b8
    const/4 v0, 0x0

    goto :goto_b3

    .line 906
    :cond_ba
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    if-eqz v0, :cond_d2

    iget v0, p0, Lcom/android/browser/BrowserActivity;->mAnimationCount:I

    if-nez v0, :cond_d2

    .line 907
    const/4 v2, 0x0

    if-eqz v12, :cond_cf

    move-object v3, v5

    :goto_c6
    const/16 v4, 0x320

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/BrowserActivity;->sendAnimateFromOverview(Lcom/android/browser/TabControl$Tab;ZLjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_18

    :cond_cf
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_c6

    .line 913
    :cond_d2
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/TabControl$Tab;)V

    .line 914
    if-eqz v12, :cond_18

    .line 915
    invoke-virtual {v1}, Lcom/android/browser/TabControl$Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 925
    .end local v12           #needsLoad:Z
    :cond_e0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v5, v0, v1, v9}, Lcom/android/browser/BrowserActivity;->openTabAndShow(Ljava/lang/String;Landroid/os/Message;ZLjava/lang/String;)V

    goto/16 :goto_18

    .line 927
    .end local v1           #appTab:Lcom/android/browser/TabControl$Tab;
    .end local v9           #appId:Ljava/lang/String;
    :cond_e7
    const-string v0, "about:debug"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 928
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->toggleDebugSettings()V

    goto/16 :goto_18

    .line 933
    :cond_f6
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    if-eqz v0, :cond_109

    iget v0, p0, Lcom/android/browser/BrowserActivity;->mAnimationCount:I

    if-nez v0, :cond_109

    .line 934
    const/4 v4, 0x0

    const/16 v6, 0x320

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v10

    invoke-direct/range {v2 .. v7}, Lcom/android/browser/BrowserActivity;->sendAnimateFromOverview(Lcom/android/browser/TabControl$Tab;ZLjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_18

    .line 938
    :cond_109
    invoke-virtual {p0, v10}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/TabControl$Tab;)V

    .line 939
    invoke-virtual {v10}, Lcom/android/browser/TabControl$Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_18
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 23
    .parameter "item"

    .prologue
    .line 1605
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    .line 1608
    const/16 v17, 0x0

    .line 1829
    :goto_a
    return v17

    .line 1610
    :cond_b
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v17

    packed-switch v17, :pswitch_data_398

    .line 1823
    :pswitch_12
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v17

    if-nez v17, :cond_54

    .line 1824
    const/16 v17, 0x0

    goto :goto_a

    .line 1613
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v16

    .line 1614
    .local v16, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5f

    const/16 v17, 0x0

    :goto_39
    const/16 v18, 0x1

    const-string v19, "browser-goto"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity;->createGoogleSearchSourceBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/browser/BrowserActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1828
    .end local v16           #url:Ljava/lang/String;
    :cond_54
    :goto_54
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    .line 1829
    const/16 v17, 0x1

    goto :goto_a

    .restart local v16       #url:Ljava/lang/String;
    :cond_5f
    move-object/from16 v17, v16

    .line 1614
    goto :goto_39

    .line 1620
    .end local v16           #url:Ljava/lang/String;
    :pswitch_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7e

    .line 1621
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->showDialog(I)V

    goto :goto_54

    .line 1624
    :cond_7e
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->finish()V

    .line 1625
    new-instance v5, Landroid/content/Intent;

    const-string v17, "android.intent.action.stk.terminate"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1626
    .local v5, StkIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_54

    .line 1632
    .end local v5           #StkIntent:Landroid/content/Intent;
    :pswitch_92
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity;->bookmarksOrHistoryPicker(Z)V

    goto :goto_54

    .line 1636
    :pswitch_9c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_cc

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/BrowserActivity;->openTabAndShow(Ljava/lang/String;Landroid/os/Message;ZLjava/lang/String;)V

    goto :goto_54

    .line 1639
    :cond_cc
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/BrowserActivity;->tabPicker(ZIZ)V

    goto/16 :goto_54

    .line 1654
    :pswitch_e7
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebView;->goBack()V

    goto/16 :goto_54

    .line 1668
    :pswitch_f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v17

    if-eqz v17, :cond_10f

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/TabControl$Tab;)V

    goto/16 :goto_54

    .line 1672
    :cond_10f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v7

    .line 1673
    .local v7, currentIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/TabControl$Tab;->getParentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v13

    .line 1675
    .local v13, parent:Lcom/android/browser/TabControl$Tab;
    const/4 v10, -0x1

    .line 1676
    .local v10, indexToShow:I
    if-eqz v13, :cond_144

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/TabControl$Tab;)I

    move-result v10

    .line 1686
    :cond_137
    :goto_137
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move v1, v7

    move v2, v10

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/BrowserActivity;->switchTabs(IIZ)V

    goto/16 :goto_54

    .line 1681
    :cond_144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v17

    const/16 v18, 0x1

    sub-int v10, v17, v18

    .line 1682
    if-ne v7, v10, :cond_137

    .line 1683
    add-int/lit8 v10, v10, -0x1

    goto :goto_137

    .line 1690
    .end local v7           #currentIndex:I
    .end local v10           #indexToShow:I
    .end local v13           #parent:Lcom/android/browser/TabControl$Tab;
    :pswitch_157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v6

    .line 1691
    .local v6, current:Lcom/android/browser/TabControl$Tab;
    if-eqz v6, :cond_54

    .line 1692
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/TabControl$Tab;)V

    .line 1693
    invoke-virtual {v6}, Lcom/android/browser/TabControl$Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_54

    .line 1698
    .end local v6           #current:Lcom/android/browser/TabControl$Tab;
    :pswitch_17c
    new-instance v11, Landroid/content/Intent;

    const-class v17, Lcom/android/browser/BrowserPreferencesPage;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1700
    .local v11, intent:Landroid/content/Intent;
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_54

    .line 1704
    .end local v11           #intent:Landroid/content/Intent;
    :pswitch_194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    move-object/from16 v17, v0

    if-nez v17, :cond_1ab

    .line 1705
    new-instance v17, Lcom/android/browser/FindDialog;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/browser/FindDialog;-><init>(Lcom/android/browser/BrowserActivity;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    .line 1707
    :cond_1ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/browser/FindDialog;->setWebView(Landroid/webkit/WebView;)V

    .line 1708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/FindDialog;->show()V

    .line 1709
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BrowserActivity;->mMenuState:I

    goto/16 :goto_54

    .line 1713
    :pswitch_1cb
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebView;->emulateShiftHeld()V

    goto/16 :goto_54

    .line 1716
    :pswitch_1d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/browser/BrowserActivity;->showPageInfo(Lcom/android/browser/TabControl$Tab;Z)V

    goto/16 :goto_54

    .line 1720
    :pswitch_1eb
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity;->bookmarksOrHistoryPicker(Z)V

    goto/16 :goto_54

    .line 1724
    :pswitch_1f6
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_54

    .line 1728
    :pswitch_207
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebView;->debugDump()V

    goto/16 :goto_54

    .line 1732
    :pswitch_210
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebView;->zoomIn()Z

    goto/16 :goto_54

    .line 1736
    :pswitch_219
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebView;->zoomOut()Z

    goto/16 :goto_54

    .line 1740
    :pswitch_222
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->viewDownloads(Landroid/net/Uri;)V

    goto/16 :goto_54

    .line 1745
    :pswitch_22d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabListener:Lcom/android/browser/BrowserActivity$TabListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    move-object/from16 v17, v0

    if-eqz v17, :cond_54

    .line 1746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/browser/ImageGrid;->getContextMenuPosition(Landroid/view/MenuItem;)I

    move-result v14

    .line 1747
    .local v14, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/browser/ImageGrid;->setCurrentIndex(I)V

    .line 1748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabListener:Lcom/android/browser/BrowserActivity$TabListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity$TabListener;->onClick(I)V

    goto/16 :goto_54

    .line 1753
    .end local v14           #pos:I
    :pswitch_265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabListener:Lcom/android/browser/BrowserActivity$TabListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    move-object/from16 v17, v0

    if-eqz v17, :cond_54

    .line 1754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/browser/ImageGrid;->getContextMenuPosition(Landroid/view/MenuItem;)I

    move-result v14

    .line 1755
    .restart local v14       #pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabListener:Lcom/android/browser/BrowserActivity$TabListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity$TabListener;->remove(I)V

    goto/16 :goto_54

    .line 1762
    .end local v14           #pos:I
    :pswitch_291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabListener:Lcom/android/browser/BrowserActivity$TabListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_54

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2ac

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/browser/ImageGrid;->setCurrentIndex(I)V

    .line 1768
    :cond_2ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabListener:Lcom/android/browser/BrowserActivity$TabListener;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/browser/BrowserActivity$TabListener;->onClick(I)V

    goto/16 :goto_54

    .line 1773
    :pswitch_2b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabListener:Lcom/android/browser/BrowserActivity$TabListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    move-object/from16 v17, v0

    if-eqz v17, :cond_54

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/browser/ImageGrid;->getContextMenuPosition(Landroid/view/MenuItem;)I

    move-result v14

    .line 1775
    .restart local v14       #pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/TabControl$Tab;

    move-result-object v15

    .line 1779
    .local v15, t:Lcom/android/browser/TabControl$Tab;
    invoke-virtual {v15}, Lcom/android/browser/TabControl$Tab;->getTitle()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v15}, Lcom/android/browser/TabControl$Tab;->getUrl()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_54

    .line 1785
    .end local v14           #pos:I
    .end local v15           #t:Lcom/android/browser/TabControl$Tab;
    :pswitch_2f7
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity;->bookmarksOrHistoryPicker(Z)V

    goto/16 :goto_54

    .line 1789
    :pswitch_302
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity;->bookmarksOrHistoryPicker(Z)V

    goto/16 :goto_54

    .line 1793
    :pswitch_30d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabListener:Lcom/android/browser/BrowserActivity$TabListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    move-object/from16 v17, v0

    if-eqz v17, :cond_54

    .line 1794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabOverview:Lcom/android/browser/ImageGrid;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/browser/ImageGrid;->getContextMenuPosition(Landroid/view/MenuItem;)I

    move-result v14

    .line 1795
    .restart local v14       #pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/TabControl$Tab;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/browser/BrowserActivity;->showPageInfo(Lcom/android/browser/TabControl$Tab;Z)V

    goto/16 :goto_54

    .line 1808
    .end local v14           #pos:I
    :pswitch_345
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v12

    .line 1809
    .local v12, menuid:I
    const/4 v9, 0x0

    .local v9, id:I
    :goto_34a
    sget-object v17, Lcom/android/browser/BrowserActivity;->WINDOW_SHORTCUT_ID_ARRAY:[I

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move v0, v9

    move/from16 v1, v17

    if-ge v0, v1, :cond_54

    .line 1810
    sget-object v17, Lcom/android/browser/BrowserActivity;->WINDOW_SHORTCUT_ID_ARRAY:[I

    aget v17, v17, v9

    move/from16 v0, v17

    move v1, v12

    if-ne v0, v1, :cond_395

    .line 1811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/TabControl$Tab;

    move-result-object v8

    .line 1812
    .local v8, desiredTab:Lcom/android/browser/TabControl$Tab;
    if-eqz v8, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/TabControl$Tab;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_54

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v9

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/browser/BrowserActivity;->switchTabs(IIZ)V

    goto/16 :goto_54

    .line 1809
    .end local v8           #desiredTab:Lcom/android/browser/TabControl$Tab;
    :cond_395
    add-int/lit8 v9, v9, 0x1

    goto :goto_34a

    .line 1610
    :pswitch_data_398
    .packed-switch 0x7f0c0074
        :pswitch_1b
        :pswitch_62
        :pswitch_194
        :pswitch_1cb
        :pswitch_222
        :pswitch_92
        :pswitch_9c
        :pswitch_1d4
        :pswitch_1f6
        :pswitch_17c
        :pswitch_207
        :pswitch_12
        :pswitch_e7
        :pswitch_f0
        :pswitch_157
        :pswitch_1eb
        :pswitch_210
        :pswitch_219
        :pswitch_345
        :pswitch_345
        :pswitch_345
        :pswitch_345
        :pswitch_345
        :pswitch_345
        :pswitch_345
        :pswitch_345
        :pswitch_12
        :pswitch_291
        :pswitch_302
        :pswitch_2f7
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_22d
        :pswitch_265
        :pswitch_2b9
        :pswitch_30d
    .end packed-switch
.end method

.method protected onPause()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const-string v4, "browser"

    .line 1181
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1183
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v0, :cond_12

    .line 1184
    const-string v0, "browser"

    const-string v0, "BrowserActivity is already paused."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_11
    :goto_11
    return-void

    .line 1188
    :cond_12
    const-string v0, "browser"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserActivity.onPause: this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mBacklightOn:Z

    if-ne v0, v2, :cond_45

    .line 1193
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 1194
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1195
    const-string v0, "browser"

    const-string v0, "[WakeLock] LGE : released onPause!"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :goto_42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mBacklightOn:Z

    .line 1204
    :cond_45
    iput-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 1205
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v0

    if-ltz v0, :cond_79

    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->pauseWebView()Z

    move-result v0

    if-nez v0, :cond_79

    .line 1206
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_79

    .line 1207
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1208
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1210
    const-string v0, "browser"

    const-string v0, "[WakeLock] Native : acquired and release timer started onPause!"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :cond_79
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCredsDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCredsDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1216
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCredsDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1218
    :cond_8a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mCredsDlg:Landroid/app/ProgressDialog;

    .line 1220
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->cancelStopToast()V

    .line 1223
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1224
    invoke-static {}, Landroid/webkit/WebView;->disablePlatformNotifications()V

    .line 1226
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_11

    .line 1227
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSensorListener:Landroid/hardware/SensorListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;)V

    goto/16 :goto_11

    .line 1198
    :cond_a5
    const-string v0, "browser"

    const-string v0, "[WakeLock] LGE : released in other place (onPause)!"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 21
    .parameter "menu"

    .prologue
    .line 1840
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    .line 1844
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1845
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_22e

    .line 1869
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserActivity;->mCurrentMenuState:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6c

    .line 1870
    const v17, 0x7f0c0073

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1871
    const v17, 0x7f0c0073

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1872
    const v17, 0x7f0c007f

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1873
    const v17, 0x7f0c008e

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1874
    const v17, 0x7f0c008e

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1876
    :cond_6c
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v15

    .line 1877
    .local v15, w:Landroid/webkit/WebView;
    const/4 v4, 0x0

    .line 1878
    .local v4, canGoBack:Z
    const/4 v5, 0x0

    .line 1879
    .local v5, canGoForward:Z
    const/4 v7, 0x0

    .line 1880
    .local v7, isHome:Z
    if-eqz v15, :cond_8f

    .line 1881
    invoke-virtual {v15}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v4

    .line 1882
    invoke-virtual {v15}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v5

    .line 1883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v15}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1885
    :cond_8f
    const v17, 0x7f0c0080

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1886
    .local v3, back:Landroid/view/MenuItem;
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1888
    const v17, 0x7f0c0082

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1889
    .local v6, home:Landroid/view/MenuItem;
    if-nez v7, :cond_219

    const/16 v17, 0x1

    :goto_ac
    move-object v0, v6

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1897
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 1898
    .local v11, pm:Landroid/content/pm/PackageManager;
    new-instance v13, Landroid/content/Intent;

    const-string v17, "android.intent.action.SEND"

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1899
    .local v13, send:Landroid/content/Intent;
    const-string v17, "text/plain"

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1900
    const/high16 v17, 0x1

    move-object v0, v11

    move-object v1, v13

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .line 1901
    .local v12, ri:Landroid/content/pm/ResolveInfo;
    const v17, 0x7f0c007c

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    if-eqz v12, :cond_21d

    const/16 v18, 0x1

    :goto_e1
    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1904
    const v17, 0x7f0c007a

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 1905
    .local v16, windows:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_221

    const v17, 0x7f070043

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    :goto_10c
    invoke-interface/range {v16 .. v17}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/BrowserSettings;->isNavDump()Z

    move-result v8

    .line 1910
    .local v8, isNavDump:Z
    const v17, 0x7f0c007e

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 1911
    .local v9, nav:Landroid/view/MenuItem;
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1912
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1915
    .end local v3           #back:Landroid/view/MenuItem;
    .end local v4           #canGoBack:Z
    .end local v5           #canGoForward:Z
    .end local v6           #home:Landroid/view/MenuItem;
    .end local v7           #isHome:Z
    .end local v8           #isNavDump:Z
    .end local v9           #nav:Landroid/view/MenuItem;
    .end local v11           #pm:Landroid/content/pm/PackageManager;
    .end local v12           #ri:Landroid/content/pm/ResolveInfo;
    .end local v13           #send:Landroid/content/Intent;
    .end local v15           #w:Landroid/webkit/WebView;
    .end local v16           #windows:Landroid/view/MenuItem;
    :cond_12a
    :goto_12a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BrowserActivity;->mCurrentMenuState:I

    .line 1916
    const/16 v17, 0x1

    return v17

    .line 1847
    :sswitch_139
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserActivity;->mCurrentMenuState:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_191

    .line 1848
    const v17, 0x7f0c0073

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1849
    const v17, 0x7f0c0073

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1850
    const v17, 0x7f0c007f

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1851
    const v17, 0x7f0c008e

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1852
    const v17, 0x7f0c008e

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1854
    :cond_191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1ba

    const/16 v17, 0x1

    move/from16 v10, v17

    .line 1855
    .local v10, newT:Z
    :goto_1a7
    const v17, 0x7f0c008f

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 1856
    .local v14, tab:Landroid/view/MenuItem;
    invoke-interface {v14, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1857
    invoke-interface {v14, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_12a

    .line 1854
    .end local v10           #newT:Z
    .end local v14           #tab:Landroid/view/MenuItem;
    :cond_1ba
    const/16 v17, 0x0

    move/from16 v10, v17

    goto :goto_1a7

    .line 1860
    :sswitch_1bf
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserActivity;->mCurrentMenuState:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_12a

    .line 1861
    const v17, 0x7f0c0073

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1862
    const v17, 0x7f0c0073

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1863
    const v17, 0x7f0c007f

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1864
    const v17, 0x7f0c008e

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1865
    const v17, 0x7f0c008e

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto/16 :goto_12a

    .line 1889
    .restart local v3       #back:Landroid/view/MenuItem;
    .restart local v4       #canGoBack:Z
    .restart local v5       #canGoForward:Z
    .restart local v6       #home:Landroid/view/MenuItem;
    .restart local v7       #isHome:Z
    .restart local v15       #w:Landroid/webkit/WebView;
    :cond_219
    const/16 v17, 0x0

    goto/16 :goto_ac

    .line 1901
    .restart local v11       #pm:Landroid/content/pm/PackageManager;
    .restart local v12       #ri:Landroid/content/pm/ResolveInfo;
    .restart local v13       #send:Landroid/content/Intent;
    :cond_21d
    const/16 v18, 0x0

    goto/16 :goto_e1

    .line 1905
    .restart local v16       #windows:Landroid/view/MenuItem;
    :cond_221
    const v17, 0x7f070046

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_10c

    .line 1845
    :sswitch_data_22e
    .sparse-switch
        -0x1 -> :sswitch_1bf
        0x7f0c008e -> :sswitch_139
    .end sparse-switch
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/16 v5, 0x67

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string v2, "browser"

    .line 1108
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1110
    const-string v0, "browser"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserActivity.onResume: this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-nez v0, :cond_2e

    .line 1114
    const-string v0, "browser"

    const-string v0, "BrowserActivity is already resumed."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :goto_2d
    return-void

    .line 1118
    :cond_2e
    iput-boolean v3, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 1119
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resumeWebView()Z

    .line 1121
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1122
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1123
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1124
    const-string v0, "browser"

    const-string v0, "[WakeLock] Native : released onResume!"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_4e
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCredsDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_61

    .line 1128
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_61

    .line 1130
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1134
    :cond_61
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1136
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    .line 1138
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->doFlick()Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 1139
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_81

    .line 1140
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1143
    :cond_81
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSensorListener:Landroid/hardware/SensorListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    .line 1151
    :goto_89
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mInvokePanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_92

    .line 1152
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mInvokePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1153
    :cond_92
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mToolBarPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9b

    .line 1154
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mToolBarPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1156
    :cond_9b
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->setupBrowserToolbar()V

    .line 1157
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showInvokePanel()V

    goto :goto_2d

    .line 1147
    :cond_a2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mSensorManager:Landroid/hardware/SensorManager;

    goto :goto_89
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "outState"

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->saveState(Landroid/os/Bundle;)V

    .line 1178
    return-void
.end method

.method public onSearchRequested()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1565
    const/4 v0, 0x0

    const-string v1, "browser-key"

    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->createGoogleSearchSourceBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/android/browser/BrowserActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1567
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 5802
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_46

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, 0x41c8

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_46

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, 0x4248

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_46

    .line 5808
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v1, :cond_24

    .line 5809
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->stopLoading()V

    :goto_22
    move v1, v4

    .line 5831
    :goto_23
    return v1

    .line 5813
    :cond_24
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 5814
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v1, 0x0

    :goto_39
    const-string v2, "browser-goto"

    invoke-direct {p0, v2}, Lcom/android/browser/BrowserActivity;->createGoogleSearchSourceBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v4, v2, v3}, Lcom/android/browser/BrowserActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_22

    :cond_44
    move-object v1, v0

    goto :goto_39

    .line 5831
    .end local v0           #url:Ljava/lang/String;
    :cond_46
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_23
.end method

.method public popupForDDHandlerV1(Ljava/lang/String;)V
    .registers 5
    .parameter "sMessage"

    .prologue
    .line 4957
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700c0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4963
    return-void
.end method

.method public postMessage(IIILjava/lang/Object;)V
    .registers 7
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 2830
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2831
    return-void
.end method

.method public promptInfoPopup(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 5230
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->cancelStopToast()V

    .line 5231
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    .line 5232
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5233
    return-void
.end method

.method public promptOmaDrmV2DD1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "nOmaDrmHandlerV2"
    .parameter "ddName"
    .parameter "ddSize"
    .parameter "ddType"

    .prologue
    .line 5104
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 5105
    .local v1, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f030009

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 5106
    .local v0, ddInfoView:Landroid/view/View;
    const v3, 0x7f0c0024

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f070113

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5107
    const v3, 0x7f0c0025

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5108
    const v3, 0x7f0c0026

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f070114

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5109
    const v3, 0x7f0c0027

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5110
    const v3, 0x7f0c0028

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f070115

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5111
    const v3, 0x7f0c0029

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5113
    new-instance v2, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener;

    invoke-direct {v2, p0, p1}, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener;-><init>(Lcom/android/browser/BrowserActivity;I)V

    .line 5115
    .local v2, listener:Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070112

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x108009b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07000b

    invoke-static {v2}, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener;->access$7300(Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07000a

    invoke-static {v2}, Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener;->access$7300(Lcom/android/browser/BrowserActivity$PromptOmaDrmV2DDListener;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5122
    return-void
.end method

.method public promptOmaV1(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 17
    .parameter "contentValues"
    .parameter "installNotifyURI"
    .parameter "nextURI"
    .parameter "ddName"
    .parameter "ddSize"
    .parameter "ddType"
    .parameter "bRoapTriggerInDD"

    .prologue
    .line 5058
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 5059
    .local v8, factory:Landroid/view/LayoutInflater;
    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 5060
    .local v7, ddInfoView:Landroid/view/View;
    const v1, 0x7f0c0024

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070113

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5061
    const v1, 0x7f0c0025

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5062
    const v1, 0x7f0c0026

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070114

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5063
    const v1, 0x7f0c0027

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5064
    const v1, 0x7f0c0028

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    .end local p5
    check-cast p5, Landroid/widget/TextView;

    const v1, 0x7f070115

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5065
    const v1, 0x7f0c0029

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    invoke-virtual {p5, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5067
    new-instance v0, Lcom/android/browser/BrowserActivity$PromptListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/browser/BrowserActivity$PromptListener;-><init>(Lcom/android/browser/BrowserActivity;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5068
    .local v0, listener:Lcom/android/browser/BrowserActivity$PromptListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070112

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x108009b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07000b

    iget-object v3, v0, Lcom/android/browser/BrowserActivity$PromptListener;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07000a

    iget-object v3, v0, Lcom/android/browser/BrowserActivity$PromptListener;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5075
    return-void
.end method

.method resetTitleAndRevertLockIcon()V
    .registers 1

    .prologue
    .line 2504
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->revertLockIcon()V

    .line 2505
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resetTitleIconAndProgress()V

    .line 2506
    return-void
.end method

.method setBaseSearchUrl(Ljava/lang/String;)V
    .registers 9
    .parameter "url"

    .prologue
    .line 5591
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_62

    .line 5605
    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 5606
    .local v0, l:Ljava/util/Locale;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700d9

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "client=ms-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "client_id"

    invoke-static {v2, v3}, Lcom/google/android/providers/GoogleSettings$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&source=android-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "browser-suggest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&q=%s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/browser/BrowserActivity;->QuickSearch_G:Ljava/lang/String;

    .line 5615
    .end local v0           #l:Ljava/util/Locale;
    :goto_61
    return-void

    .line 5613
    :cond_62
    sput-object p1, Lcom/android/browser/BrowserActivity;->QuickSearch_G:Ljava/lang/String;

    goto :goto_61
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 4742
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 4743
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_b

    .line 4744
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4746
    :cond_b
    return-void
.end method

.method showTab(Lcom/android/browser/TabControl$Tab;)V
    .registers 3
    .parameter "t"

    .prologue
    .line 2135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/BrowserActivity;->showTab(Lcom/android/browser/TabControl$Tab;Ljava/lang/String;)V

    .line 2136
    return-void
.end method

.method smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "url"

    .prologue
    const/16 v12, 0x20

    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    const-string v10, "%s"

    .line 5528
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 5529
    .local v2, inUrl:Ljava/lang/String;
    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4d

    move v1, v9

    .line 5531
    .local v1, hasSpace:Z
    :goto_13
    sget-object v6, Lcom/android/browser/BrowserActivity;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 5532
    .local v4, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_51

    .line 5533
    if-eqz v1, :cond_29

    .line 5534
    const-string v6, " "

    const-string v7, "%20"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 5537
    :cond_29
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 5538
    .local v5, scheme:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 5539
    .local v3, lcScheme:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4f

    .line 5540
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5582
    .end local v3           #lcScheme:Ljava/lang/String;
    .end local v5           #scheme:Ljava/lang/String;
    :goto_4c
    return-object v6

    .end local v1           #hasSpace:Z
    .end local v4           #matcher:Ljava/util/regex/Matcher;
    :cond_4d
    move v1, v11

    .line 5529
    goto :goto_13

    .restart local v1       #hasSpace:Z
    .restart local v3       #lcScheme:Ljava/lang/String;
    .restart local v4       #matcher:Ljava/util/regex/Matcher;
    .restart local v5       #scheme:Ljava/lang/String;
    :cond_4f
    move-object v6, v2

    .line 5542
    goto :goto_4c

    .line 5544
    .end local v3           #lcScheme:Ljava/lang/String;
    .end local v5           #scheme:Ljava/lang/String;
    :cond_51
    if-eqz v1, :cond_b7

    .line 5546
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_c8

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v12, :cond_c8

    .line 5549
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 5551
    .local v0, char0:C
    const/16 v6, 0x67

    if-ne v0, v6, :cond_75

    .line 5552
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v6, v2}, Landroid/provider/Browser;->addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 5553
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/browser/BrowserActivity;->composeSearchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4c

    .line 5555
    :cond_75
    const/16 v6, 0x77

    if-ne v0, v6, :cond_8b

    .line 5556
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v6, v2}, Landroid/provider/Browser;->addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 5557
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "http://en.wikipedia.org/w/index.php?search=%s&go=Go"

    const-string v8, "%s"

    invoke-static {v6, v7, v10}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4c

    .line 5561
    :cond_8b
    const/16 v6, 0x64

    if-ne v0, v6, :cond_a1

    .line 5562
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v6, v2}, Landroid/provider/Browser;->addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 5563
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "http://dictionary.reference.com/search?q=%s"

    const-string v8, "%s"

    invoke-static {v6, v7, v10}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4c

    .line 5567
    :cond_a1
    const/16 v6, 0x6c

    if-ne v0, v6, :cond_c8

    .line 5568
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v6, v2}, Landroid/provider/Browser;->addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 5570
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "http://www.google.com/m/search?site=local&q=%s&near=mountain+view"

    const-string v8, "%s"

    invoke-static {v6, v7, v10}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4c

    .line 5576
    .end local v0           #char0:C
    :cond_b7
    sget-object v6, Landroid/text/util/Regex;->WEB_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_c8

    .line 5577
    invoke-static {v2}, Landroid/webkit/URLUtil;->guessUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4c

    .line 5581
    :cond_c8
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v6, v2}, Landroid/provider/Browser;->addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 5582
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->composeSearchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4c
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 6
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 1573
    if-nez p3, :cond_8

    .line 1574
    const-string v0, "browser-type"

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->createGoogleSearchSourceBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    .line 1576
    :cond_8
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1577
    return-void
.end method

.method public viewDownloads(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "values"
    .parameter "installNotifyURI"
    .parameter "nextURI"

    .prologue
    .line 5242
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 5244
    .local v0, contentUri:Landroid/net/Uri;
    if-nez p2, :cond_e

    if-eqz p3, :cond_11

    .line 5245
    :cond_e
    invoke-direct {p0, v0, p2, p3}, Lcom/android/browser/BrowserActivity;->storeExtras(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 5247
    :cond_11
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->viewDownloads(Landroid/net/Uri;)V

    .line 5248
    return-void
.end method

.method public viewDownloads(Landroid/net/Uri;)V
    .registers 4
    .parameter "downloadRecord"

    .prologue
    .line 4817
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/BrowserDownloadPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4819
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4820
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4822
    return-void
.end method
