.class Lcom/lge/sns/profile/ui/ProfileView$11;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/ProfileView;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ProfileView;)V
    .registers 2
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileView$11;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 940
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView$11;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    monitor-enter v0

    .line 941
    :try_start_3
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$11;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    iget-boolean v1, v1, Lcom/lge/sns/profile/ui/ProfileView;->dialogDisable:Z

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$11;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ProfileView;->access$1700(Lcom/lge/sns/profile/ui/ProfileView;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$11;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ProfileView;->access$1700(Lcom/lge/sns/profile/ui/ProfileView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 943
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$11;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ProfileView;->access$1700(Lcom/lge/sns/profile/ui/ProfileView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 945
    :cond_26
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$11;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v1}, Lcom/lge/sns/profile/ui/ProfileView;->access$1500(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->notifyDataSetChanged()V

    .line 946
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView$11;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/lge/sns/profile/ui/ProfileView;->notified:Z

    .line 947
    monitor-exit v0

    .line 948
    return-void

    .line 947
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method
