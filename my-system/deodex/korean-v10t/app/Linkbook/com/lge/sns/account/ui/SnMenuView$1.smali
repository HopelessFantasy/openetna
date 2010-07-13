.class Lcom/lge/sns/account/ui/SnMenuView$1;
.super Ljava/lang/Object;
.source "SnMenuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/SnMenuView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/account/ui/SnMenuView;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/ui/SnMenuView;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lge/sns/account/ui/SnMenuView$1;->this$0:Lcom/lge/sns/account/ui/SnMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 95
    iget-object v1, p0, Lcom/lge/sns/account/ui/SnMenuView$1;->this$0:Lcom/lge/sns/account/ui/SnMenuView;

    iget-object v1, v1, Lcom/lge/sns/account/ui/SnMenuView;->refreshDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/lge/sns/account/ui/SnMenuView$1;->this$0:Lcom/lge/sns/account/ui/SnMenuView;

    iget-object v1, v1, Lcom/lge/sns/account/ui/SnMenuView;->refreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lge/sns/account/ui/SnMenuView$1;->this$0:Lcom/lge/sns/account/ui/SnMenuView;

    iget-object v2, v2, Lcom/lge/sns/account/ui/SnMenuView;->messageLoading:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/account/ui/SnMenuView$1;->this$0:Lcom/lge/sns/account/ui/SnMenuView;

    const v3, 0x7f05002b

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lge/sns/account/ui/SnMenuView$1;->this$0:Lcom/lge/sns/account/ui/SnMenuView;

    iget v6, v6, Lcom/lge/sns/account/ui/SnMenuView;->feedCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/lge/sns/account/ui/SnMenuView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/sns/account/ui/SnMenuView$1;->this$0:Lcom/lge/sns/account/ui/SnMenuView;

    iget-object v1, v1, Lcom/lge/sns/account/ui/SnMenuView;->refreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 99
    .end local v0           #message:Ljava/lang/String;
    :cond_49
    iget-object v1, p0, Lcom/lge/sns/account/ui/SnMenuView$1;->this$0:Lcom/lge/sns/account/ui/SnMenuView;

    monitor-enter v1

    .line 100
    :try_start_4c
    iget-object v2, p0, Lcom/lge/sns/account/ui/SnMenuView$1;->this$0:Lcom/lge/sns/account/ui/SnMenuView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/lge/sns/account/ui/SnMenuView;->notified:Z

    .line 101
    monitor-exit v1

    .line 102
    return-void

    .line 101
    :catchall_53
    move-exception v2

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_53

    throw v2
.end method
