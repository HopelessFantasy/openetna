.class Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;
.super Ljava/lang/Object;
.source "TwitterProfile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->refresh(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

.field final synthetic val$retry:Z


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    iput-boolean p2, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->val$retry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 147
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$000(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Lcom/lge/sns/profile/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, snsId:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$000(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Lcom/lge/sns/profile/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, userId:Ljava/lang/String;
    :try_start_14
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$000(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Lcom/lge/sns/profile/Profile;

    move-result-object v4

    if-nez v4, :cond_3f

    .line 151
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v5}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$100(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$002(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;Lcom/lge/sns/profile/Profile;)Lcom/lge/sns/profile/Profile;

    .line 152
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$000(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Lcom/lge/sns/profile/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    .line 153
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$000(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Lcom/lge/sns/profile/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 156
    :cond_3f
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$100(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/lge/sns/profile/IProfileFacade;->refreshProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-virtual {v4}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->isMyProfile()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 158
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->access$100(Lcom/lge/sns/profile/ui/twitter/TwitterProfile;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/lge/sns/profile/IProfileFacade;->updateFriendList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_14 .. :try_end_59} :catchall_93
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_14 .. :try_end_59} :catch_64
    .catch Lcom/lge/sns/SnsException; {:try_start_14 .. :try_end_59} :catch_9f

    .line 179
    :cond_59
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    new-instance v5, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1$3;

    invoke-direct {v5, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1$3;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;)V

    invoke-virtual {v4, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 188
    :goto_63
    return-void

    .line 160
    :catch_64
    move-exception v4

    move-object v0, v4

    .line 161
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    :try_start_66
    iget-boolean v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->val$retry:Z

    if-nez v4, :cond_7f

    .line 162
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    new-instance v5, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1$1;

    invoke-direct {v5, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1$1;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;)V

    invoke-virtual {v4, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_93

    .line 179
    :goto_74
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    new-instance v5, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1$3;

    invoke-direct {v5, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1$3;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;)V

    invoke-virtual {v4, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_63

    .line 168
    :cond_7f
    :try_start_7f
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "sns_id"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    const/16 v5, 0x7d2

    invoke-virtual {v4, v1, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_92
    .catchall {:try_start_7f .. :try_end_92} :catchall_93

    goto :goto_74

    .line 179
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v1           #intent:Landroid/content/Intent;
    :catchall_93
    move-exception v4

    iget-object v5, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    new-instance v6, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1$3;

    invoke-direct {v6, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1$3;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;)V

    invoke-virtual {v5, v6}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v4

    .line 172
    :catch_9f
    move-exception v4

    move-object v0, v4

    .line 173
    .local v0, e:Lcom/lge/sns/SnsException;
    :try_start_a1
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    new-instance v5, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1$2;

    invoke-direct {v5, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1$2;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;)V

    invoke-virtual {v4, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_ab
    .catchall {:try_start_a1 .. :try_end_ab} :catchall_93

    .line 179
    iget-object v4, p0, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;->this$0:Lcom/lge/sns/profile/ui/twitter/TwitterProfile;

    new-instance v5, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1$3;

    invoke-direct {v5, p0}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1$3;-><init>(Lcom/lge/sns/profile/ui/twitter/TwitterProfile$1;)V

    invoke-virtual {v4, v5}, Lcom/lge/sns/profile/ui/twitter/TwitterProfile;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_63
.end method
