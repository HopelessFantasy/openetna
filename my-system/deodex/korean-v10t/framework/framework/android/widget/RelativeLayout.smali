.class public Landroid/widget/RelativeLayout;
.super Landroid/view/ViewGroup;
.source "RelativeLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$1;,
        Landroid/widget/RelativeLayout$DependencyGraph;,
        Landroid/widget/RelativeLayout$LayoutParams;,
        Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;
    }
.end annotation


# static fields
.field public static final ABOVE:I = 0x2

.field public static final ALIGN_BASELINE:I = 0x4

.field public static final ALIGN_BOTTOM:I = 0x8

.field public static final ALIGN_LEFT:I = 0x5

.field public static final ALIGN_PARENT_BOTTOM:I = 0xc

.field public static final ALIGN_PARENT_LEFT:I = 0x9

.field public static final ALIGN_PARENT_RIGHT:I = 0xb

.field public static final ALIGN_PARENT_TOP:I = 0xa

.field public static final ALIGN_RIGHT:I = 0x7

.field public static final ALIGN_TOP:I = 0x6

.field public static final BELOW:I = 0x3

.field public static final CENTER_HORIZONTAL:I = 0xe

.field public static final CENTER_IN_PARENT:I = 0xd

.field public static final CENTER_VERTICAL:I = 0xf

.field private static final DEBUG_GRAPH:Z = false

.field public static final LEFT_OF:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "RelativeLayout"

.field public static final RIGHT_OF:I = 0x1

.field public static final TRUE:I = -0x1

.field private static final VERB_COUNT:I = 0x10


# instance fields
.field private mBaselineView:Landroid/view/View;

.field private final mContentBounds:Landroid/graphics/Rect;

.field private mDirtyHierarchy:Z

.field private final mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

.field private mGravity:I

.field private mHasBaselineAlignedChild:Z

.field private mIgnoreGravity:I

.field private final mSelfBounds:Landroid/graphics/Rect;

.field private mSortedHorizontalChildren:[Landroid/view/View;

.field private mSortedVerticalChildren:[Landroid/view/View;

.field private mTopToBottomLeftToRightSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 158
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 161
    const/16 v0, 0x33

    iput v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 162
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 166
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 169
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 170
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 171
    new-instance v0, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$1;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 178
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 161
    const/16 v0, 0x33

    iput v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 162
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 166
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 169
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 170
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 171
    new-instance v0, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$1;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 179
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 183
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 158
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 161
    const/16 v0, 0x33

    iput v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 162
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 166
    iput-object v1, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 169
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 170
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 171
    new-instance v0, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$1;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 184
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 185
    return-void
.end method

.method static synthetic access$700()Z
    .registers 1

    .prologue
    .line 74
    invoke-static {}, Landroid/widget/RelativeLayout;->isSupportRTL()Z

    move-result v0

    return v0
.end method

.method private alignBaseline(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 12
    .parameter "child"
    .parameter "params"

    .prologue
    const/4 v7, 0x4

    const/4 v8, -0x1

    .line 553
    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v6

    .line 554
    .local v6, rules:[I
    invoke-direct {p0, v6, v7}, Landroid/widget/RelativeLayout;->getRelatedViewBaseline([II)I

    move-result v0

    .line 556
    .local v0, anchorBaseline:I
    if-eq v0, v8, :cond_34

    .line 557
    invoke-direct {p0, v6, v7}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 558
    .local v1, anchorParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_34

    .line 559
    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    add-int v5, v7, v0

    .line 560
    .local v5, offset:I
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 561
    .local v2, baseline:I
    if-eq v2, v8, :cond_1f

    .line 562
    sub-int/2addr v5, v2

    .line 564
    :cond_1f
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v8

    sub-int v3, v7, v8

    .line 565
    .local v3, height:I
    invoke-static {p2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 566
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    add-int/2addr v7, v3

    invoke-static {p2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 570
    .end local v1           #anchorParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #baseline:I
    .end local v3           #height:I
    .end local v5           #offset:I
    :cond_34
    iget-object v7, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    if-nez v7, :cond_3b

    .line 571
    iput-object p1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    .line 578
    :cond_3a
    :goto_3a
    return-void

    .line 573
    :cond_3b
    iget-object v7, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 574
    .local v4, lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v8

    if-lt v7, v8, :cond_61

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v8

    if-ne v7, v8, :cond_3a

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    invoke-static {v4}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v8

    if-ge v7, v8, :cond_3a

    .line 575
    :cond_61
    iput-object p1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    goto :goto_3a
.end method

.method private applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 11
    .parameter "childParams"
    .parameter "myWidth"

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 757
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 764
    .local v1, rules:[I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 765
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 767
    invoke-direct {p0, v1, v3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 768
    .local v0, anchorParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_76

    .line 769
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 779
    :cond_22
    :goto_22
    invoke-direct {p0, v1, v5}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 780
    if-eqz v0, :cond_8b

    .line 781
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 787
    :cond_35
    :goto_35
    invoke-direct {p0, v1, v6}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 788
    if-eqz v0, :cond_9c

    .line 789
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 794
    :cond_45
    :goto_45
    invoke-direct {p0, v1, v7}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 795
    if-eqz v0, :cond_ad

    .line 796
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 805
    :cond_55
    :goto_55
    const/16 v2, 0x9

    aget v2, v1, v2

    if-eqz v2, :cond_63

    .line 806
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 809
    :cond_63
    const/16 v2, 0xb

    aget v2, v1, v2

    if-eqz v2, :cond_75

    .line 810
    if-ltz p2, :cond_75

    .line 811
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v2, p2, v2

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 816
    :cond_75
    return-void

    .line 771
    :cond_76
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_22

    aget v2, v1, v3

    if-eqz v2, :cond_22

    .line 772
    if-ltz p2, :cond_22

    .line 773
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v2, p2, v2

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_22

    .line 783
    :cond_8b
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_35

    aget v2, v1, v5

    if-eqz v2, :cond_35

    .line 784
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_35

    .line 790
    :cond_9c
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_45

    aget v2, v1, v6

    if-eqz v2, :cond_45

    .line 791
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_45

    .line 797
    :cond_ad
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_55

    aget v2, v1, v7

    if-eqz v2, :cond_55

    .line 798
    if-ltz p2, :cond_55

    .line 799
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v2, p2, v2

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_55
.end method

.method private applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 11
    .parameter "childParams"
    .parameter "myHeight"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v2, -0x1

    .line 819
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 822
    .local v1, rules:[I
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 823
    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 825
    invoke-direct {p0, v1, v3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 826
    .local v0, anchorParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_7f

    .line 827
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 837
    :cond_23
    :goto_23
    invoke-direct {p0, v1, v5}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 838
    if-eqz v0, :cond_94

    .line 839
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 845
    :cond_36
    :goto_36
    invoke-direct {p0, v1, v6}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 846
    if-eqz v0, :cond_a5

    .line 847
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 852
    :cond_46
    :goto_46
    invoke-direct {p0, v1, v7}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 853
    if-eqz v0, :cond_b6

    .line 854
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 863
    :cond_56
    :goto_56
    const/16 v2, 0xa

    aget v2, v1, v2

    if-eqz v2, :cond_64

    .line 864
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 867
    :cond_64
    const/16 v2, 0xc

    aget v2, v1, v2

    if-eqz v2, :cond_76

    .line 868
    if-ltz p2, :cond_76

    .line 869
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 875
    :cond_76
    const/4 v2, 0x4

    aget v2, v1, v2

    if-eqz v2, :cond_7e

    .line 876
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mHasBaselineAlignedChild:Z

    .line 878
    :cond_7e
    return-void

    .line 829
    :cond_7f
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_23

    aget v2, v1, v3

    if-eqz v2, :cond_23

    .line 830
    if-ltz p2, :cond_23

    .line 831
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_23

    .line 841
    :cond_94
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_36

    aget v2, v1, v5

    if-eqz v2, :cond_36

    .line 842
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_36

    .line 848
    :cond_a5
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_46

    aget v2, v1, v6

    if-eqz v2, :cond_46

    .line 849
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_46

    .line 855
    :cond_b6
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v2, :cond_56

    aget v2, v1, v7

    if-eqz v2, :cond_56

    .line 856
    if-ltz p2, :cond_56

    .line 857
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v2, p2, v2

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_56
.end method

.method private centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 7
    .parameter "child"
    .parameter "params"
    .parameter "myWidth"

    .prologue
    .line 921
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 922
    .local v0, childWidth:I
    sub-int v2, p3, v0

    div-int/lit8 v1, v2, 0x2

    .line 924
    .local v1, left:I
    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 925
    add-int v2, v1, v0

    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 926
    return-void
.end method

.method private centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 7
    .parameter "child"
    .parameter "params"
    .parameter "myHeight"

    .prologue
    .line 929
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 930
    .local v0, childHeight:I
    sub-int v2, p3, v0

    div-int/lit8 v1, v2, 0x2

    .line 932
    .local v1, top:I
    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 933
    add-int v2, v1, v0

    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 934
    return-void
.end method

.method private getChildMeasureSpec(IIIIIIII)I
    .registers 15
    .parameter "childStart"
    .parameter "childEnd"
    .parameter "childSize"
    .parameter "startMargin"
    .parameter "endMargin"
    .parameter "startPadding"
    .parameter "endPadding"
    .parameter "mySize"

    .prologue
    .line 638
    const/4 v0, 0x0

    .line 639
    .local v0, childSpecMode:I
    const/4 v1, 0x0

    .line 642
    .local v1, childSpecSize:I
    move v4, p1

    .line 643
    .local v4, tempStart:I
    move v3, p2

    .line 647
    .local v3, tempEnd:I
    if-gez v4, :cond_8

    .line 648
    add-int v4, p6, p4

    .line 650
    :cond_8
    if-gez v3, :cond_e

    .line 651
    sub-int v5, p8, p7

    sub-int v3, v5, p5

    .line 655
    :cond_e
    sub-int v2, v3, v4

    .line 657
    .local v2, maxAvailable:I
    if-ltz p1, :cond_1c

    if-ltz p2, :cond_1c

    .line 659
    const/high16 v0, 0x4000

    .line 660
    move v1, v2

    .line 695
    :cond_17
    :goto_17
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    .line 662
    :cond_1c
    if-ltz p3, :cond_29

    .line 664
    const/high16 v0, 0x4000

    .line 666
    if-ltz v2, :cond_27

    .line 668
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_17

    .line 671
    :cond_27
    move v1, p3

    goto :goto_17

    .line 673
    :cond_29
    const/4 v5, -0x1

    if-ne p3, v5, :cond_30

    .line 676
    const/high16 v0, 0x4000

    .line 677
    move v1, v2

    goto :goto_17

    .line 678
    :cond_30
    const/4 v5, -0x2

    if-ne p3, v5, :cond_17

    .line 682
    if-ltz v2, :cond_39

    .line 684
    const/high16 v0, -0x8000

    .line 685
    move v1, v2

    goto :goto_17

    .line 689
    :cond_39
    const/4 v0, 0x0

    .line 690
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private getRelatedView([II)Landroid/view/View;
    .registers 9
    .parameter "rules"
    .parameter "relation"

    .prologue
    const/4 v5, 0x0

    .line 881
    aget v0, p1, p2

    .line 882
    .local v0, id:I
    if-eqz v0, :cond_40

    .line 883
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-static {v3}, Landroid/widget/RelativeLayout$DependencyGraph;->access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 884
    .local v1, node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v1, :cond_15

    move-object v3, v5

    .line 898
    .end local v1           #node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :goto_14
    return-object v3

    .line 885
    .restart local v1       #node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    :cond_15
    iget-object v2, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    .line 888
    .local v2, v:Landroid/view/View;
    :goto_17
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3e

    .line 889
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object p1

    .line 890
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-static {v3}, Landroid/widget/RelativeLayout$DependencyGraph;->access$500(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v3

    aget v4, p1, p2

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    .line 891
    .restart local v1       #node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    if-nez v1, :cond_3b

    move-object v3, v5

    goto :goto_14

    .line 892
    :cond_3b
    iget-object v2, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    goto :goto_17

    :cond_3e
    move-object v3, v2

    .line 895
    goto :goto_14

    .end local v1           #node:Landroid/widget/RelativeLayout$DependencyGraph$Node;
    .end local v2           #v:Landroid/view/View;
    :cond_40
    move-object v3, v5

    .line 898
    goto :goto_14
.end method

.method private getRelatedViewBaseline([II)I
    .registers 5
    .parameter "rules"
    .parameter "relation"

    .prologue
    .line 913
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v0

    .line 914
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_b

    .line 915
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 917
    :goto_a
    return v1

    :cond_b
    const/4 v1, -0x1

    goto :goto_a
.end method

.method private getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 6
    .parameter "rules"
    .parameter "relation"

    .prologue
    .line 902
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v1

    .line 903
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_16

    .line 904
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 905
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_16

    .line 906
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v2, p0

    .line 909
    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    :goto_15
    return-object v2

    .restart local p0
    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 188
    sget-object v1, Lcom/android/internal/R$styleable;->RelativeLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 189
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 190
    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/RelativeLayout;->mGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 191
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 192
    return-void
.end method

.method private static isSupportRTL()Z
    .registers 2

    .prologue
    .line 993
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, currentLanguage:Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 995
    :cond_20
    const/4 v1, 0x1

    .line 997
    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method

.method private measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .registers 16
    .parameter "child"
    .parameter "params"
    .parameter "myWidth"
    .parameter "myHeight"

    .prologue
    .line 591
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v10

    .line 596
    .local v10, childWidthMeasureSpec:I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    move-object v0, p0

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v9

    .line 601
    .local v9, childHeightMeasureSpec:I
    invoke-virtual {p1, v10, v9}, Landroid/view/View;->measure(II)V

    .line 602
    return-void
.end method

.method private measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .registers 16
    .parameter "child"
    .parameter "params"
    .parameter "myWidth"
    .parameter "myHeight"

    .prologue
    .line 605
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v10

    .line 611
    .local v10, childWidthMeasureSpec:I
    iget v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    .line 612
    const/high16 v0, 0x4000

    invoke-static {p4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 616
    .local v9, childHeightMeasureSpec:I
    :goto_23
    invoke-virtual {p1, v10, v9}, Landroid/view/View;->measure(II)V

    .line 617
    return-void

    .line 614
    .end local v9           #childHeightMeasureSpec:I
    :cond_27
    const/high16 v0, -0x8000

    invoke-static {p4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .restart local v9       #childHeightMeasureSpec:I
    goto :goto_23
.end method

.method private positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .registers 8
    .parameter "child"
    .parameter "params"
    .parameter "myWidth"
    .parameter "wrapContent"

    .prologue
    .line 701
    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 703
    .local v0, rules:[I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-gez v1, :cond_1e

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ltz v1, :cond_1e

    .line 705
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 724
    :cond_1c
    :goto_1c
    const/4 v1, 0x0

    :goto_1d
    return v1

    .line 706
    :cond_1e
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ltz v1, :cond_37

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-gez v1, :cond_37

    .line 708
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1c

    .line 709
    :cond_37
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-gez v1, :cond_1c

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-gez v1, :cond_1c

    .line 711
    const/16 v1, 0xd

    aget v1, v0, v1

    if-nez v1, :cond_4f

    const/16 v1, 0xe

    aget v1, v0, v1

    if-eqz v1, :cond_6b

    .line 712
    :cond_4f
    if-nez p4, :cond_56

    .line 713
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 718
    :goto_54
    const/4 v1, 0x1

    goto :goto_1d

    .line 715
    :cond_56
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 716
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_54

    .line 720
    :cond_6b
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 721
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1c
.end method

.method private positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .registers 8
    .parameter "child"
    .parameter "params"
    .parameter "myHeight"
    .parameter "wrapContent"

    .prologue
    .line 730
    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    .line 732
    .local v0, rules:[I
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-gez v1, :cond_1e

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ltz v1, :cond_1e

    .line 734
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 753
    :cond_1c
    :goto_1c
    const/4 v1, 0x0

    :goto_1d
    return v1

    .line 735
    :cond_1e
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-ltz v1, :cond_37

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-gez v1, :cond_37

    .line 737
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1c

    .line 738
    :cond_37
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-gez v1, :cond_1c

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    if-gez v1, :cond_1c

    .line 740
    const/16 v1, 0xd

    aget v1, v0, v1

    if-nez v1, :cond_4f

    const/16 v1, 0xf

    aget v1, v0, v1

    if-eqz v1, :cond_6b

    .line 741
    :cond_4f
    if-nez p4, :cond_56

    .line 742
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 747
    :goto_54
    const/4 v1, 0x1

    goto :goto_1d

    .line 744
    :cond_56
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 745
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_54

    .line 749
    :cond_6b
    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 750
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1c
.end method

.method private sortChildren()V
    .registers 7

    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 287
    .local v1, count:I
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    array-length v4, v4

    if-eq v4, v1, :cond_d

    new-array v4, v1, [Landroid/view/View;

    iput-object v4, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    .line 288
    :cond_d
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    array-length v4, v4

    if-eq v4, v1, :cond_16

    new-array v4, v1, [Landroid/view/View;

    iput-object v4, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    .line 290
    :cond_16
    iget-object v2, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    .line 291
    .local v2, graph:Landroid/widget/RelativeLayout$DependencyGraph;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout$DependencyGraph;->clear()V

    .line 293
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1c
    if-ge v3, v1, :cond_28

    .line 294
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 295
    .local v0, child:Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$DependencyGraph;->add(Landroid/view/View;)V

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 305
    .end local v0           #child:Landroid/view/View;
    :cond_28
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_40

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 307
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_4e

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    .line 319
    return-void

    .line 305
    nop

    :array_40
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 307
    :array_4e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 982
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    .line 1004
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    if-nez v4, :cond_11

    .line 1005
    new-instance v4, Ljava/util/TreeSet;

    new-instance v5, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$1;)V

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    .line 1009
    :cond_11
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    .local v0, count:I
    :goto_16
    if-ge v1, v0, :cond_24

    .line 1010
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1009
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1013
    :cond_24
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1014
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1015
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->clear()V

    .line 1016
    const/4 v4, 0x1

    .line 1021
    .end local v3           #view:Landroid/view/View;
    :goto_42
    return v4

    .line 1020
    :cond_43
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->clear()V

    .line 1021
    const/4 v4, 0x0

    goto :goto_42
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 976
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "p"

    .prologue
    .line 987
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 5
    .parameter "attrs"

    .prologue
    .line 964
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isCurrentRTLanguage()Z

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-object v0
.end method

.method public getBaseline()I
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_a
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 940
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 942
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_3b

    .line 947
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isCurrentRTLanguage()Z

    move-result v4

    if-eqz v4, :cond_39

    const/4 v4, 0x1

    sub-int v4, v1, v4

    sub-int/2addr v4, v2

    :goto_11
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 950
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_36

    .line 951
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 953
    .local v3, st:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v5

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 942
    .end local v3           #st:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .end local v0           #child:Landroid/view/View;
    :cond_39
    move v4, v2

    .line 947
    goto :goto_11

    .line 957
    :cond_3b
    return-void
.end method

.method protected onMeasure(II)V
    .registers 45
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 323
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    move/from16 v38, v0

    if-eqz v38, :cond_13

    .line 324
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 325
    invoke-direct/range {p0 .. p0}, Landroid/widget/RelativeLayout;->sortChildren()V

    .line 328
    :cond_13
    const/16 v22, -0x1

    .line 329
    .local v22, myWidth:I
    const/16 v21, -0x1

    .line 331
    .local v21, myHeight:I
    const/16 v35, 0x0

    .line 332
    .local v35, width:I
    const/4 v10, 0x0

    .line 334
    .local v10, height:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v36

    .line 335
    .local v36, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 336
    .local v11, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v37

    .line 337
    .local v37, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 340
    .local v12, heightSize:I
    if-eqz v36, :cond_2e

    .line 341
    move/from16 v22, v37

    .line 344
    :cond_2e
    if-eqz v11, :cond_32

    .line 345
    move/from16 v21, v12

    .line 348
    :cond_32
    const/high16 v38, 0x4000

    move/from16 v0, v36

    move/from16 v1, v38

    if-ne v0, v1, :cond_3c

    .line 349
    move/from16 v35, v22

    .line 352
    :cond_3c
    const/high16 v38, 0x4000

    move v0, v11

    move/from16 v1, v38

    if-ne v0, v1, :cond_45

    .line 353
    move/from16 v10, v21

    .line 356
    :cond_45
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/RelativeLayout;->mHasBaselineAlignedChild:Z

    .line 360
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v20

    .line 362
    .local v20, len:I
    const/16 v26, 0x0

    .line 363
    .local v26, revertRules:Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isCurrentRTLanguage()Z

    move-result v38

    if-eqz v38, :cond_70

    .line 364
    const/4 v15, 0x0

    .local v15, i:I
    :goto_5a
    move v0, v15

    move/from16 v1, v20

    if-ge v0, v1, :cond_70

    .line 365
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    .line 366
    .local v33, view:Landroid/view/View;
    move-object/from16 v0, v33

    instance-of v0, v0, Landroid/widget/Button;

    move/from16 v38, v0

    if-nez v38, :cond_12b

    .line 367
    const/16 v26, 0x0

    .line 379
    .end local v15           #i:I
    .end local v33           #view:Landroid/view/View;
    :cond_70
    const/16 v16, 0x0

    .line 380
    .local v16, ignore:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RelativeLayout;->mGravity:I

    move/from16 v38, v0

    and-int/lit8 v9, v38, 0x7

    .line 381
    .local v9, gravity:I
    const/16 v38, 0x3

    move v0, v9

    move/from16 v1, v38

    if-eq v0, v1, :cond_147

    if-eqz v9, :cond_147

    const/16 v38, 0x1

    move/from16 v13, v38

    .line 382
    .local v13, horizontalGravity:Z
    :goto_87
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RelativeLayout;->mGravity:I

    move/from16 v38, v0

    and-int/lit8 v9, v38, 0x70

    .line 383
    const/16 v38, 0x30

    move v0, v9

    move/from16 v1, v38

    if-eq v0, v1, :cond_14d

    if-eqz v9, :cond_14d

    const/16 v38, 0x1

    move/from16 v31, v38

    .line 385
    .local v31, verticalGravity:Z
    :goto_9c
    const v19, 0x7fffffff

    .line 386
    .local v19, left:I
    const v30, 0x7fffffff

    .line 387
    .local v30, top:I
    const/high16 v27, -0x8000

    .line 388
    .local v27, right:I
    const/high16 v5, -0x8000

    .line 390
    .local v5, bottom:I
    const/16 v23, 0x0

    .line 391
    .local v23, offsetHorizontalAxis:Z
    const/16 v24, 0x0

    .line 393
    .local v24, offsetVerticalAxis:Z
    if-nez v13, :cond_ae

    if-eqz v31, :cond_ca

    :cond_ae
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    move/from16 v38, v0

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_ca

    .line 394
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 397
    :cond_ca
    const/high16 v38, 0x4000

    move/from16 v0, v36

    move/from16 v1, v38

    if-eq v0, v1, :cond_153

    const/16 v38, 0x1

    move/from16 v18, v38

    .line 398
    .local v18, isWrapContentWidth:Z
    :goto_d6
    const/high16 v38, 0x4000

    move v0, v11

    move/from16 v1, v38

    if-eq v0, v1, :cond_159

    const/16 v38, 0x1

    move/from16 v17, v38

    .line 400
    .local v17, isWrapContentHeight:Z
    :goto_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    move-object/from16 v34, v0

    .line 401
    .local v34, views:[Landroid/view/View;
    move-object/from16 v0, v34

    array-length v0, v0

    move v8, v0

    .line 402
    .local v8, count:I
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_ec
    if-ge v15, v8, :cond_15e

    .line 403
    aget-object v6, v34, v15

    .line 404
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_128

    .line 405
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout$LayoutParams;

    .line 407
    .local v25, params:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout;->applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 408
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v25

    move/from16 v3, v22

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 409
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v25

    move/from16 v3, v22

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v38

    if-eqz v38, :cond_128

    .line 410
    const/16 v23, 0x1

    .line 402
    .end local v25           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_128
    add-int/lit8 v15, v15, 0x1

    goto :goto_ec

    .line 370
    .end local v5           #bottom:I
    .end local v6           #child:Landroid/view/View;
    .end local v8           #count:I
    .end local v9           #gravity:I
    .end local v13           #horizontalGravity:Z
    .end local v16           #ignore:Landroid/view/View;
    .end local v17           #isWrapContentHeight:Z
    .end local v18           #isWrapContentWidth:Z
    .end local v19           #left:I
    .end local v23           #offsetHorizontalAxis:Z
    .end local v24           #offsetVerticalAxis:Z
    .end local v27           #right:I
    .end local v30           #top:I
    .end local v31           #verticalGravity:Z
    .end local v34           #views:[Landroid/view/View;
    .restart local v33       #view:Landroid/view/View;
    :cond_12b
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v28

    .line 372
    .local v28, rules:[I
    const/16 v38, 0x9

    aget v38, v28, v38

    if-nez v38, :cond_141

    const/16 v38, 0xb

    aget v38, v28, v38

    if-eqz v38, :cond_143

    .line 373
    :cond_141
    const/16 v26, 0x1

    .line 364
    :cond_143
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5a

    .line 381
    .end local v15           #i:I
    .end local v28           #rules:[I
    .end local v33           #view:Landroid/view/View;
    .restart local v9       #gravity:I
    .restart local v16       #ignore:Landroid/view/View;
    :cond_147
    const/16 v38, 0x0

    move/from16 v13, v38

    goto/16 :goto_87

    .line 383
    .restart local v13       #horizontalGravity:Z
    :cond_14d
    const/16 v38, 0x0

    move/from16 v31, v38

    goto/16 :goto_9c

    .line 397
    .restart local v5       #bottom:I
    .restart local v19       #left:I
    .restart local v23       #offsetHorizontalAxis:Z
    .restart local v24       #offsetVerticalAxis:Z
    .restart local v27       #right:I
    .restart local v30       #top:I
    .restart local v31       #verticalGravity:Z
    :cond_153
    const/16 v38, 0x0

    move/from16 v18, v38

    goto/16 :goto_d6

    .line 398
    .restart local v18       #isWrapContentWidth:Z
    :cond_159
    const/16 v38, 0x0

    move/from16 v17, v38

    goto :goto_e1

    .line 415
    .restart local v8       #count:I
    .restart local v15       #i:I
    .restart local v17       #isWrapContentHeight:Z
    .restart local v34       #views:[Landroid/view/View;
    :cond_15e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    move-object/from16 v34, v0

    .line 416
    move-object/from16 v0, v34

    array-length v0, v0

    move v8, v0

    .line 418
    const/4 v15, 0x0

    :goto_169
    if-ge v15, v8, :cond_221

    .line 419
    aget-object v6, v34, v15

    .line 420
    .restart local v6       #child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_21d

    .line 421
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout$LayoutParams;

    .line 423
    .restart local v25       #params:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout;->applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 424
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v25

    move/from16 v3, v22

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    .line 425
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v25

    move/from16 v3, v21

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v38

    if-eqz v38, :cond_1a5

    .line 426
    const/16 v24, 0x1

    .line 429
    :cond_1a5
    if-eqz v18, :cond_1b3

    .line 430
    invoke-static/range {v25 .. v25}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v38

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 433
    :cond_1b3
    if-eqz v17, :cond_1c0

    .line 434
    invoke-static/range {v25 .. v25}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v38

    move v0, v10

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 437
    :cond_1c0
    move-object v0, v6

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_1c7

    if-eqz v31, :cond_1ef

    .line 438
    :cond_1c7
    invoke-static/range {v25 .. v25}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v38

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move/from16 v39, v0

    sub-int v38, v38, v39

    move/from16 v0, v19

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 439
    invoke-static/range {v25 .. v25}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v38

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move/from16 v39, v0

    sub-int v38, v38, v39

    move/from16 v0, v30

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 442
    :cond_1ef
    move-object v0, v6

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_1f6

    if-eqz v13, :cond_21d

    .line 443
    :cond_1f6
    invoke-static/range {v25 .. v25}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v38

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move/from16 v0, v27

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 444
    invoke-static/range {v25 .. v25}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v38

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move v0, v5

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 418
    .end local v25           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_21d
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_169

    .line 449
    .end local v6           #child:Landroid/view/View;
    :cond_221
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/RelativeLayout;->mHasBaselineAlignedChild:Z

    move/from16 v38, v0

    if-eqz v38, :cond_2ae

    .line 450
    const/4 v15, 0x0

    :goto_22a
    if-ge v15, v8, :cond_2ae

    .line 451
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 452
    .restart local v6       #child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_2aa

    .line 453
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout$LayoutParams;

    .line 454
    .restart local v25       #params:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout;->alignBaseline(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 456
    move-object v0, v6

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_254

    if-eqz v31, :cond_27c

    .line 457
    :cond_254
    invoke-static/range {v25 .. v25}, Landroid/widget/RelativeLayout$LayoutParams;->access$300(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v38

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move/from16 v39, v0

    sub-int v38, v38, v39

    move/from16 v0, v19

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 458
    invoke-static/range {v25 .. v25}, Landroid/widget/RelativeLayout$LayoutParams;->access$400(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v38

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move/from16 v39, v0

    sub-int v38, v38, v39

    move/from16 v0, v30

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 461
    :cond_27c
    move-object v0, v6

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_283

    if-eqz v13, :cond_2aa

    .line 462
    :cond_283
    invoke-static/range {v25 .. v25}, Landroid/widget/RelativeLayout$LayoutParams;->access$100(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v38

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move/from16 v0, v27

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 463
    invoke-static/range {v25 .. v25}, Landroid/widget/RelativeLayout$LayoutParams;->access$200(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v38

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move v0, v5

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 450
    .end local v25           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2aa
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_22a

    .line 469
    .end local v6           #child:Landroid/view/View;
    :cond_2ae
    if-eqz v18, :cond_329

    .line 472
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move/from16 v38, v0

    add-int v35, v35, v38

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v38, v0

    if-ltz v38, :cond_2da

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v38, v0

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 478
    :cond_2da
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumWidth()I

    move-result v38

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 479
    move/from16 v0, v35

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v35

    .line 481
    if-eqz v23, :cond_329

    .line 482
    const/4 v15, 0x0

    :goto_2f1
    if-ge v15, v8, :cond_329

    .line 483
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 484
    .restart local v6       #child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_326

    .line 485
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout$LayoutParams;

    .line 486
    .restart local v25       #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {v25 .. v25}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v28

    .line 487
    .restart local v28       #rules:[I
    const/16 v38, 0xd

    aget v38, v28, v38

    if-nez v38, :cond_31c

    const/16 v38, 0xe

    aget v38, v28, v38

    if-eqz v38, :cond_326

    .line 488
    :cond_31c
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v25

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 482
    .end local v25           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v28           #rules:[I
    :cond_326
    add-int/lit8 v15, v15, 0x1

    goto :goto_2f1

    .line 495
    .end local v6           #child:Landroid/view/View;
    :cond_329
    if-eqz v17, :cond_3a0

    .line 498
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    move/from16 v38, v0

    add-int v10, v10, v38

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v38, v0

    if-ltz v38, :cond_354

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v38, v0

    move v0, v10

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 504
    :cond_354
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumHeight()I

    move-result v38

    move v0, v10

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 505
    move v0, v10

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v10

    .line 507
    if-eqz v24, :cond_3a0

    .line 508
    const/4 v15, 0x0

    :goto_369
    if-ge v15, v8, :cond_3a0

    .line 509
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 510
    .restart local v6       #child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_39d

    .line 511
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout$LayoutParams;

    .line 512
    .restart local v25       #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {v25 .. v25}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v28

    .line 513
    .restart local v28       #rules:[I
    const/16 v38, 0xd

    aget v38, v28, v38

    if-nez v38, :cond_394

    const/16 v38, 0xf

    aget v38, v28, v38

    if-eqz v38, :cond_39d

    .line 514
    :cond_394
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v25

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 508
    .end local v25           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v28           #rules:[I
    :cond_39d
    add-int/lit8 v15, v15, 0x1

    goto :goto_369

    .line 521
    .end local v6           #child:Landroid/view/View;
    :cond_3a0
    if-nez v13, :cond_3a4

    if-eqz v31, :cond_442

    .line 522
    :cond_3a4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    .line 523
    .local v29, selfBounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move/from16 v40, v0

    sub-int v40, v35, v40

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    move/from16 v41, v0

    sub-int v41, v10, v41

    move-object/from16 v0, v29

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    move/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    move-object v7, v0

    .line 527
    .local v7, contentBounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RelativeLayout;->mGravity:I

    move/from16 v38, v0

    sub-int v39, v27, v19

    sub-int v40, v5, v30

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move-object/from16 v3, v29

    move-object v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 529
    move-object v0, v7

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v38, v0

    sub-int v14, v38, v19

    .line 530
    .local v14, horizontalOffset:I
    move-object v0, v7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v38, v0

    sub-int v32, v38, v30

    .line 531
    .local v32, verticalOffset:I
    if-nez v14, :cond_400

    if-eqz v32, :cond_442

    .line 532
    :cond_400
    const/4 v15, 0x0

    :goto_401
    if-ge v15, v8, :cond_442

    .line 533
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 534
    .restart local v6       #child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_43f

    move-object v0, v6

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_43f

    .line 535
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout$LayoutParams;

    .line 536
    .restart local v25       #params:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v13, :cond_42f

    .line 537
    move-object/from16 v0, v25

    move v1, v14

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$312(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 538
    move-object/from16 v0, v25

    move v1, v14

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$112(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 540
    :cond_42f
    if-eqz v31, :cond_43f

    .line 541
    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$412(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 542
    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->access$212(Landroid/widget/RelativeLayout$LayoutParams;I)I

    .line 532
    .end local v25           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_43f
    add-int/lit8 v15, v15, 0x1

    goto :goto_401

    .line 549
    .end local v6           #child:Landroid/view/View;
    .end local v7           #contentBounds:Landroid/graphics/Rect;
    .end local v14           #horizontalOffset:I
    .end local v29           #selfBounds:Landroid/graphics/Rect;
    .end local v32           #verticalOffset:I
    :cond_442
    move-object/from16 v0, p0

    move/from16 v1, v35

    move v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    .line 550
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 281
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    .line 283
    return-void
.end method

.method public setGravity(I)V
    .registers 4
    .parameter "gravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 223
    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    if-eq v0, p1, :cond_24

    .line 226
    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isCurrentRTLanguage()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 227
    and-int/lit8 v0, p1, 0x70

    or-int/lit8 p1, v0, 0x5

    .line 231
    :cond_13
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_19

    .line 232
    or-int/lit8 p1, p1, 0x3

    .line 235
    :cond_19
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1f

    .line 236
    or-int/lit8 p1, p1, 0x30

    .line 239
    :cond_1f
    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 240
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 242
    :cond_24
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 4
    .parameter "horizontalGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 246
    and-int/lit8 v0, p1, 0x7

    .line 247
    .local v0, gravity:I
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v0, :cond_12

    .line 248
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x8

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 249
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 251
    :cond_12
    return-void
.end method

.method public setIgnoreGravity(I)V
    .registers 2
    .parameter "viewId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 207
    iput p1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    .line 208
    return-void
.end method

.method public setPadding(IIII)V
    .registers 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 270
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isCurrentRTLanguage()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 271
    invoke-super {p0, p3, p2, p1, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 275
    :goto_9
    return-void

    .line 273
    :cond_a
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_9
.end method

.method public setVerticalGravity(I)V
    .registers 4
    .parameter "verticalGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 255
    and-int/lit8 v0, p1, 0x70

    .line 256
    .local v0, gravity:I
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_12

    .line 257
    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    .line 258
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 260
    :cond_12
    return-void
.end method
