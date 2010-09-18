.class Landroid/widget/AbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .registers 3
    .parameter

    .prologue
    .line 3381
    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3395
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$1800(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3381
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3381
    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object p1
.end method

.method static synthetic access$1900(Landroid/widget/AbsListView$RecycleBin;)[Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3381
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/AbsListView$RecycleBin;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3381
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/widget/AbsListView$RecycleBin;)[Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3381
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    return-object v0
.end method

.method private pruneScrapViews()V
    .registers 13

    .prologue
    .line 3593
    iget-object v9, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v9

    .line 3594
    .local v3, maxViews:I
    iget v8, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 3595
    .local v8, viewTypeCount:I
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 3596
    .local v5, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v8, :cond_2e

    .line 3597
    aget-object v4, v5, v1

    .line 3598
    .local v4, scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3599
    .local v6, size:I
    sub-int v0, v6, v3

    .line 3600
    .local v0, extras:I
    add-int/lit8 v6, v6, -0x1

    .line 3601
    const/4 v2, 0x0

    .local v2, j:I
    move v7, v6

    .end local v6           #size:I
    .local v7, size:I
    :goto_16
    if-ge v2, v0, :cond_2b

    .line 3602
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    const/4 v9, 0x1

    sub-int v6, v7, v9

    .end local v7           #size:I
    .restart local v6       #size:I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Landroid/widget/AbsListView;->access$2400(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 3601
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6           #size:I
    .restart local v7       #size:I
    goto :goto_16

    .line 3596
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3605
    .end local v0           #extras:I
    .end local v2           #j:I
    .end local v4           #scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7           #size:I
    :cond_2e
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;)V
    .registers 6
    .parameter "scrap"

    .prologue
    .line 3522
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 3523
    .local v0, lp:Landroid/widget/AbsListView$LayoutParams;
    if-nez v0, :cond_9

    .line 3543
    :cond_8
    :goto_8
    return-void

    .line 3529
    :cond_9
    iget v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 3530
    .local v1, viewType:I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3534
    iget v2, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    .line 3535
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3540
    :goto_1b
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v2, :cond_8

    .line 3541
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v2, p1}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_8

    .line 3537
    :cond_25
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method

.method clear()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3428
    iget v5, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v5, v7, :cond_20

    .line 3429
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3430
    .local v2, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3431
    .local v3, scrapCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v3, :cond_44

    .line 3432
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    sub-int v5, v3, v7

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v6, v5, v8}, Landroid/widget/AbsListView;->access$2200(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 3431
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 3435
    .end local v0           #i:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    :cond_20
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 3436
    .local v4, typeCount:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_23
    if-ge v0, v4, :cond_44

    .line 3437
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 3438
    .restart local v2       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3439
    .restart local v3       #scrapCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2e
    if-ge v1, v3, :cond_41

    .line 3440
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    sub-int v5, v3, v7

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v6, v5, v8}, Landroid/widget/AbsListView;->access$2300(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 3439
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 3436
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 3444
    .end local v1           #j:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    .end local v4           #typeCount:I
    :cond_44
    return-void
.end method

.method fillActiveViews(II)V
    .registers 9
    .parameter "childCount"
    .parameter "firstActivePosition"

    .prologue
    .line 3454
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_9

    .line 3455
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 3457
    :cond_9
    iput p2, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    .line 3459
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 3460
    .local v0, activeViews:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, p1, :cond_28

    .line 3461
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3462
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 3464
    .local v3, lp:Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_25

    iget v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_25

    .line 3467
    aput-object v1, v0, v2

    .line 3460
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 3470
    .end local v1           #child:Landroid/view/View;
    .end local v3           #lp:Landroid/widget/AbsListView$LayoutParams;
    :cond_28
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .registers 7
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 3480
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v3

    .line 3481
    .local v1, index:I
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 3482
    .local v0, activeViews:[Landroid/view/View;
    if-ltz v1, :cond_12

    array-length v3, v0

    if-ge v1, v3, :cond_12

    .line 3483
    aget-object v2, v0, v1

    .line 3484
    .local v2, match:Landroid/view/View;
    aput-object v4, v0, v1

    move-object v3, v2

    .line 3487
    .end local v2           #match:Landroid/view/View;
    :goto_11
    return-object v3

    :cond_12
    move-object v3, v4

    goto :goto_11
.end method

.method getScrapView(I)Landroid/view/View;
    .registers 8
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3495
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v3, v4, :cond_1a

    .line 3496
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3497
    .local v0, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3498
    .local v1, size:I
    if-lez v1, :cond_18

    .line 3499
    sub-int v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    move-object v3, p0

    .line 3513
    .end local v0           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1           #size:I
    :goto_17
    return-object v3

    .restart local v0       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v1       #size:I
    .restart local p0
    :cond_18
    move-object v3, v5

    .line 3501
    goto :goto_17

    .line 3504
    .end local v0           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1           #size:I
    :cond_1a
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 3505
    .local v2, whichScrap:I
    if-ltz v2, :cond_3d

    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v3, v3

    if-ge v2, v3, :cond_3d

    .line 3506
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v3, v2

    .line 3507
    .restart local v0       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3508
    .restart local v1       #size:I
    if-lez v1, :cond_3d

    .line 3509
    sub-int v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    move-object v3, p0

    goto :goto_17

    .end local v0           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1           #size:I
    .restart local p0
    :cond_3d
    move-object v3, v5

    .line 3513
    goto :goto_17
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .registers 8
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
    .line 3611
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 3612
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3621
    :cond_a
    return-void

    .line 3614
    :cond_b
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 3615
    .local v3, viewTypeCount:I
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 3616
    .local v2, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    if-ge v0, v3, :cond_a

    .line 3617
    aget-object v1, v2, v0

    .line 3618
    .local v1, scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3616
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method scrapActiveViews()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 3549
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 3550
    .local v0, activeViews:[Landroid/view/View;
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v8, :cond_29

    move v2, v9

    .line 3551
    .local v2, hasListener:Z
    :goto_9
    iget v8, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-le v8, v9, :cond_2b

    move v4, v9

    .line 3553
    .local v4, multipleScraps:Z
    :goto_e
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3554
    .local v5, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 3555
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_12
    if-ge v3, v1, :cond_3e

    .line 3556
    aget-object v6, v0, v3

    .line 3557
    .local v6, victim:Landroid/view/View;
    if-eqz v6, :cond_26

    .line 3558
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/AbsListView$LayoutParams;

    iget v7, v8, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 3561
    .local v7, whichScrap:I
    const/4 v8, 0x0

    aput-object v8, v0, v3

    .line 3563
    const/4 v8, -0x1

    if-ne v7, v8, :cond_2d

    .line 3555
    .end local v7           #whichScrap:I
    :cond_26
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .end local v1           #count:I
    .end local v2           #hasListener:Z
    .end local v3           #i:I
    .end local v4           #multipleScraps:Z
    .end local v5           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6           #victim:Landroid/view/View;
    :cond_29
    move v2, v10

    .line 3550
    goto :goto_9

    .restart local v2       #hasListener:Z
    :cond_2b
    move v4, v10

    .line 3551
    goto :goto_e

    .line 3568
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v4       #multipleScraps:Z
    .restart local v5       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v6       #victim:Landroid/view/View;
    .restart local v7       #whichScrap:I
    :cond_2d
    if-eqz v4, :cond_33

    .line 3569
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v5, v8, v7

    .line 3571
    :cond_33
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3573
    if-eqz v2, :cond_26

    .line 3574
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v8, v6}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_26

    .line 3585
    .end local v6           #victim:Landroid/view/View;
    .end local v7           #whichScrap:I
    :cond_3e
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->pruneScrapViews()V

    .line 3586
    return-void
.end method

.method public setViewTypeCount(I)V
    .registers 6
    .parameter "viewTypeCount"

    .prologue
    .line 3407
    const/4 v2, 0x1

    if-ge p1, v2, :cond_b

    .line 3408
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3411
    :cond_b
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 3412
    .local v1, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, p1, :cond_1a

    .line 3413
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 3412
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 3415
    :cond_1a
    iput p1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 3416
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3417
    iput-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 3418
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .registers 3
    .parameter "viewType"

    .prologue
    .line 3421
    if-ltz p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
