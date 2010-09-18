.class Lcom/lge/sns/profile/ui/twitter/TwitterProfile$3;
.super Ljava/lang/Object;
.source "TwitterProfile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->showFollwerFollowing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)V
    .registers 2
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 272
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.profile.intent.action.VIEW_TWITTER_FOLLOWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$000(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Lcom/lge/sns/profile/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$000(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Lcom/lge/sns/profile/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v1, "user_name"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$000(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Lcom/lge/sns/profile/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$3;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-virtual {v1, v0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->startActivity(Landroid/content/Intent;)V

    .line 277
    return-void
.end method
