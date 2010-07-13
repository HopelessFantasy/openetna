.class Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;
.super Ljava/lang/Object;
.source "PhotoGalleryViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->updateImageView(Lcom/lge/sns/media/MediaFile;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

.field final synthetic val$mf:Lcom/lge/sns/media/MediaFile;

.field final synthetic val$retry:Z


# direct methods
.method constructor <init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Lcom/lge/sns/media/MediaFile;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    iput-object p2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->val$mf:Lcom/lge/sns/media/MediaFile;

    iput-boolean p3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->val$retry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 260
    :try_start_0
    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    iget-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v4}, Lcom/lge/sns/media/MediaFile;->getId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$602(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;J)J

    .line 261
    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    invoke-static {v3}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->access$100(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v4}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v5}, Lcom/lge/sns/media/MediaFile;->getLink()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v6}, Lcom/lge/sns/media/MediaFile;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/lge/sns/media/IMediaFacade$BitmapDecoder;->getInstance()Lcom/lge/sns/media/IMediaFacade$BitmapDecoder;

    move-result-object v7

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/lge/sns/media/IMediaFacade;->getOrignalMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaDecoder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 264
    .local v2, orgPic:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_39

    .line 265
    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    new-instance v4, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2$1;

    invoke-direct {v4, p0, v2}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2$1;-><init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_85
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_0 .. :try_end_39} :catch_44
    .catch Lcom/lge/sns/SnsException; {:try_start_0 .. :try_end_39} :catch_6e

    .line 286
    :cond_39
    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    new-instance v4, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2$3;

    invoke-direct {v4, p0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2$3;-><init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;)V

    invoke-virtual {v3, v4}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 292
    .end local v2           #orgPic:Landroid/graphics/Bitmap;
    :goto_43
    return-void

    .line 273
    :catch_44
    move-exception v3

    move-object v0, v3

    .line 274
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    :try_start_46
    iget-boolean v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->val$retry:Z

    if-eqz v3, :cond_63

    .line 275
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "sns_id"

    iget-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v4}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    const/16 v4, 0x7d0

    invoke-virtual {v3, v1, v4}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_63
    .catchall {:try_start_46 .. :try_end_63} :catchall_85

    .line 286
    .end local v1           #intent:Landroid/content/Intent;
    :cond_63
    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    new-instance v4, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2$3;

    invoke-direct {v4, p0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2$3;-><init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;)V

    invoke-virtual {v3, v4}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_43

    .line 279
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_6e
    move-exception v3

    move-object v0, v3

    .line 280
    .local v0, e:Lcom/lge/sns/SnsException;
    :try_start_70
    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    new-instance v4, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2$2;

    invoke-direct {v4, p0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2$2;-><init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;)V

    invoke-virtual {v3, v4}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_7a
    .catchall {:try_start_70 .. :try_end_7a} :catchall_85

    .line 286
    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    new-instance v4, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2$3;

    invoke-direct {v4, p0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2$3;-><init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;)V

    invoke-virtual {v3, v4}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_43

    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catchall_85
    move-exception v3

    iget-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;->this$0:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;

    new-instance v5, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2$3;

    invoke-direct {v5, p0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2$3;-><init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;)V

    invoke-virtual {v4, v5}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v3
.end method
