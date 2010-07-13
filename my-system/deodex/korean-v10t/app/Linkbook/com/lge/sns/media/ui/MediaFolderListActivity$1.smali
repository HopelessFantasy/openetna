.class Lcom/lge/sns/media/ui/MediaFolderListActivity$1;
.super Ljava/lang/Object;
.source "MediaFolderListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/MediaFolderListActivity;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

.field final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/lge/sns/media/ui/MediaFolderListActivity;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$1;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    iput-object p2, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$1;->val$tag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dlg"
    .parameter "index"

    .prologue
    const-string v4, "user_name"

    .line 166
    iget-object v1, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$1;->val$tag:Ljava/lang/Object;

    check-cast v1, Lcom/lge/sns/media/MediaFile;

    .line 167
    .local v1, mf:Lcom/lge/sns/media/MediaFile;
    packed-switch p2, :pswitch_data_42

    .line 183
    :goto_9
    return-void

    .line 169
    :pswitch_a
    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$1;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    invoke-virtual {v2, v1}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->writeToDiskImage(Lcom/lge/sns/media/MediaFile;)V

    goto :goto_9

    .line 172
    :pswitch_10
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.sns.media.action.PHOTO_GALLERY_VIEW"

    invoke-virtual {v1}, Lcom/lge/sns/media/MediaFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 174
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$1;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    invoke-static {v2}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->access$000(Lcom/lge/sns/media/ui/MediaFolderListActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 175
    const-string v2, "user_name"

    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$1;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    invoke-static {v2}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->access$000(Lcom/lge/sns/media/ui/MediaFolderListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    :goto_2e
    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$1;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    invoke-virtual {v2, v0}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 178
    :cond_34
    const-string v2, "user_name"

    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$1;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    iget-object v2, v2, Lcom/lge/sns/media/ui/MediaFolderListActivity;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2e

    .line 167
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_a
        :pswitch_10
    .end packed-switch
.end method
