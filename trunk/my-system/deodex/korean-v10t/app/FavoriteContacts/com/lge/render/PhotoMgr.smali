.class public Lcom/lge/render/PhotoMgr;
.super Ljava/lang/Object;
.source "PhotoMgr.java"


# static fields
.field public static final DETAIL_POPUP:I = 0x63

.field public static final GRID_DISP_NUM:I = 0x6

.field public static final LAND_DISP_NUM:I = 0x4

.field public static final LEFT_LOAD_NUM:I = 0x8

.field public static final OTHER_ACTION:I = 0x64

.field public static final RIGHT_LOAD_NUM:I = 0x8

.field public static final WHEEL_DISP_NUM:I = 0x9


# instance fields
.field private m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

.field private m_DisplayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/render/FCPhotoItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_EssRender:Lcom/lge/render/EssentialRenderer;

.field private m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

.field private m_GarbageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/render/FCPhotoItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_LeftLoadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/render/FCPhotoItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_PhotoList:Lcom/lge/render/PhotoList;

.field private m_RightLoadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/render/FCPhotoItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_SelectedItem:Lcom/lge/render/FCPhotoItem;

.field private m_aiWDrawOrder:[I

.field private m_bDefaultLoadList:Z

.field private m_bDoingErase:Z

.field private m_bInitOrder:Z

.field private m_bWheelNeedLoadList:Z

.field private m_iCenterIdx:I

.field private m_iContactCnt:I

.field private runningChangOrder:Z


# direct methods
.method public constructor <init>(Lcom/lge/favoritecontacts/FavoriteContacts;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1733
    iput-boolean v0, p0, Lcom/lge/render/PhotoMgr;->runningChangOrder:Z

    .line 49
    iput-object p1, p0, Lcom/lge/render/PhotoMgr;->m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    .line 50
    iput-boolean v0, p0, Lcom/lge/render/PhotoMgr;->m_bDoingErase:Z

    .line 51
    invoke-direct {p0}, Lcom/lge/render/PhotoMgr;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/lge/favoritecontacts/FavoriteContacts;Lcom/lge/render/EssentialRenderer;Lcom/lge/render/PhotoList;)V
    .registers 5
    .parameter "context"
    .parameter "renderer"
    .parameter "list"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1733
    iput-boolean v0, p0, Lcom/lge/render/PhotoMgr;->runningChangOrder:Z

    .line 57
    iput-object p1, p0, Lcom/lge/render/PhotoMgr;->m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    .line 58
    iput-object p3, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    .line 59
    iput-boolean v0, p0, Lcom/lge/render/PhotoMgr;->m_bDoingErase:Z

    .line 60
    invoke-direct {p0}, Lcom/lge/render/PhotoMgr;->init()V

    .line 61
    invoke-direct {p0, p2}, Lcom/lge/render/PhotoMgr;->setDisplayList(Lcom/lge/render/EssentialRenderer;)Z

    .line 62
    iput-object p2, p0, Lcom/lge/render/PhotoMgr;->m_EssRender:Lcom/lge/render/EssentialRenderer;

    .line 63
    return-void
.end method

.method private GridMove(ILjava/util/ArrayList;)Z
    .registers 16
    .parameter "vectors"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/render/FCPhotoItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 601
    .local p2, loaditems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/render/FCPhotoItem;>;"
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 602
    .local v7, leftSize:I
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 604
    .local v9, rightSize:I
    if-lez p1, :cond_cb

    .line 605
    if-gtz v9, :cond_12

    .line 606
    const/4 v10, 0x0

    .line 711
    .end local p1
    :goto_11
    return v10

    .line 608
    .restart local p1
    :cond_12
    const/4 v3, 0x0

    .local v3, i:I
    :goto_13
    const/4 v10, 0x2

    if-ge v3, v10, :cond_2c

    .line 609
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v10}, Lcom/lge/render/PhotoList;->Next()[J

    .line 610
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    add-int/lit8 v7, v7, 0x1

    .line 608
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 614
    :cond_2c
    const/16 v10, 0x8

    if-le v7, v10, :cond_47

    .line 615
    const/4 v3, 0x0

    .end local p1
    :goto_31
    const/4 v10, 0x2

    if-ge v3, v10, :cond_4d

    .line 617
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    iget-object v11, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lge/render/FCPhotoItem;

    invoke-virtual {v10, p1}, Lcom/lge/favoritecontacts/DataLoader;->removeLoadItem(Lcom/lge/render/FCPhotoItem;)V

    .line 618
    add-int/lit8 v7, v7, -0x1

    .line 615
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 621
    .restart local p1
    :cond_47
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/lge/render/PhotoList;->moveLeftLoadPostion(I)V

    .line 624
    .end local p1
    :cond_4d
    const/4 v3, 0x0

    :goto_4e
    const/4 v10, 0x2

    if-ge v3, v10, :cond_64

    if-lez v9, :cond_64

    .line 625
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    add-int/lit8 v9, v9, -0x1

    .line 624
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 630
    :cond_64
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    const/4 v11, 0x1

    const/4 v12, 0x3

    invoke-virtual {v10, v11, v12}, Lcom/lge/render/PhotoList;->hasLast(II)I

    move-result v6

    .local v6, lastidx:I
    if-ltz v6, :cond_a1

    .line 631
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    neg-int v11, v6

    invoke-virtual {v10, v11}, Lcom/lge/render/PhotoList;->moveRightLoadPostion(I)V

    .line 632
    const/4 v10, 0x2

    sub-int/2addr v6, v10

    .line 634
    add-int/lit8 v3, v6, 0x1

    const/4 v5, 0x0

    .local v5, j:I
    :goto_79
    if-gtz v3, :cond_199

    .line 635
    new-instance v4, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v4}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 636
    .local v4, item:Lcom/lge/render/FCPhotoItem;
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v10, v3}, Lcom/lge/render/PhotoList;->GetRight(I)[J

    move-result-object v0

    .line 638
    .local v0, data:[J
    const/4 v10, 0x0

    aget-wide v10, v0, v10

    invoke-virtual {v4, v10, v11}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 639
    const/4 v10, 0x1

    aget-wide v10, v0, v10

    invoke-virtual {v4, v10, v11}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 641
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v10, v4}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 634
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_79

    .line 646
    .end local v0           #data:[J
    .end local v4           #item:Lcom/lge/render/FCPhotoItem;
    .end local v5           #j:I
    :cond_a1
    const/4 v3, 0x0

    :goto_a2
    const/4 v10, 0x2

    if-ge v3, v10, :cond_199

    .line 647
    new-instance v4, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v4}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 648
    .restart local v4       #item:Lcom/lge/render/FCPhotoItem;
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v10, v11}, Lcom/lge/render/PhotoList;->GetRight(I)[J

    move-result-object v0

    .line 649
    .restart local v0       #data:[J
    const/4 v10, 0x0

    aget-wide v10, v0, v10

    invoke-virtual {v4, v10, v11}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 650
    const/4 v10, 0x1

    aget-wide v10, v0, v10

    invoke-virtual {v4, v10, v11}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 652
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v10, v4}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 646
    add-int/lit8 v3, v3, 0x1

    goto :goto_a2

    .line 658
    .end local v0           #data:[J
    .end local v3           #i:I
    .end local v4           #item:Lcom/lge/render/FCPhotoItem;
    .end local v6           #lastidx:I
    .restart local p1
    :cond_cb
    if-gtz v7, :cond_d0

    .line 659
    const/4 v10, 0x0

    goto/16 :goto_11

    .line 661
    :cond_d0
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 662
    .local v1, dispCnt:I
    rem-int/lit8 v8, v1, 0x2

    .line 664
    .local v8, odd:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_d9
    const/4 v10, 0x2

    if-ge v3, v10, :cond_ea

    .line 665
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v10}, Lcom/lge/render/PhotoList;->Prev()[J

    .line 666
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/lge/render/PhotoList;->moveRightLoadPostion(I)V

    .line 664
    add-int/lit8 v3, v3, 0x1

    goto :goto_d9

    .line 669
    :cond_ea
    const/4 v3, 0x0

    :goto_eb
    const/4 v10, 0x2

    sub-int/2addr v10, v8

    if-ge v3, v10, :cond_102

    .line 670
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 671
    add-int/lit8 v9, v9, 0x1

    .line 669
    add-int/lit8 v3, v3, 0x1

    goto :goto_eb

    .line 674
    .end local p1
    :cond_102
    :goto_102
    const/16 v10, 0x8

    if-le v9, v10, :cond_11c

    .line 676
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    iget-object v11, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lge/render/FCPhotoItem;

    invoke-virtual {v10, p1}, Lcom/lge/favoritecontacts/DataLoader;->removeLoadItem(Lcom/lge/render/FCPhotoItem;)V

    .line 677
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Lcom/lge/render/PhotoList;->moveRightLoadPostion(I)V

    goto :goto_102

    .line 680
    :cond_11c
    const/4 v3, 0x0

    :goto_11d
    const/4 v10, 0x2

    if-ge v3, v10, :cond_133

    if-lez v7, :cond_133

    .line 681
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 680
    add-int/lit8 v3, v3, 0x1

    goto :goto_11d

    .line 685
    :cond_133
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    const/4 v11, -0x1

    const/4 v12, 0x3

    invoke-virtual {v10, v11, v12}, Lcom/lge/render/PhotoList;->hasFirst(II)I

    move-result v2

    .local v2, firstidx:I
    if-ltz v2, :cond_16e

    .line 686
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    neg-int v11, v2

    invoke-virtual {v10, v11}, Lcom/lge/render/PhotoList;->moveLeftLoadPostion(I)V

    .line 687
    const/4 v10, 0x2

    sub-int/2addr v2, v10

    .line 689
    add-int/lit8 v3, v2, 0x1

    :goto_147
    if-gtz v3, :cond_199

    .line 690
    new-instance v4, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v4}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 691
    .restart local v4       #item:Lcom/lge/render/FCPhotoItem;
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v10, v3}, Lcom/lge/render/PhotoList;->GetLeft(I)[J

    move-result-object v0

    .line 693
    .restart local v0       #data:[J
    const/4 v10, 0x0

    aget-wide v10, v0, v10

    invoke-virtual {v4, v10, v11}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 694
    const/4 v10, 0x1

    aget-wide v10, v0, v10

    invoke-virtual {v4, v10, v11}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 695
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 697
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v10, v4}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 689
    add-int/lit8 v3, v3, 0x1

    goto :goto_147

    .line 700
    .end local v0           #data:[J
    .end local v4           #item:Lcom/lge/render/FCPhotoItem;
    :cond_16e
    const/4 v3, 0x0

    :goto_16f
    const/4 v10, 0x2

    if-ge v3, v10, :cond_199

    .line 701
    new-instance v4, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v4}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 702
    .restart local v4       #item:Lcom/lge/render/FCPhotoItem;
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v10, v11}, Lcom/lge/render/PhotoList;->GetLeft(I)[J

    move-result-object v0

    .line 703
    .restart local v0       #data:[J
    const/4 v10, 0x0

    aget-wide v10, v0, v10

    invoke-virtual {v4, v10, v11}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 704
    const/4 v10, 0x1

    aget-wide v10, v0, v10

    invoke-virtual {v4, v10, v11}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 705
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 707
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v10, v4}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 700
    add-int/lit8 v3, v3, 0x1

    goto :goto_16f

    .line 711
    .end local v0           #data:[J
    .end local v1           #dispCnt:I
    .end local v2           #firstidx:I
    .end local v4           #item:Lcom/lge/render/FCPhotoItem;
    .end local v8           #odd:I
    :cond_199
    const/4 v10, 0x1

    goto/16 :goto_11
.end method

.method private LandMove(ILjava/util/ArrayList;)Z
    .registers 16
    .parameter "vectors"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/render/FCPhotoItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, loaditems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/render/FCPhotoItem;>;"
    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 715
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 716
    .local v5, leftSize:I
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 718
    .local v6, rightSize:I
    if-lez p1, :cond_80

    .line 719
    if-gtz v6, :cond_17

    move v7, v9

    .line 783
    :goto_16
    return v7

    .line 722
    :cond_17
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7}, Lcom/lge/render/PhotoList;->Next()[J

    .line 723
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    add-int/lit8 v5, v5, 0x1

    .line 726
    if-le v5, v12, :cond_57

    .line 728
    iget-object v8, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/render/FCPhotoItem;

    invoke-virtual {v8, v7}, Lcom/lge/favoritecontacts/DataLoader;->removeLoadItem(Lcom/lge/render/FCPhotoItem;)V

    .line 729
    add-int/lit8 v5, v5, -0x1

    .line 734
    :goto_3a
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    add-int/lit8 v6, v6, -0x1

    .line 738
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7, v10, v11}, Lcom/lge/render/PhotoList;->hasLast(II)I

    move-result v4

    .local v4, lastidx:I
    if-lez v4, :cond_5d

    .line 739
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    neg-int v8, v4

    invoke-virtual {v7, v8}, Lcom/lge/render/PhotoList;->moveRightLoadPostion(I)V

    .end local v4           #lastidx:I
    :goto_55
    move v7, v10

    .line 783
    goto :goto_16

    .line 731
    :cond_57
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7, v10}, Lcom/lge/render/PhotoList;->moveLeftLoadPostion(I)V

    goto :goto_3a

    .line 741
    .restart local v4       #lastidx:I
    :cond_5d
    new-instance v3, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v3}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 742
    .local v3, item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v3, v10}, Lcom/lge/render/FCPhotoItem;->setDrawShadow(Z)V

    .line 743
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7, v9}, Lcom/lge/render/PhotoList;->GetRight(I)[J

    move-result-object v0

    .line 744
    .local v0, data:[J
    aget-wide v7, v0, v9

    invoke-virtual {v3, v7, v8}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 745
    aget-wide v7, v0, v10

    invoke-virtual {v3, v7, v8}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 746
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v7, v3}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    goto :goto_55

    .line 751
    .end local v0           #data:[J
    .end local v3           #item:Lcom/lge/render/FCPhotoItem;
    .end local v4           #lastidx:I
    :cond_80
    if-gtz v5, :cond_84

    move v7, v9

    .line 752
    goto :goto_16

    .line 754
    :cond_84
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 755
    .local v1, dispSize:I
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7}, Lcom/lge/render/PhotoList;->Prev()[J

    .line 756
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 757
    add-int/lit8 v6, v6, 0x1

    .line 759
    if-le v6, v12, :cond_cc

    .line 761
    iget-object v8, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/render/FCPhotoItem;

    invoke-virtual {v8, v7}, Lcom/lge/favoritecontacts/DataLoader;->removeLoadItem(Lcom/lge/render/FCPhotoItem;)V

    .line 766
    :goto_af
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 769
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    const/4 v8, -0x1

    invoke-virtual {v7, v8, v11}, Lcom/lge/render/PhotoList;->hasFirst(II)I

    move-result v2

    .local v2, firstidx:I
    if-lez v2, :cond_d2

    .line 770
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    neg-int v8, v2

    invoke-virtual {v7, v8}, Lcom/lge/render/PhotoList;->moveLeftLoadPostion(I)V

    goto :goto_55

    .line 763
    .end local v2           #firstidx:I
    :cond_cc
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7, v10}, Lcom/lge/render/PhotoList;->moveRightLoadPostion(I)V

    goto :goto_af

    .line 772
    .restart local v2       #firstidx:I
    :cond_d2
    new-instance v3, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v3}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 773
    .restart local v3       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v3, v10}, Lcom/lge/render/FCPhotoItem;->setDrawShadow(Z)V

    .line 774
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7, v9}, Lcom/lge/render/PhotoList;->GetLeft(I)[J

    move-result-object v0

    .line 776
    .restart local v0       #data:[J
    aget-wide v7, v0, v9

    invoke-virtual {v3, v7, v8}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 777
    aget-wide v7, v0, v10

    invoke-virtual {v3, v7, v8}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 778
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v7, v9, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 780
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v7, v3}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    goto/16 :goto_55
.end method

.method private WheelMove(ILjava/util/ArrayList;)Z
    .registers 15
    .parameter "vectors"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/render/FCPhotoItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, loaditems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/render/FCPhotoItem;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 517
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 518
    .local v4, leftSize:I
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 519
    .local v6, rightSize:I
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 521
    .local v1, dispSize:I
    if-lez p1, :cond_a3

    .line 522
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, p1, :cond_140

    .line 523
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7}, Lcom/lge/render/PhotoList;->Next()[J

    .line 526
    iget-boolean v7, p0, Lcom/lge/render/PhotoMgr;->m_bWheelNeedLoadList:Z

    if-eqz v7, :cond_69

    .line 527
    new-instance v5, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v5}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 528
    .local v5, loaditem:Lcom/lge/render/FCPhotoItem;
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7, p1}, Lcom/lge/render/PhotoList;->getLoadData(I)[J

    move-result-object v0

    .line 530
    .local v0, data:[J
    aget-wide v7, v0, v10

    invoke-virtual {v5, v7, v8}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 531
    aget-wide v7, v0, v11

    invoke-virtual {v5, v7, v8}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 533
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v7, v5}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 537
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/render/FCPhotoItem;

    .line 538
    .local v3, item:Lcom/lge/render/FCPhotoItem;
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    iget-object v8, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/render/FCPhotoItem;

    invoke-virtual {v8, v7}, Lcom/lge/favoritecontacts/DataLoader;->removeLoadItem(Lcom/lge/render/FCPhotoItem;)V

    .line 522
    .end local v0           #data:[J
    .end local v5           #loaditem:Lcom/lge/render/FCPhotoItem;
    :goto_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 542
    .end local v3           #item:Lcom/lge/render/FCPhotoItem;
    :cond_69
    if-lez v6, :cond_84

    .line 543
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/render/FCPhotoItem;

    .line 544
    .restart local v3       #item:Lcom/lge/render/FCPhotoItem;
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    :goto_7e
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 545
    .end local v3           #item:Lcom/lge/render/FCPhotoItem;
    :cond_84
    if-lez v4, :cond_9a

    .line 546
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/render/FCPhotoItem;

    .line 547
    .restart local v3       #item:Lcom/lge/render/FCPhotoItem;
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 549
    .end local v3           #item:Lcom/lge/render/FCPhotoItem;
    :cond_9a
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/render/FCPhotoItem;

    .restart local v3       #item:Lcom/lge/render/FCPhotoItem;
    goto :goto_7e

    .line 558
    .end local v2           #i:I
    .end local v3           #item:Lcom/lge/render/FCPhotoItem;
    :cond_a3
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_a4
    if-le v2, p1, :cond_140

    .line 559
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7}, Lcom/lge/render/PhotoList;->Prev()[J

    .line 562
    iget-boolean v7, p0, Lcom/lge/render/PhotoMgr;->m_bWheelNeedLoadList:Z

    if-eqz v7, :cond_fc

    .line 563
    new-instance v5, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v5}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 564
    .restart local v5       #loaditem:Lcom/lge/render/FCPhotoItem;
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7, p1}, Lcom/lge/render/PhotoList;->getLoadData(I)[J

    move-result-object v0

    .line 566
    .restart local v0       #data:[J
    aget-wide v7, v0, v10

    invoke-virtual {v5, v7, v8}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 567
    aget-wide v7, v0, v11

    invoke-virtual {v5, v7, v8}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 569
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v7, v10, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 571
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v7, v5}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 573
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    sub-int v8, v4, v11

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/render/FCPhotoItem;

    .line 574
    .restart local v3       #item:Lcom/lge/render/FCPhotoItem;
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    sub-int v9, v1, v11

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 576
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v7, v10, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 577
    iget-object v8, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    sub-int v9, v6, v11

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/render/FCPhotoItem;

    invoke-virtual {v8, v7}, Lcom/lge/favoritecontacts/DataLoader;->removeLoadItem(Lcom/lge/render/FCPhotoItem;)V

    .line 558
    .end local v0           #data:[J
    .end local v5           #loaditem:Lcom/lge/render/FCPhotoItem;
    :goto_f9
    add-int/lit8 v2, v2, -0x1

    goto :goto_a4

    .line 579
    .end local v3           #item:Lcom/lge/render/FCPhotoItem;
    :cond_fc
    if-lez v4, :cond_11b

    .line 580
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    sub-int v8, v4, v11

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/render/FCPhotoItem;

    .line 581
    .restart local v3       #item:Lcom/lge/render/FCPhotoItem;
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    sub-int v9, v1, v11

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 592
    :goto_115
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v7, v10, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_f9

    .line 583
    .end local v3           #item:Lcom/lge/render/FCPhotoItem;
    :cond_11b
    if-lez v6, :cond_135

    .line 585
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    sub-int v8, v6, v11

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/render/FCPhotoItem;

    .line 586
    .restart local v3       #item:Lcom/lge/render/FCPhotoItem;
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    sub-int v9, v1, v11

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_115

    .line 589
    .end local v3           #item:Lcom/lge/render/FCPhotoItem;
    :cond_135
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    sub-int v8, v1, v11

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/render/FCPhotoItem;

    .restart local v3       #item:Lcom/lge/render/FCPhotoItem;
    goto :goto_115

    .line 597
    .end local v3           #item:Lcom/lge/render/FCPhotoItem;
    :cond_140
    return v11
.end method

.method static synthetic access$000(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/lge/render/PhotoMgr;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/lge/render/PhotoMgr;->m_bDoingErase:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/render/PhotoMgr;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 12
    iget v0, p0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    return v0
.end method

.method static synthetic access$302(Lcom/lge/render/PhotoMgr;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput p1, p0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    return p1
.end method

.method static synthetic access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/render/PhotoMgr;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 12
    iget v0, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    return v0
.end method

.method static synthetic access$502(Lcom/lge/render/PhotoMgr;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput p1, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    return p1
.end method

.method static synthetic access$600(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_GarbageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/EssentialRenderer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_EssRender:Lcom/lge/render/EssentialRenderer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/render/PhotoMgr;)Lcom/lge/favoritecontacts/DataLoader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/render/PhotoMgr;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/lge/render/PhotoMgr;->m_bWheelNeedLoadList:Z

    return v0
.end method

.method private changGridToWheel()V
    .registers 16

    .prologue
    .line 940
    const/16 v12, 0x9

    invoke-direct {p0, v12}, Lcom/lge/render/PhotoMgr;->setLoadState(I)Z

    move-result v12

    iput-boolean v12, p0, Lcom/lge/render/PhotoMgr;->m_bWheelNeedLoadList:Z

    .line 942
    iget v12, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    const/16 v13, 0x9

    if-gt v12, v13, :cond_5e

    .line 943
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 944
    .local v11, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_15
    if-ge v4, v11, :cond_26

    .line 945
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 948
    :cond_26
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 949
    :goto_2c
    if-lez v11, :cond_3d

    .line 950
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2c

    .line 953
    :cond_3d
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 954
    .local v2, dispcnt:I
    div-int/lit8 v12, v2, 0x2

    const/4 v13, 0x1

    rem-int/lit8 v14, v2, 0x2

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    iput v12, p0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    .line 955
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v12}, Lcom/lge/render/PhotoList;->moveToFirst()V

    .line 957
    const/4 v4, 0x0

    :goto_52
    iget v12, p0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    if-ge v4, v12, :cond_17c

    .line 958
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v12}, Lcom/lge/render/PhotoList;->Next()[J

    .line 957
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    .line 963
    .end local v2           #dispcnt:I
    .end local v4           #i:I
    .end local v11           #size:I
    :cond_5e
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 964
    .local v7, leftsize:I
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 965
    .local v10, rightsize:I
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 967
    .local v3, dispsize:I
    iget v12, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    const/16 v13, 0x9

    sub-int v9, v12, v13

    .line 968
    .local v9, rightloadcnt:I
    div-int/lit8 v6, v9, 0x2

    .line 969
    .local v6, leftloadcnt:I
    div-int/lit8 v12, v9, 0x2

    rem-int/lit8 v13, v9, 0x2

    add-int v9, v12, v13

    .line 970
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 972
    .local v8, loadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/render/FCPhotoItem;>;"
    const/4 v0, 0x0

    .line 973
    .local v0, addLeftNum:I
    const/4 v12, 0x4

    iput v12, p0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    .line 976
    const/16 v12, 0x8

    if-le v6, v12, :cond_8d

    .line 977
    const/16 v6, 0x8

    .line 980
    :cond_8d
    const/16 v12, 0x8

    if-le v9, v12, :cond_93

    .line 981
    const/16 v9, 0x8

    .line 984
    :cond_93
    :goto_93
    if-lez v10, :cond_aa

    const/16 v12, 0x9

    if-ge v3, v12, :cond_aa

    .line 985
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    add-int/lit8 v10, v10, -0x1

    .line 987
    add-int/lit8 v3, v3, 0x1

    goto :goto_93

    .line 990
    :cond_aa
    :goto_aa
    const/16 v12, 0x9

    if-ge v3, v12, :cond_c3

    if-lez v7, :cond_c3

    .line 991
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 992
    add-int/lit8 v3, v3, 0x1

    .line 993
    add-int/lit8 v0, v0, 0x1

    goto :goto_aa

    .line 996
    :cond_c3
    :goto_c3
    const/16 v12, 0x9

    if-ge v3, v12, :cond_f0

    .line 997
    new-instance v5, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v5}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 998
    .local v5, item:Lcom/lge/render/FCPhotoItem;
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/lge/render/PhotoList;->GetRight(I)[J

    move-result-object v1

    .line 999
    .local v1, data:[J
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/lge/render/PhotoList;->moveRightLoadPostion(I)V

    .line 1000
    const/4 v12, 0x0

    aget-wide v12, v1, v12

    invoke-virtual {v5, v12, v13}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 1001
    const/4 v12, 0x1

    aget-wide v12, v1, v12

    invoke-virtual {v5, v12, v13}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 1002
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    add-int/lit8 v3, v3, 0x1

    .line 1004
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    .line 1007
    .end local v1           #data:[J
    .end local v5           #item:Lcom/lge/render/FCPhotoItem;
    :cond_f0
    if-ge v7, v6, :cond_11e

    .line 1008
    :goto_f2
    if-ge v7, v6, :cond_12b

    .line 1009
    new-instance v5, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v5}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 1010
    .restart local v5       #item:Lcom/lge/render/FCPhotoItem;
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/lge/render/PhotoList;->GetLeft(I)[J

    move-result-object v1

    .line 1011
    .restart local v1       #data:[J
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/lge/render/PhotoList;->moveLeftLoadPostion(I)V

    .line 1012
    const/4 v12, 0x0

    aget-wide v12, v1, v12

    invoke-virtual {v5, v12, v13}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 1013
    const/4 v12, 0x1

    aget-wide v12, v1, v12

    invoke-virtual {v5, v12, v13}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 1014
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1015
    add-int/lit8 v7, v7, 0x1

    .line 1016
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f2

    .line 1018
    .end local v1           #data:[J
    .end local v5           #item:Lcom/lge/render/FCPhotoItem;
    :cond_11e
    if-le v7, v6, :cond_12b

    .line 1019
    :goto_120
    if-le v7, v6, :cond_12b

    .line 1020
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1021
    add-int/lit8 v7, v7, -0x1

    goto :goto_120

    .line 1025
    :cond_12b
    if-ge v10, v9, :cond_158

    .line 1026
    :goto_12d
    if-ge v10, v9, :cond_164

    .line 1027
    new-instance v5, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v5}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 1028
    .restart local v5       #item:Lcom/lge/render/FCPhotoItem;
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/lge/render/PhotoList;->GetRight(I)[J

    move-result-object v1

    .line 1029
    .restart local v1       #data:[J
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/lge/render/PhotoList;->moveRightLoadPostion(I)V

    .line 1030
    const/4 v12, 0x0

    aget-wide v12, v1, v12

    invoke-virtual {v5, v12, v13}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 1031
    const/4 v12, 0x1

    aget-wide v12, v1, v12

    invoke-virtual {v5, v12, v13}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 1032
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    add-int/lit8 v10, v10, 0x1

    .line 1034
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12d

    .line 1036
    .end local v1           #data:[J
    .end local v5           #item:Lcom/lge/render/FCPhotoItem;
    :cond_158
    if-le v10, v9, :cond_164

    .line 1037
    :goto_15a
    if-le v10, v9, :cond_164

    .line 1038
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_15a

    .line 1042
    :cond_164
    iget v12, p0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    sub-int v4, v12, v0

    .restart local v4       #i:I
    :goto_168
    if-lez v4, :cond_172

    .line 1043
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v12}, Lcom/lge/render/PhotoList;->Next()[J

    .line 1042
    add-int/lit8 v4, v4, -0x1

    goto :goto_168

    .line 1046
    :cond_172
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v12, v8}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Ljava/util/ArrayList;)V

    .line 1047
    iget-object v12, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v12}, Lcom/lge/favoritecontacts/DataLoader;->resumeLoad()V

    .line 1049
    .end local v0           #addLeftNum:I
    .end local v3           #dispsize:I
    .end local v6           #leftloadcnt:I
    .end local v7           #leftsize:I
    .end local v8           #loadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/render/FCPhotoItem;>;"
    .end local v9           #rightloadcnt:I
    .end local v10           #rightsize:I
    :cond_17c
    invoke-direct {p0}, Lcom/lge/render/PhotoMgr;->setPhotoListPosition()V

    .line 1050
    return-void
.end method

.method private changeWheelToGrid()V
    .registers 22

    .prologue
    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1056
    .local v5, dispcnt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_5f

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move v2, v5

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/render/PhotoList;->hasFirst(III)I

    move-result v6

    .line 1058
    .local v6, endIdx:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3b
    if-ge v8, v6, :cond_55

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    .line 1062
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/render/PhotoList;->moveToFirst()V

    .line 1255
    :goto_5e
    return-void

    .line 1065
    .end local v6           #endIdx:I
    .end local v8           #i:I
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 1066
    .local v16, rightsize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1067
    .local v11, leftsize:I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1069
    .local v12, loadlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/render/FCPhotoItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/lge/render/PhotoList;->hasFirst(III)I

    move-result v6

    .restart local v6       #endIdx:I
    if-ltz v6, :cond_1f3

    .line 1075
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/render/PhotoMgr;->m_bWheelNeedLoadList:Z

    move/from16 v17, v0

    if-nez v17, :cond_da

    .line 1076
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_9e
    if-ge v8, v11, :cond_b8

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1076
    add-int/lit8 v8, v8, 0x1

    goto :goto_9e

    .line 1080
    :cond_b8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    move/from16 v17, v0

    sub-int v8, v17, v6

    :goto_c0
    if-lez v8, :cond_14e

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    add-int/lit8 v8, v8, -0x1

    goto :goto_c0

    .line 1084
    .end local v8           #i:I
    :cond_da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1086
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    move/from16 v17, v0

    sub-int v8, v17, v6

    .restart local v8       #i:I
    :goto_eb
    if-lez v8, :cond_fb

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1086
    add-int/lit8 v8, v8, -0x1

    goto :goto_eb

    .line 1090
    :cond_fb
    const/16 v17, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    sub-int v14, v17, v18

    .line 1092
    .local v14, needrightloadnum:I
    const/4 v8, 0x0

    :goto_10a
    if-ge v8, v14, :cond_14e

    .line 1093
    new-instance v9, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v9}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 1094
    .local v9, item:Lcom/lge/render/FCPhotoItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/lge/render/PhotoList;->GetRight(I)[J

    move-result-object v4

    .line 1095
    .local v4, data:[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/lge/render/PhotoList;->moveRightLoadPostion(I)V

    .line 1096
    const/16 v17, 0x0

    aget-wide v17, v4, v17

    move-object v0, v9

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 1097
    const/16 v17, 0x1

    aget-wide v17, v4, v17

    move-object v0, v9

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 1098
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    add-int/lit8 v8, v8, 0x1

    goto :goto_10a

    .line 1103
    .end local v4           #data:[J
    .end local v9           #item:Lcom/lge/render/FCPhotoItem;
    .end local v14           #needrightloadnum:I
    :cond_14e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1104
    const/16 v17, 0x6

    move v0, v5

    move/from16 v1, v17

    if-ge v0, v1, :cond_17e

    .line 1105
    :goto_15f
    const/16 v17, 0x6

    move v0, v5

    move/from16 v1, v17

    if-ge v0, v1, :cond_1a7

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    add-int/lit8 v5, v5, 0x1

    goto :goto_15f

    .line 1109
    :cond_17e
    const/16 v17, 0x6

    move v0, v5

    move/from16 v1, v17

    if-le v0, v1, :cond_1a7

    .line 1110
    :goto_185
    const/16 v17, 0x6

    move v0, v5

    move/from16 v1, v17

    if-le v0, v1, :cond_1a7

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_185

    .line 1116
    :cond_1a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_1b1
    const/16 v17, 0x8

    move v0, v8

    move/from16 v1, v17

    if-le v0, v1, :cond_1c8

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    sub-int v18, v8, v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1116
    add-int/lit8 v8, v8, -0x1

    goto :goto_1b1

    .line 1120
    :cond_1c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/render/PhotoList;->moveToFirst()V

    .line 1250
    :cond_1d1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    .line 1251
    invoke-direct/range {p0 .. p0}, Lcom/lge/render/PhotoMgr;->setPhotoListPosition()V

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Ljava/util/ArrayList;)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/favoritecontacts/DataLoader;->resumeLoad()V

    goto/16 :goto_5e

    .line 1121
    .end local v8           #i:I
    :cond_1f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    move/from16 v19, v0

    sub-int v19, v5, v19

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/lge/render/PhotoList;->hasLast(III)I

    move-result v6

    if-ltz v6, :cond_3b3

    .line 1124
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    move/from16 v17, v0

    rem-int/lit8 v15, v17, 0x2

    .line 1126
    .local v15, odd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/render/PhotoMgr;->m_bWheelNeedLoadList:Z

    move/from16 v17, v0

    if-nez v17, :cond_2bd

    .line 1128
    :goto_21b
    if-lez v16, :cond_239

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_21b

    .line 1133
    :cond_239
    div-int/lit8 v17, v5, 0x2

    sub-int v8, v17, v6

    .restart local v8       #i:I
    :goto_23d
    if-lez v8, :cond_25c

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1133
    add-int/lit8 v8, v8, -0x1

    goto :goto_23d

    .line 1138
    :cond_25c
    const/16 v17, 0x1

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_27a

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1140
    add-int/lit8 v5, v5, -0x1

    .line 1165
    :cond_27a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1167
    const/16 v17, 0x6

    sub-int v17, v17, v15

    move v0, v5

    move/from16 v1, v17

    if-ge v0, v1, :cond_34b

    .line 1168
    :goto_297
    const/16 v17, 0x6

    sub-int v17, v17, v15

    move v0, v5

    move/from16 v1, v17

    if-ge v0, v1, :cond_375

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1171
    add-int/lit8 v5, v5, 0x1

    goto :goto_297

    .line 1143
    .end local v8           #i:I
    :cond_2bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1145
    const/16 v17, 0x1

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_2e4

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    add-int/lit8 v5, v5, -0x1

    .line 1150
    :cond_2e4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    move/from16 v17, v0

    sub-int v8, v17, v6

    .restart local v8       #i:I
    :goto_2ec
    if-lez v8, :cond_2ff

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v17

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1150
    add-int/lit8 v8, v8, -0x1

    goto :goto_2ec

    .line 1154
    :cond_2ff
    const/16 v17, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    sub-int v13, v17, v18

    .line 1155
    .local v13, needleftloadnum:I
    const/4 v8, 0x0

    :goto_30e
    if-ge v8, v13, :cond_27a

    .line 1156
    new-instance v9, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v9}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 1157
    .restart local v9       #item:Lcom/lge/render/FCPhotoItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/lge/render/PhotoList;->GetLeft(I)[J

    move-result-object v4

    .line 1158
    .restart local v4       #data:[J
    const/16 v17, 0x0

    aget-wide v17, v4, v17

    move-object v0, v9

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 1159
    const/16 v17, 0x1

    aget-wide v17, v4, v17

    move-object v0, v9

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 1160
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1155
    add-int/lit8 v8, v8, 0x1

    goto :goto_30e

    .line 1173
    .end local v4           #data:[J
    .end local v9           #item:Lcom/lge/render/FCPhotoItem;
    .end local v13           #needleftloadnum:I
    :cond_34b
    const/16 v17, 0x6

    sub-int v17, v17, v15

    move v0, v5

    move/from16 v1, v17

    if-le v0, v1, :cond_375

    .line 1174
    :goto_354
    const/16 v17, 0x6

    sub-int v17, v17, v15

    move v0, v5

    move/from16 v1, v17

    if-le v0, v1, :cond_375

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1176
    add-int/lit8 v5, v5, -0x1

    goto :goto_354

    .line 1180
    :cond_375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_37f
    const/16 v17, 0x8

    move v0, v8

    move/from16 v1, v17

    if-le v0, v1, :cond_394

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1180
    add-int/lit8 v8, v8, -0x1

    goto :goto_37f

    .line 1184
    :cond_394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/render/PhotoList;->moveToLast()V

    .line 1185
    const/4 v8, 0x0

    :goto_39e
    const/16 v17, 0x1

    sub-int v17, v5, v17

    move v0, v8

    move/from16 v1, v17

    if-ge v0, v1, :cond_1d1

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/render/PhotoList;->Prev()[J

    .line 1185
    add-int/lit8 v8, v8, 0x1

    goto :goto_39e

    .line 1193
    .end local v8           #i:I
    .end local v15           #odd:I
    :cond_3b3
    const/4 v7, -0x1

    .line 1194
    .local v7, firstIdx:I
    const/4 v10, -0x1

    .line 1195
    .local v10, lastIdx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/render/PhotoList;->getMovingCount()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    move/from16 v18, v0

    sub-int v15, v17, v18

    .line 1196
    .restart local v15       #odd:I
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v17

    rem-int/lit8 v15, v17, 0x2

    .line 1198
    const/16 v17, 0x1

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_3ed

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    sub-int v20, v11, v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1203
    :cond_3ed
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/render/PhotoMgr;->m_bWheelNeedLoadList:Z

    move/from16 v17, v0

    if-nez v17, :cond_456

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoList;->hasFirst(II)I

    move-result v7

    if-ltz v7, :cond_422

    .line 1205
    :goto_408
    if-lez v7, :cond_4a1

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    add-int/lit8 v7, v7, -0x1

    goto :goto_408

    .line 1211
    :cond_422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoList;->hasLast(II)I

    move-result v10

    if-ltz v10, :cond_4a1

    .line 1212
    :goto_436
    if-lez v10, :cond_4a1

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1215
    add-int/lit8 v10, v10, -0x1

    goto :goto_436

    .line 1219
    :cond_456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoList;->hasFirst(II)I

    move-result v7

    if-ltz v7, :cond_479

    .line 1220
    :goto_469
    if-lez v7, :cond_4a1

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1222
    add-int/lit8 v7, v7, -0x1

    goto :goto_469

    .line 1224
    :cond_479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoList;->hasLast(II)I

    move-result v10

    if-ltz v10, :cond_4a1

    .line 1225
    :goto_48d
    if-lez v10, :cond_4a1

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1227
    add-int/lit8 v10, v10, -0x1

    goto :goto_48d

    .line 1232
    :cond_4a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1234
    const/16 v17, 0x6

    move v0, v5

    move/from16 v1, v17

    if-le v0, v1, :cond_4d4

    .line 1235
    :goto_4b2
    const/16 v17, 0x6

    move v0, v5

    move/from16 v1, v17

    if-le v0, v1, :cond_4d4

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4b2

    .line 1241
    :cond_4d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v8

    .restart local v8       #i:I
    :goto_4de
    const/16 v17, 0x8

    move v0, v8

    move/from16 v1, v17

    if-le v0, v1, :cond_4f5

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    sub-int v18, v8, v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1241
    add-int/lit8 v8, v8, -0x1

    goto :goto_4de

    .line 1245
    :cond_4f5
    const/4 v8, 0x0

    :goto_4f6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    move/from16 v17, v0

    add-int v17, v17, v15

    move v0, v8

    move/from16 v1, v17

    if-ge v0, v1, :cond_1d1

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/render/PhotoList;->Prev()[J

    .line 1245
    add-int/lit8 v8, v8, 0x1

    goto :goto_4f6
.end method

.method private init()V
    .registers 3

    .prologue
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/render/PhotoMgr;->m_GarbageList:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Lcom/lge/favoritecontacts/DataLoader;

    iget-object v1, p0, Lcom/lge/render/PhotoMgr;->m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-direct {v0, v1}, Lcom/lge/favoritecontacts/DataLoader;-><init>(Lcom/lge/favoritecontacts/FavoriteContacts;)V

    iput-object v0, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    .line 87
    invoke-virtual {p0}, Lcom/lge/render/PhotoMgr;->onDrawInit()V

    .line 88
    return-void
.end method

.method private onDrawDefault(Landroid/graphics/Canvas;I)V
    .registers 10
    .parameter "canvas"
    .parameter "remainNum"

    .prologue
    .line 428
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 429
    .local v0, dispCnt:I
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 430
    .local v5, rigntCnt:I
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 432
    .local v4, leftCnt:I
    const/4 v6, 0x1

    sub-int v1, v4, v6

    .local v1, i:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_16
    if-ltz v1, :cond_2a

    if-ge v3, p2, :cond_2a

    .line 433
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/render/FCPhotoItem;

    .line 434
    .local v2, item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v2, p1}, Lcom/lge/render/FCPhotoItem;->onDrawFrame(Landroid/graphics/Canvas;)V

    .line 432
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 437
    .end local v2           #item:Lcom/lge/render/FCPhotoItem;
    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    if-ge v1, p2, :cond_3d

    if-ge v1, v5, :cond_3d

    .line 438
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/render/FCPhotoItem;

    .line 439
    .restart local v2       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v2, p1}, Lcom/lge/render/FCPhotoItem;->onDrawFrame(Landroid/graphics/Canvas;)V

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 442
    .end local v2           #item:Lcom/lge/render/FCPhotoItem;
    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    if-ge v1, v0, :cond_4e

    .line 443
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/render/FCPhotoItem;

    .line 444
    .restart local v2       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v2, p1}, Lcom/lge/render/FCPhotoItem;->onDrawFrame(Landroid/graphics/Canvas;)V

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 447
    .end local v2           #item:Lcom/lge/render/FCPhotoItem;
    :cond_4e
    return-void
.end method

.method private onDrawWheel(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    .line 450
    iget-object v4, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 452
    .local v0, dispCnt:I
    iget-boolean v4, p0, Lcom/lge/render/PhotoMgr;->m_bInitOrder:Z

    if-nez v4, :cond_1f

    .line 453
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_2d

    .line 454
    iget-object v4, p0, Lcom/lge/render/PhotoMgr;->m_aiWDrawOrder:[I

    aget v3, v4, v1

    .line 455
    .local v3, order:I
    iget-object v4, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/render/FCPhotoItem;

    .line 456
    .local v2, item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v2, p1}, Lcom/lge/render/FCPhotoItem;->onDrawFrame(Landroid/graphics/Canvas;)V

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 459
    .end local v1           #i:I
    .end local v2           #item:Lcom/lge/render/FCPhotoItem;
    .end local v3           #order:I
    :cond_1f
    invoke-virtual {p0, v0}, Lcom/lge/render/PhotoMgr;->getWheelDrawOrder(I)[I

    .line 460
    iget v4, p0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    invoke-static {v0, v4}, Lcom/lge/render/WheelRenderer;->getSettingVertexes(II)[I

    .line 461
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lge/render/PhotoMgr;->m_bInitOrder:Z

    .line 463
    invoke-direct {p0, p1}, Lcom/lge/render/PhotoMgr;->onDrawWheel(Landroid/graphics/Canvas;)V

    .line 465
    :cond_2d
    return-void
.end method

.method private setDefaultList(ILjava/lang/String;)Z
    .registers 16
    .parameter "dispCount"
    .parameter "renderTag"

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 213
    iget v7, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    if-nez v7, :cond_a

    move v7, v10

    .line 308
    :goto_9
    return v7

    .line 216
    :cond_a
    iput v11, p0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    .line 217
    iget v7, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    if-lez v7, :cond_12c

    .line 220
    iget v7, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    if-le v7, p1, :cond_95

    .line 221
    move v3, p1

    .line 223
    .local v3, dispcnt:I
    iget v7, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    iget-object v8, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v8}, Lcom/lge/render/PhotoList;->getStartPointCnt()I

    move-result v8

    sub-int v0, v7, v8

    .line 225
    .local v0, compare:I
    const-string v7, "GRID_RENDERER"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 226
    if-ge v0, v3, :cond_73

    .line 227
    iget v7, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    rem-int/lit8 v7, v7, 0x2

    if-ne v7, v10, :cond_6a

    .line 228
    add-int/lit8 v3, v3, -0x1

    .line 229
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    iget v8, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    sub-int v9, p1, v10

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/lge/render/PhotoList;->setStartPoint(I)V

    .line 250
    .end local v0           #compare:I
    :cond_3b
    :goto_3b
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7}, Lcom/lge/render/PhotoList;->moveToStartPoint()V

    .line 251
    const/4 v6, 0x0

    .line 252
    .local v6, isLast:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_42
    if-ge v4, v3, :cond_9d

    .line 253
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7}, Lcom/lge/render/PhotoList;->isLast()Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 254
    const/4 v6, 0x1

    .line 256
    :cond_4d
    new-instance v1, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v1}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 258
    .local v1, contactphoto:Lcom/lge/render/FCPhotoItem;
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7}, Lcom/lge/render/PhotoList;->Next()[J

    move-result-object v2

    .line 259
    .local v2, data:[J
    aget-wide v7, v2, v11

    invoke-virtual {v1, v7, v8}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 260
    aget-wide v7, v2, v10

    invoke-virtual {v1, v7, v8}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 261
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 232
    .end local v1           #contactphoto:Lcom/lge/render/FCPhotoItem;
    .end local v2           #data:[J
    .end local v4           #i:I
    .end local v6           #isLast:Z
    .restart local v0       #compare:I
    :cond_6a
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    iget v8, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    sub-int/2addr v8, p1

    invoke-virtual {v7, v8}, Lcom/lge/render/PhotoList;->setStartPoint(I)V

    goto :goto_3b

    .line 236
    :cond_73
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7}, Lcom/lge/render/PhotoList;->getStartPointCnt()I

    move-result v7

    rem-int/lit8 v7, v7, 0x2

    if-ne v7, v10, :cond_3b

    .line 237
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    iget-object v8, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v8}, Lcom/lge/render/PhotoList;->getStartPointCnt()I

    move-result v8

    sub-int/2addr v8, v10

    invoke-virtual {v7, v8}, Lcom/lge/render/PhotoList;->setStartPoint(I)V

    goto :goto_3b

    .line 241
    :cond_8a
    if-ge v0, v3, :cond_3b

    .line 242
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    iget v8, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    sub-int/2addr v8, p1

    invoke-virtual {v7, v8}, Lcom/lge/render/PhotoList;->setStartPoint(I)V

    goto :goto_3b

    .line 246
    .end local v0           #compare:I
    .end local v3           #dispcnt:I
    :cond_95
    iget v3, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    .line 247
    .restart local v3       #dispcnt:I
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7, v11}, Lcom/lge/render/PhotoList;->setStartPoint(I)V

    goto :goto_3b

    .line 264
    .restart local v4       #i:I
    .restart local v6       #isLast:Z
    :cond_9d
    if-nez v6, :cond_cb

    .line 265
    const/4 v6, 0x0

    .line 266
    const/4 v4, 0x0

    :goto_a1
    if-ge v4, v12, :cond_cb

    if-nez v6, :cond_cb

    .line 267
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7}, Lcom/lge/render/PhotoList;->isLast()Z

    move-result v7

    if-eqz v7, :cond_ae

    .line 268
    const/4 v6, 0x1

    .line 269
    :cond_ae
    new-instance v1, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v1}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 271
    .restart local v1       #contactphoto:Lcom/lge/render/FCPhotoItem;
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7}, Lcom/lge/render/PhotoList;->Next()[J

    move-result-object v2

    .line 272
    .restart local v2       #data:[J
    aget-wide v7, v2, v11

    invoke-virtual {v1, v7, v8}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 273
    aget-wide v7, v2, v10

    invoke-virtual {v1, v7, v8}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 274
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v4, v4, 0x1

    goto :goto_a1

    .line 278
    .end local v1           #contactphoto:Lcom/lge/render/FCPhotoItem;
    .end local v2           #data:[J
    :cond_cb
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7}, Lcom/lge/render/PhotoList;->moveToStartPoint()V

    .line 280
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7}, Lcom/lge/render/PhotoList;->isFirst()Z

    move-result v7

    if-nez v7, :cond_109

    .line 281
    const/4 v5, 0x0

    .line 282
    .local v5, isFirst:Z
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7}, Lcom/lge/render/PhotoList;->Prev()[J

    .line 283
    const/4 v4, 0x0

    :goto_df
    if-ge v4, v12, :cond_109

    if-nez v5, :cond_109

    .line 284
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7}, Lcom/lge/render/PhotoList;->isFirst()Z

    move-result v7

    if-eqz v7, :cond_ec

    .line 285
    const/4 v5, 0x1

    .line 287
    :cond_ec
    new-instance v1, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v1}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 289
    .restart local v1       #contactphoto:Lcom/lge/render/FCPhotoItem;
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7}, Lcom/lge/render/PhotoList;->Prev()[J

    move-result-object v2

    .line 290
    .restart local v2       #data:[J
    aget-wide v7, v2, v11

    invoke-virtual {v1, v7, v8}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 291
    aget-wide v7, v2, v10

    invoke-virtual {v1, v7, v8}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 292
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v7, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 283
    add-int/lit8 v4, v4, 0x1

    goto :goto_df

    .line 296
    .end local v1           #contactphoto:Lcom/lge/render/FCPhotoItem;
    .end local v2           #data:[J
    .end local v5           #isFirst:Z
    :cond_109
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v7}, Lcom/lge/render/PhotoList;->moveToStartPoint()V

    .line 298
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    iget-object v8, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Ljava/util/ArrayList;)V

    .line 299
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    iget-object v8, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Ljava/util/ArrayList;)V

    .line 300
    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    iget-object v8, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Ljava/util/ArrayList;)V

    .line 302
    invoke-direct {p0}, Lcom/lge/render/PhotoMgr;->setPhotoListPosition()V

    .line 304
    invoke-virtual {p0}, Lcom/lge/render/PhotoMgr;->onDrawInit()V

    move v7, v10

    .line 306
    goto/16 :goto_9

    .end local v3           #dispcnt:I
    .end local v4           #i:I
    .end local v6           #isLast:Z
    :cond_12c
    move v7, v11

    .line 308
    goto/16 :goto_9
.end method

.method private setDisplayList(Lcom/lge/render/EssentialRenderer;)Z
    .registers 6
    .parameter "renderer"

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v2, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    if-nez v2, :cond_7

    move v2, v3

    .line 127
    :goto_6
    return v2

    .line 98
    :cond_7
    iput-boolean v3, p0, Lcom/lge/render/PhotoMgr;->m_bDefaultLoadList:Z

    .line 100
    iget-object v2, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v2}, Lcom/lge/render/PhotoList;->getCount()I

    move-result v2

    iput v2, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    .line 101
    iget-object v2, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 102
    iget-object v2, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 103
    iget-object v2, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 105
    invoke-virtual {p1}, Lcom/lge/render/EssentialRenderer;->getRendererTag()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, renderTag:Ljava/lang/String;
    iget v2, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    if-nez v2, :cond_2f

    .line 108
    iget-object v2, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v2}, Lcom/lge/favoritecontacts/DataLoader;->startLoad()V

    move v2, v3

    .line 109
    goto :goto_6

    .line 112
    :cond_2f
    const-string v2, "EFFECT_RENDERER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    move v2, v3

    .line 113
    goto :goto_6

    .line 114
    :cond_39
    const-string v2, "GRID_RENDERER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 115
    const/4 v2, 0x6

    invoke-direct {p0, v2, v0}, Lcom/lge/render/PhotoMgr;->setDefaultList(ILjava/lang/String;)Z

    move-result v1

    .local v1, ret:Z
    move v2, v1

    .line 116
    goto :goto_6

    .line 118
    .end local v1           #ret:Z
    :cond_48
    const-string v2, "WHEEL_RENDERER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 119
    invoke-direct {p0}, Lcom/lge/render/PhotoMgr;->setWheelDispList()Z

    move-result v1

    .line 120
    .restart local v1       #ret:Z
    iget-boolean v2, p0, Lcom/lge/render/PhotoMgr;->m_bDefaultLoadList:Z

    iput-boolean v2, p0, Lcom/lge/render/PhotoMgr;->m_bWheelNeedLoadList:Z

    move v2, v1

    .line 121
    goto :goto_6

    .line 122
    .end local v1           #ret:Z
    :cond_5a
    const-string v2, "LAND_RENDERER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 123
    const/4 v2, 0x4

    invoke-direct {p0, v2, v0}, Lcom/lge/render/PhotoMgr;->setDefaultList(ILjava/lang/String;)Z

    move-result v1

    .line 124
    .restart local v1       #ret:Z
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lge/render/PhotoMgr;->setDrawShadow(Z)V

    move v2, v1

    .line 125
    goto :goto_6

    .end local v1           #ret:Z
    :cond_6d
    move v2, v3

    .line 127
    goto :goto_6
.end method

.method private setLoadState(I)Z
    .registers 5
    .parameter "dispCnt"

    .prologue
    .line 336
    iget v2, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    sub-int v0, v2, p1

    .line 337
    .local v0, loadcnt:I
    const/4 v1, 0x0

    .line 339
    .local v1, ret:Z
    const/16 v2, 0x10

    if-le v0, v2, :cond_a

    .line 340
    const/4 v1, 0x1

    .line 343
    :cond_a
    return v1
.end method

.method private setPhotoListPosition()V
    .registers 5

    .prologue
    .line 330
    iget-object v1, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    iget-object v2, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/lge/render/PhotoList;->setLeftLoadPostion(I)V

    .line 331
    iget-object v1, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 332
    .local v0, right:I
    iget-object v1, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    iget-object v2, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/lge/render/PhotoList;->setRightLoadPostion(I)V

    .line 333
    return-void
.end method

.method private setWheelDispList()Z
    .registers 12

    .prologue
    const/16 v10, 0x9

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 131
    iget v6, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    if-nez v6, :cond_a

    move v6, v8

    .line 209
    :goto_9
    return v6

    .line 134
    :cond_a
    iget v6, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    if-lt v6, v10, :cond_5a

    .line 135
    const/4 v6, 0x4

    iput v6, p0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    .line 140
    :goto_11
    iget v6, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    if-lez v6, :cond_e7

    .line 145
    iget v6, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    if-le v6, v10, :cond_68

    .line 146
    const/16 v2, 0x9

    .line 147
    .local v2, dispcnt:I
    iget v6, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    sub-int v5, v6, v10

    .line 148
    .local v5, rloadcnt:I
    div-int/lit8 v4, v5, 0x2

    .line 149
    .local v4, lloadcnt:I
    div-int/lit8 v6, v5, 0x2

    rem-int/lit8 v7, v5, 0x2

    add-int v5, v6, v7

    .line 151
    invoke-direct {p0, v10}, Lcom/lge/render/PhotoMgr;->setLoadState(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lge/render/PhotoMgr;->m_bDefaultLoadList:Z

    .line 152
    iget-boolean v6, p0, Lcom/lge/render/PhotoMgr;->m_bDefaultLoadList:Z

    if-eqz v6, :cond_35

    .line 153
    const/16 v5, 0x8

    .line 154
    const/16 v4, 0x8

    .line 162
    :cond_35
    :goto_35
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v6}, Lcom/lge/render/PhotoList;->moveToStartPoint()V

    .line 164
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3b
    if-ge v3, v2, :cond_6d

    .line 165
    new-instance v0, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v0}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 167
    .local v0, contactphoto:Lcom/lge/render/FCPhotoItem;
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v6}, Lcom/lge/render/PhotoList;->Next()[J

    move-result-object v1

    .line 168
    .local v1, data:[J
    aget-wide v6, v1, v9

    invoke-virtual {v0, v6, v7}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 169
    aget-wide v6, v1, v8

    invoke-virtual {v0, v6, v7}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 170
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 138
    .end local v0           #contactphoto:Lcom/lge/render/FCPhotoItem;
    .end local v1           #data:[J
    .end local v2           #dispcnt:I
    .end local v3           #i:I
    .end local v4           #lloadcnt:I
    .end local v5           #rloadcnt:I
    :cond_5a
    iget v6, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    rem-int/lit8 v7, v7, 0x2

    sub-int v7, v8, v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    goto :goto_11

    .line 157
    :cond_68
    iget v2, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    .line 158
    .restart local v2       #dispcnt:I
    const/4 v5, 0x0

    .line 159
    .restart local v5       #rloadcnt:I
    const/4 v4, 0x0

    .restart local v4       #lloadcnt:I
    goto :goto_35

    .line 173
    .restart local v3       #i:I
    :cond_6d
    const/4 v3, 0x0

    :goto_6e
    if-ge v3, v5, :cond_8d

    .line 174
    new-instance v0, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v0}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 176
    .restart local v0       #contactphoto:Lcom/lge/render/FCPhotoItem;
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v6}, Lcom/lge/render/PhotoList;->Next()[J

    move-result-object v1

    .line 177
    .restart local v1       #data:[J
    aget-wide v6, v1, v9

    invoke-virtual {v0, v6, v7}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 178
    aget-wide v6, v1, v8

    invoke-virtual {v0, v6, v7}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 179
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    .line 182
    .end local v0           #contactphoto:Lcom/lge/render/FCPhotoItem;
    .end local v1           #data:[J
    :cond_8d
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v6}, Lcom/lge/render/PhotoList;->moveToStartPoint()V

    .line 183
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v6}, Lcom/lge/render/PhotoList;->Prev()[J

    .line 184
    const/4 v3, 0x0

    :goto_98
    if-ge v3, v4, :cond_b7

    .line 185
    new-instance v0, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v0}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 187
    .restart local v0       #contactphoto:Lcom/lge/render/FCPhotoItem;
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v6}, Lcom/lge/render/PhotoList;->Prev()[J

    move-result-object v1

    .line 188
    .restart local v1       #data:[J
    aget-wide v6, v1, v9

    invoke-virtual {v0, v6, v7}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 189
    aget-wide v6, v1, v8

    invoke-virtual {v0, v6, v7}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 190
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v6, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 184
    add-int/lit8 v3, v3, 0x1

    goto :goto_98

    .line 193
    .end local v0           #contactphoto:Lcom/lge/render/FCPhotoItem;
    .end local v1           #data:[J
    :cond_b7
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v6}, Lcom/lge/render/PhotoList;->moveToStartPoint()V

    .line 195
    const/4 v3, 0x0

    :goto_bd
    iget v6, p0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    if-ge v3, v6, :cond_c9

    .line 196
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v6}, Lcom/lge/render/PhotoList;->Next()[J

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_bd

    .line 199
    :cond_c9
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Ljava/util/ArrayList;)V

    .line 200
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Ljava/util/ArrayList;)V

    .line 201
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Ljava/util/ArrayList;)V

    .line 203
    invoke-direct {p0}, Lcom/lge/render/PhotoMgr;->setPhotoListPosition()V

    .line 205
    invoke-virtual {p0}, Lcom/lge/render/PhotoMgr;->onDrawInit()V

    move v6, v8

    .line 207
    goto/16 :goto_9

    .end local v2           #dispcnt:I
    .end local v3           #i:I
    .end local v4           #lloadcnt:I
    .end local v5           #rloadcnt:I
    :cond_e7
    move v6, v9

    .line 209
    goto/16 :goto_9
.end method


# virtual methods
.method public ChangedRender(I)V
    .registers 5
    .parameter "renderflag"

    .prologue
    .line 918
    shr-int/lit8 v1, p1, 0x8

    .line 919
    .local v1, oldRender:I
    and-int/lit16 v0, p1, 0xff

    .line 921
    .local v0, newRender:I
    packed-switch v1, :pswitch_data_1a

    .line 936
    :cond_7
    :goto_7
    :pswitch_7
    invoke-virtual {p0}, Lcom/lge/render/PhotoMgr;->onDrawInit()V

    .line 937
    return-void

    .line 923
    :pswitch_b
    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 924
    invoke-direct {p0}, Lcom/lge/render/PhotoMgr;->changGridToWheel()V

    goto :goto_7

    .line 927
    :pswitch_12
    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 928
    invoke-direct {p0}, Lcom/lge/render/PhotoMgr;->changeWheelToGrid()V

    goto :goto_7

    .line 921
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_b
        :pswitch_12
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public addDispList(Lcom/lge/render/FCPhotoItem;I)V
    .registers 4
    .parameter "item"
    .parameter "index"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 360
    return-void
.end method

.method public addFavoriteAction(II)V
    .registers 24
    .parameter "renderFlag"
    .parameter "movingCnt"

    .prologue
    .line 1894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/render/PhotoList;->isAddAction()Z

    move-result v17

    if-nez v17, :cond_d

    .line 2218
    :goto_c
    return-void

    .line 1896
    :cond_d
    const-string v17, "PhotoMgr"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  ====  Add Action movingCnt Index ==== "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/render/PhotoList;->moveToFirst()V

    .line 1899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoList;->setStartPoint(I)V

    .line 1900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/render/PhotoList;->moveToStartPoint()V

    .line 1902
    const-string v17, "PhotoMgr"

    const-string v18, " === Add Favorite Contacts ==== "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    move/from16 v8, p1

    .line 1904
    .local v8, flag:I
    const/16 v17, 0x8

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_62

    .line 1905
    invoke-static {}, Lcom/lge/render/EffectRenderer;->getRenderFlag()I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move v8, v0

    .line 1908
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1909
    .local v7, dispcnt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1910
    .local v11, leftcnt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1912
    .local v15, rightcnt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/render/PhotoList;->getAddCnt()I

    move-result v4

    .line 1913
    .local v4, addcnt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/render/PhotoList;->getCount()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    .line 1915
    packed-switch v8, :pswitch_data_6fe

    .line 1926
    :pswitch_9d
    const/4 v13, 0x0

    .line 1931
    .local v13, max_dispcnt:I
    :goto_9e
    packed-switch v8, :pswitch_data_70a

    :pswitch_a1
    goto/16 :goto_c

    .line 2140
    :pswitch_a3
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    .line 2141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    move/from16 v19, v0

    move/from16 v0, v19

    move v1, v13

    if-le v0, v1, :cond_5e6

    move/from16 v19, v13

    :goto_c0
    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/lge/render/PhotoList;->hasAddPoint(III)I

    move-result v3

    .local v3, addPointIdx:I
    if-ltz v3, :cond_670

    .line 2144
    :goto_c8
    if-ge v3, v13, :cond_5f2

    if-lez v4, :cond_5f2

    .line 2145
    new-instance v10, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v10}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 2147
    .local v10, item:Lcom/lge/render/FCPhotoItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/render/PhotoList;->getAddData()[J

    move-result-object v5

    .line 2148
    .local v5, adddata:[J
    const/16 v17, 0x0

    aget-wide v17, v5, v17

    move-object v0, v10

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 2149
    const/16 v17, 0x1

    aget-wide v17, v5, v17

    move-object v0, v10

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 2151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v3

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2152
    if-lt v7, v13, :cond_5ee

    .line 2153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v19

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2155
    add-int/lit8 v15, v15, 0x1

    .line 2156
    const/16 v17, 0x8

    move v0, v15

    move/from16 v1, v17

    if-le v0, v1, :cond_12f

    .line 2157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, v17

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2162
    :cond_12f
    :goto_12f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 2163
    add-int/lit8 v3, v3, 0x1

    .line 2164
    add-int/lit8 v4, v4, -0x1

    .line 2165
    goto :goto_c8

    .line 1917
    .end local v3           #addPointIdx:I
    .end local v5           #adddata:[J
    .end local v10           #item:Lcom/lge/render/FCPhotoItem;
    .end local v13           #max_dispcnt:I
    :pswitch_140
    const/16 v13, 0x9

    .line 1918
    .restart local v13       #max_dispcnt:I
    goto/16 :goto_9e

    .line 1920
    .end local v13           #max_dispcnt:I
    :pswitch_144
    const/4 v13, 0x6

    .line 1921
    .restart local v13       #max_dispcnt:I
    goto/16 :goto_9e

    .line 1923
    .end local v13           #max_dispcnt:I
    :pswitch_147
    const/4 v13, 0x4

    .line 1924
    .restart local v13       #max_dispcnt:I
    goto/16 :goto_9e

    .line 1933
    :pswitch_14a
    if-gtz v7, :cond_168

    .line 1934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/lge/render/PhotoList;->setStartPoint(I)V

    .line 1935
    invoke-direct/range {p0 .. p0}, Lcom/lge/render/PhotoMgr;->setWheelDispList()Z

    .line 2135
    :cond_15a
    invoke-direct/range {p0 .. p0}, Lcom/lge/render/PhotoMgr;->setPhotoListPosition()V

    .line 2136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/favoritecontacts/DataLoader;->resumeLoad()V

    goto/16 :goto_c

    .line 1937
    :cond_168
    const/16 v16, 0x0

    .line 1938
    .local v16, rightloadnum:I
    const/4 v12, 0x0

    .line 1940
    .local v12, leftloadnum:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    move/from16 v17, v0

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_19c

    .line 1941
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    move/from16 v17, v0

    const/16 v18, 0x9

    sub-int v16, v17, v18

    .line 1942
    div-int/lit8 v12, v16, 0x2

    .line 1943
    rem-int/lit8 v17, v16, 0x2

    add-int v16, v12, v17

    .line 1945
    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_193

    .line 1946
    const/16 v16, 0x8

    .line 1947
    :cond_193
    const/16 v17, 0x8

    move v0, v12

    move/from16 v1, v17

    if-le v0, v1, :cond_19c

    .line 1948
    const/16 v12, 0x8

    .line 1951
    :cond_19c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    move/from16 v19, v0

    move/from16 v0, v19

    move v1, v13

    if-le v0, v1, :cond_27b

    move/from16 v19, v13

    :goto_1ba
    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/lge/render/PhotoList;->hasAddPoint(III)I

    move-result v3

    .restart local v3       #addPointIdx:I
    if-ltz v3, :cond_3b8

    .line 1955
    :goto_1c2
    if-ge v3, v13, :cond_2ac

    if-lez v4, :cond_2ac

    .line 1956
    const-string v17, "PhotoMgr"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  ====  Add Action addPoint Index ==== "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    new-instance v10, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v10}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 1961
    .restart local v10       #item:Lcom/lge/render/FCPhotoItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/render/PhotoList;->getAddData()[J

    move-result-object v5

    .line 1962
    .restart local v5       #adddata:[J
    const/16 v17, 0x0

    aget-wide v17, v5, v17

    move-object v0, v10

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 1963
    const/16 v17, 0x1

    aget-wide v17, v5, v17

    move-object v0, v10

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 1965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v3

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1966
    const-string v17, "PhotoMgr"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "  ====  Add Action  ==== "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    if-lt v7, v13, :cond_2a9

    .line 1970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v19

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1972
    add-int/lit8 v3, v3, -0x1

    .line 1973
    add-int/lit8 v15, v15, 0x1

    .line 1974
    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_269

    .line 1975
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/render/PhotoMgr;->m_bWheelNeedLoadList:Z

    move/from16 v17, v0

    if-nez v17, :cond_25b

    if-lt v11, v12, :cond_283

    .line 1977
    :cond_25b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, v17

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1987
    :cond_269
    :goto_269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 1988
    add-int/lit8 v3, v3, 0x1

    .line 1989
    add-int/lit8 v4, v4, -0x1

    .line 1990
    goto/16 :goto_1c2

    .line 1951
    .end local v3           #addPointIdx:I
    .end local v5           #adddata:[J
    .end local v10           #item:Lcom/lge/render/FCPhotoItem;
    :cond_27b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    move/from16 v19, v0

    goto/16 :goto_1ba

    .line 1979
    .restart local v3       #addPointIdx:I
    .restart local v5       #adddata:[J
    .restart local v10       #item:Lcom/lge/render/FCPhotoItem;
    :cond_283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/lge/render/PhotoList;->moveLeftLoadPostion(I)V

    .line 1981
    add-int/lit8 v11, v11, 0x1

    goto :goto_269

    .line 1985
    :cond_2a9
    add-int/lit8 v7, v7, 0x1

    goto :goto_269

    .line 1991
    .end local v5           #adddata:[J
    .end local v10           #item:Lcom/lge/render/FCPhotoItem;
    :cond_2ac
    if-lez v4, :cond_33c

    .line 1992
    const/4 v3, 0x0

    .line 1993
    :goto_2af
    move v0, v3

    move/from16 v1, v16

    if-ge v0, v1, :cond_33c

    if-lez v4, :cond_33c

    .line 1994
    new-instance v10, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v10}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 1996
    .restart local v10       #item:Lcom/lge/render/FCPhotoItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/render/PhotoList;->getAddData()[J

    move-result-object v5

    .line 1997
    .restart local v5       #adddata:[J
    const/16 v17, 0x0

    aget-wide v17, v5, v17

    move-object v0, v10

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 1998
    const/16 v17, 0x1

    aget-wide v17, v5, v17

    move-object v0, v10

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 2000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v3

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2001
    add-int/lit8 v15, v15, 0x1

    .line 2003
    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_305

    .line 2004
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/render/PhotoMgr;->m_bWheelNeedLoadList:Z

    move/from16 v17, v0

    if-nez v17, :cond_2f7

    if-lt v11, v12, :cond_316

    .line 2006
    :cond_2f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, v17

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2014
    :cond_305
    :goto_305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 2015
    add-int/lit8 v3, v3, 0x1

    .line 2016
    add-int/lit8 v4, v4, -0x1

    .line 2017
    goto :goto_2af

    .line 2008
    :cond_316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/lge/render/PhotoList;->moveLeftLoadPostion(I)V

    .line 2010
    add-int/lit8 v11, v11, 0x1

    goto :goto_305

    .line 2020
    .end local v5           #adddata:[J
    .end local v10           #item:Lcom/lge/render/FCPhotoItem;
    :cond_33c
    :goto_33c
    if-ge v11, v12, :cond_38d

    .line 2021
    new-instance v10, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v10}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 2022
    .restart local v10       #item:Lcom/lge/render/FCPhotoItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/lge/render/PhotoList;->GetLeft(I)[J

    move-result-object v5

    .line 2023
    .restart local v5       #adddata:[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/lge/render/PhotoList;->moveLeftLoadPostion(I)V

    .line 2025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2026
    add-int/lit8 v11, v11, 0x1

    .line 2028
    const/16 v17, 0x0

    aget-wide v17, v5, v17

    move-object v0, v10

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 2029
    const/16 v17, 0x1

    aget-wide v17, v5, v17

    move-object v0, v10

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 2030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    goto :goto_33c

    .line 2033
    .end local v5           #adddata:[J
    .end local v10           #item:Lcom/lge/render/FCPhotoItem;
    :cond_38d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    move v6, v0

    .line 2034
    .local v6, curCenter:I
    div-int/lit8 v17, v7, 0x2

    const/16 v18, 0x1

    rem-int/lit8 v19, v7, 0x2

    sub-int v18, v18, v19

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    .line 2035
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    move/from16 v17, v0

    sub-int v6, v17, v6

    .line 2036
    :goto_3aa
    if-lez v6, :cond_15a

    .line 2037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/render/PhotoList;->Next()[J

    .line 2038
    add-int/lit8 v6, v6, -0x1

    goto :goto_3aa

    .line 2042
    .end local v6           #curCenter:I
    :cond_3b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    const/16 v18, 0x1

    sub-int v14, v17, v18

    .line 2043
    .local v14, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    add-int v18, v16, v14

    invoke-virtual/range {v17 .. v18}, Lcom/lge/render/PhotoList;->setRightLoadPostion(I)V

    .line 2044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoList;->setLeftLoadPostion(I)V

    .line 2045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoList;->hasAddPoint(II)I

    move-result v3

    if-ltz v3, :cond_4da

    .line 2048
    invoke-direct/range {p0 .. p0}, Lcom/lge/render/PhotoMgr;->setPhotoListPosition()V

    .line 2049
    :goto_3fc
    move v0, v3

    move/from16 v1, v16

    if-ge v0, v1, :cond_489

    if-lez v4, :cond_489

    .line 2050
    new-instance v10, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v10}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 2052
    .restart local v10       #item:Lcom/lge/render/FCPhotoItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/render/PhotoList;->getAddData()[J

    move-result-object v5

    .line 2053
    .restart local v5       #adddata:[J
    const/16 v17, 0x0

    aget-wide v17, v5, v17

    move-object v0, v10

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 2054
    const/16 v17, 0x1

    aget-wide v17, v5, v17

    move-object v0, v10

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 2056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v3

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2057
    add-int/lit8 v15, v15, 0x1

    .line 2059
    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_452

    .line 2060
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/render/PhotoMgr;->m_bWheelNeedLoadList:Z

    move/from16 v17, v0

    if-nez v17, :cond_444

    if-lt v11, v12, :cond_463

    .line 2062
    :cond_444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, v17

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2070
    :cond_452
    :goto_452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 2071
    add-int/lit8 v3, v3, 0x1

    .line 2072
    add-int/lit8 v4, v4, -0x1

    .line 2073
    goto :goto_3fc

    .line 2064
    :cond_463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/lge/render/PhotoList;->moveLeftLoadPostion(I)V

    .line 2066
    add-int/lit8 v11, v11, 0x1

    goto :goto_452

    .line 2075
    .end local v5           #adddata:[J
    .end local v10           #item:Lcom/lge/render/FCPhotoItem;
    :cond_489
    :goto_489
    if-ge v11, v12, :cond_15a

    .line 2076
    new-instance v10, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v10}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 2077
    .restart local v10       #item:Lcom/lge/render/FCPhotoItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/lge/render/PhotoList;->GetLeft(I)[J

    move-result-object v5

    .line 2078
    .restart local v5       #adddata:[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/lge/render/PhotoList;->moveLeftLoadPostion(I)V

    .line 2080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2081
    add-int/lit8 v11, v11, 0x1

    .line 2083
    const/16 v17, 0x0

    aget-wide v17, v5, v17

    move-object v0, v10

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 2084
    const/16 v17, 0x1

    aget-wide v17, v5, v17

    move-object v0, v10

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 2085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    goto :goto_489

    .line 2087
    .end local v5           #adddata:[J
    .end local v10           #item:Lcom/lge/render/FCPhotoItem;
    :cond_4da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    add-int/lit8 v19, v12, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/lge/render/PhotoList;->hasAddPoint(II)I

    move-result v3

    if-ltz v3, :cond_15a

    .line 2091
    invoke-direct/range {p0 .. p0}, Lcom/lge/render/PhotoMgr;->setPhotoListPosition()V

    .line 2092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    sub-int v18, v11, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    move/from16 v19, v0

    add-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/lge/render/PhotoList;->setLeftLoadPostion(I)V

    .line 2094
    const/4 v9, 0x0

    .local v9, i:I
    :goto_501
    if-ge v9, v3, :cond_545

    .line 2095
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/render/PhotoMgr;->m_bWheelNeedLoadList:Z

    move/from16 v17, v0

    if-nez v17, :cond_510

    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_520

    .line 2097
    :cond_510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2098
    add-int/lit8 v11, v11, -0x1

    .line 2094
    :goto_51d
    add-int/lit8 v9, v9, 0x1

    goto :goto_501

    .line 2100
    :cond_520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/lge/render/PhotoList;->moveRightLoadPostion(I)V

    .line 2102
    add-int/lit8 v15, v15, 0x1

    .line 2103
    add-int/lit8 v11, v11, -0x1

    goto :goto_51d

    .line 2107
    :cond_545
    :goto_545
    if-ge v11, v12, :cond_596

    .line 2108
    new-instance v10, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v10}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 2109
    .restart local v10       #item:Lcom/lge/render/FCPhotoItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/lge/render/PhotoList;->GetLeft(I)[J

    move-result-object v5

    .line 2110
    .restart local v5       #adddata:[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/lge/render/PhotoList;->moveLeftLoadPostion(I)V

    .line 2112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2113
    add-int/lit8 v11, v11, 0x1

    .line 2115
    const/16 v17, 0x0

    aget-wide v17, v5, v17

    move-object v0, v10

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 2116
    const/16 v17, 0x1

    aget-wide v17, v5, v17

    move-object v0, v10

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 2117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    goto :goto_545

    .line 2120
    .end local v5           #adddata:[J
    .end local v10           #item:Lcom/lge/render/FCPhotoItem;
    :cond_596
    :goto_596
    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_15a

    .line 2121
    new-instance v10, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v10}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 2122
    .restart local v10       #item:Lcom/lge/render/FCPhotoItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/lge/render/PhotoList;->GetRight(I)[J

    move-result-object v5

    .line 2123
    .restart local v5       #adddata:[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/lge/render/PhotoList;->moveRightLoadPostion(I)V

    .line 2125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2126
    add-int/lit8 v15, v15, 0x1

    .line 2128
    const/16 v17, 0x0

    aget-wide v17, v5, v17

    move-object v0, v10

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 2129
    const/16 v17, 0x1

    aget-wide v17, v5, v17

    move-object v0, v10

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 2130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    goto :goto_596

    .line 2141
    .end local v3           #addPointIdx:I
    .end local v5           #adddata:[J
    .end local v9           #i:I
    .end local v10           #item:Lcom/lge/render/FCPhotoItem;
    .end local v12           #leftloadnum:I
    .end local v14           #right:I
    .end local v16           #rightloadnum:I
    :cond_5e6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    move/from16 v19, v0

    goto/16 :goto_c0

    .line 2160
    .restart local v3       #addPointIdx:I
    .restart local v5       #adddata:[J
    .restart local v10       #item:Lcom/lge/render/FCPhotoItem;
    :cond_5ee
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_12f

    .line 2167
    .end local v5           #adddata:[J
    .end local v10           #item:Lcom/lge/render/FCPhotoItem;
    :cond_5f2
    if-lez v4, :cond_60a

    .line 2168
    const/4 v3, 0x0

    .line 2169
    :goto_5f5
    const/16 v17, 0x8

    move v0, v3

    move/from16 v1, v17

    if-ge v0, v1, :cond_60a

    if-lez v4, :cond_60a

    .line 2170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/render/PhotoList;->isAddAction()Z

    move-result v17

    if-nez v17, :cond_618

    .line 2214
    :cond_60a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/favoritecontacts/DataLoader;->resumeLoad()V

    .line 2215
    invoke-direct/range {p0 .. p0}, Lcom/lge/render/PhotoMgr;->setPhotoListPosition()V

    goto/16 :goto_c

    .line 2172
    :cond_618
    new-instance v10, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v10}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 2174
    .restart local v10       #item:Lcom/lge/render/FCPhotoItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/render/PhotoList;->getAddData()[J

    move-result-object v5

    .line 2175
    .restart local v5       #adddata:[J
    const/16 v17, 0x0

    aget-wide v17, v5, v17

    move-object v0, v10

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 2176
    const/16 v17, 0x1

    aget-wide v17, v5, v17

    move-object v0, v10

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 2178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v3

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2179
    add-int/lit8 v15, v15, 0x1

    .line 2181
    const/16 v17, 0x8

    move v0, v15

    move/from16 v1, v17

    if-le v0, v1, :cond_65f

    .line 2182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, v17

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2185
    :cond_65f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 2186
    add-int/lit8 v3, v3, 0x1

    .line 2187
    add-int/lit8 v4, v4, -0x1

    .line 2188
    goto :goto_5f5

    .line 2191
    .end local v5           #adddata:[J
    .end local v10           #item:Lcom/lge/render/FCPhotoItem;
    :cond_670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    const/16 v18, 0x1

    sub-int v14, v17, v18

    .line 2192
    .restart local v14       #right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    add-int/lit8 v18, v14, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/lge/render/PhotoList;->setRightLoadPostion(I)V

    .line 2193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x8

    invoke-virtual/range {v17 .. v19}, Lcom/lge/render/PhotoList;->hasAddPoint(II)I

    move-result v3

    if-ltz v3, :cond_60a

    .line 2195
    const/16 v17, 0x8

    add-int/lit8 v18, v3, 0x1

    sub-int v3, v17, v18

    .line 2196
    :goto_6a7
    const/16 v17, 0x8

    move v0, v3

    move/from16 v1, v17

    if-ge v0, v1, :cond_60a

    if-lez v4, :cond_60a

    .line 2197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/render/PhotoList;->isAddAction()Z

    move-result v17

    if-eqz v17, :cond_60a

    .line 2199
    new-instance v10, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v10}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 2201
    .restart local v10       #item:Lcom/lge/render/FCPhotoItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lge/render/PhotoList;->getAddData()[J

    move-result-object v5

    .line 2202
    .restart local v5       #adddata:[J
    const/16 v17, 0x0

    aget-wide v17, v5, v17

    move-object v0, v10

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 2203
    const/16 v17, 0x1

    aget-wide v17, v5, v17

    move-object v0, v10

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 2205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2206
    add-int/lit8 v15, v15, 0x1

    .line 2208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 2209
    add-int/lit8 v3, v3, 0x1

    .line 2210
    add-int/lit8 v4, v4, -0x1

    .line 2211
    goto :goto_6a7

    .line 1915
    :pswitch_data_6fe
    .packed-switch 0x1
        :pswitch_144
        :pswitch_140
        :pswitch_9d
        :pswitch_147
    .end packed-switch

    .line 1931
    :pswitch_data_70a
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_14a
        :pswitch_a1
        :pswitch_a3
    .end packed-switch
.end method

.method public addLeftList(Lcom/lge/render/FCPhotoItem;I)V
    .registers 4
    .parameter "item"
    .parameter "index"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 364
    return-void
.end method

.method public addPreOperation(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->getFavoriteContactsView()Lcom/lge/favoritecontacts/FavoriteContactsView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/favoritecontacts/FavoriteContactsView;->addPreOperation(Ljava/lang/Runnable;)V

    .line 1886
    return-void
.end method

.method public addRightList(Lcom/lge/render/FCPhotoItem;I)V
    .registers 4
    .parameter "item"
    .parameter "index"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 368
    return-void
.end method

.method public changeOrder(Lcom/lge/render/FCPhotoItem;Lcom/lge/render/FCPhotoItem;I)V
    .registers 39
    .parameter "selectItem"
    .parameter "dstItem"
    .parameter "renderFlag"

    .prologue
    .line 1737
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/render/PhotoMgr;->runningChangOrder:Z

    move/from16 v32, v0

    if-nez v32, :cond_275

    .line 1738
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/render/PhotoMgr;->runningChangOrder:Z

    .line 1739
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->getItemIndex(Lcom/lge/render/FCPhotoItem;I)I

    move-result v22

    .line 1740
    .local v22, selPosition:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->getItemIndex(Lcom/lge/render/FCPhotoItem;I)I

    move-result v6

    .line 1741
    .local v6, changePosition:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/render/PhotoMgr;->getDispListCnt()I

    move-result v10

    .line 1742
    .local v10, dispCnt:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/render/PhotoMgr;->getLeftListCnt()I

    move-result v13

    .line 1743
    .local v13, leftCnt:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/render/PhotoMgr;->getRightListCnt()I

    move-result v18

    .line 1744
    .local v18, rightCnt:I
    sub-int v5, v6, v22

    .line 1746
    .local v5, changeIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v32, v0

    invoke-virtual/range {p2 .. p2}, Lcom/lge/render/FCPhotoItem;->getPosition()J

    move-result-wide v33

    move-object/from16 v0, v32

    move v1, v5

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/render/PhotoList;->runChangeData(IJ)V

    .line 1749
    move/from16 v0, v22

    move v1, v6

    if-le v0, v1, :cond_172

    .line 1753
    if-ltz v22, :cond_15c

    .line 1755
    if-ltz v6, :cond_f9

    .line 1757
    move/from16 v0, v22

    move v1, v10

    if-ge v0, v1, :cond_bc

    .line 1760
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->removeDispItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->addDispList(Lcom/lge/render/FCPhotoItem;I)V

    .line 1858
    :goto_62
    invoke-direct/range {p0 .. p0}, Lcom/lge/render/PhotoMgr;->setPhotoListPosition()V

    .line 1859
    invoke-virtual/range {p0 .. p0}, Lcom/lge/render/PhotoMgr;->getDispListCnt()I

    move-result v10

    .line 1860
    invoke-virtual/range {p0 .. p0}, Lcom/lge/render/PhotoMgr;->getLeftListCnt()I

    move-result v13

    .line 1861
    invoke-virtual/range {p0 .. p0}, Lcom/lge/render/PhotoMgr;->getRightListCnt()I

    move-result v18

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    move-object/from16 v32, v0

    add-int v33, v13, v10

    add-int v33, v33, v18

    invoke-virtual/range {v32 .. v33}, Lcom/lge/render/PhotoList;->getAllPositions(I)[J

    move-result-object v17

    .line 1864
    .local v17, positions:[J
    const/16 v26, 0x0

    .line 1865
    .local v26, tleft:I
    const/16 v24, 0x0

    .line 1866
    .local v24, tdisp:I
    const/16 v30, 0x0

    .line 1867
    .local v30, tright:I
    move-object/from16 v4, v17

    .local v4, arr$:[J
    move-object v0, v4

    array-length v0, v0

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    move/from16 v31, v30

    .end local v30           #tright:I
    .local v31, tright:I
    move/from16 v25, v24

    .end local v24           #tdisp:I
    .local v25, tdisp:I
    move/from16 v27, v26

    .end local v26           #tleft:I
    .local v27, tleft:I
    :goto_92
    move v0, v11

    move/from16 v1, v16

    if-ge v0, v1, :cond_275

    aget-wide v28, v4, v11

    .line 1868
    .local v28, tmpposition:J
    move/from16 v0, v27

    move v1, v13

    if-ge v0, v1, :cond_23c

    .line 1869
    add-int/lit8 v26, v27, 0x1

    .end local v27           #tleft:I
    .restart local v26       #tleft:I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->getLeftPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    move/from16 v30, v31

    .end local v31           #tright:I
    .restart local v30       #tright:I
    move/from16 v24, v25

    .line 1867
    .end local v25           #tdisp:I
    .restart local v24       #tdisp:I
    :goto_b3
    add-int/lit8 v11, v11, 0x1

    move/from16 v31, v30

    .end local v30           #tright:I
    .restart local v31       #tright:I
    move/from16 v25, v24

    .end local v24           #tdisp:I
    .restart local v25       #tdisp:I
    move/from16 v27, v26

    .end local v26           #tleft:I
    .restart local v27       #tleft:I
    goto :goto_92

    .line 1763
    .end local v4           #arr$:[J
    .end local v11           #i$:I
    .end local v16           #len$:I
    .end local v17           #positions:[J
    .end local v25           #tdisp:I
    .end local v27           #tleft:I
    .end local v28           #tmpposition:J
    .end local v31           #tright:I
    :cond_bc
    if-ge v6, v10, :cond_e3

    .line 1767
    sub-int v19, v22, v10

    .line 1768
    .local v19, rightIdx:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->removeRightItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->addDispList(Lcom/lge/render/FCPhotoItem;I)V

    .line 1770
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->removeDispItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->addRightList(Lcom/lge/render/FCPhotoItem;I)V

    goto :goto_62

    .line 1773
    .end local v19           #rightIdx:I
    :cond_e3
    sub-int v19, v22, v10

    .line 1774
    .restart local v19       #rightIdx:I
    sub-int v9, v6, v10

    .line 1775
    .local v9, crightIdx:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->removeRightItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->addRightList(Lcom/lge/render/FCPhotoItem;I)V

    goto/16 :goto_62

    .line 1781
    .end local v9           #crightIdx:I
    .end local v19           #rightIdx:I
    :cond_f9
    add-int v15, v13, v6

    .line 1782
    .local v15, leftidx:I
    move/from16 v0, v22

    move v1, v10

    if-ge v0, v1, :cond_124

    .line 1785
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->removeDispItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->addLeftList(Lcom/lge/render/FCPhotoItem;I)V

    .line 1787
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->removeLeftItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->addDispList(Lcom/lge/render/FCPhotoItem;I)V

    goto/16 :goto_62

    .line 1790
    :cond_124
    sub-int v20, v22, v10

    .line 1791
    .local v20, rightidx:I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->removeRightItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->addLeftList(Lcom/lge/render/FCPhotoItem;I)V

    .line 1792
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->removeLeftItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->addDispList(Lcom/lge/render/FCPhotoItem;I)V

    .line 1793
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->removeDispItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->addRightList(Lcom/lge/render/FCPhotoItem;I)V

    goto/16 :goto_62

    .line 1798
    .end local v15           #leftidx:I
    .end local v20           #rightidx:I
    :cond_15c
    add-int v14, v13, v6

    .line 1799
    .local v14, leftIdx:I
    add-int v21, v13, v22

    .line 1800
    .local v21, selIdx:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->removeLeftItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->addLeftList(Lcom/lge/render/FCPhotoItem;I)V

    goto/16 :goto_62

    .line 1805
    .end local v14           #leftIdx:I
    .end local v21           #selIdx:I
    :cond_172
    move/from16 v0, v22

    move v1, v10

    if-ge v0, v1, :cond_226

    .line 1807
    if-ltz v22, :cond_1b4

    .line 1809
    if-ge v6, v10, :cond_18d

    .line 1813
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->removeDispItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->addDispList(Lcom/lge/render/FCPhotoItem;I)V

    goto/16 :goto_62

    .line 1818
    :cond_18d
    sub-int v20, v6, v10

    .line 1819
    .restart local v20       #rightidx:I
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->removeRightItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->addDispList(Lcom/lge/render/FCPhotoItem;I)V

    .line 1820
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->removeDispItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->addRightList(Lcom/lge/render/FCPhotoItem;I)V

    goto/16 :goto_62

    .line 1825
    .end local v20           #rightidx:I
    :cond_1b4
    add-int v15, v13, v22

    .line 1826
    .restart local v15       #leftidx:I
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->removeLeftItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v12

    .line 1827
    .local v12, item:Lcom/lge/render/FCPhotoItem;
    if-ge v6, v10, :cond_1ec

    .line 1830
    if-ltz v6, :cond_1e1

    .line 1833
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->removeDispItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v32

    const/16 v33, 0x1

    sub-int v33, v13, v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->addLeftList(Lcom/lge/render/FCPhotoItem;I)V

    .line 1834
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->addDispList(Lcom/lge/render/FCPhotoItem;I)V

    goto/16 :goto_62

    .line 1838
    :cond_1e1
    add-int v8, v13, v6

    .line 1839
    .local v8, cleftidx:I
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->addLeftList(Lcom/lge/render/FCPhotoItem;I)V

    goto/16 :goto_62

    .line 1844
    .end local v8           #cleftidx:I
    :cond_1ec
    sub-int v20, v6, v10

    .line 1845
    .restart local v20       #rightidx:I
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->removeDispItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v32

    const/16 v33, 0x1

    sub-int v33, v13, v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->addLeftList(Lcom/lge/render/FCPhotoItem;I)V

    .line 1846
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->removeRightItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v32

    const/16 v33, 0x1

    sub-int v33, v10, v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->addDispList(Lcom/lge/render/FCPhotoItem;I)V

    .line 1847
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->addRightList(Lcom/lge/render/FCPhotoItem;I)V

    goto/16 :goto_62

    .line 1852
    .end local v12           #item:Lcom/lge/render/FCPhotoItem;
    .end local v15           #leftidx:I
    .end local v20           #rightidx:I
    :cond_226
    sub-int v7, v6, v10

    .line 1853
    .local v7, cidx:I
    sub-int v23, v22, v10

    .line 1854
    .local v23, sidx:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->removeRightItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->addRightList(Lcom/lge/render/FCPhotoItem;I)V

    goto/16 :goto_62

    .line 1870
    .end local v7           #cidx:I
    .end local v23           #sidx:I
    .restart local v4       #arr$:[J
    .restart local v11       #i$:I
    .restart local v16       #len$:I
    .restart local v17       #positions:[J
    .restart local v25       #tdisp:I
    .restart local v27       #tleft:I
    .restart local v28       #tmpposition:J
    .restart local v31       #tright:I
    :cond_23c
    move/from16 v0, v25

    move v1, v10

    if-ge v0, v1, :cond_258

    .line 1871
    add-int/lit8 v24, v25, 0x1

    .end local v25           #tdisp:I
    .restart local v24       #tdisp:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    move/from16 v30, v31

    .end local v31           #tright:I
    .restart local v30       #tright:I
    move/from16 v26, v27

    .end local v27           #tleft:I
    .restart local v26       #tleft:I
    goto/16 :goto_b3

    .line 1872
    .end local v24           #tdisp:I
    .end local v26           #tleft:I
    .end local v30           #tright:I
    .restart local v25       #tdisp:I
    .restart local v27       #tleft:I
    .restart local v31       #tright:I
    :cond_258
    move/from16 v0, v31

    move/from16 v1, v18

    if-ge v0, v1, :cond_276

    .line 1873
    add-int/lit8 v30, v31, 0x1

    .end local v31           #tright:I
    .restart local v30       #tright:I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->getRightPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    move/from16 v24, v25

    .end local v25           #tdisp:I
    .restart local v24       #tdisp:I
    move/from16 v26, v27

    .end local v27           #tleft:I
    .restart local v26       #tleft:I
    goto/16 :goto_b3

    .line 1877
    .end local v4           #arr$:[J
    .end local v5           #changeIndex:I
    .end local v6           #changePosition:I
    .end local v10           #dispCnt:I
    .end local v11           #i$:I
    .end local v13           #leftCnt:I
    .end local v16           #len$:I
    .end local v17           #positions:[J
    .end local v18           #rightCnt:I
    .end local v22           #selPosition:I
    .end local v24           #tdisp:I
    .end local v26           #tleft:I
    .end local v28           #tmpposition:J
    .end local v30           #tright:I
    :cond_275
    return-void

    .restart local v4       #arr$:[J
    .restart local v5       #changeIndex:I
    .restart local v6       #changePosition:I
    .restart local v10       #dispCnt:I
    .restart local v11       #i$:I
    .restart local v13       #leftCnt:I
    .restart local v16       #len$:I
    .restart local v17       #positions:[J
    .restart local v18       #rightCnt:I
    .restart local v22       #selPosition:I
    .restart local v25       #tdisp:I
    .restart local v27       #tleft:I
    .restart local v28       #tmpposition:J
    .restart local v31       #tright:I
    :cond_276
    move/from16 v30, v31

    .end local v31           #tright:I
    .restart local v30       #tright:I
    move/from16 v24, v25

    .end local v25           #tdisp:I
    .restart local v24       #tdisp:I
    move/from16 v26, v27

    .end local v27           #tleft:I
    .restart local v26       #tleft:I
    goto/16 :goto_b3
.end method

.method public clearContacts()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1448
    invoke-virtual {p0}, Lcom/lge/render/PhotoMgr;->setSelectedItemDisSel()V

    .line 1450
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1451
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1452
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1453
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v0}, Lcom/lge/render/PhotoList;->Clear()V

    .line 1455
    iput v1, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    .line 1456
    iput v1, p0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    .line 1457
    return-void
.end method

.method public clearGarbagePhotoItem()V
    .registers 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_GarbageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 878
    return-void
.end method

.method public clearLoadingData(I)V
    .registers 6
    .parameter "remainCnt"

    .prologue
    .line 895
    if-gtz p1, :cond_d

    .line 896
    iget-object v3, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 897
    iget-object v3, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 910
    :cond_c
    return-void

    .line 899
    :cond_d
    iget-object v3, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 900
    .local v2, rsize:I
    iget-object v3, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v1, v3, p1

    .line 902
    .local v1, lsize:I
    move v0, p1

    .local v0, i:I
    :goto_1c
    if-ge v0, v2, :cond_26

    .line 903
    iget-object v3, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 902
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 906
    :cond_26
    const/4 v0, 0x0

    :goto_27
    if-ge v0, v1, :cond_c

    .line 907
    iget-object v3, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 906
    add-int/lit8 v0, v0, 0x1

    goto :goto_27
.end method

.method public completeChangeOrder()V
    .registers 2

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->changeOrder()V

    .line 1881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/render/PhotoMgr;->runningChangOrder:Z

    .line 1882
    return-void
.end method

.method public flushLoadingData()V
    .registers 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/DataLoader;->flushLoadingEvent()V

    .line 508
    return-void
.end method

.method public getCenterIdx()I
    .registers 2

    .prologue
    .line 387
    iget v0, p0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    return v0
.end method

.method public getContactsCnt()I
    .registers 2

    .prologue
    .line 383
    iget v0, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    return v0
.end method

.method public getDataLoader()Lcom/lge/favoritecontacts/DataLoader;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    return-object v0
.end method

.method public getDefaultOrder(II)[I
    .registers 7
    .parameter "dispCnt"
    .parameter "sortdorder"

    .prologue
    .line 801
    new-array v2, p1, [I

    .line 803
    .local v2, order:[I
    if-lez p2, :cond_c

    .line 804
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, p1, :cond_19

    .line 805
    aput v0, v2, v0

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 808
    .end local v0           #i:I
    :cond_c
    const/4 v3, 0x1

    sub-int v0, p1, v3

    .restart local v0       #i:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_10
    if-lez v0, :cond_19

    .line 809
    aput v0, v2, v1

    .line 808
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 813
    .end local v1           #j:I
    :cond_19
    return-object v2
.end method

.method public getDispListCnt()I
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;
    .registers 3
    .parameter "index"

    .prologue
    .line 863
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    .line 864
    const/4 v0, 0x0

    .line 866
    .end local p0
    :goto_9
    return-object v0

    .restart local p0
    :cond_a
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/render/FCPhotoItem;

    move-object v0, p0

    goto :goto_9
.end method

.method public getGarbagePhotoItem(I)Lcom/lge/render/FCPhotoItem;
    .registers 3
    .parameter "index"

    .prologue
    .line 870
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_GarbageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    .line 871
    const/4 v0, 0x0

    .line 873
    .end local p0
    :goto_9
    return-object v0

    .restart local p0
    :cond_a
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_GarbageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/render/FCPhotoItem;

    move-object v0, p0

    goto :goto_9
.end method

.method public getInnerPxItem(III)Lcom/lge/render/FCPhotoItem;
    .registers 16
    .parameter "x"
    .parameter "y"
    .parameter "renderFlag"

    .prologue
    .line 1262
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1263
    .local v8, size:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1264
    .local v2, inlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/render/FCPhotoItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v8, :cond_22

    .line 1265
    invoke-virtual {p0, v0}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v4

    .line 1267
    .local v4, item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 1268
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1272
    .end local v4           #item:Lcom/lge/render/FCPhotoItem;
    :cond_22
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1273
    .local v5, leftsize:I
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1274
    .local v7, rightsize:I
    packed-switch p3, :pswitch_data_f8

    .line 1320
    :cond_31
    :pswitch_31
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1322
    .local v3, insize:I
    if-lez v3, :cond_f5

    .line 1323
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/render/FCPhotoItem;

    .line 1324
    .local v6, retitem:Lcom/lge/render/FCPhotoItem;
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1326
    .local v1, index:I
    const/4 v0, 0x1

    :goto_45
    if-ge v0, v3, :cond_eb

    .line 1327
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/render/FCPhotoItem;

    .line 1328
    .restart local v4       #item:Lcom/lge/render/FCPhotoItem;
    iget-object v10, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 1330
    .local v9, tmp:I
    iget v10, p0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    sub-int/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lcom/lge/render/PhotoMgr;->m_iCenterIdx:I

    sub-int/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-le v10, v11, :cond_69

    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getSelected()Z

    move-result v10

    if-eqz v10, :cond_6f

    :cond_69
    invoke-virtual {v6}, Lcom/lge/render/FCPhotoItem;->getSelected()Z

    move-result v10

    if-eqz v10, :cond_71

    .line 1332
    :cond_6f
    move v1, v9

    .line 1333
    move-object v6, v4

    .line 1326
    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 1278
    .end local v1           #index:I
    .end local v3           #insize:I
    .end local v4           #item:Lcom/lge/render/FCPhotoItem;
    .end local v6           #retitem:Lcom/lge/render/FCPhotoItem;
    .end local v9           #tmp:I
    :pswitch_74
    if-lez v7, :cond_95

    .line 1279
    const/4 v0, 0x0

    :goto_77
    const/4 v10, 0x2

    if-ge v0, v10, :cond_95

    if-ge v0, v7, :cond_95

    .line 1280
    invoke-virtual {p0, v0}, Lcom/lge/render/PhotoMgr;->getRightPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v4

    .line 1282
    .restart local v4       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_92

    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getSelected()Z

    move-result v10

    if-nez v10, :cond_92

    move-object v10, v4

    .line 1342
    .end local v4           #item:Lcom/lge/render/FCPhotoItem;
    :goto_91
    return-object v10

    .line 1279
    .restart local v4       #item:Lcom/lge/render/FCPhotoItem;
    :cond_92
    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    .line 1289
    .end local v4           #item:Lcom/lge/render/FCPhotoItem;
    :cond_95
    if-lez v5, :cond_31

    .line 1290
    const/4 v0, 0x0

    :goto_98
    const/4 v10, 0x2

    if-ge v0, v10, :cond_31

    if-lez v5, :cond_31

    .line 1291
    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/lge/render/PhotoMgr;->getLeftPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v4

    .line 1293
    .restart local v4       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_b5

    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getSelected()Z

    move-result v10

    if-nez v10, :cond_b5

    move-object v10, v4

    .line 1295
    goto :goto_91

    .line 1290
    :cond_b5
    add-int/lit8 v0, v0, 0x1

    goto :goto_98

    .line 1302
    .end local v4           #item:Lcom/lge/render/FCPhotoItem;
    :pswitch_b8
    if-lez v7, :cond_d1

    .line 1303
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/lge/render/PhotoMgr;->getRightPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v4

    .line 1304
    .restart local v4       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_d1

    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getSelected()Z

    move-result v10

    if-nez v10, :cond_d1

    move-object v10, v4

    .line 1306
    goto :goto_91

    .line 1310
    .end local v4           #item:Lcom/lge/render/FCPhotoItem;
    :cond_d1
    if-lez v5, :cond_31

    .line 1311
    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/lge/render/PhotoMgr;->getLeftPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v4

    .line 1312
    .restart local v4       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_31

    invoke-virtual {v4}, Lcom/lge/render/FCPhotoItem;->getSelected()Z

    move-result v10

    if-nez v10, :cond_31

    move-object v10, v4

    .line 1314
    goto :goto_91

    .line 1337
    .end local v4           #item:Lcom/lge/render/FCPhotoItem;
    .restart local v1       #index:I
    .restart local v3       #insize:I
    .restart local v6       #retitem:Lcom/lge/render/FCPhotoItem;
    :cond_eb
    invoke-virtual {v6}, Lcom/lge/render/FCPhotoItem;->getSelected()Z

    move-result v10

    if-eqz v10, :cond_f3

    .line 1338
    const/4 v10, 0x0

    goto :goto_91

    :cond_f3
    move-object v10, v6

    .line 1340
    goto :goto_91

    .line 1342
    .end local v1           #index:I
    .end local v6           #retitem:Lcom/lge/render/FCPhotoItem;
    :cond_f5
    const/4 v10, 0x0

    goto :goto_91

    .line 1274
    nop

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_74
        :pswitch_31
        :pswitch_31
        :pswitch_b8
    .end packed-switch
.end method

.method public getItemIndex(Lcom/lge/render/FCPhotoItem;I)I
    .registers 6
    .parameter "item"
    .parameter "renderFlag"

    .prologue
    .line 1346
    packed-switch p2, :pswitch_data_36

    .line 1369
    :pswitch_3
    const/4 v2, -0x1

    :goto_4
    return v2

    .line 1348
    :pswitch_5
    iget-object v2, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_4

    .line 1351
    :pswitch_c
    iget-object v2, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1353
    .local v0, idx:I
    if-gez v0, :cond_2b

    .line 1354
    iget-object v2, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1355
    if-gez v0, :cond_2d

    .line 1356
    iget-object v2, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1358
    if-ltz v0, :cond_2b

    .line 1359
    iget-object v2, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1360
    .local v1, leftSize:I
    sub-int/2addr v0, v1

    .end local v1           #leftSize:I
    :cond_2b
    :goto_2b
    move v2, v0

    .line 1366
    goto :goto_4

    .line 1363
    :cond_2d
    iget-object v2, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2b

    .line 1346
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_c
        :pswitch_5
        :pswitch_3
        :pswitch_c
    .end packed-switch
.end method

.method public getLeftListCnt()I
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLeftPhotoItem(I)Lcom/lge/render/FCPhotoItem;
    .registers 3
    .parameter "index"

    .prologue
    .line 888
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    .line 889
    const/4 v0, 0x0

    .line 891
    .end local p0
    :goto_9
    return-object v0

    .restart local p0
    :cond_a
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/render/FCPhotoItem;

    move-object v0, p0

    goto :goto_9
.end method

.method public getPhotoAlpha(I)Ljava/lang/Integer;
    .registers 4
    .parameter "index"

    .prologue
    .line 845
    iget-object v1, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_a

    .line 846
    const/4 v1, 0x0

    .line 850
    :goto_9
    return-object v1

    .line 848
    :cond_a
    iget-object v1, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/render/FCPhotoItem;

    .line 850
    .local v0, item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v0}, Lcom/lge/render/FCPhotoItem;->getAlpha()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_9
.end method

.method public getPhotoColor(I)Ljava/lang/Integer;
    .registers 4
    .parameter "index"

    .prologue
    .line 854
    iget-object v1, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_a

    .line 855
    const/4 v1, 0x0

    .line 859
    :goto_9
    return-object v1

    .line 857
    :cond_a
    iget-object v1, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/render/FCPhotoItem;

    .line 859
    .local v0, item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v0}, Lcom/lge/render/FCPhotoItem;->getColors()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_9
.end method

.method public getPhotoPosition(I)Landroid/graphics/Rect;
    .registers 4
    .parameter "index"

    .prologue
    .line 836
    iget-object v1, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_a

    .line 837
    const/4 v1, 0x0

    .line 841
    :goto_9
    return-object v1

    .line 839
    :cond_a
    iget-object v1, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/render/FCPhotoItem;

    .line 841
    .local v0, item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v0}, Lcom/lge/render/FCPhotoItem;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_9
.end method

.method public getRightListCnt()I
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRightPhotoItem(I)Lcom/lge/render/FCPhotoItem;
    .registers 3
    .parameter "index"

    .prologue
    .line 881
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    .line 882
    const/4 v0, 0x0

    .line 884
    .end local p0
    :goto_9
    return-object v0

    .restart local p0
    :cond_a
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/render/FCPhotoItem;

    move-object v0, p0

    goto :goto_9
.end method

.method public getSelectedItem()Lcom/lge/render/FCPhotoItem;
    .registers 2

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_SelectedItem:Lcom/lge/render/FCPhotoItem;

    return-object v0
.end method

.method public getWheelDrawOrder(I)[I
    .registers 8
    .parameter "dispCnt"

    .prologue
    .line 787
    new-array v3, p1, [I

    iput-object v3, p0, Lcom/lge/render/PhotoMgr;->m_aiWDrawOrder:[I

    .line 789
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .local v2, j:I
    :goto_7
    if-ge v0, p1, :cond_21

    .line 790
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_1a

    .line 791
    iget-object v3, p0, Lcom/lge/render/PhotoMgr;->m_aiWDrawOrder:[I

    sub-int v4, p1, v2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aput v4, v3, v0

    move v1, v2

    .line 789
    .end local v2           #j:I
    .restart local v1       #j:I
    :goto_16
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_7

    .line 793
    :cond_1a
    iget-object v3, p0, Lcom/lge/render/PhotoMgr;->m_aiWDrawOrder:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .restart local v1       #j:I
    aput v2, v3, v0

    goto :goto_16

    .line 797
    .end local v1           #j:I
    .restart local v2       #j:I
    :cond_21
    iget-object v3, p0, Lcom/lge/render/PhotoMgr;->m_aiWDrawOrder:[I

    return-object v3
.end method

.method public isNoFave()Z
    .registers 2

    .prologue
    .line 1520
    iget v0, p0, Lcom/lge/render/PhotoMgr;->m_iContactCnt:I

    if-gtz v0, :cond_b

    .line 1521
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->setNoFavorite()V

    .line 1522
    const/4 v0, 0x1

    .line 1525
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onDrawInit()V
    .registers 2

    .prologue
    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/render/PhotoMgr;->m_bInitOrder:Z

    .line 393
    return-void
.end method

.method public onDrawPhoto(ILandroid/graphics/Canvas;)V
    .registers 5
    .parameter "index"
    .parameter "canvas"

    .prologue
    .line 420
    iget-object v1, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_9

    .line 425
    :goto_8
    return-void

    .line 423
    :cond_9
    iget-object v1, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/render/FCPhotoItem;

    .line 424
    .local v0, item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v0, p2}, Lcom/lge/render/FCPhotoItem;->onDrawFrame(Landroid/graphics/Canvas;)V

    goto :goto_8
.end method

.method public onDrawPhotos(Landroid/graphics/Canvas;Lcom/lge/render/EssentialRenderer;)V
    .registers 8
    .parameter "canvas"
    .parameter "renderer"

    .prologue
    const/4 v4, 0x2

    .line 396
    invoke-virtual {p2}, Lcom/lge/render/EssentialRenderer;->getRendererTag()Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, renderTag:Ljava/lang/String;
    invoke-static {}, Lcom/lge/render/FCImageFactory;->createLoadingImg()V

    .line 399
    const-string v3, "EFFECT_RENDERER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 400
    invoke-static {}, Lcom/lge/render/EffectRenderer;->getRenderFlag()I

    move-result v0

    .line 402
    .local v0, flag:I
    and-int/lit16 v1, v0, 0xff

    .line 404
    .local v1, newRender:I
    if-ne v1, v4, :cond_1c

    .line 405
    invoke-direct {p0, p1}, Lcom/lge/render/PhotoMgr;->onDrawWheel(Landroid/graphics/Canvas;)V

    .line 417
    .end local v0           #flag:I
    .end local v1           #newRender:I
    :cond_1b
    :goto_1b
    return-void

    .line 407
    .restart local v0       #flag:I
    .restart local v1       #newRender:I
    :cond_1c
    invoke-direct {p0, p1, v4}, Lcom/lge/render/PhotoMgr;->onDrawDefault(Landroid/graphics/Canvas;I)V

    goto :goto_1b

    .line 408
    .end local v0           #flag:I
    .end local v1           #newRender:I
    :cond_20
    const-string v3, "GRID_RENDERER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 409
    invoke-direct {p0, p1, v4}, Lcom/lge/render/PhotoMgr;->onDrawDefault(Landroid/graphics/Canvas;I)V

    goto :goto_1b

    .line 410
    :cond_2c
    const-string v3, "WHEEL_RENDERER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 411
    invoke-direct {p0, p1}, Lcom/lge/render/PhotoMgr;->onDrawWheel(Landroid/graphics/Canvas;)V

    goto :goto_1b

    .line 412
    :cond_38
    const-string v3, "LAND_RENDERER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 413
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/lge/render/PhotoMgr;->onDrawDefault(Landroid/graphics/Canvas;I)V

    goto :goto_1b
.end method

.method public onMovePhoto(II)Z
    .registers 6
    .parameter "vectors"
    .parameter "renderFlag"

    .prologue
    .line 480
    if-nez p1, :cond_4

    .line 481
    const/4 v2, 0x0

    .line 498
    :goto_3
    return v2

    .line 483
    :cond_4
    iget-object v2, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v2}, Lcom/lge/favoritecontacts/DataLoader;->pauseLoad()V

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v0, loaditems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/render/FCPhotoItem;>;"
    const/4 v1, 0x0

    .line 486
    .local v1, ret:Z
    const/4 v2, 0x1

    if-ne p2, v2, :cond_18

    .line 487
    invoke-direct {p0, p1, v0}, Lcom/lge/render/PhotoMgr;->GridMove(ILjava/util/ArrayList;)Z

    move-result v1

    :cond_16
    :goto_16
    move v2, v1

    .line 498
    goto :goto_3

    .line 489
    :cond_18
    const/4 v2, 0x2

    if-ne p2, v2, :cond_20

    .line 490
    invoke-direct {p0, p1, v0}, Lcom/lge/render/PhotoMgr;->WheelMove(ILjava/util/ArrayList;)Z

    move-result v1

    goto :goto_16

    .line 491
    :cond_20
    const/4 v2, 0x4

    if-ne p2, v2, :cond_16

    .line 492
    invoke-direct {p0, p1, v0}, Lcom/lge/render/PhotoMgr;->LandMove(ILjava/util/ArrayList;)Z

    move-result v1

    goto :goto_16
.end method

.method public onMoveStop()V
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/DataLoader;->resumeLoad()V

    .line 503
    return-void
.end method

.method public prepareErasePhoto(IIJLjava/lang/Runnable;Z)V
    .registers 11
    .parameter "index"
    .parameter "renderFlag"
    .parameter "rID"
    .parameter "r"
    .parameter "eraseDB"

    .prologue
    .line 1530
    const-string v1, "PhotoMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ====  prepareErasePhoto doing Erase ??? ===== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/render/PhotoMgr;->m_bDoingErase:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-boolean v1, p0, Lcom/lge/render/PhotoMgr;->m_bDoingErase:Z

    if-nez v1, :cond_4b

    .line 1533
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/render/PhotoMgr;->m_bDoingErase:Z

    .line 1534
    const/4 v0, 0x0

    .line 1536
    .local v0, deletedCnt:I
    if-eqz p6, :cond_4c

    .line 1537
    iget-object v1, p0, Lcom/lge/render/PhotoMgr;->m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-virtual {v1, p3, p4}, Lcom/lge/favoritecontacts/FavoriteContacts;->EraseFavoriteContact(J)I

    move-result v0

    .line 1542
    :goto_32
    if-ltz v0, :cond_4b

    .line 1543
    iget-object v1, p0, Lcom/lge/render/PhotoMgr;->m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-virtual {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->getFavoriteContactsView()Lcom/lge/favoritecontacts/FavoriteContactsView;

    move-result-object v1

    new-instance v2, Lcom/lge/render/PhotoMgr$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/lge/render/PhotoMgr$2;-><init>(Lcom/lge/render/PhotoMgr;II)V

    invoke-virtual {v1, v2}, Lcom/lge/favoritecontacts/FavoriteContactsView;->addPreOperation(Ljava/lang/Runnable;)V

    .line 1728
    iget-object v1, p0, Lcom/lge/render/PhotoMgr;->m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-virtual {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->getFavoriteContactsView()Lcom/lge/favoritecontacts/FavoriteContactsView;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/lge/favoritecontacts/FavoriteContactsView;->addPreOperation(Ljava/lang/Runnable;)V

    .line 1731
    .end local v0           #deletedCnt:I
    :cond_4b
    return-void

    .line 1539
    .restart local v0       #deletedCnt:I
    :cond_4c
    const/4 v0, 0x1

    goto :goto_32
.end method

.method public refreshAllPhotos()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 2223
    iget-object v5, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2224
    .local v0, dispCnt:I
    iget-object v5, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2225
    .local v4, rightCnt:I
    iget-object v5, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2227
    .local v3, leftCnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v0, :cond_29

    .line 2228
    iget-object v5, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/render/FCPhotoItem;

    .line 2229
    .local v2, item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v2, v6}, Lcom/lge/render/FCPhotoItem;->finishedLoad(Z)V

    .line 2230
    iget-object v5, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v5, v2}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 2227
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 2233
    .end local v2           #item:Lcom/lge/render/FCPhotoItem;
    :cond_29
    const/4 v1, 0x0

    :goto_2a
    if-ge v1, v4, :cond_3f

    .line 2234
    iget-object v5, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/render/FCPhotoItem;

    .line 2235
    .restart local v2       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v2, v6}, Lcom/lge/render/FCPhotoItem;->finishedLoad(Z)V

    .line 2236
    iget-object v5, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v5, v2}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 2233
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 2239
    .end local v2           #item:Lcom/lge/render/FCPhotoItem;
    :cond_3f
    const/4 v1, 0x0

    :goto_40
    if-ge v1, v3, :cond_55

    .line 2240
    iget-object v5, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/render/FCPhotoItem;

    .line 2241
    .restart local v2       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v2, v6}, Lcom/lge/render/FCPhotoItem;->finishedLoad(Z)V

    .line 2242
    iget-object v5, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v5, v2}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 2239
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 2245
    .end local v2           #item:Lcom/lge/render/FCPhotoItem;
    :cond_55
    iget-object v5, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v5}, Lcom/lge/favoritecontacts/DataLoader;->resumeLoad()V

    .line 2246
    return-void
.end method

.method public removeDispItem(I)Lcom/lge/render/FCPhotoItem;
    .registers 3
    .parameter "index"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/render/FCPhotoItem;

    return-object p0
.end method

.method public removeLeftItem(I)Lcom/lge/render/FCPhotoItem;
    .registers 3
    .parameter "index"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/render/FCPhotoItem;

    return-object p0
.end method

.method public removeRightItem(I)Lcom/lge/render/FCPhotoItem;
    .registers 3
    .parameter "index"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/render/FCPhotoItem;

    return-object p0
.end method

.method public removeSelectItem(Lcom/lge/render/EssentialRenderer;J)V
    .registers 16
    .parameter "renderer"
    .parameter "PersonID"

    .prologue
    const-string v3, "PhotoMgr"

    .line 1460
    invoke-virtual {p1}, Lcom/lge/render/EssentialRenderer;->getRenderFlag()I

    move-result v2

    .line 1461
    .local v2, flag:I
    const/16 v0, 0x8

    if-ne v2, v0, :cond_10

    .line 1462
    invoke-static {}, Lcom/lge/render/EffectRenderer;->getRenderFlag()I

    move-result v0

    and-int/lit16 v2, v0, 0xff

    .line 1465
    :cond_10
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_SelectedItem:Lcom/lge/render/FCPhotoItem;

    if-nez v0, :cond_74

    .line 1467
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_1b

    .line 1517
    :goto_1a
    return-void

    .line 1471
    :cond_1b
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1472
    .local v7, dispCnt:I
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1473
    .local v11, rightCnt:I
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1475
    .local v10, leftCnt:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2e
    if-ge v8, v7, :cond_42

    .line 1476
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/render/FCPhotoItem;

    .line 1477
    .local v9, item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v9}, Lcom/lge/render/FCPhotoItem;->getUID()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_85

    .line 1478
    iput-object v9, p0, Lcom/lge/render/PhotoMgr;->m_SelectedItem:Lcom/lge/render/FCPhotoItem;

    .line 1483
    .end local v9           #item:Lcom/lge/render/FCPhotoItem;
    :cond_42
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_SelectedItem:Lcom/lge/render/FCPhotoItem;

    if-nez v0, :cond_5b

    .line 1484
    const/4 v8, 0x0

    :goto_47
    if-ge v8, v11, :cond_5b

    .line 1485
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/render/FCPhotoItem;

    .line 1486
    .restart local v9       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v9}, Lcom/lge/render/FCPhotoItem;->getUID()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_88

    .line 1487
    iput-object v9, p0, Lcom/lge/render/PhotoMgr;->m_SelectedItem:Lcom/lge/render/FCPhotoItem;

    .line 1492
    .end local v9           #item:Lcom/lge/render/FCPhotoItem;
    :cond_5b
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_SelectedItem:Lcom/lge/render/FCPhotoItem;

    if-nez v0, :cond_74

    .line 1493
    const/4 v8, 0x0

    :goto_60
    if-ge v8, v10, :cond_74

    .line 1494
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/render/FCPhotoItem;

    .line 1495
    .restart local v9       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v9}, Lcom/lge/render/FCPhotoItem;->getUID()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_8b

    .line 1496
    iput-object v9, p0, Lcom/lge/render/PhotoMgr;->m_SelectedItem:Lcom/lge/render/FCPhotoItem;

    .line 1502
    .end local v7           #dispCnt:I
    .end local v8           #i:I
    .end local v9           #item:Lcom/lge/render/FCPhotoItem;
    .end local v10           #leftCnt:I
    .end local v11           #rightCnt:I
    :cond_74
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_SelectedItem:Lcom/lge/render/FCPhotoItem;

    if-nez v0, :cond_8e

    .line 1503
    const-string v0, "PhotoMgr"

    const-string v0, " === remove Select Item is Null ==== "

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {v0, p2, p3}, Lcom/lge/render/PhotoList;->RemovePerson(J)V

    goto :goto_1a

    .line 1475
    .restart local v7       #dispCnt:I
    .restart local v8       #i:I
    .restart local v9       #item:Lcom/lge/render/FCPhotoItem;
    .restart local v10       #leftCnt:I
    .restart local v11       #rightCnt:I
    :cond_85
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    .line 1484
    :cond_88
    add-int/lit8 v8, v8, 0x1

    goto :goto_47

    .line 1493
    :cond_8b
    add-int/lit8 v8, v8, 0x1

    goto :goto_60

    .line 1506
    .end local v7           #dispCnt:I
    .end local v8           #i:I
    .end local v9           #item:Lcom/lge/render/FCPhotoItem;
    .end local v10           #leftCnt:I
    .end local v11           #rightCnt:I
    :cond_8e
    const-string v0, "PhotoMgr"

    const-string v0, " === remove Select Item ==== "

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_SelectedItem:Lcom/lge/render/FCPhotoItem;

    invoke-virtual {p0, v0, v2}, Lcom/lge/render/PhotoMgr;->getItemIndex(Lcom/lge/render/FCPhotoItem;I)I

    move-result v1

    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_SelectedItem:Lcom/lge/render/FCPhotoItem;

    invoke-virtual {v0}, Lcom/lge/render/FCPhotoItem;->getUID()J

    move-result-wide v3

    new-instance v5, Lcom/lge/render/PhotoMgr$1;

    invoke-direct {v5, p0, p1}, Lcom/lge/render/PhotoMgr$1;-><init>(Lcom/lge/render/PhotoMgr;Lcom/lge/render/EssentialRenderer;)V

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/lge/render/PhotoMgr;->prepareErasePhoto(IIJLjava/lang/Runnable;Z)V

    .line 1514
    invoke-virtual {p0}, Lcom/lge/render/PhotoMgr;->setSelectedItemDisSel()V

    .line 1515
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_GarbageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1a
.end method

.method public setDrawShadow(Z)V
    .registers 7
    .parameter "b"

    .prologue
    .line 312
    iget-object v4, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 313
    .local v0, disp:I
    iget-object v4, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 314
    .local v2, left:I
    iget-object v4, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 316
    .local v3, right:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    if-ge v1, v0, :cond_23

    .line 317
    iget-object v4, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/render/FCPhotoItem;

    invoke-virtual {v4, p1}, Lcom/lge/render/FCPhotoItem;->setDrawShadow(Z)V

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 320
    :cond_23
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_34

    .line 321
    iget-object v4, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/render/FCPhotoItem;

    invoke-virtual {v4, p1}, Lcom/lge/render/FCPhotoItem;->setDrawShadow(Z)V

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 324
    :cond_34
    const/4 v1, 0x0

    :goto_35
    if-ge v1, v3, :cond_45

    .line 325
    iget-object v4, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/render/FCPhotoItem;

    invoke-virtual {v4, p1}, Lcom/lge/render/FCPhotoItem;->setDrawShadow(Z)V

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 327
    :cond_45
    return-void
.end method

.method public setPhotoList(Lcom/lge/render/PhotoList;Lcom/lge/render/EssentialRenderer;)V
    .registers 3
    .parameter "list"
    .parameter "renderer"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    .line 67
    invoke-direct {p0, p2}, Lcom/lge/render/PhotoMgr;->setDisplayList(Lcom/lge/render/EssentialRenderer;)Z

    .line 68
    iput-object p2, p0, Lcom/lge/render/PhotoMgr;->m_EssRender:Lcom/lge/render/EssentialRenderer;

    .line 69
    return-void
.end method

.method public setPhotoPosition(IIIIII)V
    .registers 9
    .parameter "index"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "alpha"

    .prologue
    .line 825
    iget-object v1, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_9

    .line 833
    :goto_8
    return-void

    .line 828
    :cond_9
    iget-object v1, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/render/FCPhotoItem;

    .line 830
    .local v0, item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v0, p2, p3}, Lcom/lge/render/FCPhotoItem;->setPosition(II)V

    .line 831
    invoke-virtual {v0, p4, p5}, Lcom/lge/render/FCPhotoItem;->setSize(II)V

    .line 832
    invoke-virtual {v0, p6}, Lcom/lge/render/FCPhotoItem;->setAlpha(I)V

    goto :goto_8
.end method

.method public setSelectedItem(Lcom/lge/render/FCPhotoItem;II)V
    .registers 6
    .parameter "item"
    .parameter "action"
    .parameter "renderFlag"

    .prologue
    .line 1373
    invoke-virtual {p0}, Lcom/lge/render/PhotoMgr;->setSelectedItemDisSel()V

    .line 1374
    iput-object p1, p0, Lcom/lge/render/PhotoMgr;->m_SelectedItem:Lcom/lge/render/FCPhotoItem;

    .line 1375
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_SelectedItem:Lcom/lge/render/FCPhotoItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/render/FCPhotoItem;->setSelected(Z)V

    .line 1376
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_PhotoList:Lcom/lge/render/PhotoList;

    invoke-virtual {p0, p1, p3}, Lcom/lge/render/PhotoMgr;->getItemIndex(Lcom/lge/render/FCPhotoItem;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoList;->setSrcData(I)V

    .line 1378
    packed-switch p2, :pswitch_data_18

    .line 1388
    :pswitch_17
    return-void

    .line 1378
    :pswitch_data_18
    .packed-switch 0x63
        :pswitch_17
    .end packed-switch
.end method

.method public setSelectedItemDisSel()V
    .registers 3

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_SelectedItem:Lcom/lge/render/FCPhotoItem;

    if-eqz v0, :cond_d

    .line 1392
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_SelectedItem:Lcom/lge/render/FCPhotoItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/render/FCPhotoItem;->setSelected(Z)V

    .line 1393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/render/PhotoMgr;->m_SelectedItem:Lcom/lge/render/FCPhotoItem;

    .line 1395
    :cond_d
    return-void
.end method

.method public startDataLoader()V
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/DataLoader;->startLoad()V

    .line 73
    return-void
.end method

.method public updateSelectItem(J)V
    .registers 11
    .parameter "selectedID"

    .prologue
    .line 1402
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_SelectedItem:Lcom/lge/render/FCPhotoItem;

    if-eqz v6, :cond_11

    .line 1403
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    iget-object v7, p0, Lcom/lge/render/PhotoMgr;->m_SelectedItem:Lcom/lge/render/FCPhotoItem;

    invoke-virtual {v6, v7}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 1404
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v6}, Lcom/lge/favoritecontacts/DataLoader;->resumeLoad()V

    .line 1445
    :cond_10
    :goto_10
    return-void

    .line 1406
    :cond_11
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1407
    .local v0, dispCnt:I
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1408
    .local v5, rightCnt:I
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1409
    .local v4, leftCnt:I
    const/4 v2, 0x0

    .line 1411
    .local v2, isFind:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_25
    if-ge v1, v0, :cond_3d

    .line 1412
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_DisplayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/render/FCPhotoItem;

    .line 1414
    .local v3, item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v3}, Lcom/lge/render/FCPhotoItem;->getUID()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-nez v6, :cond_7b

    .line 1415
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v6, v3}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 1416
    const/4 v2, 0x1

    .line 1421
    .end local v3           #item:Lcom/lge/render/FCPhotoItem;
    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    if-ge v1, v5, :cond_58

    if-nez v2, :cond_58

    .line 1422
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_RightLoadList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/render/FCPhotoItem;

    .line 1424
    .restart local v3       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v3}, Lcom/lge/render/FCPhotoItem;->getUID()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-nez v6, :cond_7e

    .line 1425
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v6, v3}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 1426
    const/4 v2, 0x1

    .line 1431
    .end local v3           #item:Lcom/lge/render/FCPhotoItem;
    :cond_58
    const/4 v1, 0x0

    :goto_59
    if-ge v1, v4, :cond_73

    if-nez v2, :cond_73

    .line 1432
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_LeftLoadList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/render/FCPhotoItem;

    .line 1434
    .restart local v3       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v3}, Lcom/lge/render/FCPhotoItem;->getUID()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-nez v6, :cond_81

    .line 1435
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v6, v3}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 1436
    const/4 v2, 0x1

    .line 1441
    .end local v3           #item:Lcom/lge/render/FCPhotoItem;
    :cond_73
    if-eqz v2, :cond_10

    .line 1442
    iget-object v6, p0, Lcom/lge/render/PhotoMgr;->m_DataLoader:Lcom/lge/favoritecontacts/DataLoader;

    invoke-virtual {v6}, Lcom/lge/favoritecontacts/DataLoader;->resumeLoad()V

    goto :goto_10

    .line 1411
    .restart local v3       #item:Lcom/lge/render/FCPhotoItem;
    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1421
    :cond_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 1431
    :cond_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_59
.end method
