.class Lcom/lge/sns/media/ui/MediaFolderListActivity$4;
.super Ljava/lang/Object;
.source "MediaFolderListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/ui/MediaFolderListActivity;->mediaFolderUpdated(Lcom/lge/sns/media/MediaFolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

.field final synthetic val$mediaFolder:Lcom/lge/sns/media/MediaFolder;


# direct methods
.method constructor <init>(Lcom/lge/sns/media/ui/MediaFolderListActivity;Lcom/lge/sns/media/MediaFolder;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$4;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    iput-object p2, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$4;->val$mediaFolder:Lcom/lge/sns/media/MediaFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$4;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->access$100(Lcom/lge/sns/media/ui/MediaFolderListActivity;)Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 296
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$4;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->access$100(Lcom/lge/sns/media/ui/MediaFolderListActivity;)Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$4;->val$mediaFolder:Lcom/lge/sns/media/MediaFolder;

    invoke-virtual {v0, v1}, Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;->remove(Ljava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$4;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    invoke-static {v0}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->access$100(Lcom/lge/sns/media/ui/MediaFolderListActivity;)Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$4;->val$mediaFolder:Lcom/lge/sns/media/MediaFolder;

    invoke-virtual {v0, v1}, Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;->add(Ljava/lang/Object;)V

    .line 299
    :cond_1e
    return-void
.end method
