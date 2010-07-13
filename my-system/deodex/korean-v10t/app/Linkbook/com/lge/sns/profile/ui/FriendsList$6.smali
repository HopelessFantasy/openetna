.class Lcom/lge/sns/profile/ui/FriendsList$6;
.super Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;
.source "FriendsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/FriendsList;->getGoToSiteRunnalbeObject(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/FriendsList;

.field final synthetic val$snsId:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/FriendsList;Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 714
    iput-object p1, p0, Lcom/lge/sns/profile/ui/FriendsList$6;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    iput-object p3, p0, Lcom/lge/sns/profile/ui/FriendsList$6;->val$snsId:Ljava/lang/String;

    iput-object p4, p0, Lcom/lge/sns/profile/ui/FriendsList$6;->val$userId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;-><init>(Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const-string v8, "sns_error_key"

    const-string v7, "sns_action_error"

    .line 715
    const/4 v1, 0x0

    .line 716
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 718
    .local v3, url:Ljava/lang/String;
    :try_start_6
    iget-object v4, p0, Lcom/lge/sns/profile/ui/FriendsList$6;->this$0:Lcom/lge/sns/profile/ui/FriendsList;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/FriendsList;->access$1000(Lcom/lge/sns/profile/ui/FriendsList;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/sns/profile/ui/FriendsList$6;->val$snsId:Ljava/lang/String;

    iget-object v6, p0, Lcom/lge/sns/profile/ui/FriendsList$6;->val$userId:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/lge/sns/profile/IProfileFacade;->getDeepLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 719
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_6 .. :try_end_1b} :catch_25
    .catch Lcom/lge/sns/SnsException; {:try_start_6 .. :try_end_1b} :catch_38

    .line 720
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    :try_start_1b
    const-string v4, "query"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_20
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_1b .. :try_end_20} :catch_4f
    .catch Lcom/lge/sns/SnsException; {:try_start_1b .. :try_end_20} :catch_4b

    move-object v1, v2

    .line 731
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_21
    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/FriendsList$6;->setCallBackParam(Ljava/lang/Object;)V

    .line 732
    return-void

    .line 721
    :catch_25
    move-exception v4

    move-object v0, v4

    .line 722
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    :goto_27
    invoke-virtual {v0}, Lcom/lge/sns/UnauthorizatedException;->printStackTrace()V

    .line 723
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "sns_action_error"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 724
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "sns_error_key"

    const/4 v4, 0x0

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_21

    .line 725
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_38
    move-exception v4

    move-object v0, v4

    .line 726
    .local v0, e:Lcom/lge/sns/SnsException;
    :goto_3a
    invoke-virtual {v0}, Lcom/lge/sns/SnsException;->printStackTrace()V

    .line 727
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "sns_action_error"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 728
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "sns_error_key"

    const/4 v4, 0x1

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_21

    .line 725
    .end local v0           #e:Lcom/lge/sns/SnsException;
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_4b
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_3a

    .line 721
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_4f
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_27
.end method
