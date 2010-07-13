.class Lcom/lge/sns/feed/ui/PhotoPostedView$2$1;
.super Ljava/lang/Object;
.source "PhotoPostedView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/PhotoPostedView$2;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/feed/ui/PhotoPostedView$2;

.field final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/PhotoPostedView$2;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$2$1;->this$1:Lcom/lge/sns/feed/ui/PhotoPostedView$2;

    iput-object p2, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$2$1;->val$tag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dlg"
    .parameter "index"

    .prologue
    .line 305
    iget-object v1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$2$1;->val$tag:Ljava/lang/Object;

    check-cast v1, Lcom/lge/sns/media/MediaFile;

    .line 306
    .local v1, mf:Lcom/lge/sns/media/MediaFile;
    packed-switch p2, :pswitch_data_24

    .line 315
    :goto_7
    return-void

    .line 308
    :pswitch_8
    iget-object v2, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$2$1;->this$1:Lcom/lge/sns/feed/ui/PhotoPostedView$2;

    iget-object v2, v2, Lcom/lge/sns/feed/ui/PhotoPostedView$2;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-virtual {v2, v1}, Lcom/lge/sns/feed/ui/PhotoPostedView;->writeToDiskImage(Lcom/lge/sns/media/MediaFile;)V

    goto :goto_7

    .line 311
    :pswitch_10
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.sns.media.action.PHOTO_GALLERY_VIEW"

    invoke-virtual {v1}, Lcom/lge/sns/media/MediaFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 312
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$2$1;->this$1:Lcom/lge/sns/feed/ui/PhotoPostedView$2;

    iget-object v2, v2, Lcom/lge/sns/feed/ui/PhotoPostedView$2;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-virtual {v2, v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    .line 306
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_8
        :pswitch_10
    .end packed-switch
.end method
