.class Lcom/lge/sns/media/ui/MediaFolderListActivity$5;
.super Ljava/lang/Object;
.source "MediaFolderListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/media/ui/MediaFolderListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;


# direct methods
.method constructor <init>(Lcom/lge/sns/media/ui/MediaFolderListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$5;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$5;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    monitor-enter v0

    .line 307
    :try_start_3
    iget-object v1, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$5;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    invoke-static {v1}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->access$100(Lcom/lge/sns/media/ui/MediaFolderListActivity;)Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 308
    iget-object v1, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$5;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    invoke-static {v1}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->access$100(Lcom/lge/sns/media/ui/MediaFolderListActivity;)Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;->notifyDataSetChanged()V

    .line 310
    :cond_14
    iget-object v1, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity$5;->this$0:Lcom/lge/sns/media/ui/MediaFolderListActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/lge/sns/media/ui/MediaFolderListActivity;->notified:Z

    .line 311
    monitor-exit v0

    .line 312
    return-void

    .line 311
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method
