.class Lcom/lge/sns/feed/ui/PhotoPostedView$1;
.super Ljava/lang/Object;
.source "PhotoPostedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/feed/ui/PhotoPostedView;->mediaThumbnailUpdated(Lcom/lge/sns/media/MediaFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

.field final synthetic val$mf:Lcom/lge/sns/media/MediaFile;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/PhotoPostedView;Lcom/lge/sns/media/MediaFile;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$1;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    iput-object p2, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$1;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$1;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v0}, Lcom/lge/sns/media/MediaFile;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$1;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-static {v1}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$000(Lcom/lge/sns/feed/ui/PhotoPostedView;)Lcom/lge/sns/profile/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 266
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$1;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$100(Lcom/lge/sns/feed/ui/PhotoPostedView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$1;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$100(Lcom/lge/sns/feed/ui/PhotoPostedView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 267
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$1;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$100(Lcom/lge/sns/feed/ui/PhotoPostedView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 269
    :cond_33
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$1;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    iget-object v1, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$1;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-static {v0, v1}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$202(Lcom/lge/sns/feed/ui/PhotoPostedView;Lcom/lge/sns/media/MediaFile;)Lcom/lge/sns/media/MediaFile;

    .line 272
    :cond_3a
    iget-object v0, p0, Lcom/lge/sns/feed/ui/PhotoPostedView$1;->this$0:Lcom/lge/sns/feed/ui/PhotoPostedView;

    invoke-static {v0}, Lcom/lge/sns/feed/ui/PhotoPostedView;->access$300(Lcom/lge/sns/feed/ui/PhotoPostedView;)V

    .line 273
    return-void
.end method
