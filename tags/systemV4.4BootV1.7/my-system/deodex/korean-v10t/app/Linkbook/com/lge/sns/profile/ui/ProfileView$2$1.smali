.class Lcom/lge/sns/profile/ui/ProfileView$2$1;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/ProfileView$2;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/profile/ui/ProfileView$2;

.field final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ProfileView$2;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileView$2$1;->this$1:Lcom/lge/sns/profile/ui/ProfileView$2;

    iput-object p2, p0, Lcom/lge/sns/profile/ui/ProfileView$2$1;->val$tag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dlg"
    .parameter "index"

    .prologue
    .line 475
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$2$1;->val$tag:Ljava/lang/Object;

    check-cast v1, Lcom/lge/sns/media/MediaFile;

    .line 476
    .local v1, mf:Lcom/lge/sns/media/MediaFile;
    packed-switch p2, :pswitch_data_34

    .line 486
    :goto_7
    return-void

    .line 478
    :pswitch_8
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView$2$1;->this$1:Lcom/lge/sns/profile/ui/ProfileView$2;

    iget-object v2, v2, Lcom/lge/sns/profile/ui/ProfileView$2;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-virtual {v2, v1}, Lcom/lge/sns/profile/ui/ProfileView;->writeToDiskImage(Lcom/lge/sns/media/MediaFile;)V

    goto :goto_7

    .line 481
    :pswitch_10
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.sns.media.action.PHOTO_GALLERY_VIEW"

    invoke-virtual {v1}, Lcom/lge/sns/media/MediaFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 482
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "user_name"

    iget-object v3, p0, Lcom/lge/sns/profile/ui/ProfileView$2$1;->this$1:Lcom/lge/sns/profile/ui/ProfileView$2;

    iget-object v3, v3, Lcom/lge/sns/profile/ui/ProfileView$2;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/ProfileView;->access$400(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/Profile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView$2$1;->this$1:Lcom/lge/sns/profile/ui/ProfileView$2;

    iget-object v2, v2, Lcom/lge/sns/profile/ui/ProfileView$2;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-virtual {v2, v0}, Lcom/lge/sns/profile/ui/ProfileView;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 476
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_8
        :pswitch_10
    .end packed-switch
.end method
