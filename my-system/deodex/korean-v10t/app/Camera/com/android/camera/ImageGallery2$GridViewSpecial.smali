.class public Lcom/android/camera/ImageGallery2$GridViewSpecial;
.super Landroid/view/View;
.source "ImageGallery2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageGallery2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GridViewSpecial"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;,
        Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;
    }
.end annotation


# static fields
.field private static final sDump:Z


# instance fields
.field private mCellSizeChoices:[Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

.field private mCurrentSelection:I

.field private mCurrentSelectionPressed:Z

.field private mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

.field mDateLocationToast:Landroid/widget/Toast;

.field mDateRange:[I

.field private mDirectionBiasDown:Z

.field private mFling:Z

.field private mGallery:Lcom/android/camera/ImageGallery2;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGridViewPaint:Landroid/graphics/Paint;

.field private mHandler:Landroid/os/Handler;

.field private mImageBlockManager:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

.field private mMaxOvershoot:I

.field private mMaxScrollY:I

.field private mMinScrollY:I

.field private mScroller:Landroid/widget/Scroller;

.field private mShowSelection:Z

.field private mSizeChoice:I

.field mToastRunnable:Ljava/lang/Runnable;

.field private mVideoSizeLimit:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .parameter "context"

    .prologue
    const/16 v7, 0x8

    const/4 v10, 0x2

    const/16 v5, 0xe

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 884
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 745
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGridViewPaint:Landroid/graphics/Paint;

    .line 751
    iput-boolean v2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mShowSelection:Z

    .line 752
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSelection:I

    .line 755
    iput-boolean v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mDirectionBiasDown:Z

    .line 775
    new-array v8, v10, [Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    new-instance v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    const/16 v3, 0x43

    const/16 v4, 0x43

    move-object v1, p0

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;-><init>(Lcom/android/camera/ImageGallery2$GridViewSpecial;IIIIII)V

    aput-object v0, v8, v2

    new-instance v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    const/16 v3, 0x5c

    const/16 v4, 0x5c

    move-object v1, p0

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;-><init>(Lcom/android/camera/ImageGallery2$GridViewSpecial;IIIIII)V

    aput-object v0, v8, v9

    iput-object v8, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCellSizeChoices:[Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    .line 779
    iput v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mSizeChoice:I

    .line 785
    iput v2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mMaxOvershoot:I

    .line 789
    iput-boolean v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mFling:Z

    .line 790
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScroller:Landroid/widget/Scroller;

    .line 1795
    new-array v0, v10, [I

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mDateRange:[I

    .line 1816
    new-instance v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial$2;-><init>(Lcom/android/camera/ImageGallery2$GridViewSpecial;)V

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mToastRunnable:Ljava/lang/Runnable;

    .line 885
    invoke-direct {p0, p1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->init(Landroid/content/Context;)V

    .line 886
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 14
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v7, 0x8

    const/4 v10, 0x2

    const/16 v5, 0xe

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 879
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 745
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGridViewPaint:Landroid/graphics/Paint;

    .line 751
    iput-boolean v2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mShowSelection:Z

    .line 752
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSelection:I

    .line 755
    iput-boolean v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mDirectionBiasDown:Z

    .line 775
    new-array v8, v10, [Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    new-instance v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    const/16 v3, 0x43

    const/16 v4, 0x43

    move-object v1, p0

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;-><init>(Lcom/android/camera/ImageGallery2$GridViewSpecial;IIIIII)V

    aput-object v0, v8, v2

    new-instance v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    const/16 v3, 0x5c

    const/16 v4, 0x5c

    move-object v1, p0

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;-><init>(Lcom/android/camera/ImageGallery2$GridViewSpecial;IIIIII)V

    aput-object v0, v8, v9

    iput-object v8, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCellSizeChoices:[Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    .line 779
    iput v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mSizeChoice:I

    .line 785
    iput v2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mMaxOvershoot:I

    .line 789
    iput-boolean v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mFling:Z

    .line 790
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScroller:Landroid/widget/Scroller;

    .line 1795
    new-array v0, v10, [I

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mDateRange:[I

    .line 1816
    new-instance v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial$2;-><init>(Lcom/android/camera/ImageGallery2$GridViewSpecial;)V

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mToastRunnable:Ljava/lang/Runnable;

    .line 880
    invoke-direct {p0, p1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->init(Landroid/content/Context;)V

    .line 881
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v7, 0x8

    const/4 v10, 0x2

    const/16 v5, 0xe

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 874
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 745
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGridViewPaint:Landroid/graphics/Paint;

    .line 751
    iput-boolean v2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mShowSelection:Z

    .line 752
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSelection:I

    .line 755
    iput-boolean v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mDirectionBiasDown:Z

    .line 775
    new-array v8, v10, [Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    new-instance v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    const/16 v3, 0x43

    const/16 v4, 0x43

    move-object v1, p0

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;-><init>(Lcom/android/camera/ImageGallery2$GridViewSpecial;IIIIII)V

    aput-object v0, v8, v2

    new-instance v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    const/16 v3, 0x5c

    const/16 v4, 0x5c

    move-object v1, p0

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;-><init>(Lcom/android/camera/ImageGallery2$GridViewSpecial;IIIIII)V

    aput-object v0, v8, v9

    iput-object v8, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCellSizeChoices:[Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    .line 779
    iput v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mSizeChoice:I

    .line 785
    iput v2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mMaxOvershoot:I

    .line 789
    iput-boolean v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mFling:Z

    .line 790
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScroller:Landroid/widget/Scroller;

    .line 1795
    new-array v0, v10, [I

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mDateRange:[I

    .line 1816
    new-instance v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial$2;-><init>(Lcom/android/camera/ImageGallery2$GridViewSpecial;)V

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mToastRunnable:Ljava/lang/Runnable;

    .line 875
    invoke-direct {p0, p1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->init(Landroid/content/Context;)V

    .line 876
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ImageGallery2$GridViewSpecial;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 743
    iget-wide v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mVideoSizeLimit:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/camera/ImageGallery2$GridViewSpecial;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 743
    iput-wide p1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mVideoSizeLimit:J

    return-wide p1
.end method

.method static synthetic access$1000(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 743
    iget-boolean v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mShowSelection:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mImageBlockManager:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/ImageGallery2$GridViewSpecial;I)Landroid/graphics/Rect;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 743
    invoke-direct {p0, p1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->getRectForPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Landroid/widget/Scroller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/camera/ImageGallery2$GridViewSpecial;Landroid/widget/Scroller;)Landroid/widget/Scroller;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 743
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScroller:Landroid/widget/Scroller;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2;
    .registers 2
    .parameter "x0"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGallery:Lcom/android/camera/ImageGallery2;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 743
    iget-boolean v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mFling:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/ImageGallery2$GridViewSpecial;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 743
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSelection:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/ImageGallery2$GridViewSpecial;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 743
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScrollY:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/ImageGallery2$GridViewSpecial;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 743
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mMaxScrollY:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ImageGallery2$GridViewSpecial;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 743
    invoke-direct {p0, p1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->onSelect(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/ImageGallery2$GridViewSpecial;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 743
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScrollY:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/camera/ImageGallery2$GridViewSpecial;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 743
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScrollY:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 743
    iget-boolean v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mDirectionBiasDown:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 743
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScrollY:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/camera/ImageGallery2$GridViewSpecial;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 743
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScrollY:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/camera/ImageGallery2$GridViewSpecial;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 743
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScrollY:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Landroid/graphics/Paint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGridViewPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$4700()[I
    .registers 1

    .prologue
    .line 743
    sget-object v0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->EMPTY_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 743
    iget-boolean v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSelectionPressed:Z

    return v0
.end method

.method static synthetic access$4900()[I
    .registers 1

    .prologue
    .line 743
    sget-object v0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$5000()[I
    .registers 1

    .prologue
    .line 743
    sget-object v0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/camera/ImageGallery2$GridViewSpecial;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 743
    invoke-direct {p0, p1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->month(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;
    .registers 2
    .parameter "x0"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    return-object v0
.end method

.method private ensureVisible(I)V
    .registers 12
    .parameter "pos"

    .prologue
    const/16 v5, 0xc8

    const/4 v3, 0x0

    .line 927
    invoke-direct {p0, p1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->getRectForPosition(I)Landroid/graphics/Rect;

    move-result-object v7

    .line 928
    .local v7, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->getScrollY()I

    move-result v8

    .line 929
    .local v8, top:I
    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->getHeight()I

    move-result v0

    add-int v6, v8, v0

    .line 931
    .local v6, bot:I
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    if-le v0, v6, :cond_3a

    .line 932
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScroller:Landroid/widget/Scroller;

    .line 933
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScrollX:I

    iget v2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScrollY:I

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->getHeight()I

    move-result v9

    sub-int/2addr v4, v9

    iget v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScrollY:I

    sub-int/2addr v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 934
    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->computeScroll()V

    .line 940
    :cond_36
    :goto_36
    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->invalidate()V

    .line 941
    return-void

    .line 935
    :cond_3a
    iget v0, v7, Landroid/graphics/Rect;->top:I

    if-ge v0, v8, :cond_36

    .line 936
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScroller:Landroid/widget/Scroller;

    .line 937
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScrollX:I

    iget v2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScrollY:I

    iget v4, v7, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScrollY:I

    sub-int/2addr v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 938
    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->computeScroll()V

    goto :goto_36
.end method

.method private getRectForPosition(I)Landroid/graphics/Rect;
    .registers 10
    .parameter "pos"

    .prologue
    .line 1728
    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v4, v4, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    div-int v2, p1, v4

    .line 1729
    .local v2, row:I
    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v4, v4, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    mul-int/2addr v4, v2

    sub-int v0, p1, v4

    .line 1731
    .local v0, col:I
    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v4, v4, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mLeftEdgePadding:I

    iget-object v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v5, v5, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellWidth:I

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v6, v6, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellSpacing:I

    mul-int/2addr v5, v6

    add-int v1, v4, v5

    .line 1732
    .local v1, left:I
    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v4, v4, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellHeight:I

    mul-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v5, v5, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellSpacing:I

    mul-int/2addr v5, v2

    add-int v3, v4, v5

    .line 1734
    .local v3, top:I
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v5, v5, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellWidth:I

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v6, v6, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellWidth:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v6, v6, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellHeight:I

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v7, v7, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellSpacing:I

    add-int/2addr v6, v7

    invoke-direct {v4, v1, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method private init(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 803
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGridViewPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 804
    move-object v0, p1

    check-cast v0, Lcom/android/camera/ImageGallery2;

    move-object v1, v0

    iput-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGallery:Lcom/android/camera/ImageGallery2;

    .line 806
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->setVerticalScrollBarEnabled(Z)V

    .line 807
    sget-object v1, Landroid/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 809
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;-><init>(Lcom/android/camera/ImageGallery2$GridViewSpecial;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGestureDetector:Landroid/view/GestureDetector;

    .line 871
    return-void
.end method

.method private month(I)Ljava/lang/String;
    .registers 3
    .parameter "month"

    .prologue
    .line 1798
    const-string v0, ""

    .line 1799
    .local v0, text:Ljava/lang/String;
    packed-switch p1, :pswitch_data_2a

    .line 1813
    :goto_5
    return-object v0

    .line 1800
    :pswitch_6
    const-string v0, "January"

    goto :goto_5

    .line 1801
    :pswitch_9
    const-string v0, "February"

    goto :goto_5

    .line 1802
    :pswitch_c
    const-string v0, "March"

    goto :goto_5

    .line 1803
    :pswitch_f
    const-string v0, "April"

    goto :goto_5

    .line 1804
    :pswitch_12
    const-string v0, "May"

    goto :goto_5

    .line 1805
    :pswitch_15
    const-string v0, "June"

    goto :goto_5

    .line 1806
    :pswitch_18
    const-string v0, "July"

    goto :goto_5

    .line 1807
    :pswitch_1b
    const-string v0, "August"

    goto :goto_5

    .line 1808
    :pswitch_1e
    const-string v0, "September"

    goto :goto_5

    .line 1809
    :pswitch_21
    const-string v0, "October"

    goto :goto_5

    .line 1810
    :pswitch_24
    const-string v0, "November"

    goto :goto_5

    .line 1811
    :pswitch_27
    const-string v0, "December"

    goto :goto_5

    .line 1799
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method

.method private onSelect(I)V
    .registers 10
    .parameter "index"

    .prologue
    const-string v7, "bucketId"

    .line 1757
    if-ltz p1, :cond_1c

    iget-object v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGallery:Lcom/android/camera/ImageGallery2;

    invoke-static {v5}, Lcom/android/camera/ImageGallery2;->access$600(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v5

    if-ge p1, v5, :cond_1c

    .line 1758
    iget-object v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGallery:Lcom/android/camera/ImageGallery2;

    invoke-static {v5}, Lcom/android/camera/ImageGallery2;->access$600(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v1

    .line 1759
    .local v1, img:Lcom/android/camera/ImageManager$IImage;
    if-nez v1, :cond_1d

    .line 1787
    .end local v1           #img:Lcom/android/camera/ImageManager$IImage;
    :cond_1c
    :goto_1c
    return-void

    .line 1762
    .restart local v1       #img:Lcom/android/camera/ImageManager$IImage;
    :cond_1d
    iget-object v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGallery:Lcom/android/camera/ImageGallery2;

    invoke-static {v5}, Lcom/android/camera/ImageGallery2;->access$5300(Lcom/android/camera/ImageGallery2;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1763
    iget-object v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGallery:Lcom/android/camera/ImageGallery2;

    invoke-static {v5, v1}, Lcom/android/camera/ImageGallery2;->access$5400(Lcom/android/camera/ImageGallery2;Lcom/android/camera/ImageManager$IImage;)V

    goto :goto_1c

    .line 1765
    :cond_2b
    invoke-interface {v1}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 1766
    .local v3, targetUri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGallery:Lcom/android/camera/ImageGallery2;

    invoke-virtual {v5}, Lcom/android/camera/ImageGallery2;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 1767
    .local v4, thisUri:Landroid/net/Uri;
    if-eqz v4, :cond_51

    .line 1768
    const-string v5, "bucketId"

    invoke-virtual {v4, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1769
    .local v0, bucket:Ljava/lang/String;
    if-eqz v0, :cond_51

    .line 1770
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "bucketId"

    invoke-virtual {v5, v7, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1773
    .end local v0           #bucket:Ljava/lang/String;
    :cond_51
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1775
    .local v2, intent:Landroid/content/Intent;
    instance-of v5, v1, Lcom/android/camera/ImageManager$VideoObject;

    if-eqz v5, :cond_62

    .line 1776
    const-string v5, "android.intent.extra.screenOrientation"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1781
    :cond_62
    :try_start_62
    iget-object v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_67} :catch_68

    goto :goto_1c

    .line 1782
    :catch_68
    move-exception v5

    goto :goto_1c
.end method


# virtual methods
.method public clearCache()V
    .registers 2

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mImageBlockManager:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    if-eqz v0, :cond_c

    .line 962
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mImageBlockManager:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$2300(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)V

    .line 963
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mImageBlockManager:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    .line 965
    :cond_c
    return-void
.end method

.method public computeScroll()V
    .registers 4

    .prologue
    .line 1714
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScroller:Landroid/widget/Scroller;

    if-eqz v1, :cond_1e

    .line 1715
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 1716
    .local v0, more:Z
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->scrollTo(II)V

    .line 1717
    if-eqz v0, :cond_1a

    .line 1718
    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->postInvalidate()V

    .line 1725
    .end local v0           #more:Z
    :goto_19
    return-void

    .line 1720
    .restart local v0       #more:Z
    :cond_1a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScroller:Landroid/widget/Scroller;

    goto :goto_19

    .line 1723
    .end local v0           #more:Z
    :cond_1e
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    goto :goto_19
.end method

.method computeSelectedIndex(Landroid/view/MotionEvent;)I
    .registers 11
    .parameter "ev"

    .prologue
    .line 1738
    iget-object v6, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v3, v6, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellSpacing:I

    .line 1739
    .local v3, spacing:I
    iget-object v6, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v1, v6, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mLeftEdgePadding:I

    .line 1741
    .local v1, leftSpacing:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 1742
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 1743
    .local v5, y:I
    iget v6, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScrollY:I

    add-int/2addr v6, v5

    sub-int/2addr v6, v3

    iget-object v7, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v7, v7, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellHeight:I

    add-int/2addr v7, v3

    div-int v2, v6, v7

    .line 1744
    .local v2, row:I
    iget-object v6, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v6, v6, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    sub-int v7, v4, v1

    iget-object v8, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v8, v8, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellWidth:I

    add-int/2addr v8, v3

    div-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1745
    .local v0, col:I
    iget-object v6, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v6, v6, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v0

    return v6
.end method

.method protected computeVerticalScrollRange()I
    .registers 3

    .prologue
    .line 890
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mMaxScrollY:I

    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public dump()V
    .registers 2

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mImageBlockManager:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-virtual {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->dump()V

    .line 800
    return-void
.end method

.method public init(Landroid/os/Handler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 1694
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mHandler:Landroid/os/Handler;

    .line 1695
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    .line 1698
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1706
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mImageBlockManager:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    if-eqz v0, :cond_14

    .line 1707
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mImageBlockManager:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->doDraw(Landroid/graphics/Canvas;)V

    .line 1708
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mImageBlockManager:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-boolean v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mDirectionBiasDown:Z

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$2200(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;ZZ)V

    .line 1710
    :cond_14
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 16
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 970
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 972
    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGallery:Lcom/android/camera/ImageGallery2;

    invoke-virtual {v4}, Lcom/android/camera/ImageGallery2;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_19

    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGallery:Lcom/android/camera/ImageGallery2;

    iget-boolean v4, v4, Lcom/android/camera/ImageGallery2;->mPausing:Z

    if-nez v4, :cond_19

    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGallery:Lcom/android/camera/ImageGallery2;

    iget-boolean v4, v4, Lcom/android/camera/ImageGallery2;->mLayoutComplete:Z

    if-eqz v4, :cond_1a

    .line 1006
    :cond_19
    :goto_19
    return-void

    .line 976
    :cond_1a
    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->clearCache()V

    .line 978
    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCellSizeChoices:[Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mSizeChoice:I

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    .line 979
    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v0, v4, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    .line 981
    .local v0, oldColumnCount:I
    sub-int v2, p4, p2

    .line 982
    .local v2, width:I
    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iput v8, v4, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    .line 983
    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v4, v4, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellWidth:I

    sub-int/2addr v2, v4

    .line 984
    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v5, v4, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    iget-object v6, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v6, v6, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellWidth:I

    iget-object v7, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v7, v7, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellSpacing:I

    add-int/2addr v6, v7

    div-int v6, v2, v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    .line 986
    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    sub-int v5, p4, p2

    iget-object v6, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v6, v6, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    sub-int/2addr v6, v8

    iget-object v7, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v7, v7, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellSpacing:I

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v6, v6, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    iget-object v7, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v7, v7, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellWidth:I

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mLeftEdgePadding:I

    .line 987
    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget-object v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v5, v5, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mLeftEdgePadding:I

    iput v5, v4, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mRightEdgePadding:I

    .line 989
    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGallery:Lcom/android/camera/ImageGallery2;

    invoke-static {v4}, Lcom/android/camera/ImageGallery2;->access$600(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v5, v5, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v8

    iget-object v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v5, v5, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    div-int v1, v4, v5

    .line 990
    .local v1, rows:I
    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v4, v4, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellSpacing:I

    iget-object v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v5, v5, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellSpacing:I

    iget-object v6, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v6, v6, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellHeight:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    sub-int v5, p5, p3

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mMaxOvershoot:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mMaxScrollY:I

    .line 991
    iget v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mMaxOvershoot:I

    sub-int v4, v9, v4

    iput v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mMinScrollY:I

    .line 993
    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGallery:Lcom/android/camera/ImageGallery2;

    iput-boolean v8, v4, Lcom/android/camera/ImageGallery2;->mLayoutComplete:Z

    .line 995
    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->start()V

    .line 997
    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGallery:Lcom/android/camera/ImageGallery2;

    invoke-static {v4}, Lcom/android/camera/ImageGallery2;->access$2400(Lcom/android/camera/ImageGallery2;)Z

    move-result v4

    if-eqz v4, :cond_bd

    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGallery:Lcom/android/camera/ImageGallery2;

    iget v4, v4, Lcom/android/camera/ImageGallery2;->mTargetScroll:I

    if-nez v4, :cond_bd

    .line 998
    iget v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mMaxScrollY:I

    iget v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mMaxOvershoot:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v9, v4}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->scrollTo(II)V

    goto/16 :goto_19

    .line 1000
    :cond_bd
    if-eqz v0, :cond_19

    .line 1001
    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGallery:Lcom/android/camera/ImageGallery2;

    iget v4, v4, Lcom/android/camera/ImageGallery2;->mTargetScroll:I

    mul-int/2addr v4, v0

    iget-object v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSpec:Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    iget v5, v5, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    div-int v3, v4, v5

    .line 1002
    .local v3, y:I
    const-string v4, "ImageGallery2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "target was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGallery:Lcom/android/camera/ImageGallery2;

    iget v6, v6, Lcom/android/camera/ImageGallery2;->mTargetScroll:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " now "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-virtual {p0, v9, v3}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->scrollTo(II)V

    goto/16 :goto_19
.end method

.method public onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 953
    iput-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScroller:Landroid/widget/Scroller;

    .line 954
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mImageBlockManager:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    if-eqz v0, :cond_e

    .line 955
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mImageBlockManager:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$2300(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)V

    .line 956
    iput-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mImageBlockManager:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    .line 958
    :cond_e
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGallery:Lcom/android/camera/ImageGallery2;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2;->access$5200(Lcom/android/camera/ImageGallery2;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 1753
    :goto_9
    return v0

    .line 1752
    :cond_a
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1753
    const/4 v0, 0x1

    goto :goto_9
.end method

.method scaleTo(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "width"
    .parameter "height"
    .parameter "b"

    .prologue
    const/high16 v3, 0x4280

    const/4 v1, 0x0

    .line 1009
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1010
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    div-float/2addr v0, v3

    int-to-float v2, p2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1011
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p3

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1012
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq v7, p3, :cond_23

    .line 1013
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1014
    :cond_23
    return-object v7
.end method

.method public scrollBy(II)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1791
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScrollY:I

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->scrollTo(II)V

    .line 1792
    return-void
.end method

.method public scrollTo(II)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1853
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mMaxScrollY:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1854
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mMinScrollY:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1855
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScrollY:I

    if-le p2, v0, :cond_17

    .line 1856
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mDirectionBiasDown:Z

    .line 1859
    :cond_13
    :goto_13
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 1860
    return-void

    .line 1857
    :cond_17
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mScrollY:I

    if-ge p2, v0, :cond_13

    .line 1858
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mDirectionBiasDown:Z

    goto :goto_13
.end method

.method public select(IZ)V
    .registers 6
    .parameter "newSel"
    .parameter "newPressed"

    .prologue
    const/4 v2, -0x1

    .line 907
    const/4 v1, -0x2

    if-ne p1, v1, :cond_6

    .line 908
    iget p1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSelection:I

    .line 910
    :cond_6
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSelection:I

    .line 911
    .local v0, oldSel:I
    if-ne v0, p1, :cond_f

    iget-boolean v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSelectionPressed:Z

    if-ne v1, p2, :cond_f

    .line 924
    :cond_e
    :goto_e
    return-void

    .line 914
    :cond_f
    if-eq p1, v2, :cond_2c

    const/4 v1, 0x1

    :goto_12
    iput-boolean v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mShowSelection:Z

    .line 915
    iput p1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSelection:I

    .line 916
    iput-boolean p2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mCurrentSelectionPressed:Z

    .line 917
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mImageBlockManager:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    if-eqz v1, :cond_26

    .line 918
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mImageBlockManager:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-static {v1, v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$1800(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;I)V

    .line 919
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mImageBlockManager:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-static {v1, p1}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$1800(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;I)V

    .line 922
    :cond_26
    if-eq p1, v2, :cond_e

    .line 923
    invoke-direct {p0, p1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->ensureVisible(I)V

    goto :goto_e

    .line 914
    :cond_2c
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public setSizeChoice(II)V
    .registers 4
    .parameter "choice"
    .parameter "scrollY"

    .prologue
    .line 894
    iput p1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mSizeChoice:I

    .line 895
    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->clearCache()V

    .line 896
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->scrollTo(II)V

    .line 897
    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->requestLayout()V

    .line 898
    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->invalidate()V

    .line 899
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 944
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mGallery:Lcom/android/camera/ImageGallery2;

    iget-boolean v0, v0, Lcom/android/camera/ImageGallery2;->mLayoutComplete:Z

    if-eqz v0, :cond_17

    .line 945
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mImageBlockManager:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    if-nez v0, :cond_17

    .line 946
    new-instance v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;-><init>(Lcom/android/camera/ImageGallery2$GridViewSpecial;)V

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mImageBlockManager:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    .line 947
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial;->mImageBlockManager:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-static {v0, v1, v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$2200(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;ZZ)V

    .line 950
    :cond_17
    return-void
.end method
