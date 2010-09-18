.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$WindowRunnnable;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FAST_SCROLL:I = 0x5

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/ListAdapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDensityScale:F

.field mDrawSelectorOnTop:Z

.field mFastScrollEnabled:Z

.field private mFastScroller:Landroid/widget/FastScroller;

.field private mFiltered:Z

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mIsChildViewEnabled:Z

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field private mScrollProfilingStarted:Z

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 495
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 175
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 190
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 200
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 206
    new-instance v1, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 211
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 216
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 221
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 226
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 231
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 236
    iput v2, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 283
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 309
    iput v2, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 347
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 367
    iput v3, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 369
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 378
    iput v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 381
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 384
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 426
    iput v2, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 496
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 498
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 499
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 500
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 501
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 502
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 505
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 506
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 509
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 175
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 190
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 200
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 206
    new-instance v9, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v9, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v9, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 211
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 216
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 221
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 226
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 231
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 236
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 283
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 309
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 347
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 367
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 369
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 378
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 381
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 384
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 426
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 510
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 512
    sget-object v9, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 515
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 516
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_5c

    .line 517
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 520
    :cond_5c
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 523
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 524
    .local v6, stackFromBottom:Z
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 526
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 527
    .local v4, scrollingCacheEnabled:Z
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 529
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 530
    .local v8, useTextFilter:Z
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 532
    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 534
    .local v7, transcriptMode:I
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 536
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 537
    .local v1, color:I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 539
    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 540
    .local v3, enableFastScroll:Z
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 542
    const/16 v9, 0x8

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 543
    .local v5, smoothScrollbar:Z
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 545
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 546
    return-void
.end method

.method private acceptFilter()Z
    .registers 2

    .prologue
    .line 920
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/Filterable;

    invoke-interface {p0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static synthetic access$1000(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/AbsListView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$1500(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Landroid/widget/AbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/AbsListView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$1700(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2300(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2400(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/AbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/widget/AbsListView;Landroid/view/View;IJ)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$602(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$900(Landroid/widget/AbsListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method private checkScrap(Ljava/util/ArrayList;)Z
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const-string v7, "ViewConsistency"

    const-string v6, "AbsListView "

    .line 3280
    if-nez p1, :cond_8

    const/4 v4, 0x1

    .line 3298
    :goto_7
    return v4

    .line 3281
    :cond_8
    const/4 v2, 0x1

    .line 3283
    .local v2, result:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3284
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v0, :cond_6b

    .line 3285
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3286
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 3287
    const/4 v2, 0x0

    .line 3288
    const-string v4, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AbsListView "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has a view in its scrap heap still attached to a parent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    :cond_3f
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_68

    .line 3292
    const/4 v2, 0x0

    .line 3293
    const-string v4, "ViewConsistency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AbsListView "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has a view in its scrap heap that is also a direct child: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .end local v3           #view:Landroid/view/View;
    :cond_6b
    move v4, v2

    .line 3298
    goto :goto_7
.end method

.method private clearScrollingCache()V
    .registers 2

    .prologue
    .line 2364
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 2365
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 2380
    :cond_b
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2381
    return-void
.end method

.method private createScrollingCache()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2356
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_11

    .line 2357
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 2358
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2359
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 2361
    :cond_11
    return-void
.end method

.method private createTextFilter(Z)V
    .registers 10
    .parameter "animateEntrance"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 3033
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_5a

    .line 3034
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3035
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 3036
    .local v2, p:Landroid/widget/PopupWindow;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 3038
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x1090065

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 3043
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 3045
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3046
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3047
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 3048
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3049
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 3050
    iget-object v3, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3051
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3052
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3053
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3054
    iput-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 3055
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3056
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3058
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_5a
    if-eqz p1, :cond_65

    .line 3059
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x1030066

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 3063
    :goto_64
    return-void

    .line 3061
    :cond_65
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x1030067

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_64
.end method

.method private dismissPopup()V
    .registers 2

    .prologue
    .line 2815
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 2816
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2818
    :cond_9
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 1382
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1383
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1384
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1385
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1387
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    :cond_1c
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .registers 11
    .parameter "source"
    .parameter "dest"
    .parameter "direction"

    .prologue
    .line 2861
    sparse-switch p2, :sswitch_data_78

    .line 2887
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2863
    :sswitch_b
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 2864
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 2865
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 2866
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 2890
    .local v1, dY:I
    :goto_23
    sub-int v2, v0, v4

    .line 2891
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 2892
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 2869
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2d
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 2870
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 2871
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 2872
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 2873
    .restart local v1       #dY:I
    goto :goto_23

    .line 2875
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_46
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 2876
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 2877
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 2878
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 2879
    .restart local v1       #dY:I
    goto :goto_23

    .line 2881
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_5f
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 2882
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 2883
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 2884
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 2885
    .restart local v1       #dY:I
    goto :goto_23

    .line 2861
    :sswitch_data_78
    .sparse-switch
        0x11 -> :sswitch_46
        0x21 -> :sswitch_5f
        0x42 -> :sswitch_b
        0x82 -> :sswitch_2d
    .end sparse-switch
.end method

.method private initAbsListView()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 550
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 551
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    .line 552
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 553
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 555
    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 556
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 557
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 558
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 559
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 560
    return-void
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .registers 12
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    .line 1699
    const/4 v6, 0x0

    .line 1701
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_f

    .line 1702
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1705
    :cond_f
    if-nez v6, :cond_1b

    .line 1706
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1707
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1709
    :cond_1b
    if-eqz v6, :cond_21

    .line 1710
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 1712
    :cond_21
    return v6
.end method

.method private positionPopup()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 2834
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2835
    .local v1, screenHeight:I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 2836
    .local v2, xy:[I
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 2839
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v5, 0x41a0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 2840
    .local v0, bottomGap:I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_36

    .line 2841
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2846
    :goto_35
    return-void

    .line 2844
    :cond_36
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_35
.end method

.method private positionSelector(IIII)V
    .registers 10
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1308
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1310
    return-void
.end method

.method private showPopup()V
    .registers 2

    .prologue
    .line 2825
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 2826
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 2827
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 2829
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    .line 2831
    :cond_10
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .registers 9
    .parameter "deltaY"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1862
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1863
    .local v0, distance:I
    iget v3, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v0, v3, :cond_36

    .line 1864
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 1865
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 1866
    iput p1, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 1867
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1871
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_1d

    .line 1872
    iget-object v3, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1874
    :cond_1d
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 1875
    iget v3, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1876
    .local v2, motionView:Landroid/view/View;
    if-eqz v2, :cond_2e

    .line 1877
    invoke-virtual {v2, v5}, Landroid/view/View;->setPressed(Z)V

    .line 1879
    :cond_2e
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1882
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    move v3, v6

    .line 1886
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #motionView:Landroid/view/View;
    :goto_35
    return v3

    :cond_36
    move v3, v5

    goto :goto_35
.end method

.method private useDefaultSelector()V
    .registers 3

    .prologue
    .line 736
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 738
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2212
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 2213
    .local v2, count:I
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2214
    .local v3, firstPosition:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2216
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_b

    .line 2227
    :cond_a
    return-void

    .line 2220
    :cond_b
    const/4 v4, 0x0

    .local v4, i:I
    :goto_c
    if-ge v4, v2, :cond_a

    .line 2221
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2222
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 2223
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2225
    :cond_1d
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2220
    add-int/lit8 v4, v4, 0x1

    goto :goto_c
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 3143
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 3105
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .registers 3
    .parameter "view"

    .prologue
    .line 3024
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 3164
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public clearTextFilter()V
    .registers 3

    .prologue
    .line 3069
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_1d

    .line 3070
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3071
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 3072
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3073
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3076
    :cond_1d
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 997
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 998
    .local v1, count:I
    if-lez v1, :cond_3e

    .line 999
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v6, :cond_3c

    .line 1000
    mul-int/lit8 v2, v1, 0x64

    .line 1002
    .local v2, extent:I
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1003
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1004
    .local v4, top:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1005
    .local v3, height:I
    if-lez v3, :cond_20

    .line 1006
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 1009
    :cond_20
    sub-int v6, v1, v8

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1010
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1011
    .local v0, bottom:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1012
    if-lez v3, :cond_3a

    .line 1013
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    :cond_3a
    move v6, v2

    .line 1021
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    :goto_3b
    return v6

    :cond_3c
    move v6, v8

    .line 1018
    goto :goto_3b

    :cond_3e
    move v6, v7

    .line 1021
    goto :goto_3b
.end method

.method protected computeVerticalScrollOffset()I
    .registers 12

    .prologue
    const/4 v9, 0x0

    .line 1026
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1027
    .local v2, firstPosition:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1028
    .local v0, childCount:I
    if-ltz v2, :cond_41

    if-lez v0, :cond_41

    .line 1029
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_28

    .line 1030
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1031
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1032
    .local v5, top:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1033
    .local v3, height:I
    if-lez v3, :cond_41

    .line 1034
    mul-int/lit8 v7, v2, 0x64

    mul-int/lit8 v8, v5, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v7, v8

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1049
    .end local v3           #height:I
    .end local v5           #top:I
    .end local v6           #view:Landroid/view/View;
    :goto_27
    return v7

    .line 1038
    :cond_28
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 1039
    .local v1, count:I
    if-nez v2, :cond_36

    .line 1040
    const/4 v4, 0x0

    .line 1046
    .local v4, index:I
    :goto_2d
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_27

    .line 1041
    .end local v4           #index:I
    :cond_36
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3c

    .line 1042
    move v4, v1

    .restart local v4       #index:I
    goto :goto_2d

    .line 1044
    .end local v4           #index:I
    :cond_3c
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4       #index:I
    goto :goto_2d

    .end local v1           #count:I
    .end local v4           #index:I
    :cond_41
    move v7, v9

    .line 1049
    goto :goto_27
.end method

.method protected computeVerticalScrollRange()I
    .registers 3

    .prologue
    .line 1054
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_e

    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_d
    return v0

    :cond_e
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    goto :goto_d
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 6
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1612
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    .line 1314
    const/4 v2, 0x0

    .line 1315
    .local v2, saveCount:I
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_51

    const/4 v5, 0x1

    move v0, v5

    .line 1316
    .local v0, clipToPadding:Z
    :goto_b
    if-eqz v0, :cond_36

    .line 1317
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1318
    iget v3, p0, Landroid/widget/AbsListView;->mScrollX:I

    .line 1319
    .local v3, scrollX:I
    iget v4, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 1320
    .local v4, scrollY:I
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/widget/AbsListView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Landroid/widget/AbsListView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1323
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 1326
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_36
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 1327
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_3d

    .line 1328
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1331
    :cond_3d
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1333
    if-eqz v1, :cond_45

    .line 1334
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1337
    :cond_45
    if-eqz v0, :cond_50

    .line 1338
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1339
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 1341
    :cond_50
    return-void

    .line 1315
    .end local v0           #clipToPadding:Z
    .end local v1           #drawSelectorOnTop:Z
    :cond_51
    const/4 v5, 0x0

    move v0, v5

    goto :goto_b
.end method

.method protected dispatchSetPressed(Z)V
    .registers 2
    .parameter "pressed"

    .prologue
    .line 1767
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 2148
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 2149
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_c

    .line 2150
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 2152
    :cond_c
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 1484
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 1485
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 1486
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1488
    :cond_10
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "p"

    .prologue
    .line 3154
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 3159
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 1076
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1077
    .local v1, count:I
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 1078
    .local v2, fadeEdge:F
    if-nez v1, :cond_d

    move v5, v2

    .line 1088
    :goto_c
    return v5

    .line 1081
    :cond_d
    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v5, v1

    sub-int/2addr v5, v7

    iget v6, p0, Landroid/widget/AbsListView;->mItemCount:I

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_19

    .line 1082
    const/high16 v5, 0x3f80

    goto :goto_c

    .line 1085
    :cond_19
    sub-int v5, v1, v7

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1086
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 1087
    .local v4, height:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 1088
    .local v3, fadeLength:F
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_3a

    sub-int v5, v0, v4

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    goto :goto_c

    :cond_3a
    move v5, v2

    goto :goto_c
.end method

.method public getCacheColorHint()I
    .registers 2

    .prologue
    .line 3213
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 1717
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 4
    .parameter "r"

    .prologue
    .line 723
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 724
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_13

    .line 727
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 728
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 733
    :goto_12
    return-void

    .line 731
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_12
.end method

.method getFooterViewsCount()I
    .registers 2

    .prologue
    .line 2527
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .registers 2

    .prologue
    .line 2517
    const/4 v0, 0x0

    return v0
.end method

.method public getListPaddingBottom()I
    .registers 2

    .prologue
    .line 1208
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .registers 2

    .prologue
    .line 1220
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .registers 2

    .prologue
    .line 1232
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .registers 2

    .prologue
    .line 1196
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1180
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v0, :cond_12

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_12

    .line 1181
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1183
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 1436
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .registers 2

    .prologue
    .line 3193
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 957
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_f

    .line 958
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 960
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 6

    .prologue
    .line 1059
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1060
    .local v0, count:I
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 1061
    .local v1, fadeEdge:F
    if-nez v0, :cond_c

    move v4, v1

    .line 1070
    :goto_b
    return v4

    .line 1064
    :cond_c
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v4, :cond_13

    .line 1065
    const/high16 v4, 0x3f80

    goto :goto_b

    .line 1068
    :cond_13
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1069
    .local v3, top:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 1070
    .local v2, fadeLength:F
    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_2d

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    goto :goto_b

    :cond_2d
    move v4, v1

    goto :goto_b
.end method

.method public getTranscriptMode()I
    .registers 2

    .prologue
    .line 3188
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2698
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2699
    .local v0, count:I
    if-lez v0, :cond_9e

    .line 2706
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v3, :cond_2b

    .line 2708
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2710
    iget v3, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-eq v3, v9, :cond_22

    iget v3, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v3, v5, :cond_26

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    if-lt v3, v4, :cond_26

    .line 2713
    :cond_22
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2809
    :cond_25
    :goto_25
    return-void

    .line 2717
    :cond_26
    iget v3, p0, Landroid/widget/AbsListView;->mSyncMode:I

    packed-switch v3, :pswitch_data_ba

    .line 2765
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_9a

    .line 2767
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v1

    .line 2770
    .local v1, newPos:I
    if-lt v1, v0, :cond_39

    .line 2771
    sub-int v1, v0, v5

    .line 2773
    :cond_39
    if-gez v1, :cond_3c

    .line 2774
    const/4 v1, 0x0

    .line 2778
    :cond_3c
    invoke-virtual {p0, v1, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2780
    .local v2, selectablePos:I
    if-ltz v2, :cond_90

    .line 2781
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_25

    .line 2719
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_46
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 2724
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2725
    iget v3, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v4, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    goto :goto_25

    .line 2731
    :cond_5d
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v1

    .line 2732
    .restart local v1       #newPos:I
    if-ltz v1, :cond_2b

    .line 2734
    invoke-virtual {p0, v1, v5}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2735
    .restart local v2       #selectablePos:I
    if-ne v2, v1, :cond_2b

    .line 2737
    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 2739
    iget-wide v3, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_7c

    .line 2742
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2750
    :goto_78
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_25

    .line 2746
    :cond_7c
    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_78

    .line 2758
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_7f
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2759
    iget v3, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v4, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    goto :goto_25

    .line 2785
    .restart local v1       #newPos:I
    .restart local v2       #selectablePos:I
    :cond_90
    invoke-virtual {p0, v1, v6}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2786
    if-ltz v2, :cond_9e

    .line 2787
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_25

    .line 2794
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :cond_9a
    iget v3, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-gez v3, :cond_25

    .line 2802
    :cond_9e
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_b8

    const/4 v3, 0x3

    :goto_a3
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2803
    iput v8, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 2804
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    .line 2805
    iput v8, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    .line 2806
    const-wide/high16 v3, -0x8000

    iput-wide v3, p0, Landroid/widget/AbsListView;->mNextSelectedRowId:J

    .line 2807
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2808
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    goto/16 :goto_25

    :cond_b8
    move v3, v5

    .line 2802
    goto :goto_a3

    .line 2717
    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_46
        :pswitch_7f
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .registers 2

    .prologue
    .line 3082
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 2541
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_25

    .line 2542
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 2543
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_17

    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_17

    .line 2544
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 2546
    :cond_17
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2547
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 2548
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2549
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2551
    :cond_25
    return-void
.end method

.method public invalidateViews()V
    .registers 2

    .prologue
    .line 2580
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2581
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 2582
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 2583
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2584
    return-void
.end method

.method invokeOnItemScrollListener()V
    .registers 5

    .prologue
    .line 652
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_11

    .line 653
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(Landroid/widget/AbsListView;III)V

    .line 655
    :cond_11
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_22

    .line 656
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 658
    :cond_22
    return-void
.end method

.method public isFastScrollEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 592
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .registers 2

    .prologue
    .line 2897
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isScrollingCacheEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 671
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 635
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 748
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 718
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .registers 2

    .prologue
    .line 601
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method keyPressed()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 1444
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1445
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1446
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_2c

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_13

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_2c

    :cond_13
    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2c

    .line 1449
    iget v5, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1451
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_30

    .line 1452
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1475
    .end local v4           #v:Landroid/view/View;
    :cond_2c
    :goto_2c
    return-void

    .line 1453
    .restart local v4       #v:Landroid/view/View;
    :cond_2d
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 1455
    :cond_30
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 1457
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v1

    .line 1458
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1459
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4c

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4c

    .line 1460
    if-eqz v1, :cond_6e

    .line 1461
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1467
    :cond_4c
    :goto_4c
    if-eqz v1, :cond_2c

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v5, :cond_2c

    .line 1468
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_5e

    .line 1469
    new-instance v5, Landroid/widget/AbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 1471
    :cond_5e
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 1472
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2c

    .line 1464
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_6e
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_4c
.end method

.method protected layoutChildren()V
    .registers 1

    .prologue
    .line 1141
    return-void
.end method

.method obtainView(I)Landroid/view/View;
    .registers 6
    .parameter "position"

    .prologue
    .line 1247
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 1250
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_21

    .line 1256
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1259
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_20

    .line 1265
    if-eq v0, v1, :cond_20

    .line 1266
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1267
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_20

    .line 1268
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1291
    :cond_20
    :goto_20
    return-object v0

    .line 1277
    .end local v0           #child:Landroid/view/View;
    :cond_21
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1280
    .restart local v0       #child:Landroid/view/View;
    if-eqz v0, :cond_20

    .line 1281
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_20

    .line 1282
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_20
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 1531
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 1533
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1534
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_1b

    .line 1535
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1536
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_1b

    .line 1537
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1540
    :cond_1b
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .registers 12
    .parameter "consistency"

    .prologue
    .line 3249
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onConsistencyCheck(I)Z

    move-result v4

    .line 3251
    .local v4, result:Z
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_42

    const/4 v7, 0x1

    move v1, v7

    .line 3253
    .local v1, checkLayout:Z
    :goto_a
    if-eqz v1, :cond_68

    .line 3255
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$1900(Landroid/widget/AbsListView$RecycleBin;)[Landroid/view/View;

    move-result-object v0

    .line 3256
    .local v0, activeViews:[Landroid/view/View;
    array-length v2, v0

    .line 3257
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_14
    if-ge v3, v2, :cond_45

    .line 3258
    aget-object v7, v0, v3

    if-eqz v7, :cond_3f

    .line 3259
    const/4 v4, 0x0

    .line 3260
    const-string v7, "ViewConsistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AbsListView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has a view in its active recycler: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 3251
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v1           #checkLayout:Z
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_42
    const/4 v7, 0x0

    move v1, v7

    goto :goto_a

    .line 3267
    .restart local v0       #activeViews:[Landroid/view/View;
    .restart local v1       #checkLayout:Z
    .restart local v2       #count:I
    .restart local v3       #i:I
    :cond_45
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$2000(Landroid/widget/AbsListView$RecycleBin;)Ljava/util/ArrayList;

    move-result-object v5

    .line 3268
    .local v5, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v5}, Landroid/widget/AbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_52

    const/4 v4, 0x0

    .line 3269
    :cond_52
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v7}, Landroid/widget/AbsListView$RecycleBin;->access$2100(Landroid/widget/AbsListView$RecycleBin;)[Ljava/util/ArrayList;

    move-result-object v6

    .line 3270
    .local v6, scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v2, v6

    .line 3271
    const/4 v3, 0x0

    :goto_5a
    if-ge v3, v2, :cond_68

    .line 3272
    aget-object v7, v6, v3

    invoke-direct {p0, v7}, Landroid/widget/AbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_65

    const/4 v4, 0x0

    .line 3271
    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    .line 3276
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6           #scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_68
    return v4
.end method

.method protected onCreateDrawableState(I)[I
    .registers 9
    .parameter "extraSpace"

    .prologue
    const/4 v6, 0x1

    .line 1493
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_a

    .line 1495
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 1521
    :goto_9
    return-object v4

    .line 1501
    :cond_a
    sget-object v4, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1506
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1507
    .local v3, state:[I
    const/4 v0, -0x1

    .line 1508
    .local v0, enabledPos:I
    array-length v4, v3

    sub-int v2, v4, v6

    .local v2, i:I
    :goto_19
    if-ltz v2, :cond_20

    .line 1509
    aget v4, v3, v2

    if-ne v4, v1, :cond_2c

    .line 1510
    move v0, v2

    .line 1516
    :cond_20
    if-ltz v0, :cond_2a

    .line 1517
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    sub-int/2addr v5, v6

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2a
    move-object v4, v3

    .line 1521
    goto :goto_9

    .line 1508
    :cond_2c
    add-int/lit8 v2, v2, -0x1

    goto :goto_19
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .parameter "outAttrs"

    .prologue
    const/4 v1, 0x0

    .line 2969
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2973
    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 2974
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_23

    .line 2975
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 2976
    new-instance v0, Landroid/widget/AbsListView$3;

    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 3010
    :cond_23
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 3012
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 3013
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 3015
    :goto_2c
    return-object v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 1544
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 1547
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1549
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1550
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_1d

    .line 1551
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1552
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1d

    .line 1553
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1554
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 1557
    :cond_1d
    return-void
.end method

.method public onFilterComplete(I)V
    .registers 3
    .parameter "count"

    .prologue
    .line 3146
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_c

    if-lez p1, :cond_c

    .line 3147
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 3148
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 3150
    :cond_c
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 965
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 966
    if-eqz p1, :cond_12

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_12

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_12

    .line 967
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 969
    :cond_12
    return-void
.end method

.method public onGlobalLayout()V
    .registers 2

    .prologue
    .line 3086
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3088
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_19

    .line 3089
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 3098
    :cond_19
    :goto_19
    return-void

    .line 3093
    :cond_1a
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3094
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_19
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "ev"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2157
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 2158
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 2161
    .local v5, y:I
    iget-object v6, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v6, :cond_1e

    .line 2162
    iget-object v6, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v6, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2163
    .local v1, intercepted:Z
    if-eqz v1, :cond_1e

    move v6, v7

    .line 2204
    .end local v1           #intercepted:Z
    :goto_1d
    return v6

    .line 2168
    :cond_1e
    packed-switch v0, :pswitch_data_66

    :cond_21
    :goto_21
    move v6, v8

    .line 2204
    goto :goto_1d

    .line 2170
    :pswitch_23
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v2

    .line 2171
    .local v2, motionPosition:I
    iget v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_47

    if-ltz v2, :cond_47

    .line 2174
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v6, v2, v6

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2175
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2176
    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 2177
    iput v5, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 2178
    iput v2, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 2179
    iput v8, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2180
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 2182
    .end local v3           #v:Landroid/view/View;
    :cond_47
    const/high16 v6, -0x8000

    iput v6, p0, Landroid/widget/AbsListView;->mLastY:I

    goto :goto_21

    .line 2187
    .end local v2           #motionPosition:I
    :pswitch_4c
    iget v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v6, :pswitch_data_70

    goto :goto_21

    .line 2189
    :pswitch_52
    iget v6, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v6, v5, v6

    invoke-direct {p0, v6}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    move-result v6

    if-eqz v6, :cond_21

    move v6, v7

    .line 2190
    goto :goto_1d

    .line 2198
    :pswitch_5e
    const/4 v6, -0x1

    iput v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2199
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_21

    .line 2168
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_23
        :pswitch_5e
        :pswitch_4c
    .end packed-switch

    .line 2187
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_52
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 1745
    sparse-switch p1, :sswitch_data_3c

    .line 1760
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_8
    return v1

    .line 1748
    :sswitch_9
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v1, :cond_4

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1750
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1752
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_39

    .line 1753
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v2, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1754
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 1755
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1757
    :cond_39
    const/4 v1, 0x1

    goto :goto_8

    .line 1745
    nop

    :sswitch_data_3c
    .sparse-switch
        0x17 -> :sswitch_9
        0x42 -> :sswitch_9
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1111
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 1112
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 1113
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1114
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 1115
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1095
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_7

    .line 1096
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 1098
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 1099
    .local v0, listPadding:Landroid/graphics/Rect;
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1100
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1101
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1102
    iget v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1103
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 10
    .parameter "state"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 890
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView$SavedState;

    move-object v1, v0

    .line 892
    .local v1, ss:Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v1}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 893
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 895
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 897
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_36

    .line 898
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 899
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 900
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 901
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 902
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 914
    :cond_2d
    :goto_2d
    iget-object v2, v1, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 917
    return-void

    .line 903
    :cond_36
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_2d

    .line 904
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 906
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 907
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 908
    iget-wide v2, v1, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 909
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 910
    iget v2, v1, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v2, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 911
    iput v4, p0, Landroid/widget/AbsListView;->mSyncMode:I

    goto :goto_2d
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 14

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x0

    .line 844
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 846
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 848
    .local v5, superState:Landroid/os/Parcelable;
    new-instance v4, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v4, v5}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 850
    .local v4, ss:Landroid/widget/AbsListView$SavedState;
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4d

    const/4 v8, 0x1

    move v1, v8

    .line 851
    .local v1, haveChildren:Z
    :goto_17
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v2

    .line 852
    .local v2, selectedId:J
    iput-wide v2, v4, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 853
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iput v8, v4, Landroid/widget/AbsListView$SavedState;->height:I

    .line 855
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-ltz v8, :cond_4f

    .line 857
    iget v8, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v8, v4, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 858
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v8

    iput v8, v4, Landroid/widget/AbsListView$SavedState;->position:I

    .line 859
    iput-wide v11, v4, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 874
    :goto_35
    const/4 v8, 0x0

    iput-object v8, v4, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 875
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v8, :cond_4c

    .line 876
    iget-object v6, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 877
    .local v6, textFilter:Landroid/widget/EditText;
    if-eqz v6, :cond_4c

    .line 878
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 879
    .local v0, filterText:Landroid/text/Editable;
    if-eqz v0, :cond_4c

    .line 880
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 885
    .end local v0           #filterText:Landroid/text/Editable;
    .end local v6           #textFilter:Landroid/widget/EditText;
    :cond_4c
    return-object v4

    .end local v1           #haveChildren:Z
    .end local v2           #selectedId:J
    :cond_4d
    move v1, v10

    .line 850
    goto :goto_17

    .line 861
    .restart local v1       #haveChildren:Z
    .restart local v2       #selectedId:J
    :cond_4f
    if-eqz v1, :cond_6a

    .line 863
    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 864
    .local v7, v:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v4, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 865
    iget v8, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    iput v8, v4, Landroid/widget/AbsListView$SavedState;->position:I

    .line 866
    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-interface {v8, v9}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v4, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto :goto_35

    .line 868
    .end local v7           #v:Landroid/view/View;
    :cond_6a
    iput v10, v4, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 869
    iput-wide v11, v4, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 870
    iput v10, v4, Landroid/widget/AbsListView$SavedState;->position:I

    goto :goto_35
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1345
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_c

    .line 1346
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 1347
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1350
    :cond_c
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_15

    .line 1351
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 1353
    :cond_15
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 10
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 3113
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_31

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 3114
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3115
    .local v1, length:I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 3116
    .local v2, showing:Z
    if-nez v2, :cond_32

    if-lez v1, :cond_32

    .line 3118
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 3119
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 3125
    :cond_1e
    :goto_1e
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_31

    .line 3126
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 3128
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3d

    .line 3129
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 3136
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_31
    return-void

    .line 3120
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_32
    if-eqz v2, :cond_1e

    if-nez v1, :cond_1e

    .line 3122
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3123
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_1e

    .line 3131
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3d
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 24
    .parameter "ev"

    .prologue
    .line 1907
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1b

    .line 1908
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    .line 1909
    .local v11, intercepted:Z
    if-eqz v11, :cond_1b

    .line 1910
    const/16 v19, 0x1

    .line 2143
    .end local v11           #intercepted:Z
    :goto_1a
    return v19

    .line 1914
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1915
    .local v4, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1916
    .local v17, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .line 1921
    .local v18, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_43

    .line 1922
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1924
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1926
    packed-switch v4, :pswitch_data_430

    .line 2143
    .end local v4           #action:I
    :cond_53
    :goto_53
    const/16 v19, 0x1

    goto :goto_1a

    .line 1928
    .restart local v4       #action:I
    :pswitch_56
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v12

    .line 1929
    .local v12, motionPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v19, v0

    if-nez v19, :cond_ca

    .line 1932
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_101

    if-ltz v12, :cond_101

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    .end local v4           #action:I
    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v19

    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_101

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    if-eqz v19, :cond_101

    .line 1936
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 1938
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    if-nez v19, :cond_b2

    .line 1939
    new-instance v19, Landroid/widget/AbsListView$CheckForTap;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 1941
    :cond_b2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1958
    :cond_ca
    :goto_ca
    if-ltz v12, :cond_f7

    .line 1960
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v19, v0

    sub-int v19, v12, v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1961
    .local v15, v:Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 1962
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionX:I

    .line 1963
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 1964
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 1966
    .end local v15           #v:Landroid/view/View;
    :cond_f7
    const/high16 v19, -0x8000

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    goto/16 :goto_53

    .line 1943
    :cond_101
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v19

    if-eqz v19, :cond_10d

    if-gez v12, :cond_10d

    .line 1947
    const/16 v19, 0x0

    goto/16 :goto_1a

    .line 1950
    :cond_10d
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 1951
    const/16 v19, 0x3

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 1952
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 1953
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v12

    .line 1954
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_ca

    .line 1971
    .end local v12           #motionPosition:I
    .restart local v4       #action:I
    :pswitch_132
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionY:I

    move/from16 v19, v0

    sub-int v7, v18, v19

    .line 1972
    .local v7, deltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_43c

    goto/16 :goto_53

    .line 1978
    :pswitch_145
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->startScrollIfNeeded(I)Z

    goto/16 :goto_53

    .line 1988
    :pswitch_14d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_53

    .line 1989
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    move/from16 v19, v0

    sub-int v7, v7, v19

    .line 1990
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v19, v0

    const/high16 v20, -0x8000

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1e5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move/from16 v9, v19

    .line 1991
    .local v9, incrementalDeltaY:I
    :goto_179
    move-object/from16 v0, p0

    move v1, v7

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)V

    .line 1994
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1995
    .local v13, motionView:Landroid/view/View;
    if-eqz v13, :cond_1dd

    .line 1998
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1dd

    .line 2001
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v12

    .line 2003
    .restart local v12       #motionPosition:I
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 2004
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v19, v0

    sub-int v19, v12, v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2005
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 2006
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionY:I

    .line 2007
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 2010
    .end local v12           #motionPosition:I
    :cond_1dd
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastY:I

    goto/16 :goto_53

    .end local v9           #incrementalDeltaY:I
    .end local v13           #motionView:Landroid/view/View;
    :cond_1e5
    move v9, v7

    .line 1990
    goto :goto_179

    .line 2019
    .end local v7           #deltaY:I
    :pswitch_1e7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_448

    .line 2097
    :goto_1f0
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2100
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2102
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v8

    .line 2103
    .local v8, handler:Landroid/os/Handler;
    if-eqz v8, :cond_20e

    .line 2104
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v19, v0

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2107
    :cond_20e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_53

    .line 2108
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->recycle()V

    .line 2109
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_53

    .line 2023
    .end local v8           #handler:Landroid/os/Handler;
    :pswitch_229
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v12, v0

    .line 2024
    .restart local v12       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v19, v0

    sub-int v19, v12, v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2025
    .local v5, child:Landroid/view/View;
    if-eqz v5, :cond_348

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-nez v19, :cond_348

    .line 2026
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_256

    .line 2027
    const/16 v19, 0x0

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2030
    :cond_256
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v19, v0

    if-nez v19, :cond_271

    .line 2031
    new-instance v19, Landroid/widget/AbsListView$PerformClick;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 2034
    :cond_271
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object v14, v0

    .line 2035
    .local v14, performClick:Landroid/widget/AbsListView$PerformClick;
    iput-object v5, v14, Landroid/widget/AbsListView$PerformClick;->mChild:Landroid/view/View;

    .line 2036
    iput v12, v14, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 2037
    invoke-virtual {v14}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 2039
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 2041
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_298

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_33a

    .line 2042
    :cond_298
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v8

    .line 2043
    .restart local v8       #handler:Landroid/os/Handler;
    if-eqz v8, :cond_2b2

    .line 2044
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v19, v0

    if-nez v19, :cond_332

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    :goto_2ac
    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2047
    :cond_2b2
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2048
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2049
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v19, v0

    if-nez v19, :cond_32e

    .line 2050
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2051
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2052
    const/16 v19, 0x1

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2053
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->positionSelector(Landroid/view/View;)V

    .line 2054
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2055
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_311

    .line 2056
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 2057
    .local v6, d:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_311

    move-object v0, v6

    instance-of v0, v0, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_311

    .line 2058
    check-cast v6, Landroid/graphics/drawable/TransitionDrawable;

    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2061
    :cond_311
    new-instance v19, Landroid/widget/AbsListView$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2072
    :cond_32e
    const/16 v19, 0x1

    goto/16 :goto_1a

    .line 2044
    :cond_332
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v19, v0

    goto/16 :goto_2ac

    .line 2074
    .end local v8           #handler:Landroid/os/Handler;
    :cond_33a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v19, v0

    if-nez v19, :cond_348

    .line 2075
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2079
    .end local v14           #performClick:Landroid/widget/AbsListView$PerformClick;
    :cond_348
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    goto/16 :goto_1f0

    .line 2082
    .end local v5           #child:Landroid/view/View;
    .end local v12           #motionPosition:I
    :pswitch_352
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 2083
    .local v16, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2084
    invoke-virtual/range {v16 .. v16}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move v10, v0

    .line 2085
    .local v10, initialVelocity:I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3bb

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v19

    if-lez v19, :cond_3bb

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v19, v0

    if-nez v19, :cond_3a3

    .line 2087
    new-instance v19, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 2089
    :cond_3a3
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 2090
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v19, v0

    move v0, v10

    neg-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_1f0

    .line 2092
    :cond_3bb
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2093
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_1f0

    .line 2122
    .end local v10           #initialVelocity:I
    .end local v16           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_3ce
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2123
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2124
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2125
    .restart local v13       #motionView:Landroid/view/View;
    if-eqz v13, :cond_3ff

    .line 2126
    const/16 v19, 0x0

    move-object v0, v13

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2128
    :cond_3ff
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 2130
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v8

    .line 2131
    .restart local v8       #handler:Landroid/os/Handler;
    if-eqz v8, :cond_414

    .line 2132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v19, v0

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2135
    :cond_414
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_53

    .line 2136
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->recycle()V

    .line 2137
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_53

    .line 1926
    nop

    :pswitch_data_430
    .packed-switch 0x0
        :pswitch_56
        :pswitch_1e7
        :pswitch_132
        :pswitch_3ce
    .end packed-switch

    .line 1972
    :pswitch_data_43c
    .packed-switch 0x0
        :pswitch_145
        :pswitch_145
        :pswitch_145
        :pswitch_14d
    .end packed-switch

    .line 2019
    :pswitch_data_448
    .packed-switch 0x0
        :pswitch_229
        :pswitch_229
        :pswitch_229
        :pswitch_352
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .registers 3
    .parameter "isInTouchMode"

    .prologue
    .line 1890
    if-eqz p1, :cond_17

    .line 1892
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 1896
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_17

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_17

    .line 1899
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1900
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1903
    :cond_17
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 7
    .parameter "hasWindowFocus"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1561
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 1563
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_22

    move v0, v3

    .line 1565
    .local v0, touchMode:I
    :goto_c
    if-nez p1, :cond_24

    .line 1566
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 1567
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1569
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1571
    if-ne v0, v4, :cond_1f

    .line 1573
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 1597
    :cond_1f
    :goto_1f
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 1598
    return-void

    .end local v0           #touchMode:I
    :cond_22
    move v0, v4

    .line 1563
    goto :goto_c

    .line 1576
    .restart local v0       #touchMode:I
    :cond_24
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v1, :cond_2b

    .line 1578
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 1582
    :cond_2b
    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v1, :cond_1f

    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1f

    .line 1584
    if-ne v0, v4, :cond_3a

    .line 1586
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_1f

    .line 1590
    :cond_3a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 1591
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1592
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto :goto_1f
.end method

.method public pointToPosition(II)I
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1778
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1779
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_d

    .line 1780
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1781
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1784
    :cond_d
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1785
    .local v1, count:I
    const/4 v4, 0x1

    sub-int v3, v1, v4

    .local v3, i:I
    :goto_14
    if-ltz v3, :cond_30

    .line 1786
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1787
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2d

    .line 1788
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1789
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1790
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 1794
    .end local v0           #child:Landroid/view/View;
    :goto_2c
    return v4

    .line 1785
    .restart local v0       #child:Landroid/view/View;
    :cond_2d
    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    .line 1794
    .end local v0           #child:Landroid/view/View;
    :cond_30
    const/4 v4, -0x1

    goto :goto_2c
.end method

.method public pointToRowId(II)J
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1807
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 1808
    .local v0, position:I
    if-ltz v0, :cond_d

    .line 1809
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 1811
    :goto_c
    return-wide v1

    :cond_d
    const-wide/high16 v1, -0x8000

    goto :goto_c
.end method

.method positionSelector(Landroid/view/View;)V
    .registers 8
    .parameter "sel"

    .prologue
    .line 1295
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1296
    .local v1, selectorRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1297
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/widget/AbsListView;->positionSelector(IIII)V

    .line 1300
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 1301
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_30

    .line 1302
    if-nez v0, :cond_31

    const/4 v2, 0x1

    :goto_2b
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 1303
    invoke-virtual {p0}, Landroid/widget/AbsListView;->refreshDrawableState()V

    .line 1305
    :cond_30
    return-void

    .line 1302
    :cond_31
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method public reclaimViews(Ljava/util/List;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3224
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 3225
    .local v1, childCount:I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v5}, Landroid/widget/AbsListView$RecycleBin;->access$1800(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v3

    .line 3228
    .local v3, listener:Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v1, :cond_2e

    .line 3229
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3230
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 3232
    .local v4, lp:Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_2b

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 3233
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3234
    if-eqz v3, :cond_2b

    .line 3236
    invoke-interface {v3, v0}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 3228
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 3240
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Landroid/widget/AbsListView$LayoutParams;
    :cond_2e
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 3241
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 3242
    return-void
.end method

.method reconcileSelectedPosition()I
    .registers 4

    .prologue
    .line 2559
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 2560
    .local v0, position:I
    if-gez v0, :cond_6

    .line 2561
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 2563
    :cond_6
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2564
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2565
    return v0
.end method

.method reportScrollStateChange(I)V
    .registers 3
    .parameter "newState"

    .prologue
    .line 2237
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_f

    .line 2238
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_f

    .line 2239
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 2240
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 2243
    :cond_f
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 973
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v0, :cond_b

    .line 974
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 976
    :cond_b
    return-void
.end method

.method requestLayoutIfNecessary()V
    .registers 2

    .prologue
    .line 766
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 767
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 768
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 769
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 771
    :cond_f
    return-void
.end method

.method resetList()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 982
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 983
    iput v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 984
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 985
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 986
    iput v3, p0, Landroid/widget/AbsListView;->mOldSelectedPosition:I

    .line 987
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid/widget/AbsListView;->mOldSelectedRowId:J

    .line 988
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 989
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 990
    iput v2, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 991
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 992
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 993
    return-void
.end method

.method resurrectSelection()Z
    .registers 21

    .prologue
    .line 2599
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .line 2601
    .local v4, childCount:I
    if-gtz v4, :cond_9

    .line 2602
    const/16 v18, 0x0

    .line 2693
    :goto_8
    return v18

    .line 2605
    :cond_9
    const/4 v14, 0x0

    .line 2607
    .local v14, selectedTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    .line 2608
    .local v6, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mBottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTop:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 2609
    .local v5, childrenBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move v8, v0

    .line 2610
    .local v8, firstPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    move v15, v0

    .line 2611
    .local v15, toPosition:I
    const/4 v7, 0x1

    .line 2613
    .local v7, down:Z
    if-lt v15, v8, :cond_cd

    add-int v18, v8, v4

    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_cd

    .line 2614
    move v13, v15

    .line 2616
    .local v13, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2617
    .local v11, selected:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    .line 2618
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 2621
    .local v12, selectedBottom:I
    if-ge v14, v6, :cond_be

    .line 2622
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    add-int v14, v6, v18

    .line 2678
    .end local v11           #selected:Landroid/view/View;
    .end local v12           #selectedBottom:I
    :cond_66
    :goto_66
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 2679
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2680
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 2681
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 2682
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 2683
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v13

    .line 2684
    if-lt v13, v8, :cond_143

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v18

    move v0, v13

    move/from16 v1, v18

    if-gt v0, v1, :cond_143

    .line 2685
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2686
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 2687
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 2691
    :goto_af
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 2693
    if-ltz v13, :cond_146

    const/16 v18, 0x1

    goto/16 :goto_8

    .line 2623
    .restart local v11       #selected:Landroid/view/View;
    .restart local v12       #selectedBottom:I
    :cond_be
    if-le v12, v5, :cond_66

    .line 2624
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v18, v5, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v19

    sub-int v14, v18, v19

    goto :goto_66

    .line 2628
    .end local v11           #selected:Landroid/view/View;
    .end local v12           #selectedBottom:I
    .end local v13           #selectedPos:I
    :cond_cd
    if-ge v15, v8, :cond_fd

    .line 2630
    move v13, v8

    .line 2631
    .restart local v13       #selectedPos:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_d1
    if-ge v9, v4, :cond_66

    .line 2632
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 2633
    .local v17, v:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v16

    .line 2635
    .local v16, top:I
    if-nez v9, :cond_ef

    .line 2637
    move/from16 v14, v16

    .line 2639
    if-gtz v8, :cond_e9

    move/from16 v0, v16

    move v1, v6

    if-ge v0, v1, :cond_ef

    .line 2642
    :cond_e9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    add-int v6, v6, v18

    .line 2645
    :cond_ef
    move/from16 v0, v16

    move v1, v6

    if-lt v0, v1, :cond_fa

    .line 2647
    add-int v13, v8, v9

    .line 2648
    move/from16 v14, v16

    .line 2649
    goto/16 :goto_66

    .line 2631
    :cond_fa
    add-int/lit8 v9, v9, 0x1

    goto :goto_d1

    .line 2653
    .end local v9           #i:I
    .end local v13           #selectedPos:I
    .end local v16           #top:I
    .end local v17           #v:Landroid/view/View;
    :cond_fd
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move v10, v0

    .line 2654
    .local v10, itemCount:I
    const/4 v7, 0x0

    .line 2655
    add-int v18, v8, v4

    const/16 v19, 0x1

    sub-int v13, v18, v19

    .line 2657
    .restart local v13       #selectedPos:I
    const/16 v18, 0x1

    sub-int v9, v4, v18

    .restart local v9       #i:I
    :goto_10d
    if-ltz v9, :cond_66

    .line 2658
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 2659
    .restart local v17       #v:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v16

    .line 2660
    .restart local v16       #top:I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 2662
    .local v3, bottom:I
    const/16 v18, 0x1

    sub-int v18, v4, v18

    move v0, v9

    move/from16 v1, v18

    if-ne v0, v1, :cond_138

    .line 2663
    move/from16 v14, v16

    .line 2664
    add-int v18, v8, v4

    move/from16 v0, v18

    move v1, v10

    if-lt v0, v1, :cond_132

    if-le v3, v5, :cond_138

    .line 2665
    :cond_132
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v5, v5, v18

    .line 2669
    :cond_138
    if-gt v3, v5, :cond_140

    .line 2670
    add-int v13, v8, v9

    .line 2671
    move/from16 v14, v16

    .line 2672
    goto/16 :goto_66

    .line 2657
    :cond_140
    add-int/lit8 v9, v9, -0x1

    goto :goto_10d

    .line 2689
    .end local v3           #bottom:I
    .end local v9           #i:I
    .end local v10           #itemCount:I
    .end local v16           #top:I
    .end local v17           #v:Landroid/view/View;
    :cond_143
    const/4 v13, -0x1

    goto/16 :goto_af

    .line 2693
    :cond_146
    const/16 v18, 0x0

    goto/16 :goto_8
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    .line 2909
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v4

    if-nez v4, :cond_9

    move v4, v6

    .line 2961
    :goto_8
    return v4

    .line 2913
    :cond_9
    const/4 v2, 0x0

    .line 2914
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 2915
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_68

    .line 2938
    :goto_e
    if-eqz v3, :cond_2a

    .line 2939
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 2941
    move-object v1, p3

    .line 2942
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_23

    .line 2943
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {p3, v4, v5, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 2946
    :cond_23
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2947
    .local v0, action:I
    packed-switch v0, :pswitch_data_8a

    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :cond_2a
    :goto_2a
    move v4, v2

    .line 2961
    goto :goto_8

    .line 2922
    :sswitch_2c
    const/4 v3, 0x0

    .line 2923
    goto :goto_e

    .line 2925
    :sswitch_2e
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v4, :cond_4c

    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_4c

    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4c

    .line 2927
    const/4 v2, 0x1

    .line 2928
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2930
    :cond_4c
    const/4 v3, 0x0

    .line 2931
    goto :goto_e

    .line 2934
    :sswitch_4e
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_e

    .line 2949
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_52
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 2950
    goto :goto_2a

    .line 2953
    :pswitch_59
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 2954
    goto :goto_2a

    .line 2957
    :pswitch_60
    iget-object v4, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v4, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2a

    .line 2915
    nop

    :sswitch_data_68
    .sparse-switch
        0x4 -> :sswitch_2e
        0x13 -> :sswitch_2c
        0x14 -> :sswitch_2c
        0x15 -> :sswitch_2c
        0x16 -> :sswitch_2c
        0x17 -> :sswitch_2c
        0x3e -> :sswitch_4e
        0x42 -> :sswitch_2c
    .end sparse-switch

    .line 2947
    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_52
        :pswitch_59
        :pswitch_60
    .end packed-switch
.end method

.method public setCacheColorHint(I)V
    .registers 2
    .parameter "color"

    .prologue
    .line 3203
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 3204
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .registers 2
    .parameter "onTop"

    .prologue
    .line 1399
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 1400
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 572
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 573
    if-eqz p1, :cond_14

    .line 574
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-nez v0, :cond_13

    .line 575
    new-instance v0, Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/widget/FastScroller;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    .line 583
    :cond_13
    :goto_13
    return-void

    .line 578
    :cond_14
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_13

    .line 579
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->stop()V

    .line 580
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroller:Landroid/widget/FastScroller;

    goto :goto_13
.end method

.method public setFilterText(Ljava/lang/String;)V
    .registers 5
    .parameter "filterText"

    .prologue
    .line 932
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_39

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 933
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 936
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 937
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 938
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_39

    .line 940
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_31

    .line 941
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 942
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 946
    .end local v0           #f:Landroid/widget/Filter;
    :cond_31
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 947
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->clearSavedState()V

    .line 950
    :cond_39
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 8
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 1124
    .local v0, changed:Z
    if-eqz v0, :cond_23

    .line 1128
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, 0x1

    move v1, v2

    .line 1129
    .local v1, visible:Z
    :goto_e
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_23

    if-eqz v1, :cond_23

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_23

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1130
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 1134
    .end local v1           #visible:Z
    :cond_23
    return v0

    .line 1128
    :cond_24
    const/4 v2, 0x0

    move v1, v2

    goto :goto_e
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 644
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 645
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 646
    return-void
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 3313
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->access$1802(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    .line 3314
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .parameter "up"
    .parameter "down"

    .prologue
    .line 1478
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 1479
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 1480
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 688
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 689
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 691
    :cond_9
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 692
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .registers 3
    .parameter "resID"

    .prologue
    .line 1410
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1411
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "sel"

    .prologue
    .line 1414
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    .line 1415
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1416
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1418
    :cond_f
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1419
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1420
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1421
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 1422
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 1423
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 1424
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 1425
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1426
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1427
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 623
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 624
    return-void
.end method

.method public setStackFromBottom(Z)V
    .registers 3
    .parameter "stackFromBottom"

    .prologue
    .line 759
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_9

    .line 760
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 761
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 763
    :cond_9
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .registers 2
    .parameter "textFilterEnabled"

    .prologue
    .line 705
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 706
    return-void
.end method

.method public setTranscriptMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 3178
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 3179
    return-void
.end method

.method shouldShowSelector()Z
    .registers 2

    .prologue
    .line 1378
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_c
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 9
    .parameter "originalView"

    .prologue
    .line 1722
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 1723
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2f

    .line 1724
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1725
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 1727
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_19

    .line 1728
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1731
    :cond_19
    if-nez v6, :cond_2d

    .line 1732
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1735
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_2d
    move v0, v6

    .line 1740
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method touchModeDrawsInPressedState()Z
    .registers 2

    .prologue
    .line 1361
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_a

    .line 1366
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 1364
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 1361
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method trackMotionScroll(II)V
    .registers 28
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 2391
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 2392
    .local v6, childCount:I
    if-nez v6, :cond_7

    .line 2508
    :cond_6
    :goto_6
    return-void

    .line 2396
    :cond_7
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v11

    .line 2397
    .local v11, firstTop:I
    const/16 v23, 0x1

    sub-int v23, v6, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getBottom()I

    move-result v16

    .line 2399
    .local v16, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .line 2402
    .local v17, listPadding:Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v19, v23, v11

    .line 2403
    .local v19, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v23

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v9, v23, v24

    .line 2404
    .local v9, end:I
    sub-int v20, v16, v9

    .line 2406
    .local v20, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingBottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingTop:I

    move/from16 v24, v0

    sub-int v14, v23, v24

    .line 2407
    .local v14, height:I
    if-gez p1, :cond_a6

    .line 2408
    const/16 v23, 0x1

    sub-int v23, v14, v23

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2413
    :goto_68
    if-gez p2, :cond_b3

    .line 2414
    const/16 v23, 0x1

    sub-int v23, v14, v23

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2419
    :goto_7b
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 2421
    .local v3, absIncrementalDeltaY:I
    move/from16 v0, v19

    move v1, v3

    if-lt v0, v1, :cond_c0

    move/from16 v0, v20

    move v1, v3

    if-lt v0, v1, :cond_c0

    .line 2422
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 2423
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 2424
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2425
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    move/from16 v23, v0

    add-int v23, v23, p1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    goto/16 :goto_6

    .line 2410
    .end local v3           #absIncrementalDeltaY:I
    :cond_a6
    const/16 v23, 0x1

    sub-int v23, v14, v23

    move/from16 v0, v23

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_68

    .line 2416
    :cond_b3
    const/16 v23, 0x1

    sub-int v23, v14, v23

    move/from16 v0, v23

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_7b

    .line 2427
    .restart local v3       #absIncrementalDeltaY:I
    :cond_c0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move v10, v0

    .line 2429
    .local v10, firstPosition:I
    if-nez v10, :cond_d4

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move v0, v11

    move/from16 v1, v23

    if-lt v0, v1, :cond_d4

    if-gtz p1, :cond_6

    .line 2434
    :cond_d4
    add-int v23, v10, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e9

    move/from16 v0, v16

    move v1, v9

    if-gt v0, v1, :cond_e9

    if-ltz p1, :cond_6

    .line 2439
    :cond_e9
    if-gez p2, :cond_16e

    const/16 v23, 0x1

    move/from16 v8, v23

    .line 2441
    .local v8, down:Z
    :goto_ef
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 2443
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v13

    .line 2444
    .local v13, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v24

    sub-int v12, v23, v24

    .line 2446
    .local v12, footerViewsStart:I
    const/16 v21, 0x0

    .line 2447
    .local v21, start:I
    const/4 v7, 0x0

    .line 2449
    .local v7, count:I
    if-eqz v8, :cond_191

    .line 2450
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v23, p2

    .line 2451
    .local v22, top:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_110
    if-ge v15, v6, :cond_123

    .line 2452
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2453
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v22

    if-lt v0, v1, :cond_174

    .line 2492
    .end local v5           #child:Landroid/view/View;
    .end local v22           #top:I
    :cond_123
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    move/from16 v23, v0

    add-int v23, v23, p1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 2494
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 2495
    move-object/from16 v0, p0

    move/from16 v1, v21

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    .line 2496
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 2498
    if-eqz v8, :cond_158

    .line 2499
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v23, v0

    add-int v23, v23, v7

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2502
    :cond_158
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2503
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 2504
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 2506
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    goto/16 :goto_6

    .line 2439
    .end local v7           #count:I
    .end local v8           #down:Z
    .end local v12           #footerViewsStart:I
    .end local v13           #headerViewsCount:I
    .end local v15           #i:I
    .end local v21           #start:I
    :cond_16e
    const/16 v23, 0x0

    move/from16 v8, v23

    goto/16 :goto_ef

    .line 2456
    .restart local v5       #child:Landroid/view/View;
    .restart local v7       #count:I
    .restart local v8       #down:Z
    .restart local v12       #footerViewsStart:I
    .restart local v13       #headerViewsCount:I
    .restart local v15       #i:I
    .restart local v21       #start:I
    .restart local v22       #top:I
    :cond_174
    add-int/lit8 v7, v7, 0x1

    .line 2457
    add-int v18, v10, v15

    .line 2458
    .local v18, position:I
    move/from16 v0, v18

    move v1, v13

    if-lt v0, v1, :cond_18e

    move/from16 v0, v18

    move v1, v12

    if-ge v0, v1, :cond_18e

    .line 2459
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2451
    :cond_18e
    add-int/lit8 v15, v15, 0x1

    goto :goto_110

    .line 2470
    .end local v5           #child:Landroid/view/View;
    .end local v15           #i:I
    .end local v18           #position:I
    .end local v22           #top:I
    :cond_191
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v23

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    sub-int v4, v23, p2

    .line 2471
    .local v4, bottom:I
    const/16 v23, 0x1

    sub-int v15, v6, v23

    .restart local v15       #i:I
    :goto_1a3
    if-ltz v15, :cond_123

    .line 2472
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2473
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v23

    move/from16 v0, v23

    move v1, v4

    if-le v0, v1, :cond_123

    .line 2476
    move/from16 v21, v15

    .line 2477
    add-int/lit8 v7, v7, 0x1

    .line 2478
    add-int v18, v10, v15

    .line 2479
    .restart local v18       #position:I
    move/from16 v0, v18

    move v1, v13

    if-lt v0, v1, :cond_1d1

    move/from16 v0, v18

    move v1, v12

    if-ge v0, v1, :cond_1d1

    .line 2480
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2471
    :cond_1d1
    add-int/lit8 v15, v15, -0x1

    goto :goto_1a3
.end method

.method updateScrollIndicators()V
    .registers 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1144
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v4, :cond_2b

    .line 1147
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v4, :cond_5c

    move v1, v8

    .line 1150
    .local v1, canScrollUp:Z
    :goto_c
    if-nez v1, :cond_23

    .line 1151
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_23

    .line 1152
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1153
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_5e

    move v1, v8

    .line 1157
    .end local v2           #child:Landroid/view/View;
    :cond_23
    :goto_23
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_60

    move v5, v7

    :goto_28
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1160
    .end local v1           #canScrollUp:Z
    :cond_2b
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v4, :cond_5b

    .line 1162
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 1165
    .local v3, count:I
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v4, v3

    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v4, v5, :cond_62

    move v0, v8

    .line 1168
    .local v0, canScrollDown:Z
    :goto_3b
    if-nez v0, :cond_53

    if-lez v3, :cond_53

    .line 1169
    sub-int v4, v3, v8

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1170
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_64

    move v0, v8

    .line 1173
    .end local v2           #child:Landroid/view/View;
    :cond_53
    :goto_53
    iget-object v4, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_66

    move v5, v7

    :goto_58
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1175
    .end local v0           #canScrollDown:Z
    .end local v3           #count:I
    :cond_5b
    return-void

    :cond_5c
    move v1, v7

    .line 1147
    goto :goto_c

    .restart local v1       #canScrollUp:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_5e
    move v1, v7

    .line 1153
    goto :goto_23

    .end local v2           #child:Landroid/view/View;
    :cond_60
    move v5, v9

    .line 1157
    goto :goto_28

    .end local v1           #canScrollUp:Z
    .restart local v3       #count:I
    :cond_62
    move v0, v7

    .line 1165
    goto :goto_3b

    .restart local v0       #canScrollDown:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_64
    move v0, v7

    .line 1170
    goto :goto_53

    .end local v2           #child:Landroid/view/View;
    :cond_66
    move v5, v9

    .line 1173
    goto :goto_58
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "dr"

    .prologue
    .line 1526
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_a

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
