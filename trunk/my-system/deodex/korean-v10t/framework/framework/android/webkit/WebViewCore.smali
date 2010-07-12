.class final Landroid/webkit/WebViewCore;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewCore$1;,
        Landroid/webkit/WebViewCore$DrawData;,
        Landroid/webkit/WebViewCore$EventHub;,
        Landroid/webkit/WebViewCore$TouchEventData;,
        Landroid/webkit/WebViewCore$TouchUpData;,
        Landroid/webkit/WebViewCore$FocusData;,
        Landroid/webkit/WebViewCore$WebCoreThread;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final HandlerDebugString:[Ljava/lang/String; = null

.field private static final LOGTAG:Ljava/lang/String; = "webcore"

.field static final LOGV_ENABLED:Z = false

.field static final SCROLL_BITS:I = 0x6

.field static final THREAD_NAME:Ljava/lang/String; = "WebViewCoreThread"

.field static final ZOOM_BITS:I = 0x86

.field private static sWebCoreHandler:Landroid/os/Handler;


# instance fields
.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private final mContext:Landroid/content/Context;

.field private mCurrentViewHeight:I

.field private mCurrentViewWidth:I

.field private mDrawIsPaused:Z

.field private mDrawIsScheduled:Z

.field mEndScaleZoom:Z

.field private final mEventHub:Landroid/webkit/WebViewCore$EventHub;

.field private mNativeClass:I

.field private mRestoredScale:I

.field private mRestoredX:I

.field private mRestoredY:I

.field final mScrollFilter:Landroid/graphics/DrawFilter;

.field private final mSettings:Landroid/webkit/WebSettings;

.field private mSplitPictureIsScheduled:Z

.field private mViewportHeight:I

.field private mViewportInitialScale:I

.field private mViewportMaximumScale:I

.field private mViewportMinimumScale:I

.field private mViewportUserScalable:Z

.field private mViewportWidth:I

.field private mWebView:Landroid/webkit/WebView;

.field private mWebkitScrollX:I

.field private mWebkitScrollY:I

.field final mZoomFilter:Landroid/graphics/DrawFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 51
    const-string v0, "webcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 513
    const/16 v0, 0x2b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LOAD_URL"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "STOP_LOADING"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "RELOAD"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "KEY_DOWN"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "KEY_UP"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "VIEW_SIZE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GO_BACK_FORWARD"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SET_SCROLL_OFFSET"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "RESTORE_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "PAUSE_TIMERS"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "RESUME_TIMERS"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CLEAR_CACHE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CLEAR_HISTORY"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SET_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "REPLACE_TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PASS_TO_JS"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "SET_GLOBAL_BOUNDS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "UPDATE_CACHE_AND_TEXT_ENTRY"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "CLICK"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SET_NETWORK_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "DOC_HAS_IMAGES"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "SET_SNAP_ANCHOR"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "DELETE_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "LISTBOX_CHOICES"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "SINGLE_LISTBOX_CHOICE"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "125"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "SET_BACKGROUND_COLOR"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "UNBLOCK_FOCUS"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SAVE_DOCUMENT_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "GET_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "WEBKIT_DRAW"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "SYNC_SCROLL"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "REFRESH_PLUGINS"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "POST_URL"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "SPLIT_PICTURE_SET"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "CLEAR_CONTENT"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "SET_FINAL_FOCUS"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "SET_KIT_FOCUS"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "REQUEST_FOCUS_HREF"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "ADD_JS_INTERFACE"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "LOAD_DATA"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "TOUCH_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "TOUCH_EVENT"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebViewCore;->HandlerDebugString:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;)V
    .registers 13
    .parameter "context"
    .parameter "w"
    .parameter "proxy"

    .prologue
    const/4 v7, 0x0

    const/4 v3, -0x1

    const/4 v6, 0x0

    const-class v8, Landroid/webkit/WebViewCore;

    const-string v4, "webcore"

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v3, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    .line 81
    iput v3, p0, Landroid/webkit/WebViewCore;->mViewportHeight:I

    .line 86
    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 91
    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 96
    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 98
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    .line 100
    sget v3, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    iput v3, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    .line 101
    iput v6, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 102
    iput v6, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 104
    iput v6, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    .line 105
    iput v6, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    .line 1211
    iput v6, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 1212
    iput v6, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    .line 1280
    iput-boolean v6, p0, Landroid/webkit/WebViewCore;->mEndScaleZoom:Z

    .line 1330
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v4, 0x86

    const/16 v5, 0x40

    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v3, p0, Landroid/webkit/WebViewCore;->mZoomFilter:Landroid/graphics/DrawFilter;

    .line 1332
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v6}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v3, p0, Landroid/webkit/WebViewCore;->mScrollFilter:Landroid/graphics/DrawFilter;

    .line 113
    iput-object p3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 114
    iput-object p2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    .line 117
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    .line 123
    const-class v3, Landroid/webkit/WebViewCore;

    monitor-enter v8

    .line 124
    :try_start_45
    sget-object v4, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    if-nez v4, :cond_61

    .line 126
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Landroid/webkit/WebViewCore$WebCoreThread;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/webkit/WebViewCore$WebCoreThread;-><init>(Landroid/webkit/WebViewCore$1;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    .local v2, t:Ljava/lang/Thread;
    const-string v4, "WebViewCoreThread"

    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_5c
    .catchall {:try_start_45 .. :try_end_5c} :catchall_96

    .line 130
    :try_start_5c
    const-class v4, Landroid/webkit/WebViewCore;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_96
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_61} :catch_83

    .line 137
    .end local v2           #t:Ljava/lang/Thread;
    :cond_61
    :goto_61
    :try_start_61
    monitor-exit v3
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_96

    .line 140
    new-instance v3, Landroid/webkit/WebViewCore$EventHub;

    invoke-direct {v3, p0, v7}, Landroid/webkit/WebViewCore$EventHub;-><init>(Landroid/webkit/WebViewCore;Landroid/webkit/WebViewCore$1;)V

    iput-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    .line 142
    new-instance v3, Landroid/webkit/WebSettings;

    iget-object v4, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v3, v4, v5}, Landroid/webkit/WebSettings;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v3, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    .line 145
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    .line 147
    sget-object v3, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 149
    .local v1, init:Landroid/os/Message;
    sget-object v3, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    return-void

    .line 131
    .end local v1           #init:Landroid/os/Message;
    .restart local v2       #t:Ljava/lang/Thread;
    :catch_83
    move-exception v4

    move-object v0, v4

    .line 132
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_85
    const-string v4, "webcore"

    const-string v5, "Caught exception while waiting for thread creation."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v4, "webcore"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 137
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #t:Ljava/lang/Thread;
    :catchall_96
    move-exception v4

    monitor-exit v3
    :try_end_98
    .catchall {:try_start_85 .. :try_end_98} :catchall_96

    throw v4
.end method

.method static synthetic access$1000(Landroid/webkit/WebViewCore;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeRegisterURLSchemeAsLocal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->key(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkit/WebViewCore;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/webkit/WebViewCore;IIF)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->viewSizeChanged(IIF)V

    return-void
.end method

.method static synthetic access$1400(Landroid/webkit/WebViewCore;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetScrollOffset(II)V

    return-void
.end method

.method static synthetic access$1500(Landroid/webkit/WebViewCore;IIII)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeSetGlobalBounds(IIII)V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkit/WebViewCore;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->restoreState(I)V

    return-void
.end method

.method static synthetic access$1900(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/webkit/WebViewCore;IIIIIILjava/lang/String;II)V
    .registers 10
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p9}, Landroid/webkit/WebViewCore;->nativeReplaceTextfieldText(IIIIIILjava/lang/String;II)V

    return-void
.end method

.method static synthetic access$2100(Landroid/webkit/WebViewCore;IIIIILjava/lang/String;IIZZZZ)V
    .registers 13
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"
    .parameter "x11"
    .parameter "x12"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p12}, Landroid/webkit/WebViewCore;->passToJs(IIIIILjava/lang/String;IIZZZZ)V

    return-void
.end method

.method static synthetic access$2200(Landroid/webkit/WebViewCore;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSaveDocumentState(I)V

    return-void
.end method

.method static synthetic access$2300(Landroid/webkit/WebViewCore;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/webkit/WebViewCore;IIIIIIIZZ)V
    .registers 10
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p9}, Landroid/webkit/WebViewCore;->nativeTouchUp(IIIIIIIZZ)V

    return-void
.end method

.method static synthetic access$2500(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/webkit/WebViewCore;III)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeHandleTouchEvent(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Landroid/webkit/WebViewCore;IIIIZ)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebViewCore;->nativeSetFinalFocus(IIIIZ)V

    return-void
.end method

.method static synthetic access$2800(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeUnblockFocus()V

    return-void
.end method

.method static synthetic access$2900(Landroid/webkit/WebViewCore;IIIIIIZ)V
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
    .line 41
    invoke-direct/range {p0 .. p7}, Landroid/webkit/WebViewCore;->nativeSetKitFocus(IIIIIIZ)V

    return-void
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRetrieveHref(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    sput-object p0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3100(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeUpdateFrameCache()V

    return-void
.end method

.method static synthetic access$3200(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V

    return-void
.end method

.method static synthetic access$3300(Landroid/webkit/WebViewCore;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetSnapAnchor(II)V

    return-void
.end method

.method static synthetic access$3400(Landroid/webkit/WebViewCore;IIIIII)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p6}, Landroid/webkit/WebViewCore;->nativeDeleteSelection(IIIIII)V

    return-void
.end method

.method static synthetic access$3500(Landroid/webkit/WebViewCore;IIIIII)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p6}, Landroid/webkit/WebViewCore;->nativeSetSelection(IIIIII)V

    return-void
.end method

.method static synthetic access$3600(Landroid/webkit/WebViewCore;[ZI)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSendListBoxChoices([ZI)V

    return-void
.end method

.method static synthetic access$3700(Landroid/webkit/WebViewCore;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSendListBoxChoice(I)V

    return-void
.end method

.method static synthetic access$3800(Landroid/webkit/WebViewCore;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$3900(Landroid/webkit/WebViewCore;Landroid/graphics/Region;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeGetSelection(Landroid/graphics/Region;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->initialize()V

    return-void
.end method

.method static synthetic access$4000(Landroid/webkit/WebViewCore;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeDumpDomTree(Z)V

    return-void
.end method

.method static synthetic access$4100(Landroid/webkit/WebViewCore;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeDumpRenderTree(Z)V

    return-void
.end method

.method static synthetic access$4200(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeDumpNavTree()V

    return-void
.end method

.method static synthetic access$4302(Landroid/webkit/WebViewCore;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    return p1
.end method

.method static synthetic access$4402(Landroid/webkit/WebViewCore;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    return p1
.end method

.method static synthetic access$4500(Landroid/webkit/WebViewCore;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeRefreshPlugins(Z)V

    return-void
.end method

.method static synthetic access$4600(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeSplitContent()V

    return-void
.end method

.method static synthetic access$4702(Landroid/webkit/WebViewCore;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    return p1
.end method

.method static synthetic access$4800(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeClearContent()V

    return-void
.end method

.method static synthetic access$4902(Landroid/webkit/WebViewCore;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    return p1
.end method

.method static synthetic access$600(Landroid/webkit/WebViewCore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->webkitDraw()V

    return-void
.end method

.method static synthetic access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$702(Landroid/webkit/WebViewCore;Landroid/webkit/BrowserFrame;)Landroid/webkit/BrowserFrame;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object p1
.end method

.method static synthetic access$802(Landroid/webkit/WebViewCore;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    return p1
.end method

.method static synthetic access$900(Landroid/webkit/WebViewCore;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private contentScrollBy(IIZ)V
    .registers 7
    .parameter "dx"
    .parameter "dy"
    .parameter "animate"

    .prologue
    .line 1440
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1449
    :cond_8
    :goto_8
    return-void

    .line 1444
    :cond_9
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_8

    .line 1445
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8
.end method

.method private contentScrollTo(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1453
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1459
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 1460
    iput p2, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 1467
    :cond_c
    :goto_c
    return-void

    .line 1463
    :cond_d
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_c

    .line 1464
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-static {v0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_c
.end method

.method private contentSpawnScrollTo(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1471
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1477
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 1478
    iput p2, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 1485
    :cond_c
    :goto_c
    return-void

    .line 1481
    :cond_d
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_c

    .line 1482
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-static {v0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_c
.end method

.method private didFirstLayout()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x12

    const/4 v7, 0x0

    .line 1546
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-boolean v2, v2, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v2, :cond_2b

    .line 1547
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iput v7, v2, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 1550
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v3, 0x69

    iget-object v4, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mLastWidthSent:I

    iget-object v5, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget v5, v5, Landroid/webkit/WebView;->mLastHeightSent:I

    const/high16 v6, -0x4080

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v9, v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/webkit/WebViewCore$EventHub;->access$5000(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1555
    :cond_2b
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    .line 1558
    iput v7, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    iput v7, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    .line 1561
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->setViewportSettingsFromNative()V

    .line 1564
    sget v2, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    const/16 v3, 0x64

    if-eq v2, v3, :cond_65

    .line 1565
    sget v2, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float v0, v2, v3

    .line 1566
    .local v0, adjust:F
    iget v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v2, :cond_4f

    .line 1567
    iget v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 1569
    :cond_4f
    iget v2, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v2, :cond_5a

    .line 1570
    iget v2, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 1572
    :cond_5a
    iget v2, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v2, :cond_65

    .line 1573
    iget v2, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 1578
    .end local v0           #adjust:F
    :cond_65
    iget v2, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v2, :cond_79

    .line 1579
    iget v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-nez v2, :cond_71

    .line 1580
    sget v2, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 1582
    :cond_71
    iget v2, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-nez v2, :cond_79

    .line 1583
    sget v2, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 1586
    :cond_79
    iget-boolean v2, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    if-nez v2, :cond_89

    .line 1587
    sget v2, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 1588
    sget v2, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 1589
    sget v2, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 1591
    :cond_89
    iget v2, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    iget v3, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-le v2, v3, :cond_97

    .line 1592
    iget v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-nez v2, :cond_119

    .line 1593
    iget v2, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 1598
    :cond_97
    :goto_97
    iget v2, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v2, :cond_a5

    .line 1599
    iget v2, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    iget v3, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-ge v2, v3, :cond_11f

    .line 1600
    iget v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 1605
    :cond_a5
    :goto_a5
    iget v2, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-gez v2, :cond_b1

    iget v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    sget v3, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    if-ne v2, v3, :cond_b1

    .line 1607
    iput v7, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    .line 1611
    :cond_b1
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_118

    .line 1612
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1613
    .local v1, scaleLimit:Ljava/util/HashMap;
    const-string v2, "minScale"

    iget v3, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    const-string v2, "maxScale"

    iget v3, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    iget v2, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    if-lez v2, :cond_129

    .line 1617
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget v3, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    invoke-static {v2, v8, v3, v7, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1620
    iput v7, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    .line 1628
    :goto_e3
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    iget v4, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    iget v5, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1630
    iput v7, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    iput v7, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 1633
    iget v2, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    if-eqz v2, :cond_118

    .line 1634
    monitor-enter p0

    .line 1635
    :try_start_fd
    iget-boolean v2, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v2, :cond_108

    .line 1636
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v3, 0x82

    invoke-static {v2, v3}, Landroid/webkit/WebViewCore$EventHub;->access$5200(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 1638
    :cond_108
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 1639
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v3, 0x0

    const/16 v4, 0x82

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/webkit/WebViewCore$EventHub;->access$5400(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1641
    monitor-exit p0
    :try_end_118
    .catchall {:try_start_fd .. :try_end_118} :catchall_139

    .line 1644
    .end local v1           #scaleLimit:Ljava/util/HashMap;
    :cond_118
    return-void

    .line 1595
    :cond_119
    iget v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    goto/16 :goto_97

    .line 1601
    :cond_11f
    iget v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-nez v2, :cond_a5

    .line 1602
    iget v2, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    goto/16 :goto_a5

    .line 1622
    .restart local v1       #scaleLimit:Ljava/util/HashMap;
    :cond_129
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget v3, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iget v4, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    invoke-static {v2, v8, v3, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_e3

    .line 1641
    :catchall_139
    move-exception v2

    :try_start_13a
    monitor-exit p0
    :try_end_13b
    .catchall {:try_start_13a .. :try_end_13b} :catchall_139

    throw v2
.end method

.method static endCacheTransaction()V
    .registers 3

    .prologue
    .line 1400
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1402
    return-void
.end method

.method private initialize()V
    .registers 5

    .prologue
    .line 159
    new-instance v0, Landroid/webkit/BrowserFrame;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget-object v3, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-direct {v0, v1, p0, v2, v3}, Landroid/webkit/BrowserFrame;-><init>(Landroid/content/Context;Landroid/webkit/WebViewCore;Landroid/webkit/CallbackProxy;Landroid/webkit/WebSettings;)V

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 162
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->syncSettingsAndCreateHandler(Landroid/webkit/BrowserFrame;)V

    .line 164
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebIconDatabase;->createHandler()V

    .line 167
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$200(Landroid/webkit/WebViewCore$EventHub;)V

    .line 171
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_34

    .line 172
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    iget v2, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 177
    :cond_34
    return-void
.end method

.method private key(Landroid/view/KeyEvent;Z)V
    .registers 10
    .parameter "evt"
    .parameter "isDown"

    .prologue
    .line 1202
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v5

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewCore;->nativeKey(IIIZZZ)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1206
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)V

    .line 1208
    :cond_21
    return-void
.end method

.method private loadUrl(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 1194
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, p1}, Landroid/webkit/BrowserFrame;->loadUrl(Ljava/lang/String;)V

    .line 1195
    return-void
.end method

.method private native nativeClearContent()V
.end method

.method private native nativeClick()Z
.end method

.method private native nativeCopyContentToPicture(Landroid/graphics/Picture;)V
.end method

.method private native nativeDeleteSelection(IIIIII)V
.end method

.method private native nativeDrawContent(Landroid/graphics/Canvas;I)Z
.end method

.method private native nativeDumpDomTree(Z)V
.end method

.method private native nativeDumpNavTree()V
.end method

.method private native nativeDumpRenderTree(Z)V
.end method

.method static native nativeFindAddress(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetContentMinPrefWidth()I
.end method

.method private native nativeGetSelection(Landroid/graphics/Region;)Ljava/lang/String;
.end method

.method private native nativeHandleTouchEvent(III)Z
.end method

.method private native nativeKey(IIIZZZ)Z
.end method

.method private native nativeRecordContent(Landroid/graphics/Region;Landroid/graphics/Point;)Z
.end method

.method private native nativeRefreshPlugins(Z)V
.end method

.method private native nativeRegisterURLSchemeAsLocal(Ljava/lang/String;)V
.end method

.method private native nativeReplaceTextfieldText(IIIIIILjava/lang/String;II)V
.end method

.method private native nativeRetrieveHref(II)Ljava/lang/String;
.end method

.method private native nativeSaveDocumentState(I)V
.end method

.method private native nativeSendListBoxChoice(I)V
.end method

.method private native nativeSendListBoxChoices([ZI)V
.end method

.method private native nativeSetBackgroundColor(I)V
.end method

.method private native nativeSetFinalFocus(IIIIZ)V
.end method

.method private native nativeSetGlobalBounds(IIII)V
.end method

.method private native nativeSetKitFocus(IIIIIIZ)V
.end method

.method private native nativeSetScrollOffset(II)V
.end method

.method private native nativeSetSelection(IIIIII)V
.end method

.method private native nativeSetSize(IIIFII)V
.end method

.method private native nativeSetSnapAnchor(II)V
.end method

.method private native nativeSnapToAnchor()V
.end method

.method private native nativeSplitContent()V
.end method

.method private native nativeTouchUp(IIIIIIIZZ)V
.end method

.method private native nativeUnblockFocus()V
.end method

.method private native nativeUpdateFrameCache()V
.end method

.method private needTouchEvents(Z)V
    .registers 6
    .parameter "need"

    .prologue
    const/4 v3, 0x0

    .line 1655
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_15

    .line 1656
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    if-eqz p1, :cond_16

    const/4 v2, 0x1

    :goto_e
    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1660
    :cond_15
    return-void

    :cond_16
    move v2, v3

    .line 1656
    goto :goto_e
.end method

.method private native passToJs(IIIIILjava/lang/String;IIZZZZ)V
.end method

.method public static pauseTimers()V
    .registers 2

    .prologue
    .line 205
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_c

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_c
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0}, Landroid/webkit/JWebCoreJavaBridge;->pause()V

    .line 210
    return-void
.end method

.method static pauseUpdate(Landroid/webkit/WebViewCore;)V
    .registers 4
    .parameter "core"

    .prologue
    const/4 v2, 0x1

    .line 1361
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1362
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1363
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1370
    if-eqz p0, :cond_25

    .line 1371
    monitor-enter p0

    .line 1372
    const/4 v0, 0x1

    :try_start_1b
    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    .line 1373
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v1, 0x82

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$5200(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 1374
    monitor-exit p0

    .line 1376
    :cond_25
    return-void

    .line 1374
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_26

    throw v0
.end method

.method private requestListBox([Ljava/lang/String;[ZI)V
    .registers 5
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selection"

    .prologue
    .line 1690
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_9

    .line 1691
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView;->requestListBox([Ljava/lang/String;[ZI)V

    .line 1694
    :cond_9
    return-void
.end method

.method private requestListBox([Ljava/lang/String;[Z[I)V
    .registers 5
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selectedArray"

    .prologue
    .line 1682
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_9

    .line 1683
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView;->requestListBox([Ljava/lang/String;[Z[I)V

    .line 1685
    :cond_9
    return-void
.end method

.method private restoreScale(I)V
    .registers 3
    .parameter "scale"

    .prologue
    .line 1648
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1649
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    .line 1651
    :cond_a
    return-void
.end method

.method private restoreState(I)V
    .registers 7
    .parameter "index"

    .prologue
    .line 1407
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 1408
    .local v1, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    .line 1409
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v2, :cond_1b

    .line 1410
    invoke-virtual {v1, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iget v4, v4, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebHistoryItem;->inflate(I)V

    .line 1409
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1412
    :cond_1b
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 1413
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iget v3, v3, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-static {v3, p1}, Landroid/webkit/WebBackForwardList;->restoreIndex(II)V

    .line 1414
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 1415
    return-void
.end method

.method public static resumeTimers()V
    .registers 2

    .prologue
    .line 216
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_c

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_c
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0}, Landroid/webkit/JWebCoreJavaBridge;->resume()V

    .line 221
    return-void
.end method

.method static resumeUpdate(Landroid/webkit/WebViewCore;)V
    .registers 4
    .parameter "core"

    .prologue
    const/4 v2, 0x2

    .line 1380
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1381
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1382
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1384
    if-eqz p0, :cond_24

    .line 1385
    monitor-enter p0

    .line 1386
    const/4 v0, 0x0

    :try_start_1b
    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 1387
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    .line 1389
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 1390
    monitor-exit p0

    .line 1392
    :cond_24
    return-void

    .line 1390
    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_25

    throw v0
.end method

.method private sendMarkNodeInvalid(I)V
    .registers 5
    .parameter "node"

    .prologue
    .line 1489
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_12

    .line 1490
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1493
    :cond_12
    return-void
.end method

.method private sendNotifyFocusSet()V
    .registers 3

    .prologue
    .line 1497
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_11

    .line 1498
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1501
    :cond_11
    return-void
.end method

.method private sendNotifyProgressFinished()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    .line 1505
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V

    .line 1508
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1509
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1511
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 1512
    return-void
.end method

.method private sendRecomputeFocus()V
    .registers 3

    .prologue
    .line 1516
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_11

    .line 1517
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1520
    :cond_11
    return-void
.end method

.method private sendUpdateTextEntry()V
    .registers 3

    .prologue
    .line 1264
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_11

    .line 1265
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1268
    :cond_11
    return-void
.end method

.method private sendViewInvalidate(IIII)V
    .registers 8
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1527
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_16

    .line 1528
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1532
    :cond_16
    return-void
.end method

.method private native setViewportSettingsFromNative()V
.end method

.method static startCacheTransaction()V
    .registers 3

    .prologue
    .line 1395
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1397
    return-void
.end method

.method private updateTextfield(IZLjava/lang/String;I)V
    .registers 8
    .parameter "ptr"
    .parameter "changeToPassword"
    .parameter "text"
    .parameter "textGeneration"

    .prologue
    .line 1665
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1a

    .line 1666
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-static {v1, v2, p1, p4, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1669
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1670
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1672
    .end local v0           #msg:Landroid/os/Message;
    :cond_1a
    return-void
.end method

.method private viewSizeChanged(IIF)V
    .registers 14
    .parameter "w"
    .parameter "h"
    .parameter "scale"

    .prologue
    const/4 v2, -0x1

    .line 1217
    if-nez p1, :cond_b

    .line 1218
    const-string v0, "webcore"

    const-string v2, "skip viewSizeChanged as w is 0"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :goto_a
    return-void

    .line 1221
    :cond_b
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_63

    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-lt p1, v0, :cond_1b

    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-ne v0, v2, :cond_63

    .line 1223
    :cond_1b
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    .line 1224
    .local v1, width:I
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-ne v0, v2, :cond_2d

    .line 1225
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v0, v2, :cond_5a

    .line 1227
    const/16 v1, 0x3f0

    .line 1244
    :cond_2d
    :goto_2d
    int-to-float v0, v1

    int-to-float v2, p2

    mul-float/2addr v0, v2

    int-to-float v2, p1

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object v0, p0

    move v3, p1

    move v4, p3

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewCore;->nativeSetSize(IIIFII)V

    .line 1250
    .end local v1           #width:I
    :goto_3e
    iget v0, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    if-nez v0, :cond_6e

    const/4 v0, 0x1

    move v9, v0

    .line 1251
    .local v9, needInvalidate:Z
    :goto_44
    iput p1, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 1252
    iput p2, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    .line 1253
    if-eqz v9, :cond_4d

    .line 1257
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 1259
    :cond_4d
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x75

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/webkit/WebViewCore$EventHub;->access$5000(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_a

    .line 1241
    .end local v9           #needInvalidate:Z
    .restart local v1       #width:I
    :cond_5a
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetContentMinPrefWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2d

    .end local v1           #width:I
    :cond_63
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p1

    move v6, p3

    move v7, p1

    move v8, p2

    .line 1247
    invoke-direct/range {v2 .. v8}, Landroid/webkit/WebViewCore;->nativeSetSize(IIIFII)V

    goto :goto_3e

    .line 1250
    :cond_6e
    const/4 v0, 0x0

    move v9, v0

    goto :goto_44
.end method

.method private webkitDraw()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1293
    iput-boolean v5, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 1294
    new-instance v0, Landroid/webkit/WebViewCore$DrawData;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewCore$DrawData;-><init>(Landroid/webkit/WebViewCore;)V

    .line 1296
    .local v0, draw:Landroid/webkit/WebViewCore$DrawData;
    iget-object v1, v0, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    iget-object v2, v0, Landroid/webkit/WebViewCore$DrawData;->mWidthHeight:Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebViewCore;->nativeRecordContent(Landroid/graphics/Region;Landroid/graphics/Point;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1319
    :cond_12
    :goto_12
    return-void

    .line 1301
    :cond_13
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_12

    .line 1304
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    iget v3, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Landroid/webkit/WebViewCore$DrawData;->mViewPoint:Landroid/graphics/Point;

    .line 1306
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1308
    iget v1, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    if-nez v1, :cond_37

    iget v1, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    if-eqz v1, :cond_4c

    .line 1310
    :cond_37
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    iget v3, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    iget v4, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1313
    iput v5, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    iput v5, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    .line 1317
    :cond_4c
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeSnapToAnchor()V

    goto :goto_12
.end method


# virtual methods
.method contentDraw()V
    .registers 4

    .prologue
    .line 1425
    iget v0, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1436
    :cond_c
    :goto_c
    return-void

    .line 1429
    :cond_d
    monitor-enter p0

    .line 1430
    :try_start_e
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v0, :cond_1b

    .line 1431
    :cond_16
    monitor-exit p0

    goto :goto_c

    .line 1435
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v0

    .line 1433
    :cond_1b
    const/4 v0, 0x1

    :try_start_1c
    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 1434
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/16 v2, 0x82

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$5000(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1435
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_18

    goto :goto_c
.end method

.method copyContentPicture()Landroid/graphics/Picture;
    .registers 2

    .prologue
    .line 1354
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 1355
    .local v0, result:Landroid/graphics/Picture;
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->nativeCopyContentToPicture(Landroid/graphics/Picture;)V

    .line 1356
    return-object v0
.end method

.method destroy()V
    .registers 5

    .prologue
    .line 1179
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    monitor-enter v0

    .line 1180
    :try_start_3
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    invoke-static {v1}, Landroid/webkit/WebViewCore$EventHub;->access$5300(Landroid/webkit/WebViewCore$EventHub;)V

    .line 1181
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$EventHub;->access$5400(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1183
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    invoke-static {v1}, Landroid/webkit/WebViewCore$EventHub;->access$5500(Landroid/webkit/WebViewCore$EventHub;)V

    .line 1184
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    .line 1185
    monitor-exit v0

    .line 1186
    return-void

    .line 1185
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method drawContentPicture(Landroid/graphics/Canvas;IZZ)V
    .registers 8
    .parameter "canvas"
    .parameter "color"
    .parameter "animatingZoom"
    .parameter "animatingScroll"

    .prologue
    .line 1338
    const/4 v0, 0x0

    .line 1339
    .local v0, df:Landroid/graphics/DrawFilter;
    if-eqz p3, :cond_1f

    .line 1340
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mZoomFilter:Landroid/graphics/DrawFilter;

    .line 1344
    :cond_5
    :goto_5
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 1345
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeDrawContent(Landroid/graphics/Canvas;I)Z

    move-result v1

    .line 1346
    .local v1, tookTooLong:Z
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 1347
    if-eqz v1, :cond_1e

    iget-boolean v2, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    if-nez v2, :cond_1e

    .line 1348
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    .line 1349
    const/16 v2, 0x85

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 1351
    :cond_1e
    return-void

    .line 1341
    .end local v1           #tookTooLong:Z
    :cond_1f
    if-eqz p4, :cond_5

    .line 1342
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mScrollFilter:Landroid/graphics/DrawFilter;

    goto :goto_5
.end method

.method getBrowserFrame()Landroid/webkit/BrowserFrame;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    return-object v0
.end method

.method getWebView()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 1535
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method initializeSubwindow()V
    .registers 3

    .prologue
    .line 185
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->initialize()V

    .line 187
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 188
    return-void
.end method

.method protected jsAlert(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "url"
    .parameter "message"

    .prologue
    .line 232
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method protected jsConfirm(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "url"
    .parameter "message"

    .prologue
    .line 241
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsConfirm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected jsInterrupt()Z
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method protected jsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"

    .prologue
    .line 252
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/CallbackProxy;->onJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected jsUnload(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "url"
    .parameter "message"

    .prologue
    .line 263
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method removeMessages()V
    .registers 2

    .prologue
    .line 1168
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$5300(Landroid/webkit/WebViewCore$EventHub;)V

    .line 1169
    return-void
.end method

.method removeMessages(I)V
    .registers 3
    .parameter "what"

    .prologue
    .line 1164
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    invoke-static {v0, p1}, Landroid/webkit/WebViewCore$EventHub;->access$5200(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 1165
    return-void
.end method

.method sendMessage(I)V
    .registers 4
    .parameter "what"

    .prologue
    .line 1134
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$5000(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1135
    return-void
.end method

.method sendMessage(II)V
    .registers 6
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 1143
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$5000(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1144
    return-void
.end method

.method sendMessage(III)V
    .registers 6
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1147
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$5000(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1148
    return-void
.end method

.method sendMessage(IIILjava/lang/Object;)V
    .registers 7
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1156
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$5000(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1157
    return-void
.end method

.method sendMessage(IILjava/lang/Object;)V
    .registers 7
    .parameter "what"
    .parameter "arg1"
    .parameter "obj"

    .prologue
    .line 1152
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$5000(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1153
    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .registers 5
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1138
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$5000(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1139
    return-void
.end method

.method sendMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1130
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    invoke-static {v0, p1}, Landroid/webkit/WebViewCore$EventHub;->access$5000(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1131
    return-void
.end method

.method sendMessageDelayed(ILjava/lang/Object;J)V
    .registers 7
    .parameter "what"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 1160
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1, p3, p4}, Landroid/webkit/WebViewCore$EventHub;->access$5100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V

    .line 1161
    return-void
.end method

.method stopLoading()V
    .registers 2

    .prologue
    .line 1118
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-eqz v0, :cond_9

    .line 1119
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->stopLoading()V

    .line 1121
    :cond_9
    return-void
.end method
