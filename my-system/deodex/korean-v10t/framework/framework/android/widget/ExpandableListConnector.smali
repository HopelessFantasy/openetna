.class Landroid/widget/ExpandableListConnector;
.super Landroid/widget/BaseAdapter;
.source "ExpandableListConnector.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListConnector$PositionMetadata;,
        Landroid/widget/ExpandableListConnector$GroupMetadata;,
        Landroid/widget/ExpandableListConnector$MyDataSetObserver;
    }
.end annotation


# instance fields
.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mExpGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

.field private mMaxExpGroupCount:I

.field private mTotalExpChildrenCount:I


# direct methods
.method public constructor <init>(Landroid/widget/ExpandableListAdapter;)V
    .registers 3
    .parameter "expandableListAdapter"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 68
    const v0, 0x7fffffff

    iput v0, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    .line 71
    new-instance v0, Landroid/widget/ExpandableListConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/ExpandableListConnector$MyDataSetObserver;-><init>(Landroid/widget/ExpandableListConnector;)V

    iput-object v0, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ExpandableListConnector;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    return-void
.end method

.method private refreshExpGroupMetadataList(ZZ)V
    .registers 16
    .parameter "forceChildrenCountRefresh"
    .parameter "syncGroupPositions"

    .prologue
    const/4 v12, -0x1

    .line 502
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 503
    .local v2, egml:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 504
    .local v3, egmlSize:I
    const/4 v0, 0x0

    .line 507
    .local v0, curFlPos:I
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    .line 509
    if-eqz p2, :cond_39

    .line 511
    const/4 v8, 0x0

    .line 513
    .local v8, positionsChanged:Z
    const/4 v9, 0x1

    sub-int v5, v3, v9

    .local v5, i:I
    :goto_11
    if-ltz v5, :cond_34

    .line 514
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 515
    .local v1, curGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget-wide v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gId:J

    iget v11, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v9, v10, v11}, Landroid/widget/ExpandableListConnector;->findGroupPosition(JI)I

    move-result v7

    .line 516
    .local v7, newGPos:I
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-eq v7, v9, :cond_31

    .line 517
    if-ne v7, v12, :cond_2c

    .line 519
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 520
    add-int/lit8 v3, v3, -0x1

    .line 523
    :cond_2c
    iput v7, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 524
    if-nez v8, :cond_31

    const/4 v8, 0x1

    .line 513
    :cond_31
    add-int/lit8 v5, v5, -0x1

    goto :goto_11

    .line 528
    .end local v1           #curGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v7           #newGPos:I
    :cond_34
    if-eqz v8, :cond_39

    .line 530
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 535
    .end local v5           #i:I
    .end local v8           #positionsChanged:Z
    :cond_39
    const/4 v6, 0x0

    .line 536
    .local v6, lastGPos:I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3b
    if-ge v5, v3, :cond_6b

    .line 538
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 544
    .restart local v1       #curGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-eq v9, v12, :cond_49

    if-eqz p1, :cond_64

    .line 545
    :cond_49
    iget-object v9, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v10, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v9, v10}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    .line 554
    .local v4, gChildrenCount:I
    :goto_51
    iget v9, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v9, v4

    iput v9, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    .line 561
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v9, v6

    add-int/2addr v0, v9

    .line 562
    iget v6, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    .line 565
    iput v0, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    .line 566
    add-int/2addr v0, v4

    .line 567
    iput v0, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 536
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 550
    .end local v4           #gChildrenCount:I
    :cond_64
    iget v9, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v10, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v4, v9, v10

    .restart local v4       #gChildrenCount:I
    goto :goto_51

    .line 569
    .end local v1           #curGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v4           #gChildrenCount:I
    :cond_6b
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method collapseGroup(I)Z
    .registers 6
    .parameter "groupPos"

    .prologue
    const/4 v3, -0x1

    .line 577
    const/4 v2, 0x2

    invoke-static {v2, p1, v3, v3}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 579
    .local v0, pm:Landroid/widget/ExpandableListConnector$PositionMetadata;
    if-nez v0, :cond_e

    const/4 v2, 0x0

    .line 583
    :goto_d
    return v2

    .line 581
    :cond_e
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v1

    .line 582
    .local v1, retValue:Z
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    move v2, v1

    .line 583
    goto :goto_d
.end method

.method collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z
    .registers 5
    .parameter "posMetadata"

    .prologue
    const/4 v2, 0x0

    .line 596
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-nez v0, :cond_7

    move v0, v2

    .line 610
    :goto_6
    return v0

    .line 599
    :cond_7
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 602
    invoke-direct {p0, v2, v2}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 605
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->notifyDataSetChanged()V

    .line 608
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v1, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    .line 610
    const/4 v0, 0x1

    goto :goto_6
.end method

.method expandGroup(I)Z
    .registers 6
    .parameter "groupPos"

    .prologue
    const/4 v3, -0x1

    .line 618
    const/4 v2, 0x2

    invoke-static {v2, p1, v3, v3}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 620
    .local v0, pm:Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v1

    .line 621
    .local v1, retValue:Z
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 622
    return v1
.end method

.method expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z
    .registers 11
    .parameter "posMetadata"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 630
    iget-object v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    if-gez v3, :cond_11

    .line 632
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Need group"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 635
    :cond_11
    iget v3, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    if-nez v3, :cond_17

    move v3, v6

    .line 674
    :goto_16
    return v3

    .line 638
    :cond_17
    iget-object v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-eqz v3, :cond_1d

    move v3, v6

    goto :goto_16

    .line 641
    :cond_1d
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    if-lt v3, v4, :cond_43

    .line 645
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 647
    .local v0, collapsedGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 649
    .local v1, collapsedIndex:I
    iget v3, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v3}, Landroid/widget/ExpandableListConnector;->collapseGroup(I)Z

    .line 652
    iget v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    if-le v3, v1, :cond_43

    .line 653
    iget v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    sub-int/2addr v3, v8

    iput v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 657
    .end local v0           #collapsedGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    .end local v1           #collapsedIndex:I
    :cond_43
    iget-object v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v4, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v5, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v4, v5}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    invoke-static {v7, v7, v3, v4, v5}, Landroid/widget/ExpandableListConnector$GroupMetadata;->obtain(IIIJ)Landroid/widget/ExpandableListConnector$GroupMetadata;

    move-result-object v2

    .line 663
    .local v2, expandedGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 666
    invoke-direct {p0, v6, v6}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 669
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->notifyDataSetChanged()V

    .line 672
    iget-object v3, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v4, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v3, v4}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    move v3, v8

    .line 674
    goto :goto_16
.end method

.method findGroupPosition(JI)I
    .registers 21
    .parameter "groupIdToMatch"
    .parameter "seedGroupPosition"

    .prologue
    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    move-object v13, v0

    invoke-interface {v13}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v3

    .line 759
    .local v3, count:I
    if-nez v3, :cond_d

    .line 760
    const/4 v13, -0x1

    .line 829
    :goto_c
    return v13

    .line 764
    :cond_d
    const-wide/high16 v13, -0x8000

    cmp-long v13, p1, v13

    if-nez v13, :cond_15

    .line 765
    const/4 v13, -0x1

    goto :goto_c

    .line 769
    :cond_15
    const/4 v13, 0x0

    move v0, v13

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 770
    const/4 v13, 0x1

    sub-int v13, v3, v13

    move v0, v13

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 772
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x64

    add-long v4, v13, v15

    .line 777
    .local v4, endTime:J
    move/from16 v6, p3

    .line 780
    .local v6, first:I
    move/from16 v9, p3

    .line 783
    .local v9, last:I
    const/4 v10, 0x0

    .line 793
    .local v10, next:Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    .line 794
    .local v2, adapter:Landroid/widget/ExpandableListAdapter;
    if-nez v2, :cond_47

    .line 795
    const/4 v13, -0x1

    goto :goto_c

    .line 813
    .local v7, hitFirst:Z
    .local v8, hitLast:Z
    .local v11, rowId:J
    :cond_3c
    if-nez v7, :cond_42

    if-eqz v10, :cond_74

    if-nez v8, :cond_74

    .line 815
    :cond_42
    add-int/lit8 v9, v9, 0x1

    .line 816
    move/from16 p3, v9

    .line 818
    const/4 v10, 0x0

    .line 798
    .end local v7           #hitFirst:Z
    .end local v8           #hitLast:Z
    .end local v11           #rowId:J
    :cond_47
    :goto_47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    cmp-long v13, v13, v4

    if-gtz v13, :cond_6c

    .line 799
    move-object v0, v2

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v11

    .line 800
    .restart local v11       #rowId:J
    cmp-long v13, v11, p1

    if-nez v13, :cond_5d

    move/from16 v13, p3

    .line 802
    goto :goto_c

    .line 805
    :cond_5d
    const/4 v13, 0x1

    sub-int v13, v3, v13

    if-ne v9, v13, :cond_6e

    const/4 v13, 0x1

    move v8, v13

    .line 806
    .restart local v8       #hitLast:Z
    :goto_64
    if-nez v6, :cond_71

    const/4 v13, 0x1

    move v7, v13

    .line 808
    .restart local v7       #hitFirst:Z
    :goto_68
    if-eqz v8, :cond_3c

    if-eqz v7, :cond_3c

    .line 829
    .end local v7           #hitFirst:Z
    .end local v8           #hitLast:Z
    .end local v11           #rowId:J
    :cond_6c
    const/4 v13, -0x1

    goto :goto_c

    .line 805
    .restart local v11       #rowId:J
    :cond_6e
    const/4 v13, 0x0

    move v8, v13

    goto :goto_64

    .line 806
    .restart local v8       #hitLast:Z
    :cond_71
    const/4 v13, 0x0

    move v7, v13

    goto :goto_68

    .line 819
    .restart local v7       #hitFirst:Z
    :cond_74
    if-nez v8, :cond_7a

    if-nez v10, :cond_47

    if-nez v7, :cond_47

    .line 821
    :cond_7a
    add-int/lit8 v6, v6, -0x1

    .line 822
    move/from16 p3, v6

    .line 824
    const/4 v10, 0x1

    goto :goto_47
.end method

.method getAdapter()Landroid/widget/ExpandableListAdapter;
    .registers 2

    .prologue
    .line 703
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 397
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    iget v1, p0, Landroid/widget/ExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method getExpandedGroupMetadataList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 716
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 3

    .prologue
    .line 707
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 708
    .local v0, adapter:Landroid/widget/ExpandableListAdapter;
    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_f

    .line 709
    check-cast v0, Landroid/widget/Filterable;

    .end local v0           #adapter:Landroid/widget/ExpandableListAdapter;
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 711
    :goto_e
    return-object v1

    .restart local v0       #adapter:Landroid/widget/ExpandableListAdapter;
    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .registers 27
    .parameter "pos"

    .prologue
    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 261
    .local v20, egml:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 264
    .local v23, numExpGroups:I
    const/4 v13, 0x0

    .line 265
    .local v13, leftExpGroupIndex:I
    const/4 v2, 0x1

    sub-int v19, v23, v2

    .line 266
    .local v19, rightExpGroupIndex:I
    const/16 v22, 0x0

    .line 269
    .local v22, midExpGroupIndex:I
    if-nez v23, :cond_12c

    .line 275
    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move v2, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    move/from16 v7, v22

    .line 365
    .end local v22           #midExpGroupIndex:I
    .local v7, midExpGroupIndex:I
    :goto_2e
    return-object v2

    .line 284
    :cond_2f
    :goto_2f
    move v0, v13

    move/from16 v1, v19

    if-gt v0, v1, :cond_ab

    .line 285
    sub-int v2, v19, v13

    div-int/lit8 v2, v2, 0x2

    add-int v7, v2, v13

    .line 286
    move-object/from16 v0, v20

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 288
    .local v6, midExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move v2, v0

    iget v3, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-le v2, v3, :cond_4f

    .line 292
    add-int/lit8 v13, v7, 0x1

    goto :goto_2f

    .line 293
    :cond_4f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move v2, v0

    iget v3, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v3, :cond_5c

    .line 297
    const/4 v2, 0x1

    sub-int v19, v7, v2

    goto :goto_2f

    .line 298
    :cond_5c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move v2, v0

    iget v3, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, v3, :cond_2f

    .line 303
    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_83

    .line 305
    iget v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move v5, v0

    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_2e

    .line 307
    :cond_83
    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a9

    .line 309
    iget v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move v5, v0

    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_2e

    .line 313
    :cond_a9
    const/4 v2, 0x0

    goto :goto_2e

    .line 322
    .end local v6           #midExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_ab
    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b6

    .line 324
    const/4 v2, 0x0

    goto/16 :goto_2e

    .line 332
    :cond_b6
    if-le v13, v7, :cond_ec

    .line 343
    const/4 v2, 0x1

    sub-int v2, v13, v2

    move-object/from16 v0, v20

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 344
    .local v21, leftExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move v2, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move v3, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move v4, v0

    sub-int/2addr v3, v4

    add-int v8, v2, v3

    .line 348
    .local v8, flPos:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move v9, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move v10, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move v11, v0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto/16 :goto_2e

    .line 350
    .end local v8           #flPos:I
    .end local v21           #leftExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_ec
    move/from16 v0, v19

    move v1, v7

    if-ge v0, v1, :cond_129

    .line 358
    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 359
    .local v24, rightExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move v2, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move v4, v0

    sub-int/2addr v3, v4

    sub-int v8, v2, v3

    .line 362
    .restart local v8       #flPos:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move v15, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move v14, v8

    invoke-static/range {v14 .. v19}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto/16 :goto_2e

    .line 365
    .end local v8           #flPos:I
    .end local v24           #rightExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_129
    const/4 v2, 0x0

    goto/16 :goto_2e

    .end local v7           #midExpGroupIndex:I
    .restart local v22       #midExpGroupIndex:I
    :cond_12c
    move/from16 v7, v22

    .end local v22           #midExpGroupIndex:I
    .restart local v7       #midExpGroupIndex:I
    goto/16 :goto_2f
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 7
    .parameter "flatListPos"

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 404
    .local v0, posMetadata:Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_19

    .line 405
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v2, v3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    .line 415
    .local v1, retValue:Ljava/lang/Object;
    :goto_15
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 417
    return-object v1

    .line 407
    .end local v1           #retValue:Ljava/lang/Object;
    :cond_19
    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2f

    .line 408
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v4, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #retValue:Ljava/lang/Object;
    goto :goto_15

    .line 412
    .end local v1           #retValue:Ljava/lang/Object;
    :cond_2f
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Flat list position is of unknown type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getItemId(I)J
    .registers 12
    .parameter "flatListPos"

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v4

    .line 422
    .local v4, posMetadata:Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v7, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v8, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v8, v8, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v7, v8}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v2

    .line 425
    .local v2, groupId:J
    iget-object v7, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v7, v7, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1f

    .line 426
    iget-object v7, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7, v2, v3}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v5

    .line 436
    .local v5, retValue:J
    :goto_1b
    invoke-virtual {v4}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 438
    return-wide v5

    .line 427
    .end local v5           #retValue:J
    :cond_1f
    iget-object v7, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v7, v7, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3b

    .line 428
    iget-object v7, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v8, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v8, v8, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v9, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v9, v9, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v7, v8, v9}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 430
    .local v0, childId:J
    iget-object v7, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7, v2, v3, v0, v1}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v5

    .line 431
    .restart local v5       #retValue:J
    goto :goto_1b

    .line 433
    .end local v0           #childId:J
    .end local v5           #retValue:J
    :cond_3b
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Flat list position is of unknown type"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public getItemViewType(I)I
    .registers 6
    .parameter "flatListPos"

    .prologue
    .line 465
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    iget-object v0, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 468
    .local v0, pos:Landroid/widget/ExpandableListPosition;
    iget v2, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    .line 469
    const/4 v1, 0x0

    .line 474
    .local v1, retValue:I
    :goto_c
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 476
    return v1

    .line 471
    .end local v1           #retValue:I
    :cond_10
    const/4 v1, 0x1

    .restart local v1       #retValue:I
    goto :goto_c
.end method

.method getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;
    .registers 23
    .parameter "flPos"

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    move-object v14, v0

    .line 111
    .local v14, egml:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 114
    .local v18, numExpGroups:I
    const/16 v16, 0x0

    .line 115
    .local v16, leftExpGroupIndex:I
    const/4 v2, 0x1

    sub-int v20, v18, v2

    .line 116
    .local v20, rightExpGroupIndex:I
    const/16 v17, 0x0

    .line 119
    .local v17, midExpGroupIndex:I
    if-nez v18, :cond_be

    .line 125
    const/4 v3, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v2, p1

    move/from16 v4, p1

    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    move/from16 v7, v17

    .line 244
    .end local v17           #midExpGroupIndex:I
    .local v7, midExpGroupIndex:I
    :goto_20
    return-object v2

    .line 141
    :cond_21
    :goto_21
    move/from16 v0, v16

    move/from16 v1, v20

    if-gt v0, v1, :cond_71

    .line 142
    sub-int v2, v20, v16

    div-int/lit8 v2, v2, 0x2

    add-int v7, v2, v16

    .line 145
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 147
    .local v6, midExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    move v1, v2

    if-le v0, v1, :cond_3d

    .line 152
    add-int/lit8 v16, v7, 0x1

    goto :goto_21

    .line 153
    :cond_3d
    iget v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    move v1, v2

    if-ge v0, v1, :cond_48

    .line 158
    const/4 v2, 0x1

    sub-int v20, v7, v2

    goto :goto_21

    .line 159
    :cond_48
    iget v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    move v1, v2

    if-ne v0, v1, :cond_5a

    .line 164
    const/4 v3, 0x2

    iget v4, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    const/4 v5, -0x1

    move/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_20

    .line 166
    :cond_5a
    iget v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    move v1, v2

    if-gt v0, v1, :cond_21

    .line 176
    iget v2, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    add-int/lit8 v2, v2, 0x1

    sub-int v5, p1, v2

    .line 177
    .local v5, childPos:I
    const/4 v3, 0x1

    iget v4, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_20

    .line 193
    .end local v5           #childPos:I
    .end local v6           #midExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_71
    const/4 v13, 0x0

    .line 196
    .local v13, insertPosition:I
    const/4 v10, 0x0

    .line 203
    .local v10, groupPos:I
    move/from16 v0, v16

    move v1, v7

    if-le v0, v1, :cond_95

    .line 211
    const/4 v2, 0x1

    sub-int v2, v16, v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 213
    .local v15, leftExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    move/from16 v13, v16

    .line 219
    iget v2, v15, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    sub-int v2, p1, v2

    iget v3, v15, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    add-int v10, v2, v3

    .line 244
    .end local v15           #leftExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    :goto_8b
    const/4 v9, 0x2

    const/4 v11, -0x1

    const/4 v12, 0x0

    move/from16 v8, p1

    invoke-static/range {v8 .. v13}, Landroid/widget/ExpandableListConnector$PositionMetadata;->obtain(IIIILandroid/widget/ExpandableListConnector$GroupMetadata;I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_20

    .line 221
    :cond_95
    move/from16 v0, v20

    move v1, v7

    if-ge v0, v1, :cond_b6

    .line 228
    add-int/lit8 v20, v20, 0x1

    move-object v0, v14

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 230
    .local v19, rightExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    move/from16 v13, v20

    .line 238
    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    move v2, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    move v3, v0

    sub-int v3, v3, p1

    sub-int v10, v2, v3

    .line 239
    goto :goto_8b

    .line 241
    .end local v19           #rightExpGm:Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_b6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown state"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v7           #midExpGroupIndex:I
    .end local v10           #groupPos:I
    .end local v13           #insertPosition:I
    .restart local v17       #midExpGroupIndex:I
    :cond_be
    move/from16 v7, v17

    .end local v17           #midExpGroupIndex:I
    .restart local v7       #midExpGroupIndex:I
    goto/16 :goto_21
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "flatListPos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 442
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v6

    .line 445
    .local v6, posMetadata:Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v0, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    .line 446
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-virtual {v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v2

    invoke-interface {v0, v1, v2, p2, p3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 458
    .local v7, retValue:Landroid/view/View;
    :goto_1a
    invoke-virtual {v6}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 460
    return-object v7

    .line 448
    .end local v7           #retValue:Landroid/view/View;
    :cond_1e
    iget-object v0, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v0, v2, :cond_3f

    .line 449
    iget-object v0, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v0, p1, :cond_3c

    move v3, v2

    .line 451
    .local v3, isLastChild:Z
    :goto_2b
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v2, v6, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 453
    .restart local v7       #retValue:Landroid/view/View;
    goto :goto_1a

    .line 449
    .end local v3           #isLastChild:Z
    .end local v7           #retValue:Landroid/view/View;
    :cond_3c
    const/4 v0, 0x0

    move v3, v0

    goto :goto_2b

    .line 455
    :cond_3f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flat list position is of unknown type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 481
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 741
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 742
    .local v0, adapter:Landroid/widget/ExpandableListAdapter;
    if-eqz v0, :cond_b

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->isEmpty()Z

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isEnabled(I)Z
    .registers 7
    .parameter "flatListPos"

    .prologue
    .line 376
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    iget-object v0, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 379
    .local v0, pos:Landroid/widget/ExpandableListPosition;
    iget v2, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    .line 380
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v3, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v4, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v1

    .line 386
    .local v1, retValue:Z
    :goto_15
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 388
    return v1

    .line 383
    .end local v1           #retValue:Z
    :cond_19
    const/4 v1, 0x1

    .restart local v1       #retValue:Z
    goto :goto_15
.end method

.method public isGroupExpanded(I)Z
    .registers 6
    .parameter "groupPosition"

    .prologue
    const/4 v3, 0x1

    .line 684
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_9
    if-ltz v1, :cond_1c

    .line 685
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListConnector$GroupMetadata;

    .line 687
    .local v0, groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;
    iget v2, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, p1, :cond_19

    move v2, v3

    .line 692
    .end local v0           #groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;
    :goto_18
    return v2

    .line 684
    .restart local v0       #groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 692
    .end local v0           #groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;
    :cond_1c
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .registers 4
    .parameter "expandableListAdapter"

    .prologue
    .line 88
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_b

    .line 89
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 92
    :cond_b
    iput-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 93
    iget-object v0, p0, Landroid/widget/ExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 94
    return-void
.end method

.method setExpandedGroupMetadataList(Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ExpandableListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, expandedGroupMetadataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ExpandableListConnector$GroupMetadata;>;"
    const/4 v3, 0x1

    .line 721
    if-eqz p1, :cond_7

    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v2, :cond_8

    .line 737
    :cond_7
    :goto_7
    return-void

    .line 727
    :cond_8
    iget-object v2, p0, Landroid/widget/ExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 728
    .local v1, numGroups:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_14
    if-ltz v0, :cond_23

    .line 729
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v1, :cond_7

    .line 728
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 735
    :cond_23
    iput-object p1, p0, Landroid/widget/ExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 736
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, Landroid/widget/ExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    goto :goto_7
.end method

.method public setMaxExpGroupCount(I)V
    .registers 2
    .parameter "maxExpGroupCount"

    .prologue
    .line 699
    iput p1, p0, Landroid/widget/ExpandableListConnector;->mMaxExpGroupCount:I

    .line 700
    return-void
.end method
