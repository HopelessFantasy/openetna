.class Lcom/lge/sns/feed/ui/ProfileStatusView$1;
.super Ljava/lang/Object;
.source "ProfileStatusView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/ProfileStatusView;->addButtonView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/ProfileStatusView;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/ProfileStatusView;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/lge/sns/feed/ui/ProfileStatusView$1;->this$0:Lcom/lge/sns/feed/ui/ProfileStatusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.feed.intent.action.WRITE_PROFILE_COMMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/feed/ui/ProfileStatusView$1;->this$0:Lcom/lge/sns/feed/ui/ProfileStatusView;

    invoke-static {v2}, Lcom/lge/sns/feed/ui/ProfileStatusView;->access$000(Lcom/lge/sns/feed/ui/ProfileStatusView;)Lcom/lge/sns/feed/Feed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/feed/Feed;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/lge/sns/feed/ui/ProfileStatusView$1;->this$0:Lcom/lge/sns/feed/ui/ProfileStatusView;

    invoke-static {v2}, Lcom/lge/sns/feed/ui/ProfileStatusView;->access$000(Lcom/lge/sns/feed/ui/ProfileStatusView;)Lcom/lge/sns/feed/Feed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/feed/Feed;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lcom/lge/sns/feed/ui/ProfileStatusView$1;->this$0:Lcom/lge/sns/feed/ui/ProfileStatusView;

    invoke-virtual {v1, v0}, Lcom/lge/sns/feed/ui/ProfileStatusView;->startActivity(Landroid/content/Intent;)V

    .line 162
    return-void
.end method
