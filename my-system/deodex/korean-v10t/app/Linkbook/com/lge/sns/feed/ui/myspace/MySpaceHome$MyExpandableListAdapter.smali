.class public Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "MySpaceHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/feed/ui/myspace/MySpaceHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyExpandableListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;


# direct methods
.method public constructor <init>(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;)V
    .registers 2
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

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
    .line 300
    .local p1, fl:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/feed/Feed;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 301
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_20

    .line 302
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/feed/Feed;

    .line 303
    .local v0, currentFeed:Lcom/lge/sns/feed/Feed;
    invoke-virtual {v0}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p2}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-gtz v3, :cond_1d

    move v3, v1

    .line 307
    .end local v0           #currentFeed:Lcom/lge/sns/feed/Feed;
    :goto_1c
    return v3

    .line 301
    .restart local v0       #currentFeed:Lcom/lge/sns/feed/Feed;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v0           #currentFeed:Lcom/lge/sns/feed/Feed;
    :cond_20
    move v3, v2

    .line 307
    goto :goto_1c
.end method


# virtual methods
.method public addFeed(Lcom/lge/sns/feed/Feed;)V
    .registers 7
    .parameter "feed"

    .prologue
    .line 293
    iget-object v2, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    iget-object v3, v2, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedList:Ljava/util/List;

    invoke-static {}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->access$300()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 294
    .local v0, fl:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/feed/Feed;>;"
    invoke-direct {p0, v0, p1}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->findLocation(Ljava/util/List;Lcom/lge/sns/feed/Feed;)I

    move-result v1

    .line 295
    .local v1, location:I
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 296
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->notifyDataSetChanged()V

    .line 297
    return-void
.end method

.method public getChild(II)Ljava/lang/Object;
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    iget-object v0, v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedList:Ljava/util/List;

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
    .line 221
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 231
    iget-object v6, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    invoke-static {v6}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->access$000(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03000c

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 233
    const v6, 0x7f08001c

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 234
    .local v5, userNameView:Landroid/widget/TextView;
    const v6, 0x7f08001d

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 235
    .local v0, MessageView:Landroid/widget/TextView;
    const v6, 0x7f08001b

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 236
    .local v3, publishedView:Landroid/widget/TextView;
    const v6, 0x7f08001a

    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 239
    .local v2, newIconView:Landroid/widget/ImageView;
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/feed/Feed;

    .line 241
    .local v1, feed:Lcom/lge/sns/feed/Feed;
    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getOpened()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_51

    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getOpened()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_51

    .line 242
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    :cond_51
    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-static {}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->access$100()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 250
    .local v4, textResource:Ljava/lang/Integer;
    if-eqz v4, :cond_82

    .line 251
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 257
    :goto_6f
    iget-object v6, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getPublished()Ljava/util/Date;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-static {v6, v7, v8}, Lcom/lge/util/Util;->getRelativeTimeSpanString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    return-object p4

    .line 253
    :cond_82
    const v6, 0x7f05003a

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6f
.end method

.method public getChildrenCount(I)I
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    iget-object v0, v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedList:Ljava/util/List;

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
    .line 263
    iget-object v0, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    invoke-static {}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->access$200()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .registers 2

    .prologue
    .line 267
    invoke-static {}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->access$200()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 271
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
    .line 276
    iget-object v1, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->access$000(Lcom/lge/sns/feed/ui/myspace/MySpaceHome;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 278
    const v1, 0x7f080020

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 279
    .local v0, labelView:Landroid/widget/TextView;
    invoke-static {}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->access$200()Ljava/util/Map;

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

    .line 281
    return-object p3
.end method

.method public getSelectedFeed()Lcom/lge/sns/feed/Feed;
    .registers 5

    .prologue
    .line 322
    iget-object v2, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    invoke-virtual {v2}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->getSelectedPosition()J

    move-result-wide v0

    .line 323
    .local v0, position:J
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/lge/sns/feed/Feed;

    return-object p0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 289
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public removeFeed(Lcom/lge/sns/feed/Feed;)V
    .registers 5
    .parameter "feed"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    iget-object v1, v0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedList:Ljava/util/List;

    invoke-static {}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->access$300()Ljava/util/Map;

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

    .line 318
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->notifyDataSetChanged()V

    .line 319
    return-void
.end method

.method public updateFeed(Lcom/lge/sns/feed/Feed;)V
    .registers 6
    .parameter "feed"

    .prologue
    .line 311
    iget-object v1, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    iget-object v2, v1, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedList:Ljava/util/List;

    invoke-static {}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->access$300()Ljava/util/Map;

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

    .line 312
    .local v0, index:I
    iget-object v1, p0, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->this$0:Lcom/lge/sns/feed/ui/myspace/MySpaceHome;

    iget-object v2, v1, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->feedList:Ljava/util/List;

    invoke-static {}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome;->access$300()Ljava/util/Map;

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

    .line 313
    invoke-virtual {p0}, Lcom/lge/sns/feed/ui/myspace/MySpaceHome$MyExpandableListAdapter;->notifyDataSetChanged()V

    .line 314
    return-void
.end method
