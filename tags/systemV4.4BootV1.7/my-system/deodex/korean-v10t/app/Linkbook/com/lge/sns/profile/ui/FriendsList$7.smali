.class Lcom/lge/sns/profile/ui/FriendsList$7;
.super Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;
.source "FriendsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/FriendsList;->setUpdateRunnableObject()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/FriendsList;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/FriendsList;Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 743
    iput-object p1, p0, Lcom/lge/sns/profile/ui/FriendsList$7;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-direct {p0, p2}, Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;-><init>(Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const-string v6, "sns_error_key"

    const-string v5, "sns_action_error"

    .line 744
    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList$7;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/FriendsList;->access$1100(Lcom/lge/sns/profile/ui/FriendsList;)V

    .line 746
    const/4 v1, 0x0

    .line 748
    .local v1, intent:Landroid/content/Intent;
    :try_start_a
    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList$7;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v2}, Lcom/lge/sns/profile/ui/FriendsList;->access$1000(Lcom/lge/sns/profile/ui/FriendsList;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList$7;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/FriendsList;->access$1200(Lcom/lge/sns/profile/ui/FriendsList;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/profile/ui/FriendsList$7;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/FriendsList;->access$1300(Lcom/lge/sns/profile/ui/FriendsList;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lge/sns/profile/IProfileFacade;->updateFriendList(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "sns_action_noneerror"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_26
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_a .. :try_end_26} :catch_2a
    .catch Lcom/lge/sns/SnsException; {:try_start_a .. :try_end_26} :catch_3d

    .line 760
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_26
    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/FriendsList$7;->setCallBackParam(Ljava/lang/Object;)V

    .line 761
    return-void

    .line 750
    .end local v1           #intent:Landroid/content/Intent;
    :catch_2a
    move-exception v2

    move-object v0, v2

    .line 751
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    invoke-virtual {v0}, Lcom/lge/sns/UnauthorizatedException;->printStackTrace()V

    .line 752
    new-instance v1, Landroid/content/Intent;

    const-string v2, "sns_action_error"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 753
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "sns_error_key"

    const/4 v2, 0x0

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_26

    .line 754
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v1           #intent:Landroid/content/Intent;
    :catch_3d
    move-exception v2

    move-object v0, v2

    .line 755
    .local v0, e:Lcom/lge/sns/SnsException;
    invoke-virtual {v0}, Lcom/lge/sns/SnsException;->printStackTrace()V

    .line 756
    new-instance v1, Landroid/content/Intent;

    const-string v2, "sns_action_error"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 757
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "sns_error_key"

    const/4 v2, 0x1

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_26
.end method
