.class Lcom/lge/sns/feed/ui/FeedList$3;
.super Ljava/lang/Object;
.source "FeedList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/FeedList;->onFeedUpdateFinished(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/FeedList;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/FeedList;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/lge/sns/feed/ui/FeedList$3;->this$0:Lcom/lge/sns/feed/ui/FeedList;

    iput p2, p0, Lcom/lge/sns/feed/ui/FeedList$3;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 273
    iget-object v1, p0, Lcom/lge/sns/feed/ui/FeedList$3;->this$0:Lcom/lge/sns/feed/ui/FeedList;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/lge/sns/feed/ui/FeedList;->dismissDialog(I)V

    .line 274
    iget-object v1, p0, Lcom/lge/sns/feed/ui/FeedList$3;->this$0:Lcom/lge/sns/feed/ui/FeedList;

    const v2, 0x7f05002b

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/lge/sns/feed/ui/FeedList$3;->val$count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/lge/sns/feed/ui/FeedList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/sns/feed/ui/FeedList$3;->this$0:Lcom/lge/sns/feed/ui/FeedList;

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 276
    return-void
.end method
