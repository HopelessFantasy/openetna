.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$MyWindow;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final GET_NEW_SURFACE_MSG:I = 0x2

.field static final KEEP_SCREEN_ON_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurfaceView"

.field private static final localLOGV:Z


# instance fields
.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mContentInsets:Landroid/graphics/Rect;

.field mDestroyReportNeeded:Z

.field mDrawingStopped:Z

.field mFormat:I

.field final mHandler:Landroid/os/Handler;

.field mHaveFrame:Z

.field mHeight:I

.field mIsCreating:Z

.field mLastLockTime:J

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field mLeft:I

.field final mLocation:[I

.field mNewSurfaceNeeded:Z

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedType:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field mSession:Landroid/view/IWindowSession;

.field final mSurface:Landroid/view/Surface;

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mTop:I

.field private mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field mType:I

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mWidth:I

.field final mWinFrame:Landroid/graphics/Rect;

.field mWindow:Landroid/view/SurfaceView$MyWindow;

.field mWindowType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 145
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 90
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 91
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 92
    iput-boolean v4, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 94
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 105
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 107
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 109
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 123
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 124
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 125
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 126
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 127
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedType:I

    .line 129
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 130
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    .line 131
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    .line 132
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 134
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 135
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 136
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 137
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 138
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 139
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 140
    iput v2, p0, Landroid/view/SurfaceView;->mType:I

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 522
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 146
    invoke-virtual {p0, v4}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 150
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 90
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 91
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 92
    iput-boolean v4, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 94
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 105
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 107
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 109
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 123
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 124
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 125
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 126
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 127
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedType:I

    .line 129
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 130
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    .line 131
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    .line 132
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 134
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 135
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 136
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 137
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 138
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 139
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 140
    iput v2, p0, Landroid/view/SurfaceView;->mType:I

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 522
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 151
    invoke-virtual {p0, v4}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 155
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 90
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 91
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 92
    iput-boolean v4, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 94
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 105
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 107
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 109
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 123
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 124
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 125
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 126
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 127
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedType:I

    .line 129
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 130
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    .line 131
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    .line 132
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 134
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 135
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 136
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 137
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 138
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 139
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 140
    iput v2, p0, Landroid/view/SurfaceView;->mType:I

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 522
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 156
    invoke-virtual {p0, v4}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 157
    return-void
.end method

.method static synthetic access$000(Landroid/view/SurfaceView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->updateWindow(Z)V

    return-void
.end method

.method private reportSurfaceDestroyed()V
    .registers 8

    .prologue
    .line 418
    iget-boolean v5, p0, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    if-eqz v5, :cond_2a

    .line 419
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    .line 421
    iget-object v5, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v5

    .line 422
    :try_start_a
    iget-object v6, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v2, v6, [Landroid/view/SurfaceHolder$Callback;

    .line 423
    .local v2, callbacks:[Landroid/view/SurfaceHolder$Callback;
    iget-object v6, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 424
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_27

    .line 425
    move-object v0, v2

    .local v0, arr$:[Landroid/view/SurfaceHolder$Callback;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1b
    if-ge v3, v4, :cond_2a

    aget-object v1, v0, v3

    .line 426
    .local v1, c:Landroid/view/SurfaceHolder$Callback;
    iget-object v5, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 425
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 424
    .end local v0           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v1           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v2           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_27
    move-exception v6

    :try_start_28
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v6

    .line 429
    :cond_2a
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 430
    return-void
.end method

.method private updateWindow(Z)V
    .registers 32
    .parameter "force"

    .prologue
    .line 278
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mHaveFrame:Z

    move v2, v0

    if-nez v2, :cond_8

    .line 415
    :cond_7
    :goto_7
    return-void

    .line 281
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    check-cast v27, Landroid/view/ViewRoot;

    .line 282
    .local v27, viewRoot:Landroid/view/ViewRoot;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 284
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 285
    .local v24, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    if-nez v2, :cond_35

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v2

    if-nez v2, :cond_46

    .line 286
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object v2, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/view/Surface;->setCompatibleDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 289
    :cond_46
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    move/from16 v22, v0

    .line 290
    .local v22, myWidth:I
    if-gtz v22, :cond_52

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v22

    .line 291
    :cond_52
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    move/from16 v21, v0

    .line 292
    .local v21, myHeight:I
    if-gtz v21, :cond_5e

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v21

    .line 294
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object v2, v0

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v2, v0

    if-nez v2, :cond_2dc

    const/4 v2, 0x1

    move/from16 v17, v2

    .line 296
    .local v17, creating:Z
    :goto_73
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mFormat:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    move v3, v0

    if-eq v2, v3, :cond_2e1

    const/4 v2, 0x1

    move/from16 v18, v2

    .line 297
    .local v18, formatChanged:Z
    :goto_82
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mWidth:I

    move v2, v0

    move v0, v2

    move/from16 v1, v22

    if-ne v0, v1, :cond_96

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mHeight:I

    move v2, v0

    move v0, v2

    move/from16 v1, v21

    if-eq v0, v1, :cond_2e6

    :cond_96
    const/4 v2, 0x1

    move/from16 v25, v2

    .line 298
    .local v25, sizeChanged:Z
    :goto_99
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mVisible:Z

    move v2, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    move v3, v0

    if-ne v2, v3, :cond_ac

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    move v2, v0

    if-eqz v2, :cond_2eb

    :cond_ac
    const/4 v2, 0x1

    move/from16 v29, v2

    .line 300
    .local v29, visibleChanged:Z
    :goto_af
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mType:I

    move v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedType:I

    move v3, v0

    if-eq v2, v3, :cond_2f0

    const/4 v2, 0x1

    move/from16 v26, v2

    .line 301
    .local v26, typeChanged:Z
    :goto_be
    if-nez p1, :cond_e8

    if-nez v17, :cond_e8

    if-nez v18, :cond_e8

    if-nez v25, :cond_e8

    if-nez v29, :cond_e8

    if-nez v26, :cond_e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mLeft:I

    move v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v2, v3, :cond_e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mTop:I

    move v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object v3, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    if-eq v2, v3, :cond_7

    .line 311
    :cond_e8
    :try_start_e8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    .line 312
    .local v28, visible:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object v2, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLeft:I

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object v2, v0

    const/4 v3, 0x1

    aget v2, v2, v3

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mTop:I

    .line 314
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mWidth:I

    .line 315
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mHeight:I

    .line 316
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mFormat:I

    .line 317
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedType:I

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mType:I

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mLeft:I

    move v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mTop:I

    move v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    if-eqz v2, :cond_170

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateLayoutParamsInAppWindowToScreen(Landroid/view/WindowManager$LayoutParams;)V

    .line 330
    :cond_170
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    move v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v2, v0

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x4218

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v2

    if-nez v2, :cond_1a5

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v2, v0

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x10

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 340
    :cond_1a5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedType:I

    move v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v2, v0

    if-nez v2, :cond_1f9

    .line 343
    new-instance v2, Landroid/view/SurfaceView$MyWindow;

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/SurfaceView$MyWindow;-><init>(Landroid/view/SurfaceView;)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mWindowType:I

    move v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v2, v0

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mVisible:Z

    move v5, v0

    if-eqz v5, :cond_2f5

    const/4 v5, 0x0

    :goto_1f1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/view/IWindowSession;->add(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I

    .line 350
    :cond_1f9
    if-eqz v29, :cond_207

    if-eqz v28, :cond_204

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    move v2, v0

    if-eqz v2, :cond_207

    .line 351
    :cond_204
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->reportSurfaceDestroyed()V

    .line 354
    :cond_207
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 357
    if-nez v28, :cond_2f9

    const/4 v2, 0x1

    :goto_218
    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mWidth:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mHeight:I

    move v6, v0

    if-eqz v28, :cond_2fc

    const/4 v7, 0x0

    :goto_239
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object v12, v0

    invoke-interface/range {v2 .. v12}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/Surface;)I

    move-result v23

    .line 367
    .local v23, relayoutResult:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    if-nez v2, :cond_300

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 377
    :goto_289
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_291
    .catch Landroid/os/RemoteException; {:try_start_e8 .. :try_end_291} :catch_335

    .line 380
    if-eqz v28, :cond_388

    .line 381
    const/4 v2, 0x1

    :try_start_294
    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mDestroyReportNeeded:Z

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    move-object v2, v0

    monitor-enter v2
    :try_end_29f
    .catchall {:try_start_294 .. :try_end_29f} :catchall_33b

    .line 385
    :try_start_29f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v0, v3

    new-array v0, v0, [Landroid/view/SurfaceHolder$Callback;

    move-object/from16 v16, v0

    .line 386
    .local v16, callbacks:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 387
    monitor-exit v2
    :try_end_2b9
    .catchall {:try_start_29f .. :try_end_2b9} :catchall_338

    .line 389
    if-eqz v29, :cond_356

    .line 390
    const/4 v2, 0x1

    :try_start_2bc
    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 391
    move-object/from16 v14, v16

    .local v14, arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object v0, v14

    array-length v0, v0

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_2c9
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_356

    aget-object v15, v14, v19

    .line 392
    .local v15, c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object v2, v0

    invoke-interface {v15, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_2d9
    .catchall {:try_start_2bc .. :try_end_2d9} :catchall_33b

    .line 391
    add-int/lit8 v19, v19, 0x1

    goto :goto_2c9

    .line 295
    .end local v14           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v15           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v16           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v17           #creating:Z
    .end local v18           #formatChanged:Z
    .end local v19           #i$:I
    .end local v20           #len$:I
    .end local v23           #relayoutResult:I
    .end local v25           #sizeChanged:Z
    .end local v26           #typeChanged:Z
    .end local v28           #visible:Z
    .end local v29           #visibleChanged:Z
    :cond_2dc
    const/4 v2, 0x0

    move/from16 v17, v2

    goto/16 :goto_73

    .line 296
    .restart local v17       #creating:Z
    :cond_2e1
    const/4 v2, 0x0

    move/from16 v18, v2

    goto/16 :goto_82

    .line 297
    .restart local v18       #formatChanged:Z
    :cond_2e6
    const/4 v2, 0x0

    move/from16 v25, v2

    goto/16 :goto_99

    .line 298
    .restart local v25       #sizeChanged:Z
    :cond_2eb
    const/4 v2, 0x0

    move/from16 v29, v2

    goto/16 :goto_af

    .line 300
    .restart local v29       #visibleChanged:Z
    :cond_2f0
    const/4 v2, 0x0

    move/from16 v26, v2

    goto/16 :goto_be

    .line 346
    .restart local v26       #typeChanged:Z
    .restart local v28       #visible:Z
    :cond_2f5
    const/16 v5, 0x8

    goto/16 :goto_1f1

    .line 357
    :cond_2f9
    const/4 v2, 0x0

    goto/16 :goto_218

    .line 359
    :cond_2fc
    const/16 v7, 0x8

    goto/16 :goto_239

    .line 373
    .restart local v23       #relayoutResult:I
    :cond_300
    :try_start_300
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    iget v13, v2, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 374
    .local v13, appInvertedScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v13

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v13

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I
    :try_end_333
    .catch Landroid/os/RemoteException; {:try_start_300 .. :try_end_333} :catch_335

    goto/16 :goto_289

    .line 408
    .end local v13           #appInvertedScale:F
    .end local v23           #relayoutResult:I
    .end local v28           #visible:Z
    :catch_335
    move-exception v2

    goto/16 :goto_7

    .line 387
    .restart local v23       #relayoutResult:I
    .restart local v28       #visible:Z
    :catchall_338
    move-exception v3

    :try_start_339
    monitor-exit v2
    :try_end_33a
    .catchall {:try_start_339 .. :try_end_33a} :catchall_338

    :try_start_33a
    throw v3
    :try_end_33b
    .catchall {:try_start_33a .. :try_end_33b} :catchall_33b

    .line 403
    :catchall_33b
    move-exception v2

    const/4 v3, 0x0

    :try_start_33d
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 404
    if-nez v17, :cond_348

    and-int/lit8 v3, v23, 0x2

    if-eqz v3, :cond_355

    .line 405
    :cond_348
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v4, v0

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 403
    :cond_355
    throw v2
    :try_end_356
    .catch Landroid/os/RemoteException; {:try_start_33d .. :try_end_356} :catch_335

    .line 395
    .restart local v16       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_356
    if-nez v17, :cond_35e

    if-nez v18, :cond_35e

    if-nez v25, :cond_35e

    if-eqz v29, :cond_388

    .line 397
    :cond_35e
    move-object/from16 v14, v16

    .restart local v14       #arr$:[Landroid/view/SurfaceHolder$Callback;
    :try_start_360
    move-object v0, v14

    array-length v0, v0

    move/from16 v20, v0

    .restart local v20       #len$:I
    const/16 v19, 0x0

    .restart local v19       #i$:I
    :goto_366
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_388

    aget-object v15, v14, v19

    .line 398
    .restart local v15       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mFormat:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mWidth:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mHeight:I

    move v5, v0

    invoke-interface {v15, v2, v3, v4, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
    :try_end_385
    .catchall {:try_start_360 .. :try_end_385} :catchall_33b

    .line 397
    add-int/lit8 v19, v19, 0x1

    goto :goto_366

    .line 403
    .end local v14           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v15           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v16           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v19           #i$:I
    .end local v20           #len$:I
    :cond_388
    const/4 v2, 0x0

    :try_start_389
    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 404
    if-nez v17, :cond_394

    and-int/lit8 v2, v23, 0x2

    if-eqz v2, :cond_7

    .line 405
    :cond_394
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object v3, v0

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_3a1
    .catch Landroid/os/RemoteException; {:try_start_389 .. :try_end_3a1} :catch_335

    goto/16 :goto_7
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 258
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_e

    .line 260
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 263
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 264
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->updateWindow(Z)V

    .line 265
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 266
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 248
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_c

    .line 250
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 252
    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 253
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 11
    .parameter "region"

    .prologue
    .line 224
    const/4 v7, 0x1

    .line 225
    .local v7, opaque:Z
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_15

    .line 227
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v7

    .line 239
    :cond_b
    :goto_b
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 240
    const/4 v7, 0x0

    .line 242
    :cond_14
    return v7

    .line 228
    :cond_15
    if-eqz p1, :cond_b

    .line 229
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v8

    .line 230
    .local v8, w:I
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v6

    .line 231
    .local v6, h:I
    if-lez v8, :cond_b

    if-lez v6, :cond_b

    .line 232
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 234
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x0

    aget v1, v0, v3

    .line 235
    .local v1, l:I
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v0, v3

    .line 236
    .local v2, t:I
    add-int v3, v1, v8

    add-int v4, v2, v6

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_b
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method handleGetNewSurface()V
    .registers 2

    .prologue
    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mNewSurfaceNeeded:Z

    .line 434
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->updateWindow(Z)V

    .line 435
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 171
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 172
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 173
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 174
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 175
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "SurfaceView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 188
    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->updateWindow(Z)V

    .line 189
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 190
    iget-object v0, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v0, :cond_16

    .line 192
    :try_start_d
    iget-object v0, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_20

    .line 195
    :goto_14
    iput-object v2, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 197
    :cond_16
    iput-object v2, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 198
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 200
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 201
    return-void

    .line 193
    :catch_20
    move-exception v0

    goto :goto_14
.end method

.method protected onMeasure(II)V
    .registers 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 205
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v2, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    .line 206
    .local v1, width:I
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v2, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 207
    .local v0, height:I
    invoke-virtual {p0, v1, v0}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 208
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 6
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->updateWindow(Z)V

    .line 214
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 218
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->updateWindow(Z)V

    .line 220
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 4
    .parameter "visibility"

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 181
    if-nez p1, :cond_d

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 182
    invoke-direct {p0, v1}, Landroid/view/SurfaceView;->updateWindow(Z)V

    .line 183
    return-void

    :cond_d
    move v0, v1

    .line 181
    goto :goto_7
.end method

.method public setWindowType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 274
    iput p1, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 275
    return-void
.end method
