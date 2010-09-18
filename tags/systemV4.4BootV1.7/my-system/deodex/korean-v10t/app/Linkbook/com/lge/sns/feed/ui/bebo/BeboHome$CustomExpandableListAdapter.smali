.class public Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "BeboHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/feed/ui/bebo/BeboHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomExpandableListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;


# direct methods
.method public constructor <init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    .line 301
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 302
    iput-object p2, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->mContext:Landroid/content/Context;

    .line 303
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
    .line 441
    .local p1, fl:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/feed/Feed;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 442
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_20

    .line 443
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/feed/Feed;

    .line 444
    .local v0, currentFeed:Lcom/lge/sns/feed/Feed;
    invoke-virtual {v0}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p2}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-gtz v3, :cond_1d

    move v3, v1

    .line 448
    .end local v0           #currentFeed:Lcom/lge/sns/feed/Feed;
    :goto_1c
    return v3

    .line 442
    .restart local v0       #currentFeed:Lcom/lge/sns/feed/Feed;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v0           #currentFeed:Lcom/lge/sns/feed/Feed;
    :cond_20
    move v3, v2

    .line 448
    goto :goto_1c
.end method


# virtual methods
.method public addFeed(Lcom/lge/sns/feed/Feed;)V
    .registers 10
    .parameter "feed"

    .prologue
    const/4 v6, 0x0

    const-string v7, "FR"

    .line 421
    const-string v4, "FR"

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 422
    invoke-static {}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$000()Ljava/util/Map;

    move-result-object v4

    const-string v5, "FR"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 423
    .local v2, groupPosition:I
    invoke-virtual {p0, v2}, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    if-nez v4, :cond_38

    .line 424
    iget-object v4, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v4}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$700(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v6, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 437
    .end local v2           #groupPosition:I
    :cond_34
    :goto_34
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->notifyDataSetChanged()V

    .line 438
    return-void

    .line 426
    .restart local v2       #groupPosition:I
    :cond_38
    iget-object v4, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v4}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$700(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/feed/Feed;

    .line 427
    .local v0, currentFeed:Lcom/lge/sns/feed/Feed;
    invoke-virtual {v0}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    if-lez v4, :cond_34

    .line 428
    iget-object v4, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v4}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$700(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v6, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 432
    .end local v0           #currentFeed:Lcom/lge/sns/feed/Feed;
    .end local v2           #groupPosition:I
    :cond_68
    iget-object v4, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v4}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$700(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$000()Ljava/util/Map;

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

    .line 433
    .local v1, fl:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/feed/Feed;>;"
    invoke-direct {p0, v1, p1}, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->findLocation(Ljava/util/List;Lcom/lge/sns/feed/Feed;)I

    move-result v3

    .line 434
    .local v3, location:I
    invoke-interface {v1, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_34
.end method

.method public getChild(II)Ljava/lang/Object;
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$700(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .registers 5
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 310
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
    .line 320
    invoke-static {}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$000()Ljava/util/Map;

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

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    move-object v15, v0

    invoke-static {v15}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$300(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Lcom/lge/sns/feed/IFeedFacade;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$100(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$200()Ljava/util/Map;

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

    move-result v7

    .line 323
    .local v7, feedCount:I
    const/4 v15, 0x1

    if-le v7, v15, :cond_89

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    move-object v15, v0

    invoke-static {v15}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$800(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Landroid/view/LayoutInflater;

    move-result-object v15

    const v16, 0x7f03000d

    const/16 v17, 0x0

    move-object v0, v15

    move/from16 v1, v16

    move-object/from16 v2, p5

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 326
    const v15, 0x7f08001f

    move-object/from16 v0, p4

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 327
    .local v4, MessageView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    move-object v15, v0

    const v16, 0x7f050039

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v5, p4

    .line 387
    .end local v7           #feedCount:I
    .end local p4
    .local v5, convertView:Landroid/view/View;
    :goto_88
    return-object v5

    .line 333
    .end local v4           #MessageView:Landroid/widget/TextView;
    .end local v5           #convertView:Landroid/view/View;
    .restart local p4
    :cond_89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    move-object v15, v0

    invoke-static {v15}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$800(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Landroid/view/LayoutInflater;

    move-result-object v15

    const v16, 0x7f03000a

    const/16 v17, 0x0

    move-object v0, v15

    move/from16 v1, v16

    move-object/from16 v2, p5

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 335
    const v15, 0x7f08001c

    move-object/from16 v0, p4

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 336
    .local v14, userNameView:Landroid/widget/TextView;
    const v15, 0x7f08001d

    move-object/from16 v0, p4

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 337
    .restart local v4       #MessageView:Landroid/widget/TextView;
    const v15, 0x7f08001b

    move-object/from16 v0, p4

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 338
    .local v12, publishedView:Landroid/widget/TextView;
    const v15, 0x7f080019

    move-object/from16 v0, p4

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 339
    .local v8, feedIconView:Landroid/widget/ImageView;
    const v15, 0x7f08001a

    move-object/from16 v0, p4

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 342
    .local v11, newIconView:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p2}, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/sns/feed/Feed;

    .line 344
    .local v6, feed:Lcom/lge/sns/feed/Feed;
    sget-object v15, Lcom/lge/sns/feed/ui/FeedAction;->feedIconMap:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 345
    .local v9, iconResource:Ljava/lang/Integer;
    if-eqz v9, :cond_163

    .line 346
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 351
    :goto_f9
    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getOpened()Ljava/util/Date;

    move-result-object v15

    if-eqz v15, :cond_16a

    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getOpened()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_16a

    .line 352
    const/16 v15, 0x8

    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    :goto_112
    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    .line 359
    .local v10, name:Ljava/lang/String;
    const-string v15, "FR"

    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16f

    .line 360
    if-nez v10, :cond_128

    .line 361
    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getUserName()Ljava/lang/String;

    move-result-object v10

    .line 370
    :cond_128
    :goto_128
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    sget-object v15, Lcom/lge/sns/feed/ui/FeedAction;->feedMessageMap:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 374
    .local v13, textResource:Ljava/lang/Integer;
    if-eqz v13, :cond_1a7

    .line 375
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(I)V

    .line 381
    :goto_140
    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v15

    if-eqz v15, :cond_15f

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v16

    new-instance v17, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-direct/range {v17 .. v19}, Ljava/util/Date;-><init>(J)V

    invoke-static/range {v15 .. v17}, Lcom/lge/util/Util;->getRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15f
    move-object/from16 v5, p4

    .line 387
    .end local p4
    .restart local v5       #convertView:Landroid/view/View;
    goto/16 :goto_88

    .line 348
    .end local v5           #convertView:Landroid/view/View;
    .end local v10           #name:Ljava/lang/String;
    .end local v13           #textResource:Ljava/lang/Integer;
    .restart local p4
    :cond_163
    const v15, 0x7f020056

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_f9

    .line 354
    :cond_16a
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_112

    .line 364
    .restart local v10       #name:Ljava/lang/String;
    :cond_16f
    if-nez v10, :cond_18e

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    move-object v15, v0

    const v16, 0x7f050033

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getUserName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_128

    .line 367
    :cond_18e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    move-object v15, v0

    const v16, 0x7f050033

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v10, v17, v18

    invoke-virtual/range {v15 .. v17}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_128

    .line 377
    .restart local v13       #textResource:Ljava/lang/Integer;
    :cond_1a7
    invoke-virtual {v6}, Lcom/lge/sns/feed/Feed;->getSummary()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_140
.end method

.method public getChildrenCount(I)I
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$700(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 5
    .parameter "groupPosition"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$900()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .registers 2

    .prologue
    .line 395
    invoke-static {}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$900()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 399
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
    .line 404
    iget-object v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$800(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 406
    const v1, 0x7f080020

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 407
    .local v0, labelView:Landroid/widget/TextView;
    invoke-static {}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$900()Ljava/util/Map;

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

    .line 409
    return-object p3
.end method

.method public getSelectedFeed()Lcom/lge/sns/feed/Feed;
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 465
    iget-object v4, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v4}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$1000(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Landroid/widget/ExpandableListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ExpandableListView;->getSelectedPosition()J

    move-result-wide v2

    .line 466
    .local v2, position:J
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 467
    .local v1, groupPosition:I
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    .line 469
    .local v0, childPosition:I
    if-le v1, v5, :cond_1f

    if-le v0, v5, :cond_1f

    .line 470
    invoke-virtual {p0, v1, v0}, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/sns/feed/Feed;

    move-object v4, p0

    .line 473
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
    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 413
    const/4 v0, 0x1

    return v0
.end method

.method public removeFeed(Lcom/lge/sns/feed/Feed;)V
    .registers 5
    .parameter "feed"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$700(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 461
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->notifyDataSetChanged()V

    .line 462
    return-void
.end method

.method public updateFeed(Lcom/lge/sns/feed/Feed;)V
    .registers 6
    .parameter "feed"

    .prologue
    .line 452
    iget-object v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$700(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$000()Ljava/util/Map;

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

    .line 453
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_49

    .line 454
    iget-object v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$700(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$000()Ljava/util/Map;

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

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->notifyDataSetChanged()V

    .line 457
    :cond_49
    return-void
.end method
