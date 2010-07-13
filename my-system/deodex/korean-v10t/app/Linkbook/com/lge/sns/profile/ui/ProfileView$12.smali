.class Lcom/lge/sns/profile/ui/ProfileView$12;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/ProfileView;->mediaFileAdded(Lcom/lge/sns/media/MediaFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/ProfileView;

.field final synthetic val$mf:Lcom/lge/sns/media/MediaFile;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ProfileView;Lcom/lge/sns/media/MediaFile;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 998
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileView$12;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    iput-object p2, p0, Lcom/lge/sns/profile/ui/ProfileView$12;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 999
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView$12;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    iget-boolean v0, v0, Lcom/lge/sns/profile/ui/ProfileView;->dialogDisable:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView$12;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ProfileView;->access$1700(Lcom/lge/sns/profile/ui/ProfileView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView$12;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ProfileView;->access$1700(Lcom/lge/sns/profile/ui/ProfileView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1000
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView$12;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ProfileView;->access$1700(Lcom/lge/sns/profile/ui/ProfileView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1002
    :cond_23
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView$12;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ProfileView;->access$1500(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$12;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->addMediaFile(Lcom/lge/sns/media/MediaFile;)V

    .line 1003
    return-void
.end method
