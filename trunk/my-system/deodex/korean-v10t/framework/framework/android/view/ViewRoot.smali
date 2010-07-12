.class public final Landroid/view/ViewRoot;
.super Landroid/os/Handler;
.source "ViewRoot.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/View$AttachInfo$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRoot$RunQueue;,
        Landroid/view/ViewRoot$CalledFromWrongThreadException;,
        Landroid/view/ViewRoot$TrackballAxis;,
        Landroid/view/ViewRoot$W;,
        Landroid/view/ViewRoot$EventCompletion;,
        Landroid/view/ViewRoot$InputMethodCallback;
    }
.end annotation


# static fields
.field public static final CHECK_FOCUS:I = 0x3f5

.field private static final DBG:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_IMF:Z = false

.field private static final DEBUG_INPUT_RESIZE:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_ORIENTATION:Z = false

.field private static final DEBUG_TRACKBALL:Z = false

.field public static final DIE:I = 0x3e9

.field public static final DISPATCH_APP_VISIBILITY:I = 0x3f0

.field public static final DISPATCH_GET_NEW_SURFACE:I = 0x3f1

.field public static final DISPATCH_KEY:I = 0x3ed

.field public static final DISPATCH_KEY_FROM_IME:I = 0x3f3

.field public static final DISPATCH_POINTER:I = 0x3ee

.field public static final DISPATCH_TRACKBALL:I = 0x3ef

.field public static final DO_TRAVERSAL:I = 0x3e8

.field public static final FINISHED_EVENT:I = 0x3f2

.field public static final FINISH_INPUT_CONNECTION:I = 0x3f4

.field private static final LOCAL_LOGV:Z = false

.field static final MAX_TRACKBALL_DELAY:I = 0xfa

.field public static final RESIZED:I = 0x3ea

.field public static final RESIZED_REPORT:I = 0x3eb

.field private static final TAG:Ljava/lang/String; = "ViewRoot"

.field private static final WATCH_POINTER:Z = false

.field public static final WINDOW_FOCUS_CHANGED:I = 0x3ec

.field static mInitialized:Z

.field static final mStaticInit:Ljava/lang/Object;

.field private static sDrawTime:I

.field static sInstanceCount:J

.field static final sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/ViewRoot$RunQueue;",
            ">;"
        }
    .end annotation
.end field

.field static sWindowSession:Landroid/view/IWindowSession;


# instance fields
.field mAddNesting:I

.field mAdded:Z

.field mAddedTouchMode:Z

.field mAppVisible:Z

.field final mAttachInfo:Landroid/view/View$AttachInfo;

.field mAudioManager:Landroid/media/AudioManager;

.field mCurScrollY:I

.field private final mDensity:I

.field mDirty:Landroid/graphics/Rect;

.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field mFirst:Z

.field mFocusedView:Landroid/view/View;

.field mFullRedrawNeeded:Z

.field mGL:Ljavax/microedition/khronos/opengles/GL11;

.field mGlCanvas:Landroid/graphics/Canvas;

.field mGlWanted:Z

.field mHasHadWindowFocus:Z

.field mHeight:I

.field private mHolder:Landroid/view/SurfaceHolder;

.field final mInputMethodCallback:Landroid/view/ViewRoot$InputMethodCallback;

.field mIsAnimating:Z

.field final mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mLastScrolledFocus:Landroid/view/View;

.field mLastTrackballTime:J

.field mLastWasImTarget:Z

.field mLayoutRequested:Z

.field final mLocation:Landroid/view/WindowLeaked;

.field mNewSurfaceNeeded:Z

.field final mPendingContentInsets:Landroid/graphics/Rect;

.field mPendingEventSeq:I

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingVisibleInsets:Landroid/graphics/Rect;

.field final mPreviousTransparentRegion:Landroid/graphics/Region;

.field private mProfile:Z

.field mRealFocusedView:Landroid/view/View;

.field mReportNextDraw:Z

.field mScrollMayChange:Z

.field mScrollY:I

.field mScroller:Landroid/widget/Scroller;

.field mSoftInputMode:I

.field mSurface:Landroid/view/Surface;

.field final mTempRect:Landroid/graphics/Rect;

.field final mThread:Ljava/lang/Thread;

.field final mTmpLocation:[I

.field final mTrackballAxisX:Landroid/view/ViewRoot$TrackballAxis;

.field final mTrackballAxisY:Landroid/view/ViewRoot$TrackballAxis;

.field mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field final mTransparentRegion:Landroid/graphics/Region;

.field mTraversalScheduled:Z

.field mUseGL:Z

.field mView:Landroid/view/View;

.field final mViewConfiguration:Landroid/view/ViewConfiguration;

.field mViewVisibility:I

.field final mVisRect:Landroid/graphics/Rect;

.field mWidth:I

.field mWillDrawSoon:Z

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/ViewRoot$W;

.field final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field mWindowAttributesChanged:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/view/ViewRoot;->sInstanceCount:J

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/ViewRoot;->mStaticInit:Ljava/lang/Object;

    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/ViewRoot;->mInitialized:Z

    .line 96
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/ViewRoot;->sRunQueues:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 193
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 100
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/ViewRoot;->mLastTrackballTime:J

    .line 101
    new-instance v1, Landroid/view/ViewRoot$TrackballAxis;

    invoke-direct {v1}, Landroid/view/ViewRoot$TrackballAxis;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRoot;->mTrackballAxisX:Landroid/view/ViewRoot$TrackballAxis;

    .line 102
    new-instance v1, Landroid/view/ViewRoot$TrackballAxis;

    invoke-direct {v1}, Landroid/view/ViewRoot$TrackballAxis;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRoot;->mTrackballAxisY:Landroid/view/ViewRoot$TrackballAxis;

    .line 104
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/view/ViewRoot;->mTmpLocation:[I

    .line 107
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRoot;->mPendingEvents:Landroid/util/SparseArray;

    .line 108
    iput v5, p0, Landroid/view/ViewRoot;->mPendingEventSeq:I

    .line 114
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 122
    iput-boolean v6, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    .line 149
    iput-boolean v5, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    .line 162
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 163
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 164
    new-instance v1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRoot;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 246
    iput-boolean v5, p0, Landroid/view/ViewRoot;->mProfile:Z

    .line 3011
    new-instance v1, Landroid/view/ViewRoot$1;

    invoke-direct {v1, p0}, Landroid/view/ViewRoot$1;-><init>(Landroid/view/ViewRoot;)V

    iput-object v1, p0, Landroid/view/ViewRoot;->mHolder:Landroid/view/SurfaceHolder;

    .line 195
    sget-wide v1, Landroid/view/ViewRoot;->sInstanceCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Landroid/view/ViewRoot;->sInstanceCount:J

    .line 200
    sget-object v1, Landroid/view/ViewRoot;->mStaticInit:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_59
    sget-boolean v2, Landroid/view/ViewRoot;->mInitialized:Z
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_f9

    if-nez v2, :cond_7c

    .line 203
    :try_start_5d
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 204
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getClient()Lcom/android/internal/view/IInputMethodClient;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputContext()Lcom/android/internal/view/IInputContext;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v2

    sput-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    .line 207
    const/4 v2, 0x1

    sput-boolean v2, Landroid/view/ViewRoot;->mInitialized:Z
    :try_end_7c
    .catchall {:try_start_5d .. :try_end_7c} :catchall_f9
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_7c} :catch_fc

    .line 211
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_7c
    :goto_7c
    :try_start_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_f9

    .line 213
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mThread:Ljava/lang/Thread;

    .line 214
    new-instance v1, Landroid/view/WindowLeaked;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/view/ViewRoot;->mLocation:Landroid/view/WindowLeaked;

    .line 215
    iget-object v1, p0, Landroid/view/ViewRoot;->mLocation:Landroid/view/WindowLeaked;

    invoke-virtual {v1}, Landroid/view/WindowLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 216
    iput v7, p0, Landroid/view/ViewRoot;->mWidth:I

    .line 217
    iput v7, p0, Landroid/view/ViewRoot;->mHeight:I

    .line 218
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRoot;->mDirty:Landroid/graphics/Rect;

    .line 219
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    .line 220
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRoot;->mVisRect:Landroid/graphics/Rect;

    .line 221
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    .line 222
    new-instance v1, Landroid/view/ViewRoot$W;

    invoke-direct {v1, p0, p1}, Landroid/view/ViewRoot$W;-><init>(Landroid/view/ViewRoot;Landroid/content/Context;)V

    iput-object v1, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    .line 223
    new-instance v1, Landroid/view/ViewRoot$InputMethodCallback;

    invoke-direct {v1, p0}, Landroid/view/ViewRoot$InputMethodCallback;-><init>(Landroid/view/ViewRoot;)V

    iput-object v1, p0, Landroid/view/ViewRoot;->mInputMethodCallback:Landroid/view/ViewRoot$InputMethodCallback;

    .line 224
    const/16 v1, 0x8

    iput v1, p0, Landroid/view/ViewRoot;->mViewVisibility:I

    .line 225
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    .line 226
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRoot;->mPreviousTransparentRegion:Landroid/graphics/Region;

    .line 227
    iput-boolean v6, p0, Landroid/view/ViewRoot;->mFirst:Z

    .line 228
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    .line 229
    iput-boolean v5, p0, Landroid/view/ViewRoot;->mAdded:Z

    .line 230
    new-instance v1, Landroid/view/View$AttachInfo;

    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-direct {v1, v2, v3, p0, p0}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V

    iput-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 231
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Landroid/view/ViewRoot;->mDensity:I

    .line 233
    return-void

    .line 211
    :catchall_f9
    move-exception v2

    :try_start_fa
    monitor-exit v1
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    throw v2

    .line 208
    :catch_fc
    move-exception v2

    goto/16 :goto_7c
.end method

.method private static captureKeyLog(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .registers 6
    .parameter "subTag"
    .parameter "ev"

    .prologue
    const/16 v3, 0x2c

    .line 2229
    if-eqz p1, :cond_d

    const-string v1, "debug.captureevent"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_e

    .line 2243
    :cond_d
    :goto_d
    return-void

    .line 2233
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2234
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2235
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2236
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2237
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2238
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2239
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2240
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2241
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2242
    const-string v1, "ViewRoot"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private static captureMotionLog(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "subTag"
    .parameter "ev"

    .prologue
    const/16 v3, 0x2c

    .line 2204
    if-eqz p1, :cond_d

    const-string v1, "debug.captureevent"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_e

    .line 2223
    :cond_d
    :goto_d
    return-void

    .line 2209
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2210
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2222
    const-string v1, "ViewRoot"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d
.end method

.method private checkEglErrors()V
    .registers 3

    .prologue
    .line 366
    iget-boolean v1, p0, Landroid/view/ViewRoot;->mUseGL:Z

    if-eqz v1, :cond_18

    .line 367
    iget-object v1, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 368
    .local v0, err:I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_18

    .line 371
    invoke-direct {p0}, Landroid/view/ViewRoot;->destroyGL()V

    .line 372
    const/16 v1, 0x300e

    if-eq v0, v1, :cond_18

    .line 374
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mGlWanted:Z

    .line 378
    .end local v0           #err:I
    :cond_18
    return-void
.end method

.method private checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 2156
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 2196
    :goto_8
    return v0

    .line 2159
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_13

    move v0, v2

    .line 2160
    goto :goto_8

    .line 2164
    :cond_13
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-nez v0, :cond_1b

    move v0, v2

    .line 2165
    goto :goto_8

    .line 2175
    :cond_1b
    invoke-static {p1}, Landroid/view/ViewRoot;->isKeyboardKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v0, :cond_59

    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 2176
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 2177
    iget-object v0, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_49

    iget-object v0, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_49

    move v0, v2

    .line 2181
    goto :goto_8

    .line 2183
    :cond_49
    invoke-virtual {p0, v2}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 2184
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should not have changed focus when leaving touch mode while a view has focus."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    move v0, v2

    .line 2187
    goto :goto_8

    .line 2190
    :cond_59
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/ViewRoot;->isDirectional(I)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2194
    invoke-virtual {p0, v2}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    move-result v0

    goto :goto_8

    :cond_68
    move v0, v2

    .line 2196
    goto :goto_8
.end method

.method private deliverKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 8
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 2265
    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v3, :cond_17

    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    .line 2267
    .local v0, handled:Z
    :goto_b
    if-eqz v0, :cond_1a

    .line 2268
    if-eqz p2, :cond_16

    .line 2272
    :try_start_f
    sget-object v3, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_3c

    .line 2293
    :cond_16
    :goto_16
    return-void

    .line 2265
    .end local v0           #handled:Z
    :cond_17
    const/4 v3, 0x1

    move v0, v3

    goto :goto_b

    .line 2281
    .restart local v0       #handled:Z
    :cond_1a
    iget-boolean v3, p0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    if-eqz v3, :cond_38

    .line 2282
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2283
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_38

    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v3, :cond_38

    .line 2284
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewRoot;->enqueuePendingEvent(Ljava/lang/Object;Z)I

    move-result v2

    .line 2287
    .local v2, seq:I
    iget-object v3, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/view/ViewRoot;->mInputMethodCallback:Landroid/view/ViewRoot$InputMethodCallback;

    invoke-virtual {v1, v3, v2, p1, v4}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEvent(Landroid/content/Context;ILandroid/view/KeyEvent;Lcom/android/internal/view/IInputMethodCallback;)V

    goto :goto_16

    .line 2292
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #seq:I
    :cond_38
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRoot;->deliverKeyEventToViewHierarchy(Landroid/view/KeyEvent;Z)V

    goto :goto_16

    .line 2273
    :catch_3c
    move-exception v3

    goto :goto_16
.end method

.method private deliverKeyEventToViewHierarchy(Landroid/view/KeyEvent;Z)V
    .registers 13
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 2321
    :try_start_0
    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v7, :cond_71

    iget-boolean v7, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v7, :cond_71

    .line 2322
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2323
    .local v0, action:I
    if-nez v0, :cond_20

    const/4 v7, 0x1

    move v4, v7

    .line 2325
    .local v4, isDown:Z
    :goto_10
    invoke-direct {p0, p1}, Landroid/view/ViewRoot;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_94

    move-result v7

    if-eqz v7, :cond_23

    .line 2378
    if-eqz p2, :cond_1f

    .line 2382
    :try_start_18
    sget-object v7, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v8, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v7, v8}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_7b

    .line 2389
    .end local v0           #action:I
    .end local v4           #isDown:Z
    :cond_1f
    :goto_1f
    return-void

    .line 2323
    .restart local v0       #action:I
    :cond_20
    const/4 v7, 0x0

    move v4, v7

    goto :goto_10

    .line 2332
    .restart local v4       #isDown:Z
    :cond_23
    :try_start_23
    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    .line 2334
    .local v5, keyHandled:Z
    if-nez v5, :cond_71

    if-eqz v4, :cond_71

    .line 2335
    const/4 v1, 0x0

    .line 2336
    .local v1, direction:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    packed-switch v7, :pswitch_data_a2

    .line 2351
    :goto_35
    if-eqz v1, :cond_71

    .line 2353
    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v7, :cond_89

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    .line 2354
    .local v3, focused:Landroid/view/View;
    :goto_42
    if-eqz v3, :cond_71

    .line 2355
    invoke-virtual {v3, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v6

    .line 2356
    .local v6, v:Landroid/view/View;
    const/4 v2, 0x0

    .line 2357
    .local v2, focusPassed:Z
    if-eqz v6, :cond_6a

    if-eq v6, v3, :cond_6a

    .line 2361
    iget-object v7, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2362
    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v3, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2363
    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v6, v8}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2364
    iget-object v7, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v7}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 2367
    :cond_6a
    if-nez v2, :cond_8c

    .line 2368
    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7, v3, v1}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z
    :try_end_71
    .catchall {:try_start_23 .. :try_end_71} :catchall_94

    .line 2378
    .end local v0           #action:I
    .end local v1           #direction:I
    .end local v2           #focusPassed:Z
    .end local v3           #focused:Landroid/view/View;
    .end local v4           #isDown:Z
    .end local v5           #keyHandled:Z
    .end local v6           #v:Landroid/view/View;
    :cond_71
    :goto_71
    if-eqz p2, :cond_1f

    .line 2382
    :try_start_73
    sget-object v7, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v8, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v7, v8}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_7a} :catch_7b

    goto :goto_1f

    .line 2383
    :catch_7b
    move-exception v7

    goto :goto_1f

    .line 2338
    .restart local v0       #action:I
    .restart local v1       #direction:I
    .restart local v4       #isDown:Z
    .restart local v5       #keyHandled:Z
    :pswitch_7d
    const/16 v1, 0x11

    .line 2339
    goto :goto_35

    .line 2341
    :pswitch_80
    const/16 v1, 0x42

    .line 2342
    goto :goto_35

    .line 2344
    :pswitch_83
    const/16 v1, 0x21

    .line 2345
    goto :goto_35

    .line 2347
    :pswitch_86
    const/16 v1, 0x82

    goto :goto_35

    .line 2353
    :cond_89
    const/4 v7, 0x0

    move-object v3, v7

    goto :goto_42

    .line 2370
    .restart local v2       #focusPassed:Z
    .restart local v3       #focused:Landroid/view/View;
    .restart local v6       #v:Landroid/view/View;
    :cond_8c
    :try_start_8c
    invoke-static {v1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/view/ViewRoot;->playSoundEffect(I)V
    :try_end_93
    .catchall {:try_start_8c .. :try_end_93} :catchall_94

    goto :goto_71

    .line 2378
    .end local v0           #action:I
    .end local v1           #direction:I
    .end local v2           #focusPassed:Z
    .end local v3           #focused:Landroid/view/View;
    .end local v4           #isDown:Z
    .end local v5           #keyHandled:Z
    .end local v6           #v:Landroid/view/View;
    :catchall_94
    move-exception v7

    if-eqz p2, :cond_9e

    .line 2382
    :try_start_97
    sget-object v8, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v9, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v8, v9}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9e} :catch_9f

    .line 2378
    :cond_9e
    :goto_9e
    throw v7

    .line 2383
    :catch_9f
    move-exception v8

    goto :goto_9e

    .line 2336
    nop

    :pswitch_data_a2
    .packed-switch 0x13
        :pswitch_83
        :pswitch_86
        :pswitch_7d
        :pswitch_80
    .end packed-switch
.end method

.method private deliverTrackballEvent(Landroid/view/MotionEvent;)V
    .registers 37
    .parameter "event"

    .prologue
    .line 1964
    if-nez p1, :cond_30

    .line 1966
    :try_start_2
    sget-object v5, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v6, v0

    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->getPendingTrackballMove(Landroid/view/IWindow;)Landroid/view/MotionEvent;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_206

    move-result-object p1

    .line 1969
    :goto_d
    const/16 v28, 0x1

    .line 1976
    .local v28, didFinish:Z
    :goto_f
    const/16 v29, 0x0

    .line 1978
    .local v29, handled:Z
    if-nez p1, :cond_33

    .line 1979
    const/16 v29, 0x1

    .line 1988
    :cond_15
    :goto_15
    if-eqz v29, :cond_51

    .line 1989
    if-nez v28, :cond_23

    .line 1991
    :try_start_19
    sget-object v5, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v6, v0

    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_23} :catch_203

    .line 1995
    :cond_23
    :goto_23
    if-eqz p1, :cond_28

    .line 1996
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2002
    :cond_28
    :goto_28
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    .line 2119
    :cond_2f
    :goto_2f
    return-void

    .line 1971
    .end local v28           #didFinish:Z
    .end local v29           #handled:Z
    :cond_30
    const/16 v28, 0x0

    .restart local v28       #didFinish:Z
    goto :goto_f

    .line 1980
    .restart local v29       #handled:Z
    :cond_33
    :try_start_33
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v5, v0

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAdded:Z

    move v5, v0

    if-eqz v5, :cond_15

    .line 1981
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    :try_end_4c
    .catchall {:try_start_33 .. :try_end_4c} :catchall_1e6

    move-result v29

    .line 1982
    if-nez v29, :cond_15

    goto :goto_15

    .line 1988
    :cond_50
    throw v5

    .line 2010
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTrackballAxisX:Landroid/view/ViewRoot$TrackballAxis;

    move-object/from16 v31, v0

    .line 2011
    .local v31, x:Landroid/view/ViewRoot$TrackballAxis;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTrackballAxisY:Landroid/view/ViewRoot$TrackballAxis;

    move-object/from16 v33, v0

    .line 2013
    .local v33, y:Landroid/view/ViewRoot$TrackballAxis;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2014
    .local v6, curTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ViewRoot;->mLastTrackballTime:J

    move-wide v8, v0

    const-wide/16 v10, 0xfa

    add-long/2addr v8, v10

    cmp-long v5, v8, v6

    if-gez v5, :cond_80

    .line 2017
    const/4 v5, 0x0

    move-object/from16 v0, v31

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2018
    const/4 v5, 0x0

    move-object/from16 v0, v33

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2019
    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewRoot;->mLastTrackballTime:J

    .line 2023
    :cond_80
    :try_start_80
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    .line 2024
    .local v27, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v13

    .line 2025
    .local v13, metastate:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    .line 2026
    .local v14, deviceid:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getScanCode()I

    move-result v15

    .line 2027
    .local v15, scancode:I
    packed-switch v27, :pswitch_data_20a

    .line 2050
    :goto_93
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    const-string v10, "X"

    move-object/from16 v0, v31

    move v1, v5

    move-wide v2, v8

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewRoot$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v32

    .line 2051
    .local v32, xOff:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    const-string v10, "Y"

    move-object/from16 v0, v33

    move v1, v5

    move-wide v2, v8

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewRoot$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v34

    .line 2059
    .local v34, yOff:F
    const/4 v11, 0x0

    .line 2060
    .local v11, keycode:I
    const/16 v30, 0x0

    .line 2061
    .local v30, movement:I
    const/high16 v25, 0x3f80

    .line 2062
    .local v25, accel:F
    cmpl-float v5, v32, v34

    if-lez v5, :cond_1a1

    .line 2063
    const/high16 v5, 0x4000

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v8

    div-float/2addr v5, v8

    move-object/from16 v0, v31

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->generate(F)I

    move-result v30

    .line 2064
    if-eqz v30, :cond_e4

    .line 2065
    if-lez v30, :cond_19c

    const/16 v5, 0x16

    move v11, v5

    .line 2067
    :goto_d7
    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    move/from16 v25, v0

    .line 2068
    const/4 v5, 0x2

    move-object/from16 v0, v33

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2080
    :cond_e4
    :goto_e4
    if-eqz v11, :cond_1d3

    .line 2081
    if-gez v30, :cond_ed

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    .line 2082
    :cond_ed
    move/from16 v0, v30

    int-to-float v0, v0

    move v5, v0

    mul-float v5, v5, v25

    move v0, v5

    float-to-int v0, v0

    move/from16 v26, v0

    .line 2086
    .local v26, accelMovement:I
    move/from16 v0, v26

    move/from16 v1, v30

    if-le v0, v1, :cond_110

    .line 2089
    add-int/lit8 v30, v30, -0x1

    .line 2090
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x2

    sub-int v12, v26, v30

    move-wide v8, v6

    invoke-direct/range {v5 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 2094
    :cond_110
    :goto_110
    if-lez v30, :cond_1ce

    .line 2097
    add-int/lit8 v30, v30, -0x1

    .line 2098
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2099
    new-instance v16, Landroid/view/KeyEvent;

    const/16 v21, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v24

    move-wide/from16 v17, v6

    move-wide/from16 v19, v6

    move/from16 v22, v11

    invoke-direct/range {v16 .. v24}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 2101
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-wide v8, v6

    invoke-direct/range {v5 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V
    :try_end_144
    .catchall {:try_start_80 .. :try_end_144} :catchall_145

    goto :goto_110

    .line 2107
    .end local v11           #keycode:I
    .end local v13           #metastate:I
    .end local v14           #deviceid:I
    .end local v15           #scancode:I
    .end local v25           #accel:F
    .end local v26           #accelMovement:I
    .end local v27           #action:I
    .end local v30           #movement:I
    .end local v32           #xOff:F
    .end local v34           #yOff:F
    :catchall_145
    move-exception v5

    if-nez v28, :cond_157

    .line 2109
    :try_start_148
    sget-object v6, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    .end local v6           #curTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v7, v0

    invoke-interface {v6, v7}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_152
    .catch Landroid/os/RemoteException; {:try_start_148 .. :try_end_152} :catch_200

    .line 2112
    :goto_152
    if-eqz p1, :cond_157

    .line 2113
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2107
    :cond_157
    throw v5

    .line 2029
    .restart local v6       #curTime:J
    .restart local v13       #metastate:I
    .restart local v14       #deviceid:I
    .restart local v15       #scancode:I
    .restart local v27       #action:I
    :pswitch_158
    const/4 v5, 0x2

    :try_start_159
    move-object/from16 v0, v31

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2030
    const/4 v5, 0x2

    move-object/from16 v0, v33

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2031
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x0

    const/16 v11, 0x17

    const/4 v12, 0x0

    move-wide v8, v6

    invoke-direct/range {v5 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_93

    .line 2036
    :pswitch_17a
    const/4 v5, 0x2

    move-object/from16 v0, v31

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2037
    const/4 v5, 0x2

    move-object/from16 v0, v33

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2038
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x1

    const/16 v11, 0x17

    const/4 v12, 0x0

    move-wide v8, v6

    invoke-direct/range {v5 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_93

    .line 2065
    .restart local v11       #keycode:I
    .restart local v25       #accel:F
    .restart local v30       #movement:I
    .restart local v32       #xOff:F
    .restart local v34       #yOff:F
    :cond_19c
    const/16 v5, 0x15

    move v11, v5

    goto/16 :goto_d7

    .line 2070
    :cond_1a1
    const/4 v5, 0x0

    cmpl-float v5, v34, v5

    if-lez v5, :cond_e4

    .line 2071
    const/high16 v5, 0x4000

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v8

    div-float/2addr v5, v8

    move-object/from16 v0, v33

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->generate(F)I

    move-result v30

    .line 2072
    if-eqz v30, :cond_e4

    .line 2073
    if-lez v30, :cond_1ca

    const/16 v5, 0x14

    move v11, v5

    .line 2075
    :goto_1bb
    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    move/from16 v25, v0

    .line 2076
    const/4 v5, 0x2

    move-object/from16 v0, v31

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    goto/16 :goto_e4

    .line 2073
    :cond_1ca
    const/16 v5, 0x13

    move v11, v5

    goto :goto_1bb

    .line 2104
    .restart local v26       #accelMovement:I
    :cond_1ce
    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewRoot;->mLastTrackballTime:J
    :try_end_1d3
    .catchall {:try_start_159 .. :try_end_1d3} :catchall_145

    .line 2107
    .end local v26           #accelMovement:I
    :cond_1d3
    if-nez v28, :cond_2f

    .line 2109
    :try_start_1d5
    sget-object v5, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v6, v0

    .end local v6           #curTime:J
    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_1df
    .catch Landroid/os/RemoteException; {:try_start_1d5 .. :try_end_1df} :catch_1fe

    .line 2112
    :goto_1df
    if-eqz p1, :cond_2f

    .line 2113
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_2f

    .line 1988
    .end local v11           #keycode:I
    .end local v13           #metastate:I
    .end local v14           #deviceid:I
    .end local v15           #scancode:I
    .end local v25           #accel:F
    .end local v27           #action:I
    .end local v30           #movement:I
    .end local v31           #x:Landroid/view/ViewRoot$TrackballAxis;
    .end local v32           #xOff:F
    .end local v33           #y:Landroid/view/ViewRoot$TrackballAxis;
    .end local v34           #yOff:F
    :catchall_1e6
    move-exception v5

    if-eqz v29, :cond_50

    .line 1989
    if-nez v28, :cond_1f5

    .line 1991
    :try_start_1eb
    sget-object v5, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v6, v0

    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_1f5
    .catch Landroid/os/RemoteException; {:try_start_1eb .. :try_end_1f5} :catch_1fc

    .line 1995
    :cond_1f5
    :goto_1f5
    if-eqz p1, :cond_28

    .line 1996
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_28

    .line 1992
    :catch_1fc
    move-exception v5

    goto :goto_1f5

    .line 2110
    .restart local v11       #keycode:I
    .restart local v13       #metastate:I
    .restart local v14       #deviceid:I
    .restart local v15       #scancode:I
    .restart local v25       #accel:F
    .restart local v27       #action:I
    .restart local v30       #movement:I
    .restart local v31       #x:Landroid/view/ViewRoot$TrackballAxis;
    .restart local v32       #xOff:F
    .restart local v33       #y:Landroid/view/ViewRoot$TrackballAxis;
    .restart local v34       #yOff:F
    :catch_1fe
    move-exception v5

    goto :goto_1df

    .end local v11           #keycode:I
    .end local v13           #metastate:I
    .end local v14           #deviceid:I
    .end local v15           #scancode:I
    .end local v25           #accel:F
    .end local v27           #action:I
    .end local v30           #movement:I
    .end local v32           #xOff:F
    .end local v34           #yOff:F
    :catch_200
    move-exception v6

    goto/16 :goto_152

    .line 1992
    .end local v31           #x:Landroid/view/ViewRoot$TrackballAxis;
    .end local v33           #y:Landroid/view/ViewRoot$TrackballAxis;
    :catch_203
    move-exception v5

    goto/16 :goto_23

    .line 1967
    .end local v28           #didFinish:Z
    .end local v29           #handled:Z
    :catch_206
    move-exception v5

    goto/16 :goto_d

    .line 2027
    nop

    :pswitch_data_20a
    .packed-switch 0x0
        :pswitch_158
        :pswitch_17a
    .end packed-switch
.end method

.method private destroyGL()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 349
    invoke-static {}, Landroid/view/ViewRoot;->nativeAbandonGlCaches()V

    .line 351
    iget-object v0, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 353
    iget-object v0, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Landroid/view/ViewRoot;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 354
    iget-object v0, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Landroid/view/ViewRoot;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 355
    iget-object v0, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 356
    iput-object v5, p0, Landroid/view/ViewRoot;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 357
    iput-object v5, p0, Landroid/view/ViewRoot;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 358
    iput-object v5, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 359
    iput-object v5, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 360
    iput-object v5, p0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    .line 361
    iput-object v5, p0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mUseGL:Z

    .line 363
    return-void
.end method

.method private draw(Z)V
    .registers 27
    .parameter "fullRedrawNeeded"

    .prologue
    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    .line 1171
    .local v17, surface:Landroid/view/Surface;
    if-eqz v17, :cond_e

    invoke-virtual/range {v17 .. v17}, Landroid/view/Surface;->isValid()Z

    move-result v20

    if-nez v20, :cond_f

    .line 1368
    :cond_e
    :goto_e
    return-void

    .line 1175
    :cond_f
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRoot;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_47

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    .line 1183
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v20, v0

    if-eqz v20, :cond_19a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v20

    if-eqz v20, :cond_19a

    const/16 v20, 0x1

    move/from16 v14, v20

    .line 1184
    .local v14, scrolling:Z
    :goto_5f
    if-eqz v14, :cond_1a0

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Scroller;->getCurrY()I

    move-result v19

    .line 1189
    .local v19, yoff:I
    :goto_6b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mCurScrollY:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_7f

    .line 1190
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mCurScrollY:I

    .line 1191
    const/16 p1, 0x1

    .line 1193
    :cond_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move v5, v0

    .line 1194
    .local v5, appScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move v13, v0

    .line 1196
    .local v13, scalingRequired:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mDirty:Landroid/graphics/Rect;

    move-object v8, v0

    .line 1197
    .local v8, dirty:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mUseGL:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1b0

    .line 1198
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_18b

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    move-object v7, v0

    .line 1200
    .local v7, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v20, v0

    if-eqz v20, :cond_18b

    if-eqz v7, :cond_18b

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v20, v0

    const/16 v21, 0xc11

    invoke-interface/range {v20 .. v21}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-interface/range {v20 .. v24}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v20, v0

    const/16 v21, 0x4000

    invoke-interface/range {v20 .. v21}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v20, v0

    const/16 v21, 0xc11

    invoke-interface/range {v20 .. v21}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v21, v0

    or-int/lit8 v21, v21, 0x20

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 1210
    const/16 v20, 0x1

    move-object v0, v7

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v12

    .line 1212
    .local v12, saveCount:I
    const/16 v20, 0x0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    :try_start_130
    move-object v0, v7

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14c

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 1216
    :cond_14c
    if-eqz v13, :cond_1a8

    sget v20, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    :goto_150
    move-object v0, v7

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_162
    .catchall {:try_start_130 .. :try_end_162} :catchall_1ab

    .line 1223
    invoke-virtual {v7, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1229
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRoot;->checkEglErrors()V

    .line 1240
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v12           #saveCount:I
    :cond_18b
    if-eqz v14, :cond_e

    .line 1241
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    .line 1242
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    goto/16 :goto_e

    .line 1183
    .end local v5           #appScale:F
    .end local v8           #dirty:Landroid/graphics/Rect;
    .end local v13           #scalingRequired:Z
    .end local v14           #scrolling:Z
    .end local v19           #yoff:I
    :cond_19a
    const/16 v20, 0x0

    move/from16 v14, v20

    goto/16 :goto_5f

    .line 1187
    .restart local v14       #scrolling:Z
    :cond_1a0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mScrollY:I

    move/from16 v19, v0

    .restart local v19       #yoff:I
    goto/16 :goto_6b

    .line 1216
    .restart local v5       #appScale:F
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    .restart local v8       #dirty:Landroid/graphics/Rect;
    .restart local v12       #saveCount:I
    .restart local v13       #scalingRequired:Z
    :cond_1a8
    const/16 v20, 0x0

    goto :goto_150

    .line 1223
    :catchall_1ab
    move-exception v20

    invoke-virtual {v7, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v20

    .line 1247
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v12           #saveCount:I
    :cond_1b0
    if-eqz p1, :cond_1fc

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1249
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v5

    const/high16 v23, 0x3f00

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    const/high16 v24, 0x3f00

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object v0, v8

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1263
    :cond_1fc
    :try_start_1fc
    iget v10, v8, Landroid/graphics/Rect;->left:I

    .line 1264
    .local v10, left:I
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    .line 1265
    .local v18, top:I
    iget v11, v8, Landroid/graphics/Rect;->right:I

    .line 1266
    .local v11, right:I
    iget v6, v8, Landroid/graphics/Rect;->bottom:I

    .line 1267
    .local v6, bottom:I
    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v7

    .line 1269
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move v0, v10

    move/from16 v1, v20

    if-ne v0, v1, :cond_237

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_237

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move v0, v11

    move/from16 v1, v20

    if-ne v0, v1, :cond_237

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move v0, v6

    move/from16 v1, v20

    if-eq v0, v1, :cond_245

    .line 1271
    :cond_237
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1275
    :cond_245
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mDensity:I

    move/from16 v20, v0

    move-object v0, v7

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_251
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1fc .. :try_end_251} :catch_311
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1fc .. :try_end_251} :catch_322

    .line 1289
    :try_start_251
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_25f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mIsAnimating:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2fc

    .line 1290
    :cond_25f
    const-wide/16 v15, 0x0

    .line 1310
    .local v15, startTime:J
    invoke-virtual {v7}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v20

    if-eqz v20, :cond_269

    if-eqz v19, :cond_275

    .line 1311
    :cond_269
    const/16 v20, 0x0

    sget-object v21, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v7

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1314
    :cond_275
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 1315
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mIsAnimating:Z

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v21, v0

    or-int/lit8 v21, v21, 0x20

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 1325
    const/16 v20, 0x1

    move-object v0, v7

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I
    :try_end_2ac
    .catchall {:try_start_251 .. :try_end_2ac} :catchall_349

    move-result v12

    .line 1327
    .restart local v12       #saveCount:I
    const/16 v20, 0x0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    :try_start_2b9
    move-object v0, v7

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2d5

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 1331
    :cond_2d5
    if-eqz v13, :cond_333

    sget v20, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    :goto_2d9
    move-object v0, v7

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_2eb
    .catchall {:try_start_2b9 .. :try_end_2eb} :catchall_336

    .line 1335
    :try_start_2eb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1336
    invoke-virtual {v7, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_2fc
    .catchall {:try_start_2eb .. :try_end_2fc} :catchall_349

    .line 1357
    .end local v12           #saveCount:I
    .end local v15           #startTime:J
    :cond_2fc
    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1364
    if-eqz v14, :cond_e

    .line 1365
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    .line 1366
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    goto/16 :goto_e

    .line 1276
    .end local v6           #bottom:I
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v10           #left:I
    .end local v11           #right:I
    .end local v18           #top:I
    :catch_311
    move-exception v20

    move-object/from16 v9, v20

    .line 1277
    .local v9, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v20, "ViewRoot"

    const-string v21, "OutOfResourcesException locking surface"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 1281
    .end local v9           #e:Landroid/view/Surface$OutOfResourcesException;
    :catch_322
    move-exception v20

    move-object/from16 v9, v20

    .line 1282
    .local v9, e:Ljava/lang/IllegalArgumentException;
    const-string v20, "ViewRoot"

    const-string v21, "IllegalArgumentException locking surface"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 1331
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    .restart local v6       #bottom:I
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    .restart local v10       #left:I
    .restart local v11       #right:I
    .restart local v12       #saveCount:I
    .restart local v15       #startTime:J
    .restart local v18       #top:I
    :cond_333
    const/16 v20, 0x0

    goto :goto_2d9

    .line 1335
    :catchall_336
    move-exception v20

    :try_start_337
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1336
    invoke-virtual {v7, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1335
    throw v20
    :try_end_349
    .catchall {:try_start_337 .. :try_end_349} :catchall_349

    .line 1357
    .end local v12           #saveCount:I
    .end local v15           #startTime:J
    :catchall_349
    move-exception v20

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v20
.end method

.method private ensureTouchModeLocally(Z)Z
    .registers 3
    .parameter "inTouchMode"

    .prologue
    .line 1875
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v0, p1, :cond_8

    const/4 v0, 0x0

    .line 1880
    :goto_7
    return v0

    .line 1877
    :cond_8
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 1878
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    .line 1880
    if-eqz p1, :cond_1a

    invoke-direct {p0}, Landroid/view/ViewRoot;->enterTouchMode()Z

    move-result v0

    goto :goto_7

    :cond_1a
    invoke-direct {p0}, Landroid/view/ViewRoot;->leaveTouchMode()Z

    move-result v0

    goto :goto_7
.end method

.method private enterTouchMode()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1884
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v2, :cond_36

    .line 1885
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1889
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 1890
    .local v1, focused:Landroid/view/View;
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_36

    .line 1892
    invoke-direct {p0, v1}, Landroid/view/ViewRoot;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1894
    .local v0, ancestorToTakeFocus:Landroid/view/ViewGroup;
    if-eqz v0, :cond_26

    .line 1897
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v2

    .line 1908
    .end local v0           #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .end local v1           #focused:Landroid/view/View;
    :goto_25
    return v2

    .line 1900
    .restart local v0       #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .restart local v1       #focused:Landroid/view/View;
    :cond_26
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->unFocus()V

    .line 1901
    iget-object v2, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 1902
    iput-object v3, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 1903
    const/4 v2, 0x1

    goto :goto_25

    .line 1908
    .end local v0           #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .end local v1           #focused:Landroid/view/View;
    :cond_36
    const/4 v2, 0x0

    goto :goto_25
.end method

.method private findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 8
    .parameter "focused"

    .prologue
    const/4 v5, 0x0

    .line 1919
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1920
    .local v1, parent:Landroid/view/ViewParent;
    :goto_5
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2a

    .line 1921
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 1922
    .local v2, vgParent:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x4

    if-ne v3, v4, :cond_1d

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object v3, v2

    .line 1932
    .end local v2           #vgParent:Landroid/view/ViewGroup;
    :goto_1c
    return-object v3

    .line 1926
    .restart local v2       #vgParent:Landroid/view/ViewGroup;
    :cond_1d
    invoke-virtual {v2}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_25

    move-object v3, v5

    .line 1927
    goto :goto_1c

    .line 1929
    :cond_25
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1931
    goto :goto_5

    .end local v2           #vgParent:Landroid/view/ViewGroup;
    :cond_2a
    move-object v3, v5

    .line 1932
    goto :goto_1c
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .prologue
    .line 2392
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-nez v0, :cond_c

    .line 2393
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAudioManager called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2395
    :cond_c
    iget-object v0, p0, Landroid/view/ViewRoot;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_20

    .line 2396
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/view/ViewRoot;->mAudioManager:Landroid/media/AudioManager;

    .line 2398
    :cond_20
    iget-object v0, p0, Landroid/view/ViewRoot;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public static getInstanceCount()J
    .registers 2

    .prologue
    .line 242
    sget-wide v0, Landroid/view/ViewRoot;->sInstanceCount:J

    return-wide v0
.end method

.method private getRootMeasureSpec(II)I
    .registers 5
    .parameter "windowSize"
    .parameter "rootDimension"

    .prologue
    const/high16 v1, 0x4000

    .line 1151
    packed-switch p2, :pswitch_data_16

    .line 1163
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1166
    .local v0, measureSpec:I
    :goto_9
    return v0

    .line 1155
    .end local v0           #measureSpec:I
    :pswitch_a
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1156
    .restart local v0       #measureSpec:I
    goto :goto_9

    .line 1159
    .end local v0           #measureSpec:I
    :pswitch_f
    const/high16 v1, -0x8000

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1160
    .restart local v0       #measureSpec:I
    goto :goto_9

    .line 1151
    :pswitch_data_16
    .packed-switch -0x2
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method static getRunQueue()Landroid/view/ViewRoot$RunQueue;
    .registers 2

    .prologue
    .line 3061
    sget-object v1, Landroid/view/ViewRoot;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRoot$RunQueue;

    .line 3062
    .local v0, rq:Landroid/view/ViewRoot$RunQueue;
    if-eqz v0, :cond_b

    .line 3067
    :goto_a
    return-object v0

    .line 3065
    :cond_b
    new-instance v0, Landroid/view/ViewRoot$RunQueue;

    .end local v0           #rq:Landroid/view/ViewRoot$RunQueue;
    invoke-direct {v0}, Landroid/view/ViewRoot$RunQueue;-><init>()V

    .line 3066
    .restart local v0       #rq:Landroid/view/ViewRoot$RunQueue;
    sget-object v1, Landroid/view/ViewRoot;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_a
.end method

.method private initializeGL()V
    .registers 3

    .prologue
    .line 275
    invoke-direct {p0}, Landroid/view/ViewRoot;->initializeGLInner()V

    .line 276
    iget-object v1, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 277
    .local v0, err:I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_13

    .line 279
    invoke-direct {p0}, Landroid/view/ViewRoot;->destroyGL()V

    .line 280
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mGlWanted:Z

    .line 282
    :cond_13
    return-void
.end method

.method private initializeGLInner()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x1

    .line 285
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 286
    .local v0, egl:Ljavax/microedition/khronos/egl/EGL10;
    iput-object v0, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 291
    sget-object v11, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .line 292
    .local v1, eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    iput-object v1, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 297
    const/4 v11, 0x2

    new-array v10, v11, [I

    .line 298
    .local v10, version:[I
    invoke-interface {v0, v1, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 304
    const/16 v11, 0x9

    new-array v2, v11, [I

    fill-array-data v2, :array_4e

    .line 311
    .local v2, configSpec:[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 312
    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    new-array v5, v4, [I

    .line 313
    .local v5, num_config:[I
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 314
    const/4 v11, 0x0

    aget-object v6, v3, v11

    .line 320
    .local v6, config:Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v11, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v6, v11, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v7

    .line 322
    .local v7, context:Ljavax/microedition/khronos/egl/EGLContext;
    iput-object v7, p0, Landroid/view/ViewRoot;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 327
    iget-object v11, p0, Landroid/view/ViewRoot;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1, v6, v11, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v9

    .line 328
    .local v9, surface:Ljavax/microedition/khronos/egl/EGLSurface;
    iput-object v9, p0, Landroid/view/ViewRoot;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 334
    invoke-interface {v0, v1, v9, v9, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 341
    invoke-virtual {v7}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v8

    check-cast v8, Ljavax/microedition/khronos/opengles/GL11;

    .line 342
    .local v8, gl:Ljavax/microedition/khronos/opengles/GL11;
    iput-object v8, p0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 343
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v8}, Landroid/graphics/Canvas;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    iput-object v11, p0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    .line 344
    iput-boolean v4, p0, Landroid/view/ViewRoot;->mUseGL:Z

    .line 345
    return-void

    .line 304
    :array_4e
    .array-data 0x4
        0x24t 0x30t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method static isDirectional(I)Z
    .registers 2
    .parameter "keyCode"

    .prologue
    .line 2126
    packed-switch p0, :pswitch_data_8

    .line 2133
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2131
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 2126
    nop

    :pswitch_data_8
    .packed-switch 0x13
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method static isInTouchMode()Z
    .registers 1

    .prologue
    .line 265
    sget-boolean v0, Landroid/view/ViewRoot;->mInitialized:Z

    if-eqz v0, :cond_c

    .line 267
    :try_start_4
    sget-object v0, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v0}, Landroid/view/IWindowSession;->getInTouchMode()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v0

    .line 271
    :goto_a
    return v0

    .line 268
    :catch_b
    move-exception v0

    .line 271
    :cond_c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isKeyboardKey(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "keyEvent"

    .prologue
    .line 2142
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .line 2143
    .local v0, convertedKey:I
    if-lez v0, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 1574
    if-ne p0, p1, :cond_5

    move v1, v2

    .line 1579
    :goto_4
    return v1

    .line 1578
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1579
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_17

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/view/ViewRoot;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_4

    :cond_17
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private leaveTouchMode()Z
    .registers 6

    .prologue
    const/16 v4, 0x82

    const/4 v3, 0x0

    .line 1936
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_39

    .line 1937
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1939
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 1940
    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_1f

    move v1, v3

    .line 1958
    :goto_1e
    return v1

    .line 1943
    :cond_1f
    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x4

    if-eq v1, v2, :cond_2d

    move v1, v3

    .line 1947
    goto :goto_1e

    .line 1953
    :cond_2d
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4}, Landroid/view/ViewRoot;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1954
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_39

    .line 1955
    invoke-virtual {v0, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    goto :goto_1e

    .end local v0           #focused:Landroid/view/View;
    :cond_39
    move v1, v3

    .line 1958
    goto :goto_1e
.end method

.method private static native nativeAbandonGlCaches()V
.end method

.method private static native nativeShowFPS(Landroid/graphics/Canvas;I)V
.end method

.method private performTraversals()V
    .registers 57

    .prologue
    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v31, v0

    .line 629
    .local v31, host:Landroid/view/View;
    if-eqz v31, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAdded:Z

    move v6, v0

    if-nez v6, :cond_10

    .line 1123
    :cond_f
    :goto_f
    return-void

    .line 632
    :cond_10
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    .line 633
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mWillDrawSoon:Z

    .line 634
    const/16 v54, 0x0

    .line 635
    .local v54, windowResizesToFitContent:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    move/from16 v26, v0

    .line 636
    .local v26, fullRedrawNeeded:Z
    const/16 v40, 0x0

    .line 637
    .local v40, newSurface:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    .line 644
    .local v38, lp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v13, v0

    .line 646
    .local v13, attachInfo:Landroid/view/View$AttachInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->getHostVisibility()I

    move-result v49

    .line 647
    .local v49, viewVisibility:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mViewVisibility:I

    move v6, v0

    move v0, v6

    move/from16 v1, v49

    if-ne v0, v1, :cond_46

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mNewSurfaceNeeded:Z

    move v6, v0

    if-eqz v6, :cond_1a0

    :cond_46
    const/4 v6, 0x1

    move/from16 v50, v6

    .line 650
    .local v50, viewVisibilityChanged:Z
    :goto_49
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget v12, v6, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 652
    .local v12, appScale:F
    const/16 v43, 0x0

    .line 653
    .local v43, params:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    move v6, v0

    if-eqz v6, :cond_61

    .line 654
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    .line 655
    move-object/from16 v43, v38

    .line 657
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    .line 658
    .local v25, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-eqz v6, :cond_1a5

    .line 659
    const/16 v26, 0x1

    .line 660
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v42

    .line 664
    .local v42, packageMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, v42

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    .line 665
    .local v21, desiredWindowWidth:I
    move-object/from16 v0, v42

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    .line 671
    .local v20, desiredWindowHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    iput-object v6, v13, Landroid/view/View$AttachInfo;->mSurface:Landroid/view/Surface;

    .line 672
    const/4 v6, 0x0

    iput-boolean v6, v13, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 673
    move/from16 v0, v49

    move-object v1, v13

    iput v0, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 674
    const/4 v6, 0x0

    iput-boolean v6, v13, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 675
    const/4 v6, 0x0

    iput-boolean v6, v13, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 676
    const/16 v50, 0x0

    .line 677
    const/4 v6, 0x0

    move-object/from16 v0, v31

    move-object v1, v13

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 678
    invoke-static {}, Landroid/view/ViewRoot;->getRunQueue()Landroid/view/ViewRoot$RunQueue;

    move-result-object v6

    iget-object v7, v13, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/view/ViewRoot$RunQueue;->executeActions(Landroid/os/Handler;)V

    .line 693
    .end local v42           #packageMetrics:Landroid/util/DisplayMetrics;
    :cond_bb
    :goto_bb
    if-eqz v50, :cond_e9

    .line 694
    move/from16 v0, v49

    move-object v1, v13

    iput v0, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 695
    move-object/from16 v0, v31

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 696
    if-nez v49, :cond_d2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mNewSurfaceNeeded:Z

    move v6, v0

    if-eqz v6, :cond_dc

    .line 697
    :cond_d2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mUseGL:Z

    move v6, v0

    if-eqz v6, :cond_dc

    .line 698
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRoot;->destroyGL()V

    .line 701
    :cond_dc
    const/16 v6, 0x8

    move/from16 v0, v49

    move v1, v6

    if-ne v0, v1, :cond_e9

    .line 704
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mHasHadWindowFocus:Z

    .line 708
    :cond_e9
    const/16 v36, 0x0

    .line 710
    .local v36, insetsChanged:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    move v6, v0

    if-eqz v6, :cond_144

    .line 711
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-eqz v6, :cond_1d0

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v31

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAddedTouchMode:Z

    move v7, v0

    if-nez v7, :cond_1cd

    const/4 v7, 0x1

    :goto_113
    iput-boolean v7, v6, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 716
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAddedTouchMode:Z

    move v6, v0

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/view/ViewRoot;->ensureTouchModeLocally(Z)Z

    .line 741
    :cond_120
    :goto_120
    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move v6, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move v2, v6

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v16

    .line 742
    .local v16, childWidthMeasureSpec:I
    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move v6, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v6

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v15

    .line 748
    .local v15, childHeightMeasureSpec:I
    move-object/from16 v0, v31

    move/from16 v1, v16

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 757
    .end local v15           #childHeightMeasureSpec:I
    .end local v16           #childWidthMeasureSpec:I
    :cond_144
    iget-boolean v6, v13, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v6, :cond_163

    .line 759
    const/4 v6, 0x0

    iput-boolean v6, v13, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 760
    move-object v0, v13

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    move/from16 v41, v0

    .line 761
    .local v41, oldVal:Z
    const/4 v6, 0x0

    iput-boolean v6, v13, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 762
    const/4 v6, 0x0

    move-object/from16 v0, v31

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 763
    iget-boolean v6, v13, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    move v0, v6

    move/from16 v1, v41

    if-eq v0, v1, :cond_163

    .line 764
    move-object/from16 v43, v38

    .line 769
    .end local v41           #oldVal:Z
    :cond_163
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-nez v6, :cond_16e

    iget-boolean v6, v13, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    if-eqz v6, :cond_272

    .line 770
    :cond_16e
    const/4 v6, 0x0

    iput-boolean v6, v13, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 771
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mSoftInputMode:I

    move v6, v0

    move v0, v6

    and-int/lit16 v0, v0, 0xf0

    move/from16 v45, v0

    .line 775
    .local v45, resizeMode:I
    if-nez v45, :cond_272

    .line 776
    iget-object v6, v13, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 777
    .local v11, N:I
    const/16 v32, 0x0

    .local v32, i:I
    :goto_185
    move/from16 v0, v32

    move v1, v11

    if-ge v0, v1, :cond_252

    .line 778
    iget-object v6, v13, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    move-object v0, v6

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_19d

    .line 779
    const/16 v45, 0x10

    .line 777
    :cond_19d
    add-int/lit8 v32, v32, 0x1

    goto :goto_185

    .line 647
    .end local v11           #N:I
    .end local v12           #appScale:F
    .end local v20           #desiredWindowHeight:I
    .end local v21           #desiredWindowWidth:I
    .end local v25           #frame:Landroid/graphics/Rect;
    .end local v32           #i:I
    .end local v36           #insetsChanged:Z
    .end local v43           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v45           #resizeMode:I
    .end local v50           #viewVisibilityChanged:Z
    :cond_1a0
    const/4 v6, 0x0

    move/from16 v50, v6

    goto/16 :goto_49

    .line 682
    .restart local v12       #appScale:F
    .restart local v25       #frame:Landroid/graphics/Rect;
    .restart local v43       #params:Landroid/view/WindowManager$LayoutParams;
    .restart local v50       #viewVisibilityChanged:Z
    :cond_1a5
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v21

    .line 683
    .restart local v21       #desiredWindowWidth:I
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v20

    .line 684
    .restart local v20       #desiredWindowHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    move/from16 v0, v21

    move v1, v6

    if-ne v0, v1, :cond_1c1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v6, v0

    move/from16 v0, v20

    move v1, v6

    if-eq v0, v1, :cond_bb

    .line 687
    :cond_1c1
    const/16 v26, 0x1

    .line 688
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    .line 689
    const/16 v54, 0x1

    goto/16 :goto_bb

    .line 715
    .restart local v36       #insetsChanged:Z
    :cond_1cd
    const/4 v7, 0x0

    goto/16 :goto_113

    .line 718
    :cond_1d0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_200

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v31

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 721
    const/16 v36, 0x1

    .line 725
    :cond_200
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_221

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 730
    :cond_221
    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move v6, v0

    const/4 v7, -0x2

    if-eq v6, v7, :cond_231

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move v6, v0

    const/4 v7, -0x2

    if-ne v6, v7, :cond_120

    .line 732
    :cond_231
    const/16 v54, 0x1

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v42

    .line 736
    .restart local v42       #packageMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, v42

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    .line 737
    move-object/from16 v0, v42

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    goto/16 :goto_120

    .line 782
    .end local v42           #packageMetrics:Landroid/util/DisplayMetrics;
    .restart local v11       #N:I
    .restart local v32       #i:I
    .restart local v45       #resizeMode:I
    :cond_252
    if-nez v45, :cond_256

    .line 783
    const/16 v45, 0x20

    .line 785
    :cond_256
    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move v6, v0

    and-int/lit16 v6, v6, 0xf0

    move v0, v6

    move/from16 v1, v45

    if-eq v0, v1, :cond_272

    .line 787
    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move v6, v0

    and-int/lit16 v6, v6, -0xf1

    or-int v6, v6, v45

    move v0, v6

    move-object/from16 v1, v38

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 790
    move-object/from16 v43, v38

    .line 795
    .end local v11           #N:I
    .end local v32           #i:I
    .end local v45           #resizeMode:I
    :cond_272
    if-eqz v43, :cond_28e

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_28e

    .line 796
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move v6, v0

    invoke-static {v6}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v6

    if-nez v6, :cond_28e

    .line 797
    const/4 v6, -0x3

    move v0, v6

    move-object/from16 v1, v43

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 801
    :cond_28e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    move v6, v0

    if-eqz v6, :cond_70f

    if-eqz v54, :cond_70f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mMeasuredWidth:I

    move v7, v0

    if-ne v6, v7, :cond_2af

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v6, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mMeasuredHeight:I

    move v7, v0

    if-eq v6, v7, :cond_70f

    :cond_2af
    const/4 v6, 0x1

    move/from16 v55, v6

    .line 804
    .local v55, windowShouldResize:Z
    :goto_2b2
    iget-object v6, v13, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    move-result v17

    .line 806
    .local v17, computesInternalInsets:Z
    const/16 v37, 0x0

    .line 807
    .local v37, insetsPending:Z
    const/16 v44, 0x0

    .line 808
    .local v44, relayoutResult:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-nez v6, :cond_2cb

    if-nez v55, :cond_2cb

    if-nez v36, :cond_2cb

    if-nez v50, :cond_2cb

    if-eqz v43, :cond_4b1

    .line 811
    :cond_2cb
    if-nez v49, :cond_2f3

    .line 821
    if-eqz v17, :cond_714

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-nez v6, :cond_2d8

    if-eqz v50, :cond_714

    :cond_2d8
    const/4 v6, 0x1

    move/from16 v37, v6

    .line 824
    :goto_2db
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2f3

    .line 825
    if-nez v43, :cond_2ed

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v43, v0

    .line 828
    :cond_2ed
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mGlWanted:Z

    .line 832
    :cond_2f3
    const/16 v34, 0x0

    .line 833
    .local v34, initialized:Z
    const/16 v19, 0x0

    .line 836
    .local v19, contentInsetsChanged:Z
    :try_start_2f7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v29

    .line 837
    .local v29, hadSurface:Z
    const/16 v23, 0x0

    .line 838
    .local v23, fl:I
    if-eqz v43, :cond_31a

    .line 839
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v23, v0

    .line 840
    iget-boolean v6, v13, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v6, :cond_31a

    .line 841
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v6, v0

    or-int/lit16 v6, v6, 0x80

    move v0, v6

    move-object/from16 v1, v43

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 848
    :cond_31a
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v49

    move/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRoot;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v44

    .line 850
    if-eqz v43, :cond_32e

    .line 851
    move/from16 v0, v23

    move-object/from16 v1, v43

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 859
    :cond_32e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_719

    const/4 v6, 0x1

    move/from16 v19, v6

    .line 861
    :goto_343
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_71e

    const/4 v6, 0x1

    move/from16 v52, v6

    .line 863
    .local v52, visibleInsetsChanged:Z
    :goto_358
    if-eqz v19, :cond_376

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v31

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 869
    :cond_376
    if-eqz v52, :cond_387

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 875
    :cond_387
    if-nez v29, :cond_728

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3b3

    .line 884
    const/16 v40, 0x1

    .line 885
    const/16 v26, 0x1

    .line 887
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mGlWanted:Z

    move v6, v0

    if-eqz v6, :cond_3b3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mUseGL:Z

    move v6, v0

    if-nez v6, :cond_3b3

    .line 888
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRoot;->initializeGL()V

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    move-object v6, v0
    :try_end_3ae
    .catch Landroid/os/RemoteException; {:try_start_2f7 .. :try_end_3ae} :catch_755

    if-eqz v6, :cond_723

    const/4 v6, 0x1

    move/from16 v34, v6

    .line 906
    .end local v23           #fl:I
    .end local v29           #hadSurface:Z
    .end local v52           #visibleInsetsChanged:Z
    :cond_3b3
    :goto_3b3
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    iput v6, v13, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 907
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    iput v6, v13, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 912
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mWidth:I

    .line 913
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mHeight:I

    .line 915
    if-eqz v34, :cond_3f3

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v7, v0

    int-to-float v7, v7

    mul-float/2addr v7, v12

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v8, v0

    int-to-float v8, v8

    mul-float/2addr v8, v12

    const/high16 v9, 0x3f00

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->setViewport(II)V

    .line 920
    :cond_3f3
    and-int/lit8 v6, v44, 0x1

    if-eqz v6, :cond_758

    const/4 v6, 0x1

    :goto_3f8
    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/view/ViewRoot;->ensureTouchModeLocally(Z)Z

    move-result v24

    .line 922
    .local v24, focusChangedDueToTouchMode:Z
    if-nez v24, :cond_41b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mMeasuredWidth:I

    move v7, v0

    if-ne v6, v7, :cond_41b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v6, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mMeasuredHeight:I

    move v7, v0

    if-ne v6, v7, :cond_41b

    if-eqz v19, :cond_4b1

    .line 924
    :cond_41b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move v7, v0

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v16

    .line 925
    .restart local v16       #childWidthMeasureSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v6, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move v7, v0

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v15

    .line 934
    .restart local v15       #childHeightMeasureSpec:I
    move-object/from16 v0, v31

    move/from16 v1, v16

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 939
    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mMeasuredWidth:I

    move/from16 v53, v0

    .line 940
    .local v53, width:I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mMeasuredHeight:I

    move/from16 v30, v0

    .line 941
    .local v30, height:I
    const/16 v39, 0x0

    .line 943
    .local v39, measureAgain:Z
    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    move v6, v0

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_47b

    .line 944
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    sub-int v6, v6, v53

    int-to-float v6, v6

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    move v7, v0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int v53, v53, v6

    .line 945
    const/high16 v6, 0x4000

    move/from16 v0, v53

    move v1, v6

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 947
    const/16 v39, 0x1

    .line 949
    :cond_47b
    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    move v6, v0

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4a1

    .line 950
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v6, v0

    sub-int v6, v6, v30

    int-to-float v6, v6

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    move v7, v0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int v30, v30, v6

    .line 951
    const/high16 v6, 0x4000

    move/from16 v0, v30

    move v1, v6

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 953
    const/16 v39, 0x1

    .line 956
    :cond_4a1
    if-eqz v39, :cond_4ab

    .line 960
    move-object/from16 v0, v31

    move/from16 v1, v16

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 963
    :cond_4ab
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    .line 967
    .end local v15           #childHeightMeasureSpec:I
    .end local v16           #childWidthMeasureSpec:I
    .end local v19           #contentInsetsChanged:Z
    .end local v24           #focusChangedDueToTouchMode:Z
    .end local v30           #height:I
    .end local v34           #initialized:Z
    .end local v39           #measureAgain:Z
    .end local v53           #width:I
    :cond_4b1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    move/from16 v22, v0

    .line 968
    .local v22, didLayout:Z
    if-nez v22, :cond_4bd

    iget-boolean v6, v13, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v6, :cond_75b

    :cond_4bd
    const/4 v6, 0x1

    move/from16 v48, v6

    .line 970
    .local v48, triggerGlobalLayoutListener:Z
    :goto_4c0
    if-eqz v22, :cond_584

    .line 971
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    .line 972
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mScrollMayChange:Z

    .line 976
    const-wide/16 v46, 0x0

    .line 980
    .local v46, startTime:J
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mMeasuredWidth:I

    move v8, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mMeasuredHeight:I

    move v9, v0

    move-object/from16 v0, v31

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 997
    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_584

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v6, v0

    move-object/from16 v0, v31

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v8, v0

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v9, v0

    const/4 v10, 0x0

    aget v9, v9, v10

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mRight:I

    move v10, v0

    add-int/2addr v9, v10

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v10, v0

    sub-int/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v10, v0

    const/4 v11, 0x1

    aget v10, v10, v11

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v11, v0

    add-int/2addr v10, v11

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mTop:I

    move v11, v0

    sub-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Region;->set(IIII)Z

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v6, v0

    move-object/from16 v0, v31

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v6, v0

    if-eqz v6, :cond_558

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    .line 1010
    :cond_558
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_584

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1014
    :try_start_575
    sget-object v6, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v8, v0

    invoke-interface {v6, v7, v8}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_584
    .catch Landroid/os/RemoteException; {:try_start_575 .. :try_end_584} :catch_78d

    .line 1027
    .end local v46           #startTime:J
    :cond_584
    :goto_584
    if-eqz v48, :cond_58e

    .line 1028
    const/4 v6, 0x0

    iput-boolean v6, v13, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1029
    iget-object v6, v13, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 1032
    :cond_58e
    if-eqz v17, :cond_630

    .line 1033
    move-object v0, v13

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v35, v0

    .line 1034
    .local v35, insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    iget-object v6, v13, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object v0, v6

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    .line 1035
    .local v27, givenContent:Landroid/graphics/Rect;
    iget-object v6, v13, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object v0, v6

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    .line 1036
    .local v28, givenVisible:Landroid/graphics/Rect;
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move v0, v6

    move-object/from16 v1, v28

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move v0, v6

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move v0, v6

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move v0, v6

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move v0, v6

    move-object/from16 v1, v27

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1039
    iget-object v6, v13, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object v0, v6

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 1040
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 1041
    .local v18, contentInsets:Landroid/graphics/Rect;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    move-object/from16 v51, v0

    .line 1042
    .local v51, visibleInsets:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v6, v0

    if-eqz v6, :cond_5ff

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v18

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisbileInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v51

    .line 1046
    :cond_5ff
    if-nez v37, :cond_60f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_630

    .line 1047
    :cond_60f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 1049
    :try_start_61a
    sget-object v6, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v7, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    move v8, v0

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    move-object/from16 v3, v18

    move-object/from16 v4, v51

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_630
    .catch Landroid/os/RemoteException; {:try_start_61a .. :try_end_630} :catch_78a

    .line 1056
    .end local v18           #contentInsets:Landroid/graphics/Rect;
    .end local v27           #givenContent:Landroid/graphics/Rect;
    .end local v28           #givenVisible:Landroid/graphics/Rect;
    .end local v35           #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .end local v51           #visibleInsets:Landroid/graphics/Rect;
    :cond_630
    :goto_630
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-eqz v6, :cond_665

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    if-eqz v6, :cond_665

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-nez v6, :cond_760

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/View;->requestFocus(I)Z

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 1074
    :cond_665
    :goto_665
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFirst:Z

    .line 1075
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mWillDrawSoon:Z

    .line 1076
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mNewSurfaceNeeded:Z

    .line 1077
    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mViewVisibility:I

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v6, :cond_6d8

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v6}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v33

    .line 1082
    .local v33, imTarget:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    move v6, v0

    move/from16 v0, v33

    move v1, v6

    if-eq v0, v1, :cond_6d8

    .line 1083
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    .line 1084
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 1085
    .local v5, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_6d8

    if-eqz v33, :cond_6d8

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v8, v0

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mHasHadWindowFocus:Z

    move v9, v0

    if-nez v9, :cond_770

    const/4 v9, 0x1

    :goto_6ce
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v10, v0

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 1094
    .end local v5           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v33           #imTarget:Z
    :cond_6d8
    iget-object v6, v13, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    move-result v14

    .line 1096
    .local v14, cancelDraw:Z
    if-nez v14, :cond_773

    if-nez v40, :cond_773

    .line 1097
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    .line 1098
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/view/ViewRoot;->draw(Z)V

    .line 1100
    and-int/lit8 v6, v44, 0x2

    if-nez v6, :cond_6fa

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mReportNextDraw:Z

    move v6, v0

    if-eqz v6, :cond_f

    .line 1105
    :cond_6fa
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mReportNextDraw:Z

    .line 1107
    :try_start_700
    sget-object v6, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v7, v0

    invoke-interface {v6, v7}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_70a
    .catch Landroid/os/RemoteException; {:try_start_700 .. :try_end_70a} :catch_70c

    goto/16 :goto_f

    .line 1108
    :catch_70c
    move-exception v6

    goto/16 :goto_f

    .line 801
    .end local v14           #cancelDraw:Z
    .end local v17           #computesInternalInsets:Z
    .end local v22           #didLayout:Z
    .end local v37           #insetsPending:Z
    .end local v44           #relayoutResult:I
    .end local v48           #triggerGlobalLayoutListener:Z
    .end local v55           #windowShouldResize:Z
    :cond_70f
    const/4 v6, 0x0

    move/from16 v55, v6

    goto/16 :goto_2b2

    .line 821
    .restart local v17       #computesInternalInsets:Z
    .restart local v37       #insetsPending:Z
    .restart local v44       #relayoutResult:I
    .restart local v55       #windowShouldResize:Z
    :cond_714
    const/4 v6, 0x0

    move/from16 v37, v6

    goto/16 :goto_2db

    .line 859
    .restart local v19       #contentInsetsChanged:Z
    .restart local v23       #fl:I
    .restart local v29       #hadSurface:Z
    .restart local v34       #initialized:Z
    :cond_719
    const/4 v6, 0x0

    move/from16 v19, v6

    goto/16 :goto_343

    .line 861
    :cond_71e
    const/4 v6, 0x0

    move/from16 v52, v6

    goto/16 :goto_358

    .line 889
    .restart local v52       #visibleInsetsChanged:Z
    :cond_723
    const/4 v6, 0x0

    move/from16 v34, v6

    goto/16 :goto_3b3

    .line 892
    :cond_728
    :try_start_728
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-nez v6, :cond_3b3

    .line 895
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mLastScrolledFocus:Landroid/view/View;

    .line 896
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mCurScrollY:I

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mScrollY:I

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object v6, v0

    if-eqz v6, :cond_3b3

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V
    :try_end_753
    .catch Landroid/os/RemoteException; {:try_start_728 .. :try_end_753} :catch_755

    goto/16 :goto_3b3

    .line 901
    .end local v23           #fl:I
    .end local v29           #hadSurface:Z
    .end local v52           #visibleInsetsChanged:Z
    :catch_755
    move-exception v6

    goto/16 :goto_3b3

    .line 920
    :cond_758
    const/4 v6, 0x0

    goto/16 :goto_3f8

    .line 968
    .end local v19           #contentInsetsChanged:Z
    .end local v34           #initialized:Z
    .restart local v22       #didLayout:Z
    :cond_75b
    const/4 v6, 0x0

    move/from16 v48, v6

    goto/16 :goto_4c0

    .line 1067
    .restart local v48       #triggerGlobalLayoutListener:Z
    :cond_760
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    goto/16 :goto_665

    .line 1087
    .restart local v5       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v33       #imTarget:Z
    :cond_770
    const/4 v9, 0x0

    goto/16 :goto_6ce

    .line 1114
    .end local v5           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v33           #imTarget:Z
    .restart local v14       #cancelDraw:Z
    :cond_773
    and-int/lit8 v6, v44, 0x2

    if-eqz v6, :cond_77d

    .line 1115
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mReportNextDraw:Z

    .line 1117
    :cond_77d
    if-eqz v26, :cond_785

    .line 1118
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    .line 1121
    :cond_785
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    goto/16 :goto_f

    .line 1051
    .end local v14           #cancelDraw:Z
    .restart local v18       #contentInsets:Landroid/graphics/Rect;
    .restart local v27       #givenContent:Landroid/graphics/Rect;
    .restart local v28       #givenVisible:Landroid/graphics/Rect;
    .restart local v35       #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v51       #visibleInsets:Landroid/graphics/Rect;
    :catch_78a
    move-exception v6

    goto/16 :goto_630

    .line 1015
    .end local v18           #contentInsets:Landroid/graphics/Rect;
    .end local v27           #givenContent:Landroid/graphics/Rect;
    .end local v28           #givenVisible:Landroid/graphics/Rect;
    .end local v35           #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .end local v51           #visibleInsets:Landroid/graphics/Rect;
    .restart local v46       #startTime:J
    :catch_78d
    move-exception v6

    goto/16 :goto_584
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I
    .registers 18
    .parameter "params"
    .parameter "viewVisibility"
    .parameter "insetsPending"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2404
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v11, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 2405
    .local v11, appScale:F
    const/4 v13, 0x0

    .line 2406
    .local v13, restore:Z
    if-eqz p1, :cond_14

    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_14

    .line 2407
    const/4 v13, 0x1

    .line 2408
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 2409
    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 2411
    :cond_14
    if-eqz p1, :cond_16

    .line 2414
    :cond_16
    sget-object v0, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    iget v2, v2, Landroid/view/View;->mMeasuredWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v11

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v3, v2

    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    iget v2, v2, Landroid/view/View;->mMeasuredHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v11

    const/high16 v4, 0x3f00

    add-float/2addr v2, v4

    float-to-int v4, v2

    iget-object v7, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v10, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v2, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-interface/range {v0 .. v10}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/Surface;)I

    move-result v12

    .line 2420
    .local v12, relayoutResult:I
    if-eqz v13, :cond_44

    .line 2421
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 2424
    :cond_44
    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_5d

    .line 2425
    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v1, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 2426
    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 2427
    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 2429
    :cond_5d
    return v12
.end method

.method private sendAccessibilityEvents()V
    .registers 4

    .prologue
    .line 2606
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_11

    .line 2614
    :cond_10
    :goto_10
    return-void

    .line 2609
    :cond_11
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2610
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2611
    .local v0, focusedView:Landroid/view/View;
    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eq v0, v1, :cond_10

    .line 2612
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_10
.end method


# virtual methods
.method public bringChildToFront(Landroid/view/View;)V
    .registers 2
    .parameter "child"

    .prologue
    .line 599
    return-void
.end method

.method checkThread()V
    .registers 3

    .prologue
    .line 2631
    iget-object v0, p0, Landroid/view/ViewRoot;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_10

    .line 2632
    new-instance v0, Landroid/view/ViewRoot$CalledFromWrongThreadException;

    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Landroid/view/ViewRoot$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2635
    :cond_10
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .registers 2
    .parameter "child"

    .prologue
    .line 2624
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .registers 6
    .parameter "child"

    .prologue
    const/4 v3, 0x0

    .line 1502
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 1504
    iget-object v0, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 1507
    .local v0, oldFocus:Landroid/view/View;
    iput-object v3, p0, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 1508
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_27

    .line 1510
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1511
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 1516
    :cond_26
    :goto_26
    return-void

    .line 1513
    :cond_27
    if-eqz v0, :cond_26

    .line 1514
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    goto :goto_26
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 2621
    return-void
.end method

.method public debug()V
    .registers 2

    .prologue
    .line 2485
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    .line 2486
    return-void
.end method

.method public die(Z)V
    .registers 6
    .parameter "immediate"

    .prologue
    const/4 v3, 0x0

    .line 2489
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 2491
    monitor-enter p0

    .line 2492
    :try_start_5
    iget-boolean v2, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v2, :cond_34

    iget-boolean v2, p0, Landroid/view/ViewRoot;->mFirst:Z

    if-nez v2, :cond_34

    .line 2493
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 2494
    .local v0, viewVisibility:I
    iget v2, p0, Landroid/view/ViewRoot;->mViewVisibility:I

    if-eq v2, v0, :cond_42

    const/4 v2, 0x1

    move v1, v2

    .line 2495
    .local v1, viewVisibilityChanged:Z
    :goto_19
    iget-boolean v2, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_4e

    if-nez v2, :cond_1f

    if-eqz v1, :cond_31

    .line 2500
    :cond_1f
    :try_start_1f
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Landroid/view/ViewRoot;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_31

    .line 2502
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_4e
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_31} :catch_51

    .line 2508
    :cond_31
    :goto_31
    const/4 v2, 0x0

    :try_start_32
    iput-object v2, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    .line 2510
    .end local v0           #viewVisibility:I
    .end local v1           #viewVisibilityChanged:Z
    :cond_34
    iget-boolean v2, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v2, :cond_40

    .line 2511
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/ViewRoot;->mAdded:Z

    .line 2512
    if-eqz p1, :cond_44

    .line 2513
    invoke-virtual {p0}, Landroid/view/ViewRoot;->dispatchDetachedFromWindow()V

    .line 2518
    :cond_40
    :goto_40
    monitor-exit p0

    .line 2519
    return-void

    .restart local v0       #viewVisibility:I
    :cond_42
    move v1, v3

    .line 2494
    goto :goto_19

    .line 2514
    .end local v0           #viewVisibility:I
    :cond_44
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v2, :cond_40

    .line 2515
    const/16 v2, 0x3e9

    invoke-virtual {p0, v2}, Landroid/view/ViewRoot;->sendEmptyMessage(I)Z

    goto :goto_40

    .line 2518
    :catchall_4e
    move-exception v2

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_32 .. :try_end_50} :catchall_4e

    throw v2

    .line 2504
    .restart local v0       #viewVisibility:I
    .restart local v1       #viewVisibilityChanged:Z
    :catch_51
    move-exception v2

    goto :goto_31
.end method

.method public dispatchAppVisibility(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 2583
    const/16 v1, 0x3f0

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2584
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :goto_9
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2585
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 2586
    return-void

    .line 2584
    :cond_f
    const/4 v1, 0x0

    goto :goto_9
.end method

.method dispatchDetachedFromWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1553
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1554
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 1557
    :cond_a
    iput-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .line 1558
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 1560
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mUseGL:Z

    if-eqz v0, :cond_17

    .line 1561
    invoke-direct {p0}, Landroid/view/ViewRoot;->destroyGL()V

    .line 1565
    :cond_17
    :try_start_17
    sget-object v0, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1e} :catch_1f

    .line 1568
    :goto_1e
    return-void

    .line 1566
    :catch_1f
    move-exception v0

    goto :goto_1e
.end method

.method public dispatchFinishedEvent(IZ)V
    .registers 5
    .parameter "seq"
    .parameter "handled"

    .prologue
    .line 2522
    const/16 v1, 0x3f2

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2523
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2524
    if-eqz p2, :cond_11

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2525
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 2526
    return-void

    .line 2524
    :cond_11
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public dispatchGetNewSurface()V
    .registers 3

    .prologue
    .line 2589
    const/16 v1, 0x3f1

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2590
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 2591
    return-void
.end method

.method public dispatchKey(Landroid/view/KeyEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 2548
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_6

    .line 2561
    :cond_6
    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2562
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2567
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewRoot;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2568
    return-void
.end method

.method public dispatchPointer(Landroid/view/MotionEvent;J)V
    .registers 6
    .parameter "event"
    .parameter "eventTime"

    .prologue
    .line 2571
    const/16 v1, 0x3ee

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2572
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2573
    invoke-virtual {p0, v0, p2, p3}, Landroid/view/ViewRoot;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2574
    return-void
.end method

.method public dispatchResized(IILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 10
    .parameter "w"
    .parameter "h"
    .parameter "coveredInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"

    .prologue
    .line 2534
    if-eqz p5, :cond_41

    const/16 v1, 0x3eb

    :goto_4
    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2535
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_24

    .line 2536
    iget-object v1, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, p3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 2537
    iget-object v1, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, p4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 2538
    int-to-float v1, p1

    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v2, v2, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    mul-float/2addr v1, v2

    float-to-int p1, v1

    .line 2539
    int-to-float v1, p2

    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v2, v2, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    mul-float/2addr v1, v2

    float-to-int p2, v1

    .line 2541
    :cond_24
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2542
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2543
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Rect;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2544
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 2545
    return-void

    .line 2534
    .end local v0           #msg:Landroid/os/Message;
    :cond_41
    const/16 v1, 0x3ea

    goto :goto_4
.end method

.method public dispatchTrackball(Landroid/view/MotionEvent;J)V
    .registers 6
    .parameter "event"
    .parameter "eventTime"

    .prologue
    .line 2577
    const/16 v1, 0x3ef

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2578
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2579
    invoke-virtual {p0, v0, p2, p3}, Landroid/view/ViewRoot;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2580
    return-void
.end method

.method enqueuePendingEvent(Ljava/lang/Object;Z)I
    .registers 5
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 2246
    iget v1, p0, Landroid/view/ViewRoot;->mPendingEventSeq:I

    add-int/lit8 v0, v1, 0x1

    .line 2247
    .local v0, seq:I
    if-gez v0, :cond_7

    const/4 v0, 0x0

    .line 2248
    :cond_7
    iput v0, p0, Landroid/view/ViewRoot;->mPendingEventSeq:I

    .line 2249
    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2250
    if-eqz p2, :cond_12

    move v1, v0

    :goto_11
    return v1

    :cond_12
    neg-int v1, v0

    goto :goto_11
.end method

.method ensureTouchMode(Z)Z
    .registers 4
    .parameter "inTouchMode"

    .prologue
    .line 1852
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v1, p1, :cond_8

    const/4 v1, 0x0

    .line 1862
    :goto_7
    return v1

    .line 1856
    :cond_8
    :try_start_8
    sget-object v1, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v1, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_12

    .line 1862
    invoke-direct {p0, p1}, Landroid/view/ViewRoot;->ensureTouchModeLocally(Z)Z

    move-result v1

    goto :goto_7

    .line 1857
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 1858
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 237
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 238
    sget-wide v0, Landroid/view/ViewRoot;->sInstanceCount:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    sput-wide v0, Landroid/view/ViewRoot;->sInstanceCount:J

    .line 239
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 4
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 2477
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 2478
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_b

    .line 2479
    const/4 v0, 0x0

    .line 2481
    .end local p0
    :goto_a
    return-object v0

    .restart local p0
    :cond_b
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object p0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_a
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 1520
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 1522
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1523
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1538
    :cond_12
    :goto_12
    return-void

    .line 1528
    :cond_13
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 1529
    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_3d

    const/4 v1, 0x1

    move v0, v1

    .line 1533
    .local v0, descendantsHaveDibsOnFocus:Z
    :goto_2f
    if-eqz v0, :cond_12

    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    invoke-static {p1, v1}, Landroid/view/ViewRoot;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1535
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_12

    .line 1529
    .end local v0           #descendantsHaveDibsOnFocus:Z
    :cond_3d
    const/4 v1, 0x0

    move v0, v1

    goto :goto_2f
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .registers 7
    .parameter "child"
    .parameter "r"
    .parameter "offset"

    .prologue
    const/4 v2, 0x0

    .line 590
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eq p1, v0, :cond_d

    .line 591
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "child is not mine, honest!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_d
    iget v0, p0, Landroid/view/ViewRoot;->mWidth:I

    iget v1, p0, Landroid/view/ViewRoot;->mHeight:I

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0
.end method

.method getHostVisibility()I
    .registers 2

    .prologue
    .line 616
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x8

    goto :goto_a
.end method

.method final getLocation()Landroid/view/WindowLeaked;
    .registers 2

    .prologue
    .line 500
    iget-object v0, p0, Landroid/view/ViewRoot;->mLocation:Landroid/view/WindowLeaked;

    return-object v0
.end method

.method public getParent()Landroid/view/ViewParent;
    .registers 2

    .prologue
    .line 581
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 496
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected getWindowFrame()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 2627
    iget-object v0, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method handleAppVisibility(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 530
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    if-eq v0, p1, :cond_9

    .line 531
    iput-boolean p1, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    .line 532
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 534
    :cond_9
    return-void
.end method

.method handleFinishedEvent(IZ)V
    .registers 8
    .parameter "seq"
    .parameter "handled"

    .prologue
    .line 2296
    invoke-virtual {p0, p1}, Landroid/view/ViewRoot;->retrievePendingEvent(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 2299
    .local v0, event:Landroid/view/KeyEvent;
    if-eqz v0, :cond_11

    .line 2300
    if-ltz p1, :cond_12

    const/4 v2, 0x1

    move v1, v2

    .line 2301
    .local v1, sendDone:Z
    :goto_c
    if-nez p2, :cond_15

    .line 2302
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRoot;->deliverKeyEventToViewHierarchy(Landroid/view/KeyEvent;Z)V

    .line 2317
    .end local v1           #sendDone:Z
    :cond_11
    :goto_11
    return-void

    .line 2300
    :cond_12
    const/4 v2, 0x0

    move v1, v2

    goto :goto_c

    .line 2304
    .restart local v1       #sendDone:Z
    :cond_15
    if-eqz v1, :cond_21

    .line 2308
    :try_start_17
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_11

    .line 2309
    :catch_1f
    move-exception v2

    goto :goto_11

    .line 2312
    :cond_21
    const-string v2, "ViewRoot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleFinishedEvent(seq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " handled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ev="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") neither delivering nor finishing key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method handleGetNewSurface()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 537
    iput-boolean v0, p0, Landroid/view/ViewRoot;->mNewSurfaceNeeded:Z

    .line 538
    iput-boolean v0, p0, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    .line 539
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 540
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 30
    .parameter "msg"

    .prologue
    .line 1600
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v3, v0

    sparse-switch v3, :sswitch_data_438

    .line 1838
    .end local p0
    .end local p1
    :cond_8
    :goto_8
    return-void

    .line 1602
    .restart local p0
    .restart local p1
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_8

    .line 1605
    .restart local p0
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 1606
    .local v24, info:Landroid/view/View$AttachInfo$InvalidateInfo;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    move-object v3, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    move v4, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    move v5, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    move v6, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    move v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    .line 1607
    invoke-virtual/range {v24 .. v24}, Landroid/view/View$AttachInfo$InvalidateInfo;->release()V

    goto :goto_8

    .line 1610
    .end local v24           #info:Landroid/view/View$AttachInfo$InvalidateInfo;
    :sswitch_3d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mProfile:Z

    move v3, v0

    if-eqz v3, :cond_49

    .line 1611
    const-string v3, "ViewRoot"

    invoke-static {v3}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 1614
    :cond_49
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRoot;->performTraversals()V

    .line 1616
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mProfile:Z

    move v3, v0

    if-eqz v3, :cond_8

    .line 1617
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 1618
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mProfile:Z

    goto :goto_8

    .line 1622
    :sswitch_5d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v4, v0

    if-eqz v4, :cond_72

    const/4 v4, 0x1

    :goto_6a
    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRoot;->handleFinishedEvent(IZ)V

    goto :goto_8

    :cond_72
    const/4 v4, 0x0

    goto :goto_6a

    .line 1628
    :sswitch_74
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v3

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_8

    .line 1631
    .restart local p1
    :sswitch_86
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/view/MotionEvent;

    .line 1634
    .local v20, event:Landroid/view/MotionEvent;
    if-nez v20, :cond_16c

    .line 1636
    :try_start_90
    sget-object v3, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v4, v0

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->getPendingPointerMove(Landroid/view/IWindow;)Landroid/view/MotionEvent;
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_9a} :catch_435

    move-result-object v20

    .line 1639
    :goto_9b
    const/16 v17, 0x1

    .line 1643
    .local v17, didFinish:Z
    :goto_9d
    if-eqz v20, :cond_b1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v3, v0

    if-eqz v3, :cond_b1

    .line 1644
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V

    .line 1648
    :cond_b1
    :try_start_b1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    if-eqz v3, :cond_159

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAdded:Z

    move v3, v0

    if-eqz v3, :cond_159

    if-eqz v20, :cond_159

    .line 1651
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_17c

    const/4 v3, 0x1

    move/from16 v25, v3

    .line 1652
    .local v25, isDown:Z
    :goto_ca
    if-eqz v25, :cond_d3

    .line 1653
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    .line 1658
    :cond_d3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mCurScrollY:I

    move v4, v0

    int-to-float v4, v4

    move-object/from16 v0, v20

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1659
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    .line 1660
    .local v21, handled:Z
    if-nez v21, :cond_159

    if-eqz v25, :cond_159

    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mViewConfiguration:Landroid/view/ViewConfiguration;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v19

    .line 1663
    .local v19, edgeSlop:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    .line 1664
    .local v18, edgeFlags:I
    const/16 v7, 0x21

    .line 1665
    .local v7, direction:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v5, v3

    .line 1666
    .local v5, x:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v6, v3

    .line 1667
    .local v6, y:I
    const/4 v3, 0x2

    new-array v8, v3, [I

    .line 1669
    .local v8, deltas:[I
    and-int/lit8 v3, v18, 0x1

    if-eqz v3, :cond_18f

    .line 1670
    const/16 v7, 0x82

    .line 1671
    and-int/lit8 v3, v18, 0x4

    if-eqz v3, :cond_181

    .line 1672
    const/4 v3, 0x0

    aput v19, v8, v3

    .line 1673
    add-int v5, v5, v19

    .line 1693
    :cond_11c
    :goto_11c
    if-eqz v18, :cond_159

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_159

    .line 1694
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual/range {v3 .. v8}, Landroid/view/FocusFinder;->findNearestTouchable(Landroid/view/ViewGroup;III[I)Landroid/view/View;

    move-result-object v26

    .line 1696
    .local v26, nearest:Landroid/view/View;
    if-eqz v26, :cond_159

    .line 1697
    const/4 v3, 0x0

    aget v3, v8, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v4, v8, v4

    int-to-float v4, v4

    move-object/from16 v0, v20

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1698
    const/4 v3, 0x0

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_159
    .catchall {:try_start_b1 .. :try_end_159} :catchall_1bf

    .line 1705
    .end local v5           #x:I
    .end local v6           #y:I
    .end local v7           #direction:I
    .end local v8           #deltas:[I
    .end local v18           #edgeFlags:I
    .end local v19           #edgeSlop:I
    .end local v21           #handled:Z
    .end local v25           #isDown:Z
    .end local v26           #nearest:Landroid/view/View;
    :cond_159
    if-nez v17, :cond_165

    .line 1707
    :try_start_15b
    sget-object v3, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v4, v0

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_165
    .catch Landroid/os/RemoteException; {:try_start_15b .. :try_end_165} :catch_42f

    .line 1711
    :cond_165
    :goto_165
    if-eqz v20, :cond_8

    .line 1712
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_8

    .line 1641
    .end local v17           #didFinish:Z
    :cond_16c
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_178

    const/4 v3, 0x1

    move/from16 v17, v3

    .restart local v17       #didFinish:Z
    :goto_176
    goto/16 :goto_9d

    .end local v17           #didFinish:Z
    :cond_178
    const/4 v3, 0x0

    move/from16 v17, v3

    goto :goto_176

    .line 1651
    .restart local v17       #didFinish:Z
    :cond_17c
    const/4 v3, 0x0

    move/from16 v25, v3

    goto/16 :goto_ca

    .line 1674
    .restart local v5       #x:I
    .restart local v6       #y:I
    .restart local v7       #direction:I
    .restart local v8       #deltas:[I
    .restart local v18       #edgeFlags:I
    .restart local v19       #edgeSlop:I
    .restart local v21       #handled:Z
    .restart local v25       #isDown:Z
    :cond_181
    and-int/lit8 v3, v18, 0x8

    if-eqz v3, :cond_11c

    .line 1675
    const/4 v3, 0x0

    move/from16 v0, v19

    neg-int v0, v0

    move v4, v0

    :try_start_18a
    aput v4, v8, v3

    .line 1676
    sub-int v5, v5, v19

    goto :goto_11c

    .line 1678
    :cond_18f
    and-int/lit8 v3, v18, 0x2

    if-eqz v3, :cond_1af

    .line 1679
    const/16 v7, 0x21

    .line 1680
    and-int/lit8 v3, v18, 0x4

    if-eqz v3, :cond_1a0

    .line 1681
    const/4 v3, 0x0

    aput v19, v8, v3

    .line 1682
    add-int v5, v5, v19

    goto/16 :goto_11c

    .line 1683
    :cond_1a0
    and-int/lit8 v3, v18, 0x8

    if-eqz v3, :cond_11c

    .line 1684
    const/4 v3, 0x0

    move/from16 v0, v19

    neg-int v0, v0

    move v4, v0

    aput v4, v8, v3
    :try_end_1ab
    .catchall {:try_start_18a .. :try_end_1ab} :catchall_1bf

    .line 1685
    sub-int v5, v5, v19

    goto/16 :goto_11c

    .line 1687
    :cond_1af
    and-int/lit8 v3, v18, 0x4

    if-eqz v3, :cond_1b7

    .line 1688
    const/16 v7, 0x42

    goto/16 :goto_11c

    .line 1689
    :cond_1b7
    and-int/lit8 v3, v18, 0x8

    if-eqz v3, :cond_11c

    .line 1690
    const/16 v7, 0x11

    goto/16 :goto_11c

    .line 1705
    .end local v5           #x:I
    .end local v6           #y:I
    .end local v7           #direction:I
    .end local v8           #deltas:[I
    .end local v18           #edgeFlags:I
    .end local v19           #edgeSlop:I
    .end local v21           #handled:Z
    .end local v25           #isDown:Z
    :catchall_1bf
    move-exception v3

    if-nez v17, :cond_1cc

    .line 1707
    :try_start_1c2
    sget-object v4, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v5, v0

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_1cc
    .catch Landroid/os/RemoteException; {:try_start_1c2 .. :try_end_1cc} :catch_432

    .line 1711
    :cond_1cc
    :goto_1cc
    if-eqz v20, :cond_1d1

    .line 1712
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    .line 1705
    :cond_1d1
    throw v3

    .line 1720
    .end local v17           #didFinish:Z
    .end local v20           #event:Landroid/view/MotionEvent;
    :sswitch_1d2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/view/MotionEvent;

    invoke-direct/range {p0 .. p1}, Landroid/view/ViewRoot;->deliverTrackballEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_8

    .line 1723
    .restart local p1
    :sswitch_1df
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v3, v0

    if-eqz v3, :cond_1ef

    const/4 v3, 0x1

    :goto_1e7
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot;->handleAppVisibility(Z)V

    goto/16 :goto_8

    :cond_1ef
    const/4 v3, 0x0

    goto :goto_1e7

    .line 1726
    :sswitch_1f1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->handleGetNewSurface()V

    goto/16 :goto_8

    .line 1729
    :sswitch_1f6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [Landroid/graphics/Rect;

    check-cast v3, [Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget-object v16, v3, v4

    .line 1730
    .local v16, coveredInsets:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [Landroid/graphics/Rect;

    check-cast v3, [Landroid/graphics/Rect;

    const/4 v4, 0x1

    aget-object v27, v3, v4

    .line 1732
    .local v27, visibleInsets:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    if-ne v3, v4, :cond_24a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v4, v0

    if-ne v3, v4, :cond_24a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1739
    .end local v16           #coveredInsets:Landroid/graphics/Rect;
    .end local v27           #visibleInsets:Landroid/graphics/Rect;
    :cond_24a
    :sswitch_24a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAdded:Z

    move v3, v0

    if-eqz v3, :cond_8

    .line 1740
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1741
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v4, v0

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [Landroid/graphics/Rect;

    check-cast v3, [Landroid/graphics/Rect;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [Landroid/graphics/Rect;

    check-cast v3, [Landroid/graphics/Rect;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1746
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v3, v0

    const/16 v4, 0x3eb

    if-ne v3, v4, :cond_2b0

    .line 1747
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mReportNextDraw:Z

    .line 1749
    :cond_2b0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->requestLayout()V

    goto/16 :goto_8

    .line 1753
    :sswitch_2b5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAdded:Z

    move v3, v0

    if-eqz v3, :cond_8

    .line 1754
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v3, v0

    if-eqz v3, :cond_3cc

    const/4 v3, 0x1

    move/from16 v22, v3

    .line 1755
    .local v22, hasWindowFocus:Z
    :goto_2c6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    move/from16 v0, v22

    move-object v1, v3

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 1756
    if-eqz v22, :cond_32a

    .line 1757
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v3, v0

    if-eqz v3, :cond_3d1

    const/4 v3, 0x1

    move/from16 v23, v3

    .line 1758
    .local v23, inTouchMode:Z
    :goto_2dc
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/view/ViewRoot;->ensureTouchModeLocally(Z)Z

    .line 1760
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mGlWanted:Z

    move v3, v0

    if-eqz v3, :cond_32a

    .line 1761
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRoot;->checkEglErrors()V

    .line 1763
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mGlWanted:Z

    move v3, v0

    if-eqz v3, :cond_32a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mUseGL:Z

    move v3, v0

    if-nez v3, :cond_32a

    .line 1764
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRoot;->initializeGL()V

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    move-object v3, v0

    if-eqz v3, :cond_32a

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v3, v0

    iget v15, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 1767
    .local v15, appScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v4, v0

    int-to-float v4, v4

    mul-float/2addr v4, v15

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v5, v0

    int-to-float v5, v5

    mul-float/2addr v5, v15

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->setViewport(II)V

    .line 1775
    .end local v15           #appScale:F
    .end local v23           #inTouchMode:Z
    :cond_32a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v3}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    .line 1778
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v9

    .line 1779
    .local v9, imm:Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    if-eqz v3, :cond_363

    .line 1780
    if-eqz v22, :cond_358

    if-eqz v9, :cond_358

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    move v3, v0

    if-eqz v3, :cond_358

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    invoke-virtual {v9, v3}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 1783
    :cond_358
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 1788
    :cond_363
    if-eqz v22, :cond_3be

    .line 1789
    if-eqz v9, :cond_396

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    move v3, v0

    if-eqz v3, :cond_396

    .line 1790
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget v12, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mHasHadWindowFocus:Z

    move v3, v0

    if-nez v3, :cond_3d6

    const/4 v3, 0x1

    move v13, v3

    :goto_38c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget v14, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v9 .. v14}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 1796
    :cond_396
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, -0x101

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1798
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move v3, v0

    and-int/lit16 v3, v3, -0x101

    move v0, v3

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1801
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mHasHadWindowFocus:Z

    .line 1804
    :cond_3be
    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v3, v0

    if-eqz v3, :cond_8

    .line 1805
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRoot;->sendAccessibilityEvents()V

    goto/16 :goto_8

    .line 1754
    .end local v9           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v22           #hasWindowFocus:Z
    .restart local p1
    :cond_3cc
    const/4 v3, 0x0

    move/from16 v22, v3

    goto/16 :goto_2c6

    .line 1757
    .restart local v22       #hasWindowFocus:Z
    :cond_3d1
    const/4 v3, 0x0

    move/from16 v23, v3

    goto/16 :goto_2dc

    .line 1790
    .restart local v9       #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_3d6
    const/4 v3, 0x0

    move v13, v3

    goto :goto_38c

    .line 1810
    .end local v9           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v22           #hasWindowFocus:Z
    :sswitch_3d9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->dispatchDetachedFromWindow()V

    goto/16 :goto_8

    .line 1816
    :sswitch_3de
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/view/KeyEvent;

    .line 1817
    .local v20, event:Landroid/view/KeyEvent;
    invoke-virtual/range {v20 .. v20}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3fb

    .line 1820
    invoke-virtual/range {v20 .. v20}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, -0x9

    move-object/from16 v0, v20

    move v1, v3

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v20

    .line 1823
    :cond_3fb
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v3

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEventToViewHierarchy(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_8

    .line 1826
    .end local v20           #event:Landroid/view/KeyEvent;
    .restart local p1
    :sswitch_40e
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v9

    .line 1827
    .restart local v9       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v9, :cond_8

    .line 1828
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputConnection;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_8

    .line 1832
    .end local v9           #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local p0
    :sswitch_424
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v9

    .line 1833
    .restart local v9       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v9, :cond_8

    .line 1834
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    goto/16 :goto_8

    .line 1708
    .end local v9           #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v17       #didFinish:Z
    .local v20, event:Landroid/view/MotionEvent;
    :catch_42f
    move-exception v3

    goto/16 :goto_165

    :catch_432
    move-exception v4

    goto/16 :goto_1cc

    .line 1637
    .end local v17           #didFinish:Z
    :catch_435
    move-exception v3

    goto/16 :goto_9b

    .line 1600
    :sswitch_data_438
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_15
        0x3e8 -> :sswitch_3d
        0x3e9 -> :sswitch_3d9
        0x3ea -> :sswitch_1f6
        0x3eb -> :sswitch_24a
        0x3ec -> :sswitch_2b5
        0x3ed -> :sswitch_74
        0x3ee -> :sswitch_86
        0x3ef -> :sswitch_1d2
        0x3f0 -> :sswitch_1df
        0x3f1 -> :sswitch_1f1
        0x3f2 -> :sswitch_5d
        0x3f3 -> :sswitch_3de
        0x3f4 -> :sswitch_40e
        0x3f5 -> :sswitch_424
    .end sparse-switch
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 6
    .parameter "child"
    .parameter "dirty"

    .prologue
    const/4 v2, -0x1

    .line 559
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 561
    iget v0, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_30

    .line 562
    :cond_c
    iget-object v0, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 563
    iget-object p2, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    .line 564
    iget v0, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    if-eqz v0, :cond_1e

    .line 565
    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 567
    :cond_1e
    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_27

    .line 568
    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 570
    :cond_27
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v0, :cond_30

    .line 571
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 574
    :cond_30
    iget-object v0, p0, Landroid/view/ViewRoot;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 575
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mWillDrawSoon:Z

    if-nez v0, :cond_3c

    .line 576
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 578
    :cond_3c
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 4
    .parameter "location"
    .parameter "dirty"

    .prologue
    const/4 v0, 0x0

    .line 585
    invoke-virtual {p0, v0, p2}, Landroid/view/ViewRoot;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 586
    return-object v0
.end method

.method public isLayoutRequested()Z
    .registers 2

    .prologue
    .line 555
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    return v0
.end method

.method public performHapticFeedback(IZ)Z
    .registers 6
    .parameter "effectId"
    .parameter "always"

    .prologue
    .line 2467
    :try_start_0
    sget-object v1, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v1, v2, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(Landroid/view/IWindow;IZ)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 2469
    :goto_8
    return v1

    .line 2468
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 2469
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public playSoundEffect(I)V
    .registers 6
    .parameter "effectId"

    .prologue
    .line 2436
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 2438
    invoke-direct {p0}, Landroid/view/ViewRoot;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 2440
    .local v0, audioManager:Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_4c

    .line 2457
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown effect id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not defined in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Landroid/view/SoundEffectConstants;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2442
    :pswitch_33
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 2455
    :goto_37
    return-void

    .line 2445
    :pswitch_38
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_37

    .line 2448
    :pswitch_3d
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_37

    .line 2451
    :pswitch_42
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_37

    .line 2454
    :pswitch_47
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_37

    .line 2440
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_33
        :pswitch_3d
        :pswitch_47
        :pswitch_42
        :pswitch_38
    .end packed-switch
.end method

.method public profile()V
    .registers 2

    .prologue
    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mProfile:Z

    .line 254
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 1541
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 1542
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_13

    .line 1543
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1544
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mWillDrawSoon:Z

    if-nez v0, :cond_13

    .line 1545
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 1548
    :cond_13
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1491
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 1492
    iget-object v0, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    if-eq v0, p2, :cond_13

    .line 1493
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 1494
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 1496
    :cond_13
    iput-object p2, p0, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    iput-object p2, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 1499
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 2643
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRoot;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .parameter "disallowIntercept"

    .prologue
    .line 2639
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 546
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    .line 548
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 549
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 1127
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 1128
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_12

    .line 1129
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 1132
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    .line 1134
    :cond_12
    return-void
.end method

.method retrievePendingEvent(I)Ljava/lang/Object;
    .registers 4
    .parameter "seq"

    .prologue
    .line 2254
    if-gez p1, :cond_3

    neg-int p1, p1

    .line 2255
    :cond_3
    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2256
    .local v0, event:Ljava/lang/Object;
    if-eqz v0, :cond_10

    .line 2257
    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2259
    :cond_10
    return-object v0
.end method

.method public scheduleTraversals()V
    .registers 2

    .prologue
    .line 602
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    if-nez v0, :cond_c

    .line 603
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    .line 604
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendEmptyMessage(I)Z

    .line 606
    :cond_c
    return-void
.end method

.method scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .registers 13
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1371
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1372
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 1373
    .local v1, ci:Landroid/graphics/Rect;
    iget-object v5, v0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 1374
    .local v5, vi:Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 1375
    .local v4, scrollY:I
    const/4 v3, 0x0

    .line 1377
    .local v3, handled:Z
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    if-gt v6, v7, :cond_22

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    if-gt v6, v7, :cond_22

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_22

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_41

    .line 1383
    :cond_22
    iget v4, p0, Landroid/view/ViewRoot;->mScrollY:I

    .line 1390
    iget-object v2, p0, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    .line 1395
    .local v2, focus:Landroid/view/View;
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_32

    .line 1396
    :cond_2e
    iput-object v8, p0, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    move v6, v9

    .line 1487
    .end local v2           #focus:Landroid/view/View;
    :goto_31
    return v6

    .line 1400
    .restart local v2       #focus:Landroid/view/View;
    :cond_32
    iget-object v6, p0, Landroid/view/ViewRoot;->mLastScrolledFocus:Landroid/view/View;

    if-eq v2, v6, :cond_37

    .line 1404
    const/4 p1, 0x0

    .line 1409
    :cond_37
    iget-object v6, p0, Landroid/view/ViewRoot;->mLastScrolledFocus:Landroid/view/View;

    if-ne v2, v6, :cond_67

    iget-boolean v6, p0, Landroid/view/ViewRoot;->mScrollMayChange:Z

    if-nez v6, :cond_67

    if-nez p1, :cond_67

    .line 1473
    .end local v2           #focus:Landroid/view/View;
    :cond_41
    :goto_41
    iget v6, p0, Landroid/view/ViewRoot;->mScrollY:I

    if-eq v4, v6, :cond_65

    .line 1476
    if-nez p2, :cond_df

    .line 1477
    iget-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    if-nez v6, :cond_58

    .line 1478
    new-instance v6, Landroid/widget/Scroller;

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    .line 1480
    :cond_58
    iget-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    iget v7, p0, Landroid/view/ViewRoot;->mScrollY:I

    iget v8, p0, Landroid/view/ViewRoot;->mScrollY:I

    sub-int v8, v4, v8

    invoke-virtual {v6, v9, v7, v9, v8}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1484
    :cond_63
    :goto_63
    iput v4, p0, Landroid/view/ViewRoot;->mScrollY:I

    :cond_65
    move v6, v3

    .line 1487
    goto :goto_31

    .line 1416
    .restart local v2       #focus:Landroid/view/View;
    :cond_67
    if-eqz v2, :cond_41

    .line 1420
    iput-object v2, p0, Landroid/view/ViewRoot;->mLastScrolledFocus:Landroid/view/View;

    .line 1421
    iput-boolean v9, p0, Landroid/view/ViewRoot;->mScrollMayChange:Z

    .line 1424
    iget-object v6, p0, Landroid/view/ViewRoot;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 1429
    if-nez p1, :cond_a5

    .line 1430
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1433
    iget-object v6, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v7}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1446
    :goto_85
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/ViewRoot;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 1450
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_ab

    .line 1467
    :cond_a3
    :goto_a3
    const/4 v3, 0x1

    goto :goto_41

    .line 1440
    :cond_a5
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_85

    .line 1456
    :cond_ab
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_be

    .line 1457
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v4

    sub-int/2addr v6, v7

    sub-int/2addr v4, v6

    goto :goto_a3

    .line 1460
    :cond_be
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_a3

    .line 1462
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    add-int/2addr v4, v6

    goto :goto_a3

    .line 1481
    .end local v2           #focus:Landroid/view/View;
    :cond_df
    iget-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    if-eqz v6, :cond_63

    .line 1482
    iget-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_63
.end method

.method setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .registers 8
    .parameter "attrs"
    .parameter "newView"

    .prologue
    .line 504
    monitor-enter p0

    .line 505
    :try_start_1
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 507
    .local v1, oldSoftInputMode:I
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x10

    and-int v0, v2, v3

    .line 509
    .local v0, compatibleWindowFlag:I
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 510
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 512
    if-eqz p2, :cond_22

    .line 513
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v2, p0, Landroid/view/ViewRoot;->mSoftInputMode:I

    .line 514
    invoke-virtual {p0}, Landroid/view/ViewRoot;->requestLayout()V

    .line 517
    :cond_22
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, 0xf0

    if-nez v2, :cond_35

    .line 519
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0xf1

    and-int/lit16 v4, v1, 0xf0

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 524
    :cond_35
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    .line 525
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 526
    monitor-exit p0

    .line 527
    return-void

    .line 526
    .end local v0           #compatibleWindowFlag:I
    .end local v1           #oldSoftInputMode:I
    :catchall_3d
    move-exception v2

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .registers 16
    .parameter "view"
    .parameter "attrs"
    .parameter "panelParentView"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v5, "Unable to add window -- token "

    const-string v5, "Unable to add window "

    .line 385
    monitor-enter p0

    .line 386
    :try_start_7
    iget-object v5, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-nez v5, :cond_1ed

    .line 387
    iput-object p1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .line 388
    iget-object v5, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, p2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 389
    iget-object p2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 390
    iget-object v5, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 391
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 392
    .local v0, compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v5

    iput-object v5, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 394
    iget-object v5, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v5, :cond_32

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 395
    :cond_32
    iget-object v5, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget-object v7, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setCompatibleDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 399
    :cond_3d
    const/4 v4, 0x0

    .line 400
    .local v4, restore:Z
    if-eqz p2, :cond_4d

    iget-object v5, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v5, :cond_4d

    .line 401
    const/4 v4, 0x1

    .line 402
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 403
    iget-object v5, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v5, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 407
    :cond_4d
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v5

    if-nez v5, :cond_5a

    .line 408
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x10

    or-int/2addr v5, v6

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 411
    :cond_5a
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v5, p0, Landroid/view/ViewRoot;->mSoftInputMode:I

    .line 412
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    .line 413
    iget-object v5, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object p1, v5, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 414
    iget-object v5, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v6, :cond_ed

    move v6, v10

    :goto_6c
    iput-boolean v6, v5, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 415
    iget-object v5, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v6, :cond_f0

    const/high16 v6, 0x3f80

    :goto_76
    iput v6, v5, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 417
    if-eqz p3, :cond_82

    .line 418
    iget-object v5, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v5, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 421
    :cond_82
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/view/ViewRoot;->mAdded:Z

    .line 427
    invoke-virtual {p0}, Landroid/view/ViewRoot;->requestLayout()V
    :try_end_88
    .catchall {:try_start_7 .. :try_end_88} :catchall_ea

    .line 429
    :try_start_88
    sget-object v5, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v6, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    iget-object v7, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewRoot;->getHostVisibility()I

    move-result v8

    iget-object v9, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v9, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/view/IWindowSession;->add(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I
    :try_end_99
    .catchall {:try_start_88 .. :try_end_99} :catchall_10d
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_99} :catch_f5

    move-result v2

    .line 438
    .local v2, res:I
    if-eqz v4, :cond_9f

    .line 439
    :try_start_9c
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 443
    :cond_9f
    iget-object v5, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v5, :cond_ac

    .line 444
    iget-object v5, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v6, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 446
    :cond_ac
    iget-object v5, p0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 447
    iget-object v5, p0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 449
    if-gez v2, :cond_1dc

    .line 450
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .line 451
    iget-object v5, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 452
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/view/ViewRoot;->mAdded:Z

    .line 453
    invoke-virtual {p0}, Landroid/view/ViewRoot;->unscheduleTraversals()V

    .line 454
    packed-switch v2, :pswitch_data_1f4

    .line 485
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window -- unknown error code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 492
    .end local v0           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v2           #res:I
    .end local v3           #resources:Landroid/content/res/Resources;
    .end local v4           #restore:Z
    :catchall_ea
    move-exception v5

    monitor-exit p0
    :try_end_ec
    .catchall {:try_start_9c .. :try_end_ec} :catchall_ea

    throw v5

    .restart local v0       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v3       #resources:Landroid/content/res/Resources;
    .restart local v4       #restore:Z
    :cond_ed
    move v6, v11

    .line 414
    goto/16 :goto_6c

    .line 415
    :cond_f0
    :try_start_f0
    iget-object v6, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v6, v6, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F
    :try_end_f4
    .catchall {:try_start_f0 .. :try_end_f4} :catchall_ea

    goto :goto_76

    .line 431
    :catch_f5
    move-exception v5

    move-object v1, v5

    .line 432
    .local v1, e:Landroid/os/RemoteException;
    const/4 v5, 0x0

    :try_start_f8
    iput-boolean v5, p0, Landroid/view/ViewRoot;->mAdded:Z

    .line 433
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .line 434
    iget-object v5, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 435
    invoke-virtual {p0}, Landroid/view/ViewRoot;->unscheduleTraversals()V

    .line 436
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Adding window failed"

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_10d
    .catchall {:try_start_f8 .. :try_end_10d} :catchall_10d

    .line 438
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_10d
    move-exception v5

    if-eqz v4, :cond_113

    .line 439
    :try_start_110
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 438
    :cond_113
    throw v5

    .line 457
    .restart local v2       #res:I
    :pswitch_114
    new-instance v5, Landroid/view/WindowManager$BadTokenException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window -- token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not valid; is your activity running?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 461
    :pswitch_135
    new-instance v5, Landroid/view/WindowManager$BadTokenException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window -- token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not for an application"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 465
    :pswitch_156
    new-instance v5, Landroid/view/WindowManager$BadTokenException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window -- app for token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is exiting"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 469
    :pswitch_177
    new-instance v5, Landroid/view/WindowManager$BadTokenException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window -- window "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has already been added"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 475
    :pswitch_198
    monitor-exit p0

    .line 493
    .end local v0           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v2           #res:I
    .end local v3           #resources:Landroid/content/res/Resources;
    .end local v4           #restore:Z
    :goto_199
    return-void

    .line 477
    .restart local v0       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v2       #res:I
    .restart local v3       #resources:Landroid/content/res/Resources;
    .restart local v4       #restore:Z
    :pswitch_19a
    new-instance v5, Landroid/view/WindowManager$BadTokenException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -- another window of this type already exists"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 481
    :pswitch_1bb
    new-instance v5, Landroid/view/WindowManager$BadTokenException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add window "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -- permission denied for this window type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 488
    :cond_1dc
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 489
    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_1ef

    move v5, v11

    :goto_1e4
    iput-boolean v5, p0, Landroid/view/ViewRoot;->mAddedTouchMode:Z

    .line 490
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_1f1

    move v5, v11

    :goto_1eb
    iput-boolean v5, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    .line 492
    .end local v0           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v2           #res:I
    .end local v3           #resources:Landroid/content/res/Resources;
    .end local v4           #restore:Z
    :cond_1ed
    monitor-exit p0
    :try_end_1ee
    .catchall {:try_start_110 .. :try_end_1ee} :catchall_ea

    goto :goto_199

    .restart local v0       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v2       #res:I
    .restart local v3       #resources:Landroid/content/res/Resources;
    .restart local v4       #restore:Z
    :cond_1ef
    move v5, v10

    .line 489
    goto :goto_1e4

    :cond_1f1
    move v5, v10

    .line 490
    goto :goto_1eb

    .line 454
    nop

    :pswitch_data_1f4
    .packed-switch -0x8
        :pswitch_1bb
        :pswitch_19a
        :pswitch_198
        :pswitch_177
        :pswitch_156
        :pswitch_135
        :pswitch_114
        :pswitch_114
    .end packed-switch
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 3
    .parameter "originalView"

    .prologue
    .line 2617
    const/4 v0, 0x0

    return v0
.end method

.method public unscheduleTraversals()V
    .registers 2

    .prologue
    .line 609
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    if-eqz v0, :cond_c

    .line 610
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    .line 611
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->removeMessages(I)V

    .line 613
    :cond_c
    return-void
.end method

.method public windowFocusChanged(ZZ)V
    .registers 7
    .parameter "hasFocus"
    .parameter "inTouchMode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2594
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2595
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3ec

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2596
    if-eqz p1, :cond_18

    move v1, v3

    :goto_d
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2597
    if-eqz p2, :cond_1a

    move v1, v3

    :goto_12
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2598
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 2599
    return-void

    :cond_18
    move v1, v2

    .line 2596
    goto :goto_d

    :cond_1a
    move v1, v2

    .line 2597
    goto :goto_12
.end method
