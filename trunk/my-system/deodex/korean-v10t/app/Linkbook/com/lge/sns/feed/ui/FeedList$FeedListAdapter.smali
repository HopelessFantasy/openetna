.class Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FeedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/feed/ui/FeedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeedListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/lge/sns/feed/Feed;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field mTextViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/feed/Feed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/feed/Feed;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 437
    iput-object p1, p0, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;->mContext:Landroid/content/Context;

    .line 438
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 439
    iput p2, p0, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;->mTextViewResourceId:I

    .line 440
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 447
    if-nez p2, :cond_c3

    .line 448
    iget-object v5, p0, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;->mTextViewResourceId:I

    invoke-virtual {v5, v6, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 452
    new-instance v2, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter$ViewHolder;-><init>()V

    .line 453
    .local v2, holder:Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter$ViewHolder;
    const v5, 0x7f08001c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter$ViewHolder;->userNameView:Landroid/widget/TextView;

    .line 454
    const v5, 0x7f08001d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter$ViewHolder;->MessageView:Landroid/widget/TextView;

    .line 455
    const v5, 0x7f08001b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter$ViewHolder;->publishedView:Landroid/widget/TextView;

    .line 456
    const v5, 0x7f080019

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter$ViewHolder;->feedIconView:Landroid/widget/ImageView;

    .line 457
    const v5, 0x7f08001a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter$ViewHolder;->newIconView:Landroid/widget/ImageView;

    .line 458
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 466
    :goto_4a
    invoke-virtual {p0, p1}, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/feed/Feed;

    .line 468
    .local v1, feed:Lcom/lge/sns/feed/Feed;
    sget-object v5, Lcom/lge/sns/feed/ui/FeedAction;->feedIconMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 469
    .local v3, iconResource:Ljava/lang/Integer;
    if-eqz v3, :cond_ca

    .line 470
    iget-object v5, v2, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter$ViewHolder;->feedIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 475
    :goto_67
    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getOpened()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_d3

    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getOpened()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_d3

    .line 476
    iget-object v5, v2, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter$ViewHolder;->newIconView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 482
    :goto_82
    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, displayName:Ljava/lang/String;
    if-eqz v0, :cond_d9

    .line 484
    iget-object v5, v2, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter$ViewHolder;->userNameView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    :goto_8d
    sget-object v5, Lcom/lge/sns/feed/ui/FeedAction;->feedMessageMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 491
    .local v4, textResource:Ljava/lang/Integer;
    if-eqz v4, :cond_e3

    .line 492
    iget-object v5, v2, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter$ViewHolder;->MessageView:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 498
    :goto_a4
    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_c2

    .line 499
    iget-object v5, v2, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter$ViewHolder;->publishedView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6, v7, v8}, Lcom/lge/util/Util;->getRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    :cond_c2
    return-object p2

    .line 462
    .end local v0           #displayName:Ljava/lang/String;
    .end local v1           #feed:Lcom/lge/sns/feed/Feed;
    .end local v2           #holder:Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter$ViewHolder;
    .end local v3           #iconResource:Ljava/lang/Integer;
    .end local v4           #textResource:Ljava/lang/Integer;
    :cond_c3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter$ViewHolder;

    .restart local v2       #holder:Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter$ViewHolder;
    goto :goto_4a

    .line 472
    .restart local v1       #feed:Lcom/lge/sns/feed/Feed;
    .restart local v3       #iconResource:Ljava/lang/Integer;
    :cond_ca
    iget-object v5, v2, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter$ViewHolder;->feedIconView:Landroid/widget/ImageView;

    const v6, 0x7f020056

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_67

    .line 478
    :cond_d3
    iget-object v5, v2, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter$ViewHolder;->newIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_82

    .line 486
    .restart local v0       #displayName:Ljava/lang/String;
    :cond_d9
    iget-object v5, v2, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter$ViewHolder;->userNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8d

    .line 494
    .restart local v4       #textResource:Ljava/lang/Integer;
    :cond_e3
    iget-object v5, v2, Lcom/lge/sns/feed/ui/FeedList$FeedListAdapter$ViewHolder;->MessageView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getSummary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a4
.end method
