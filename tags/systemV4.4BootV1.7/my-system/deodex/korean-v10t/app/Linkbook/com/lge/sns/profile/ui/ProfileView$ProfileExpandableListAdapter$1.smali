.class Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter$1;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter$1;->this$1:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const-string v3, "user_name"

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/lge/sns/media/IMediaFacade;->MEDIA_FOLDER_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 212
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter$1;->this$1:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    iget-object v2, v2, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/ProfileView;->access$400(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter$1;->this$1:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    iget-object v2, v2, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/ProfileView;->access$400(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter$1;->this$1:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    iget-object v1, v1, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ProfileView;->access$400(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 218
    const-string v1, "user_name"

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter$1;->this$1:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    iget-object v1, v1, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ProfileView;->access$400(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    :cond_4c
    :goto_4c
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter$1;->this$1:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    iget-object v1, v1, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-virtual {v1, v0}, Lcom/lge/sns/profile/ui/ProfileView;->startActivity(Landroid/content/Intent;)V

    .line 223
    return-void

    .line 219
    :cond_54
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter$1;->this$1:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    iget-object v1, v1, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ProfileView;->access$400(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 220
    const-string v1, "user_name"

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter$1;->this$1:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    iget-object v1, v1, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ProfileView;->access$400(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4c
.end method
