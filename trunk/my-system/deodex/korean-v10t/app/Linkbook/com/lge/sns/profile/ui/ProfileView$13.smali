.class Lcom/lge/sns/profile/ui/ProfileView$13;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/ProfileView;->mediaFileRemoved(Lcom/lge/sns/media/MediaFile;)V
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
    .line 1017
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileView$13;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    iput-object p2, p0, Lcom/lge/sns/profile/ui/ProfileView$13;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView$13;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v0}, Lcom/lge/sns/profile/ui/ProfileView;->access$1500(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$13;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->removeMediaFile(Lcom/lge/sns/media/MediaFile;)V

    .line 1019
    return-void
.end method
