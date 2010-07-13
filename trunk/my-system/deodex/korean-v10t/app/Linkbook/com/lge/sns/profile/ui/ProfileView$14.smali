.class Lcom/lge/sns/profile/ui/ProfileView$14;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/ProfileView;->mediaFileUpdated(Lcom/lge/sns/media/MediaFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/ProfileView;

.field final synthetic val$iv:Landroid/widget/ImageView;

.field final synthetic val$mf:Lcom/lge/sns/media/MediaFile;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ProfileView;Lcom/lge/sns/media/MediaFile;Landroid/widget/ImageView;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileView$14;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    iput-object p2, p0, Lcom/lge/sns/profile/ui/ProfileView$14;->val$mf:Lcom/lge/sns/media/MediaFile;

    iput-object p3, p0, Lcom/lge/sns/profile/ui/ProfileView$14;->val$iv:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1043
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$14;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ProfileView;->access$800(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView$14;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-interface {v1, v2}, Lcom/lge/sns/media/IMediaFacade;->getThumbnailBitmap(Lcom/lge/sns/media/MediaFile;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1044
    .local v0, photo:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3d

    .line 1045
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$14;->val$iv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1046
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$14;->val$iv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView$14;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1047
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$14;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    iget-boolean v1, v1, Lcom/lge/sns/profile/ui/ProfileView;->dialogDisable:Z

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$14;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ProfileView;->access$1700(Lcom/lge/sns/profile/ui/ProfileView;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$14;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ProfileView;->access$1700(Lcom/lge/sns/profile/ui/ProfileView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1049
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$14;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ProfileView;->access$1700(Lcom/lge/sns/profile/ui/ProfileView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1052
    :cond_3d
    return-void
.end method
