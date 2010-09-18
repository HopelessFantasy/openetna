.class Lcom/lge/sns/profile/ui/ProfileView$4;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 519
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileView$4;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 521
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.profile.intent.action.PROFILE_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    .local v0, showDetailedInfo:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$4;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ProfileView;->access$400(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/profile/Profile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 524
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$4;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    const/16 v2, 0x7d3

    invoke-virtual {v1, v0, v2}, Lcom/lge/sns/profile/ui/ProfileView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 525
    return-void
.end method
