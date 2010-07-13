.class Lcom/lge/sns/feed/ui/ProfileCommentView$1;
.super Ljava/lang/Object;
.source "ProfileCommentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/ProfileCommentView;->addButtonView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/ProfileCommentView;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/ProfileCommentView;)V
    .registers 2
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/lge/sns/feed/ui/ProfileCommentView$1;->this$0:Lcom/lge/sns/feed/ui/ProfileCommentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.feed.intent.action.WRITE_PROFILE_COMMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/feed/ui/ProfileCommentView$1;->this$0:Lcom/lge/sns/feed/ui/ProfileCommentView;

    invoke-static {v2}, Lcom/lge/sns/feed/ui/ProfileCommentView;->access$000(Lcom/lge/sns/feed/ui/ProfileCommentView;)Lcom/lge/sns/profile/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/lge/sns/feed/ui/ProfileCommentView$1;->this$0:Lcom/lge/sns/feed/ui/ProfileCommentView;

    invoke-static {v2}, Lcom/lge/sns/feed/ui/ProfileCommentView;->access$000(Lcom/lge/sns/feed/ui/ProfileCommentView;)Lcom/lge/sns/profile/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iget-object v1, p0, Lcom/lge/sns/feed/ui/ProfileCommentView$1;->this$0:Lcom/lge/sns/feed/ui/ProfileCommentView;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/ProfileCommentView;->access$100(Lcom/lge/sns/feed/ui/ProfileCommentView;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 226
    const-string v1, "user_name"

    iget-object v2, p0, Lcom/lge/sns/feed/ui/ProfileCommentView$1;->this$0:Lcom/lge/sns/feed/ui/ProfileCommentView;

    invoke-static {v2}, Lcom/lge/sns/feed/ui/ProfileCommentView;->access$000(Lcom/lge/sns/feed/ui/ProfileCommentView;)Lcom/lge/sns/profile/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    :cond_3c
    iget-object v1, p0, Lcom/lge/sns/feed/ui/ProfileCommentView$1;->this$0:Lcom/lge/sns/feed/ui/ProfileCommentView;

    invoke-virtual {v1, v0}, Lcom/lge/sns/feed/ui/ProfileCommentView;->startActivity(Landroid/content/Intent;)V

    .line 229
    return-void
.end method
