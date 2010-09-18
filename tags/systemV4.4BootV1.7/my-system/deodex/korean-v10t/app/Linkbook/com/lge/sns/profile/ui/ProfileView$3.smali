.class Lcom/lge/sns/profile/ui/ProfileView$3;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/ProfileView;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ProfileView;)V
    .registers 2
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileView$3;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 12
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 502
    invoke-static {}, Lcom/lge/sns/profile/ui/ProfileView;->access$100()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lcom/lge/sns/profile/ui/ProfileView;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p3, v2, :cond_46

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView$3;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    iget-boolean v2, v2, Lcom/lge/sns/profile/ui/ProfileView;->myProfile:Z

    if-eqz v2, :cond_46

    .line 503
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView$3;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/ProfileView;->access$1500(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/profile/ProfileComment;

    .line 504
    .local v1, selectComment:Lcom/lge/sns/profile/ProfileComment;
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView$3;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-virtual {v1}, Lcom/lge/sns/profile/ProfileComment;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lge/sns/profile/ProfileComment;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/sns/profile/ui/ProfileView;->confirmMyFriend(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 505
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Lcom/lge/sns/profile/ProfileComment;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 506
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView$3;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-virtual {v2, v0}, Lcom/lge/sns/profile/ui/ProfileView;->startActivity(Landroid/content/Intent;)V

    .line 513
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #selectComment:Lcom/lge/sns/profile/ProfileComment;
    :cond_46
    const/4 v2, 0x1

    return v2
.end method
