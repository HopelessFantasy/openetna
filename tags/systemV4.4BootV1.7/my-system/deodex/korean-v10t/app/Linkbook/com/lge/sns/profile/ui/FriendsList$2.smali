.class Lcom/lge/sns/profile/ui/FriendsList$2;
.super Ljava/lang/Object;
.source "FriendsList.java"

# interfaces
.implements Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/ui/FriendsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/FriendsList;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/FriendsList;)V
    .registers 2
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/lge/sns/profile/ui/FriendsList$2;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishRunnable(Ljava/lang/Object;)V
    .registers 7
    .parameter "obj"

    .prologue
    .line 198
    if-eqz p1, :cond_1e

    .line 200
    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    move-object v2, v0

    .line 202
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sns_action_error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 204
    const-string v3, "sns_error_key"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 205
    .local v1, errorcode:I
    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList$2;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v3, v1}, Lcom/lge/sns/profile/ui/FriendsList;->access$400(Lcom/lge/sns/profile/ui/FriendsList;I)V

    .line 215
    .end local v1           #errorcode:I
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1e
    :goto_1e
    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList$2;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/FriendsList;->access$500(Lcom/lge/sns/profile/ui/FriendsList;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList$2;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/FriendsList;->access$500(Lcom/lge/sns/profile/ui/FriendsList;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 217
    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList$2;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/FriendsList;->access$500(Lcom/lge/sns/profile/ui/FriendsList;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 219
    :cond_3b
    return-void

    .line 209
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_3c
    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList$2;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-virtual {v3, v2}, Lcom/lge/sns/profile/ui/FriendsList;->startActivity(Landroid/content/Intent;)V

    goto :goto_1e
.end method
