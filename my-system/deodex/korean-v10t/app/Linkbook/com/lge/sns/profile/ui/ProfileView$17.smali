.class Lcom/lge/sns/profile/ui/ProfileView$17;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/ProfileView;->mediaFolderRemoved(Lcom/lge/sns/media/MediaFolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/ProfileView;

.field final synthetic val$folderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ProfileView;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileView$17;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    iput-object p2, p0, Lcom/lge/sns/profile/ui/ProfileView$17;->val$folderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1144
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView$17;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/ProfileView;->access$500(Lcom/lge/sns/profile/ui/ProfileView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/media/MediaFile;

    .line 1145
    .local v1, mf:Lcom/lge/sns/media/MediaFile;
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView$17;->val$folderId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/lge/sns/media/MediaFile;->getFolderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1146
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView$17;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/ProfileView;->access$1500(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->removeMediaFile(Lcom/lge/sns/media/MediaFile;)V

    goto :goto_a

    .line 1149
    .end local v1           #mf:Lcom/lge/sns/media/MediaFile;
    :cond_2c
    return-void
.end method
