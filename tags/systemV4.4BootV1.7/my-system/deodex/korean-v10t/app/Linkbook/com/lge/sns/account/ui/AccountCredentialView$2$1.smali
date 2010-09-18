.class Lcom/lge/sns/account/ui/AccountCredentialView$2$1;
.super Ljava/lang/Thread;
.source "AccountCredentialView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/account/ui/AccountCredentialView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/account/ui/AccountCredentialView$2;


# direct methods
.method constructor <init>(Lcom/lge/sns/account/ui/AccountCredentialView$2;)V
    .registers 2
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2$1;->this$1:Lcom/lge/sns/account/ui/AccountCredentialView$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2$1;->this$1:Lcom/lge/sns/account/ui/AccountCredentialView$2;

    iget-object v0, v0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2$1;->this$1:Lcom/lge/sns/account/ui/AccountCredentialView$2;

    invoke-static {v1}, Lcom/lge/sns/account/ui/AccountCredentialView$2;->access$000(Lcom/lge/sns/account/ui/AccountCredentialView$2;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/sns/account/ui/AccountCredentialView;->uid:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2$1;->this$1:Lcom/lge/sns/account/ui/AccountCredentialView$2;

    iget-object v0, v0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v0, v0, Lcom/lge/sns/account/ui/AccountCredentialView;->m_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2$1;->this$1:Lcom/lge/sns/account/ui/AccountCredentialView$2;

    iget-object v1, v1, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v1, v1, Lcom/lge/sns/account/ui/AccountCredentialView;->updateResult:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    iget-object v0, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2$1;->this$1:Lcom/lge/sns/account/ui/AccountCredentialView$2;

    iget-object v0, v0, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    iget-object v0, v0, Lcom/lge/sns/account/ui/AccountCredentialView;->loginOk:Landroid/widget/Button;

    monitor-enter v0

    .line 144
    :try_start_22
    iget-object v1, p0, Lcom/lge/sns/account/ui/AccountCredentialView$2$1;->this$1:Lcom/lge/sns/account/ui/AccountCredentialView$2;

    iget-object v1, v1, Lcom/lge/sns/account/ui/AccountCredentialView$2;->this$0:Lcom/lge/sns/account/ui/AccountCredentialView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/lge/sns/account/ui/AccountCredentialView;->signingin:Z

    .line 145
    monitor-exit v0

    .line 146
    return-void

    .line 145
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2b

    throw v1
.end method
