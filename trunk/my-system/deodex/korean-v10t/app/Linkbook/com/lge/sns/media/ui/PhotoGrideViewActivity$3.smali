.class Lcom/lge/sns/media/ui/PhotoGrideViewActivity$3;
.super Ljava/lang/Object;
.source "PhotoGrideViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

.field final synthetic val$mf:Lcom/lge/sns/media/MediaFile;


# direct methods
.method constructor <init>(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;Lcom/lge/sns/media/MediaFile;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$3;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    iput-object p2, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$3;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dlg"
    .parameter "index"

    .prologue
    .line 247
    packed-switch p2, :pswitch_data_20

    .line 256
    :goto_3
    return-void

    .line 249
    :pswitch_4
    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$3;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$3;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v1, v2}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->writeToDiskImage(Lcom/lge/sns/media/MediaFile;)V

    goto :goto_3

    .line 252
    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.media.action.PHOTO_GALLERY_VIEW"

    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$3;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v2}, Lcom/lge/sns/media/MediaFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 253
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$3;->this$0:Lcom/lge/sns/media/ui/PhotoGrideViewActivity;

    invoke-virtual {v1, v0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 247
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_4
        :pswitch_c
    .end packed-switch
.end method
