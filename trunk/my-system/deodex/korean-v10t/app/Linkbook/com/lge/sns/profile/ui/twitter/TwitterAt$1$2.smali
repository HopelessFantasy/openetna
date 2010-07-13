.class Lcom/lge/sns/profile/ui/twitter/TwitterAt$1$2;
.super Ljava/lang/Object;
.source "TwitterAt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1$2;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 89
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1$2;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;

    iget-object v1, v1, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterAt;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->dismissDialog(I)V

    .line 90
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1$2;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;

    iget-boolean v1, v1, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;->val$retry:Z

    if-eqz v1, :cond_2c

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1$2;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;

    iget-object v2, v2, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterAt;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->access$100(Lcom/lge/sns/profile/ui/twitter/TwitterAt;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1$2;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;

    iget-object v1, v1, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterAt;

    invoke-virtual {v1, v0, v3}, Lcom/lge/sns/profile/ui/twitter/TwitterAt;->startActivityForResult(Landroid/content/Intent;I)V

    .line 97
    .end local v0           #intent:Landroid/content/Intent;
    :goto_2b
    return-void

    .line 95
    :cond_2c
    iget-object v1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1$2;->this$1:Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;

    iget-object v1, v1, Lcom/lge/sns/profile/ui/twitter/TwitterAt$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterAt;

    const v2, 0x7f05000d

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2b
.end method
