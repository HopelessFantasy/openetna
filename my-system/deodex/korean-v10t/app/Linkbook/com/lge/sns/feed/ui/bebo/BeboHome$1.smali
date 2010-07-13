.class Lcom/lge/sns/feed/ui/bebo/BeboHome$1;
.super Ljava/lang/Object;
.source "BeboHome.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/feed/ui/bebo/BeboHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/bebo/BeboHome;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 14
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    .line 179
    invoke-static {}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$000()Ljava/util/Map;

    move-result-object v1

    const-string v2, "FR"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p3, v1, :cond_63

    iget-object v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$300(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Lcom/lge/sns/feed/IFeedFacade;

    move-result-object v2

    iget-object v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$100(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$200()Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/lge/sns/feed/IFeedFacade;->getFeedCount(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-le v1, v6, :cond_63

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/lge/sns/feed/IFeedFacade;->FEED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 183
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v2}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$100(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v2, "feed_type"

    invoke-static {}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$200()Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-virtual {v1, v0}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->startActivity(Landroid/content/Intent;)V

    .line 205
    .end local v0           #intent:Landroid/content/Intent;
    :cond_62
    :goto_62
    return v6

    .line 187
    :cond_63
    iget-object v2, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    iget-object v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$500(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/lge/sns/feed/ui/bebo/BeboHome$CustomExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/feed/Feed;

    invoke-static {v2, v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$402(Lcom/lge/sns/feed/ui/bebo/BeboHome;Lcom/lge/sns/feed/Feed;)Lcom/lge/sns/feed/Feed;

    .line 188
    iget-object v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$400(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Lcom/lge/sns/feed/Feed;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 189
    iget-object v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$400(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Lcom/lge/sns/feed/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getDataUri()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_aa

    .line 190
    iget-object v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$300(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Lcom/lge/sns/feed/IFeedFacade;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v2}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$400(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Lcom/lge/sns/feed/Feed;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-interface {v1, v2, v3}, Lcom/lge/sns/feed/IFeedFacade;->getFeedDataAsync(Lcom/lge/sns/feed/Feed;Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 191
    iget-object v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    const v2, 0x7f05002a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_62

    .line 194
    :cond_aa
    iget-object v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    iget-object v2, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v2}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$400(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Lcom/lge/sns/feed/Feed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/feed/Feed;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v4}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$400(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Lcom/lge/sns/feed/Feed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/sns/feed/Feed;->getFeedType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v5}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$400(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Lcom/lge/sns/feed/Feed;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/sns/feed/Feed;->getDataUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$600(Lcom/lge/sns/feed/ui/bebo/BeboHome;JLjava/lang/String;Landroid/net/Uri;)V

    .line 198
    iget-object v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$400(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Lcom/lge/sns/feed/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getOpened()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_f1

    iget-object v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$400(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Lcom/lge/sns/feed/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/feed/Feed;->getOpened()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_62

    .line 199
    :cond_f1
    iget-object v1, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$300(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Lcom/lge/sns/feed/IFeedFacade;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/feed/ui/bebo/BeboHome$1;->this$0:Lcom/lge/sns/feed/ui/bebo/BeboHome;

    invoke-static {v2}, Lcom/lge/sns/feed/ui/bebo/BeboHome;->access$400(Lcom/lge/sns/feed/ui/bebo/BeboHome;)Lcom/lge/sns/feed/Feed;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lge/sns/feed/IFeedFacade;->updateFeedOpenDate(Lcom/lge/sns/feed/Feed;)V

    goto/16 :goto_62
.end method
