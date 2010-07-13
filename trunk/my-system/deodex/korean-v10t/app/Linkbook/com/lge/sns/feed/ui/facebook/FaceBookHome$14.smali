.class Lcom/lge/sns/feed/ui/facebook/FaceBookHome$14;
.super Ljava/lang/Object;
.source "FaceBookHome.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/feed/ui/facebook/FaceBookHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;


# direct methods
.method constructor <init>(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)V
    .registers 2
    .parameter

    .prologue
    .line 625
    iput-object p1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$14;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 626
    iget-object v1, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$14;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    monitor-enter v1

    .line 627
    :try_start_3
    iget-object v2, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$14;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    invoke-static {v2}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->access$500(Lcom/lge/sns/feed/ui/facebook/FaceBookHome;)Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$CustomExpandableListAdapter;->notifyDataSetChanged()V

    .line 628
    iget-object v2, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$14;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    iget-object v2, v2, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->refreshDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$14;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    iget-object v2, v2, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->refreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 629
    iget-object v2, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$14;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    iget v2, v2, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->count:I

    if-lez v2, :cond_63

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$14;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    iget-object v3, v3, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->loadingMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$14;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    const v4, 0x7f05002b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$14;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    iget v7, v7, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 630
    .local v0, message:Ljava/lang/String;
    :goto_55
    iget-object v2, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$14;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    iget-object v2, v2, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->refreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 632
    .end local v0           #message:Ljava/lang/String;
    :cond_5c
    iget-object v2, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$14;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->notified:Z

    .line 633
    monitor-exit v1

    .line 634
    return-void

    .line 629
    :cond_63
    iget-object v2, p0, Lcom/lge/sns/feed/ui/facebook/FaceBookHome$14;->this$0:Lcom/lge/sns/feed/ui/facebook/FaceBookHome;

    iget-object v2, v2, Lcom/lge/sns/feed/ui/facebook/FaceBookHome;->loadingMessage:Ljava/lang/String;

    move-object v0, v2

    goto :goto_55

    .line 633
    :catchall_69
    move-exception v2

    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_69

    throw v2
.end method
