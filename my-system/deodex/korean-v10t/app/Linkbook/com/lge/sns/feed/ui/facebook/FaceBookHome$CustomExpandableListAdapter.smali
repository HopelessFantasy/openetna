.class public Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "FaceBookHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/feed/ui/facebook/FaceBookHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomExpandableListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;


# direct methods
.method public constructor <init>(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    .line 316
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 317
    iput-object p2, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->mContext:Landroid/content/Context;

    .line 318
    return-void
.end method

.method private findLocation(Ljava/util/List;Lcom/lge/sns/feed/Feed;)I
    .registers 8
    .parameter
    .parameter "feed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/feed/Feed;",
            ">;",
            "Lcom/lge/sns/feed/Feed;",
            ")I"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, fl:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/feed/Feed;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 460
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_20

    .line 461
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/feed/Feed;

    .line 462
    .local v0, currentFeed:Lcom/lge/sns/feed/Feed;
    invoke-virtual {v0}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p2}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-gtz v3, :cond_1d

    move v3, v1

    .line 466
    .end local v0           #currentFeed:Lcom/lge/sns/feed/Feed;
    :goto_1c
    return v3

    .line 460
    .restart local v0       #currentFeed:Lcom/lge/sns/feed/Feed;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v0           #currentFeed:Lcom/lge/sns/feed/Feed;
    :cond_20
    move v3, v2

    .line 466
    goto :goto_1c
.end method


# virtual methods
.method public addFeed(Lcom/lge/sns/feed/Feed;)V
    .registers 10
    .parameter "feed"

    .prologue
    const/4 v6, 0x0

    const-string v7, "FR"

    .line 439
    const-string v4, "FR"

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 440
    invoke-static {}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$000()Ljava/util/Map;

    move-result-object v4

    const-string v5, "FR"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 441
    .local v2, groupPosition:I
    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    if-nez v4, :cond_35

    .line 442
    iget-object v4, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-static {v4}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$700(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v6, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 456
    .end local v2           #groupPosition:I
    :cond_34
    :goto_34
    return-void

    .line 444
    .restart local v2       #groupPosition:I
    .restart local p0
    :cond_35
    iget-object v4, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-static {v4}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$700(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/feed/Feed;

    .line 445
    .local v0, currentFeed:Lcom/lge/sns/feed/Feed;
    invoke-virtual {v0}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    if-lez v4, :cond_34

    .line 446
    iget-object v4, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-static {v4}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$700(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v6, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 450
    .end local v0           #currentFeed:Lcom/lge/sns/feed/Feed;
    .end local v2           #groupPosition:I
    .restart local p0
    :cond_65
    iget-object v4, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-static {v4}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$700(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$000()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 451
    .local v1, fl:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/feed/Feed;>;"
    invoke-direct {p0, v1, p1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->findLocation(Ljava/util/List;Lcom/lge/sns/feed/Feed;)I

    move-result v3

    .line 452
    .local v3, location:I
    invoke-interface {v1, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_34
.end method

.method public getChild(II)Ljava/lang/Object;
    .registers 5
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 321
    iget-object v1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$700(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_23

    .line 322
    iget-object v1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$700(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 323
    .local v0, child:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/feed/Feed;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_23

    .line 324
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 327
    .end local v0           #child:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/feed/Feed;>;"
    :goto_22
    return-object v1

    :cond_23
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public getChildId(II)J
    .registers 5
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 331
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 26
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 344
    invoke-static {}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$000()Ljava/util/Map;

    move-result-object v15

    const-string v16, "FR"

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move/from16 v0, p1

    move v1, v15

    if-ne v0, v1, :cond_89

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    move-object v15, v0

    invoke-static {v15}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$300(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Lcom/lge/sns/feed/IFeedFacade;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$100(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$200()Ljava/util/Map;

    move-result-object v17

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lcom/lge/sns/feed/IFeedFacade;->getFeedCount(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 347
    .local v8, feedCount:I
    const/4 v15, 0x1

    if-le v8, v15, :cond_89

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    move-object v15, v0

    invoke-static {v15}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$800(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Landroid/view/LayoutInflater;

    move-result-object v15

    const v16, 0x7f03000d

    const/16 v17, 0x0

    move-object v0, v15

    move/from16 v1, v16

    move-object/from16 v2, p5

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 350
    const v15, 0x7f08001f

    move-object/from16 v0, p4

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 351
    .local v4, MessageView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    move-object v15, v0

    const v16, 0x7f050039

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v5, p4

    .line 404
    .end local v8           #feedCount:I
    .end local p4
    .local v5, convertView:Landroid/view/View;
    :goto_88
    return-object v5

    .line 357
    .end local v4           #MessageView:Landroid/widget/TextView;
    .end local v5           #convertView:Landroid/view/View;
    .restart local p4
    :cond_89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    move-object v15, v0

    invoke-static {v15}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$800(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Landroid/view/LayoutInflater;

    move-result-object v15

    const v16, 0x7f03000a

    const/16 v17, 0x0

    move-object v0, v15

    move/from16 v1, v16

    move-object/from16 v2, p5

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 359
    const v15, 0x7f08001c

    move-object/from16 v0, p4

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 360
    .local v14, userNameView:Landroid/widget/TextView;
    const v15, 0x7f08001d

    move-object/from16 v0, p4

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 361
    .restart local v4       #MessageView:Landroid/widget/TextView;
    const v15, 0x7f08001b

    move-object/from16 v0, p4

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 362
    .local v12, publishedView:Landroid/widget/TextView;
    const v15, 0x7f080019

    move-object/from16 v0, p4

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 363
    .local v9, feedIconView:Landroid/widget/ImageView;
    const v15, 0x7f08001a

    move-object/from16 v0, p4

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 366
    .local v11, newIconView:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p2}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/sns/feed/Feed;

    .line 367
    .local v7, feed:Lcom/lge/sns/feed/Feed;
    if-eqz v7, :cond_151

    .line 368
    sget-object v15, Lcom/lge/sns/feed/ui/FeedAction;->feedIconMap:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 369
    .local v10, iconResource:Ljava/lang/Integer;
    if-eqz v10, :cond_155

    .line 370
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v9, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 375
    :goto_fb
    invoke-virtual {v7}, Lcom/lge/sns/feed/Feed;->getOpened()Ljava/util/Date;

    move-result-object v15

    if-eqz v15, :cond_15c

    invoke-virtual {v7}, Lcom/lge/sns/feed/Feed;->getOpened()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_15c

    .line 376
    const/16 v15, 0x8

    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    :goto_114
    invoke-virtual {v7}, Lcom/lge/sns/feed/Feed;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 383
    .local v6, displayName:Ljava/lang/String;
    if-eqz v6, :cond_161

    .line 384
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    :goto_11d
    sget-object v15, Lcom/lge/sns/feed/ui/FeedAction;->feedMessageMap:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 391
    .local v13, textResource:Ljava/lang/Integer;
    if-eqz v13, :cond_169

    .line 392
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(I)V

    .line 398
    :goto_132
    invoke-virtual {v7}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v15

    if-eqz v15, :cond_151

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v7}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v16

    new-instance v17, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-direct/range {v17 .. v19}, Ljava/util/Date;-><init>(J)V

    invoke-static/range {v15 .. v17}, Lcom/lge/util/Util;->getRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v6           #displayName:Ljava/lang/String;
    .end local v10           #iconResource:Ljava/lang/Integer;
    .end local v13           #textResource:Ljava/lang/Integer;
    :cond_151
    move-object/from16 v5, p4

    .line 404
    .end local p4
    .restart local v5       #convertView:Landroid/view/View;
    goto/16 :goto_88

    .line 372
    .end local v5           #convertView:Landroid/view/View;
    .restart local v10       #iconResource:Ljava/lang/Integer;
    .restart local p4
    :cond_155
    const v15, 0x7f020056

    invoke-virtual {v9, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_fb

    .line 378
    :cond_15c
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_114

    .line 386
    .restart local v6       #displayName:Ljava/lang/String;
    :cond_161
    invoke-virtual {v7}, Lcom/lge/sns/feed/Feed;->getUserName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11d

    .line 394
    .restart local v13       #textResource:Ljava/lang/Integer;
    :cond_169
    invoke-virtual {v7}, Lcom/lge/sns/feed/Feed;->getSummary()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_132
.end method

.method public getChildrenCount(I)I
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$700(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1d

    .line 336
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$700(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 338
    :goto_1c
    return v0

    .restart local p0
    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 5
    .parameter "groupPosition"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-static {}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$900()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .registers 2

    .prologue
    .line 412
    invoke-static {}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$900()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 416
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 421
    iget-object v1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$800(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000e

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 423
    const v1, 0x7f080020

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 424
    .local v0, labelView:Landroid/widget/TextView;
    invoke-static {}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$900()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 425
    invoke-virtual {p3, v3}, Landroid/view/View;->setClickable(Z)V

    .line 426
    invoke-virtual {p3, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 427
    return-object p3
.end method

.method public getSelectedFeed()Lcom/lge/sns/feed/Feed;
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 483
    iget-object v4, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-static {v4}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$1000(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Landroid/widget/ExpandableListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ExpandableListView;->getSelectedPosition()J

    move-result-wide v2

    .line 484
    .local v2, position:J
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 485
    .local v1, groupPosition:I
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    .line 487
    .local v0, childPosition:I
    if-le v1, v5, :cond_1f

    if-le v0, v5, :cond_1f

    .line 488
    invoke-virtual {p0, v1, v0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/sns/feed/Feed;

    move-object v4, p0

    .line 491
    :goto_1e
    return-object v4

    .restart local p0
    :cond_1f
    const/4 v4, 0x0

    goto :goto_1e
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 435
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 431
    const/4 v0, 0x1

    return v0
.end method

.method public removeFeed(Lcom/lge/sns/feed/Feed;)V
    .registers 5
    .parameter "feed"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$700(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 480
    return-void
.end method

.method public updateFeed(Lcom/lge/sns/feed/Feed;)V
    .registers 6
    .parameter "feed"

    .prologue
    .line 470
    iget-object v1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$700(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 471
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_46

    .line 472
    iget-object v1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$700(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 475
    :cond_46
    return-void
.end method
