.class Lcom/lge/render/PhotoMgr$2;
.super Ljava/lang/Object;
.source "PhotoMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/render/PhotoMgr;->prepareErasePhoto(IIJLjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/render/PhotoMgr;

.field final synthetic val$index:I

.field final synthetic val$renderFlag:I


# direct methods
.method constructor <init>(Lcom/lge/render/PhotoMgr;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1545
    iput-object p1, p0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    iput p2, p0, Lcom/lge/render/PhotoMgr$2;->val$index:I

    iput p3, p0, Lcom/lge/render/PhotoMgr$2;->val$renderFlag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$000(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1547
    .local v3, dispCnt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$100(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1548
    .local v11, rightsize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$200(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1549
    .local v7, leftsize:I
    const/4 v9, 0x0

    .line 1551
    .local v9, removeContact:Lcom/lge/render/FCPhotoItem;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr$2;->val$index:I

    move v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v14, v0

    invoke-static {v14}, Lcom/lge/render/PhotoMgr;->access$300(Lcom/lge/render/PhotoMgr;)I

    move-result v14

    sub-int v10, v13, v14

    .line 1553
    .local v10, removeIdx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    invoke-virtual {v13, v10}, Lcom/lge/render/PhotoList;->Remove(I)V

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v14, v0

    invoke-static {v14}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/render/PhotoList;->getCount()I

    move-result v14

    invoke-static {v13, v14}, Lcom/lge/render/PhotoMgr;->access$502(Lcom/lge/render/PhotoMgr;I)I

    .line 1556
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr$2;->val$renderFlag:I

    move v13, v0

    packed-switch v13, :pswitch_data_518

    .line 1724
    :cond_61
    :goto_61
    :pswitch_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/lge/render/PhotoMgr;->access$1002(Lcom/lge/render/PhotoMgr;Z)Z

    .line 1725
    return-void

    .line 1558
    :pswitch_6b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr$2;->val$index:I

    move v13, v0

    sub-int v5, v13, v3

    .line 1560
    .local v5, isRightIdx:I
    if-ltz v5, :cond_f3

    .line 1561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$100(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #removeContact:Lcom/lge/render/FCPhotoItem;
    check-cast v9, Lcom/lge/render/FCPhotoItem;

    .line 1566
    .restart local v9       #removeContact:Lcom/lge/render/FCPhotoItem;
    :goto_83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$600(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1568
    if-gtz v11, :cond_1d6

    if-gez v5, :cond_1d6

    .line 1569
    const/4 v13, 0x6

    if-ge v3, v13, :cond_171

    .line 1570
    const/4 v13, 0x2

    if-lt v7, v13, :cond_171

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$700(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/EssentialRenderer;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr$2;->val$renderFlag:I

    move v14, v0

    invoke-virtual {v13, v14}, Lcom/lge/render/EssentialRenderer;->initRenderDistance(I)V

    .line 1572
    const/4 v4, 0x0

    .local v4, i:I
    :goto_ab
    const/4 v13, 0x2

    if-ge v4, v13, :cond_109

    .line 1573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$000(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v15, v0

    invoke-static {v15}, Lcom/lge/render/PhotoMgr;->access$200(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v15

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lge/render/PhotoList;->Prev()[J

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/lge/render/PhotoList;->moveRightLoadPostion(I)V

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Lcom/lge/render/PhotoList;->moveLeftLoadPostion(I)V

    .line 1572
    add-int/lit8 v4, v4, 0x1

    goto :goto_ab

    .line 1563
    .end local v4           #i:I
    :cond_f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$000(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr$2;->val$index:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #removeContact:Lcom/lge/render/FCPhotoItem;
    check-cast v9, Lcom/lge/render/FCPhotoItem;

    .restart local v9       #removeContact:Lcom/lge/render/FCPhotoItem;
    goto/16 :goto_83

    .line 1581
    .restart local v4       #i:I
    :cond_109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    const/4 v14, -0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/lge/render/PhotoList;->hasFirst(II)I

    move-result v13

    if-eqz v13, :cond_171

    .line 1583
    const/4 v4, 0x1

    :goto_11b
    const/4 v13, 0x2

    if-gt v4, v13, :cond_158

    .line 1584
    new-instance v6, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v6}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 1585
    .local v6, item:Lcom/lge/render/FCPhotoItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/lge/render/PhotoList;->GetLeft(I)[J

    move-result-object v2

    .line 1586
    .local v2, data:[J
    const/4 v13, 0x0

    aget-wide v13, v2, v13

    invoke-virtual {v6, v13, v14}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 1587
    const/4 v13, 0x1

    aget-wide v13, v2, v13

    invoke-virtual {v6, v13, v14}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$200(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$800(Lcom/lge/render/PhotoMgr;)Lcom/lge/favoritecontacts/DataLoader;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 1583
    add-int/lit8 v4, v4, 0x1

    goto :goto_11b

    .line 1594
    .end local v2           #data:[J
    .end local v6           #item:Lcom/lge/render/FCPhotoItem;
    :cond_158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/lge/render/PhotoList;->moveLeftLoadPostion(I)V

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$800(Lcom/lge/render/PhotoMgr;)Lcom/lge/favoritecontacts/DataLoader;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lge/favoritecontacts/DataLoader;->startLoad()V

    .line 1604
    .end local v4           #i:I
    :cond_171
    :goto_171
    if-lez v11, :cond_61

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/lge/render/PhotoList;->hasLast(II)I

    move-result v13

    if-eqz v13, :cond_61

    .line 1606
    new-instance v6, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v6}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 1607
    .restart local v6       #item:Lcom/lge/render/FCPhotoItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/lge/render/PhotoList;->moveRightLoadPostion(I)V

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/lge/render/PhotoList;->getLoadData(I)[J

    move-result-object v2

    .line 1609
    .restart local v2       #data:[J
    const/4 v13, 0x0

    aget-wide v13, v2, v13

    invoke-virtual {v6, v13, v14}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 1610
    const/4 v13, 0x1

    aget-wide v13, v2, v13

    invoke-virtual {v6, v13, v14}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$100(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$800(Lcom/lge/render/PhotoMgr;)Lcom/lge/favoritecontacts/DataLoader;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$800(Lcom/lge/render/PhotoMgr;)Lcom/lge/favoritecontacts/DataLoader;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lge/favoritecontacts/DataLoader;->startLoad()V

    goto/16 :goto_61

    .line 1599
    .end local v2           #data:[J
    .end local v6           #item:Lcom/lge/render/FCPhotoItem;
    :cond_1d6
    if-gez v5, :cond_171

    if-lez v11, :cond_171

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$000(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v14, v0

    invoke-static {v14}, Lcom/lge/render/PhotoMgr;->access$100(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_171

    .line 1620
    .end local v5           #isRightIdx:I
    :pswitch_1f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$700(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/EssentialRenderer;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr$2;->val$renderFlag:I

    move v14, v0

    invoke-virtual {v13, v14}, Lcom/lge/render/EssentialRenderer;->initRenderDistance(I)V

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$000(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr$2;->val$index:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #removeContact:Lcom/lge/render/FCPhotoItem;
    check-cast v9, Lcom/lge/render/FCPhotoItem;

    .line 1622
    .restart local v9       #removeContact:Lcom/lge/render/FCPhotoItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$600(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    if-lez v11, :cond_2fa

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$000(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v14, v0

    invoke-static {v14}, Lcom/lge/render/PhotoMgr;->access$100(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$900(Lcom/lge/render/PhotoMgr;)Z

    move-result v13

    if-eqz v13, :cond_2a0

    .line 1627
    new-instance v8, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v8}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 1628
    .local v8, loaditem:Lcom/lge/render/FCPhotoItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/lge/render/PhotoList;->moveRightLoadPostion(I)V

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/lge/render/PhotoList;->getLoadData(I)[J

    move-result-object v2

    .line 1631
    .restart local v2       #data:[J
    const/4 v13, 0x0

    aget-wide v13, v2, v13

    invoke-virtual {v8, v13, v14}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 1632
    const/4 v13, 0x1

    aget-wide v13, v2, v13

    invoke-virtual {v8, v13, v14}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$100(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$800(Lcom/lge/render/PhotoMgr;)Lcom/lge/favoritecontacts/DataLoader;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$800(Lcom/lge/render/PhotoMgr;)Lcom/lge/favoritecontacts/DataLoader;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lge/favoritecontacts/DataLoader;->startLoad()V

    goto/16 :goto_61

    .line 1638
    .end local v2           #data:[J
    .end local v8           #loaditem:Lcom/lge/render/FCPhotoItem;
    :cond_2a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$500(Lcom/lge/render/PhotoMgr;)I

    move-result v13

    const/16 v14, 0x9

    sub-int v12, v13, v14

    .line 1640
    .local v12, rloadcnt:I
    div-int/lit8 v13, v12, 0x2

    rem-int/lit8 v14, v12, 0x2

    add-int v12, v13, v14

    .line 1642
    if-lez v7, :cond_61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$100(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-le v12, v13, :cond_61

    .line 1644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$100(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v14, v0

    invoke-static {v14}, Lcom/lge/render/PhotoMgr;->access$200(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/lge/render/PhotoList;->moveRightLoadPostion(I)V

    .line 1646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Lcom/lge/render/PhotoList;->moveLeftLoadPostion(I)V

    goto/16 :goto_61

    .line 1649
    .end local v12           #rloadcnt:I
    :cond_2fa
    if-lez v7, :cond_31a

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$000(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v15, v0

    invoke-static {v15}, Lcom/lge/render/PhotoMgr;->access$200(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v15

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_61

    .line 1654
    :cond_31a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$300(Lcom/lge/render/PhotoMgr;)I

    move-result v1

    .line 1655
    .local v1, center:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v14, v0

    invoke-static {v14}, Lcom/lge/render/PhotoMgr;->access$000(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/lge/render/PhotoMgr;->access$000(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    rem-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Lcom/lge/render/PhotoMgr;->access$302(Lcom/lge/render/PhotoMgr;I)I

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$300(Lcom/lge/render/PhotoMgr;)I

    move-result v13

    if-eq v1, v13, :cond_381

    .line 1658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lge/render/PhotoList;->Prev()[J

    .line 1659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/lge/render/PhotoList;->moveRightLoadPostion(I)V

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Lcom/lge/render/PhotoList;->moveLeftLoadPostion(I)V

    goto/16 :goto_61

    .line 1662
    :cond_381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Lcom/lge/render/PhotoList;->changeMovingCount(I)V

    goto/16 :goto_61

    .line 1667
    .end local v1           #center:I
    :pswitch_390
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr$2;->val$index:I

    move v13, v0

    if-gez v13, :cond_47c

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$200(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr$2;->val$index:I

    move v14, v0

    add-int/2addr v14, v7

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #removeContact:Lcom/lge/render/FCPhotoItem;
    check-cast v9, Lcom/lge/render/FCPhotoItem;

    .line 1670
    .restart local v9       #removeContact:Lcom/lge/render/FCPhotoItem;
    add-int/lit8 v7, v7, -0x1

    .line 1674
    :goto_3ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$600(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1676
    if-gtz v11, :cond_492

    .line 1677
    if-lez v7, :cond_61

    .line 1678
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr$2;->val$index:I

    move v13, v0

    if-ltz v13, :cond_418

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$700(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/EssentialRenderer;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr$2;->val$renderFlag:I

    move v14, v0

    invoke-virtual {v13, v14}, Lcom/lge/render/EssentialRenderer;->initRenderDistance(I)V

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$000(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v15, v0

    invoke-static {v15}, Lcom/lge/render/PhotoMgr;->access$200(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v15

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lge/render/PhotoList;->Prev()[J

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/lge/render/PhotoList;->moveRightLoadPostion(I)V

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Lcom/lge/render/PhotoList;->moveLeftLoadPostion(I)V

    .line 1688
    :cond_418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    const/4 v14, -0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/lge/render/PhotoList;->hasFirst(II)I

    move-result v13

    if-eqz v13, :cond_61

    .line 1690
    new-instance v6, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v6}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 1691
    .restart local v6       #item:Lcom/lge/render/FCPhotoItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/lge/render/PhotoList;->GetLeft(I)[J

    move-result-object v2

    .line 1692
    .restart local v2       #data:[J
    const/4 v13, 0x0

    aget-wide v13, v2, v13

    invoke-virtual {v6, v13, v14}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 1693
    const/4 v13, 0x1

    aget-wide v13, v2, v13

    invoke-virtual {v6, v13, v14}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$200(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$800(Lcom/lge/render/PhotoMgr;)Lcom/lge/favoritecontacts/DataLoader;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/lge/render/PhotoList;->moveLeftLoadPostion(I)V

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$800(Lcom/lge/render/PhotoMgr;)Lcom/lge/favoritecontacts/DataLoader;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lge/favoritecontacts/DataLoader;->startLoad()V

    goto/16 :goto_61

    .line 1672
    .end local v2           #data:[J
    .end local v6           #item:Lcom/lge/render/FCPhotoItem;
    :cond_47c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$000(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr$2;->val$index:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #removeContact:Lcom/lge/render/FCPhotoItem;
    check-cast v9, Lcom/lge/render/FCPhotoItem;

    .restart local v9       #removeContact:Lcom/lge/render/FCPhotoItem;
    goto/16 :goto_3ae

    .line 1702
    :cond_492
    if-lez v11, :cond_61

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/PhotoMgr$2;->val$index:I

    move v13, v0

    if-ltz v13, :cond_61

    .line 1703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$000(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v14, v0

    invoke-static {v14}, Lcom/lge/render/PhotoMgr;->access$100(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/lge/render/PhotoList;->hasLast(II)I

    move-result v13

    if-eqz v13, :cond_61

    .line 1706
    new-instance v6, Lcom/lge/render/FCPhotoItem;

    invoke-direct {v6}, Lcom/lge/render/FCPhotoItem;-><init>()V

    .line 1707
    .restart local v6       #item:Lcom/lge/render/FCPhotoItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/lge/render/PhotoList;->moveRightLoadPostion(I)V

    .line 1708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$400(Lcom/lge/render/PhotoMgr;)Lcom/lge/render/PhotoList;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/lge/render/PhotoList;->getLoadData(I)[J

    move-result-object v2

    .line 1709
    .restart local v2       #data:[J
    const/4 v13, 0x0

    aget-wide v13, v2, v13

    invoke-virtual {v6, v13, v14}, Lcom/lge/render/FCPhotoItem;->setUID(J)V

    .line 1710
    const/4 v13, 0x1

    aget-wide v13, v2, v13

    invoke-virtual {v6, v13, v14}, Lcom/lge/render/FCPhotoItem;->setPosition(J)V

    .line 1712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$100(Lcom/lge/render/PhotoMgr;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$800(Lcom/lge/render/PhotoMgr;)Lcom/lge/favoritecontacts/DataLoader;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/lge/favoritecontacts/DataLoader;->addDispLoadingEvent(Lcom/lge/render/FCPhotoItem;)V

    .line 1714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/render/PhotoMgr$2;->this$0:Lcom/lge/render/PhotoMgr;

    move-object v13, v0

    invoke-static {v13}, Lcom/lge/render/PhotoMgr;->access$800(Lcom/lge/render/PhotoMgr;)Lcom/lge/favoritecontacts/DataLoader;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lge/favoritecontacts/DataLoader;->startLoad()V

    goto/16 :goto_61

    .line 1556
    :pswitch_data_518
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_1f6
        :pswitch_61
        :pswitch_390
    .end packed-switch
.end method
