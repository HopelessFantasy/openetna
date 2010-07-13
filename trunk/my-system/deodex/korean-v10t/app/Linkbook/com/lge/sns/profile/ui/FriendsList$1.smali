.class Lcom/lge/sns/profile/ui/FriendsList$1;
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
    .line 161
    iput-object p1, p0, Lcom/lge/sns/profile/ui/FriendsList$1;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishRunnable(Ljava/lang/Object;)V
    .registers 7
    .parameter "obj"

    .prologue
    .line 162
    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    move-object v2, v0

    .line 163
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1f

    .line 165
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sns_action_noneerror"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 168
    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList$1;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/FriendsList;->access$000(Lcom/lge/sns/profile/ui/FriendsList;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 169
    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList$1;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/FriendsList;->access$100(Lcom/lge/sns/profile/ui/FriendsList;)V

    .line 182
    :cond_1f
    :goto_1f
    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList$1;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/FriendsList;->access$500(Lcom/lge/sns/profile/ui/FriendsList;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList$1;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/FriendsList;->access$500(Lcom/lge/sns/profile/ui/FriendsList;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 184
    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList$1;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/FriendsList;->access$500(Lcom/lge/sns/profile/ui/FriendsList;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 187
    :cond_3c
    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList$1;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/lge/sns/profile/ui/FriendsList;->access$602(Lcom/lge/sns/profile/ui/FriendsList;Z)Z

    .line 188
    return-void

    .line 171
    :cond_43
    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList$1;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/FriendsList;->access$200(Lcom/lge/sns/profile/ui/FriendsList;)V

    .line 172
    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList$1;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/FriendsList;->access$300(Lcom/lge/sns/profile/ui/FriendsList;)V

    goto :goto_1f

    .line 175
    :cond_4e
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sns_action_error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 177
    const-string v3, "sns_error_key"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 178
    .local v1, errorcode:I
    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList$1;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v3, v1}, Lcom/lge/sns/profile/ui/FriendsList;->access$400(Lcom/lge/sns/profile/ui/FriendsList;I)V

    goto :goto_1f
.end method
