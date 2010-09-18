.class Lcom/lge/sns/profile/ui/ProfileView$10;
.super Ljava/lang/Thread;
.source "ProfileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/ProfileView;->refresh(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/ProfileView;

.field final synthetic val$retry:Z


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ProfileView;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 839
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    iput-boolean p2, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->val$retry:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 841
    :try_start_1
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/ProfileView;->access$400(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/Profile;

    move-result-object v4

    if-eqz v4, :cond_88

    .line 842
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/ProfileView;->access$400(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    .line 843
    .local v2, snsId:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/ProfileView;->access$400(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_ad

    move-result-object v3

    .line 845
    .local v3, userId:Ljava/lang/String;
    :try_start_1d
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/ProfileView;->access$2000(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/lge/sns/profile/IProfileFacade;->refreshProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/ProfileView;->access$2000(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    iget-boolean v5, v5, Lcom/lge/sns/profile/ui/ProfileView;->myProfile:Z

    if-nez v5, :cond_90

    const/4 v5, 0x1

    :goto_33
    invoke-interface {v4, v2, v3, v5}, Lcom/lge/sns/profile/IProfileFacade;->updateProfileCommentList(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 847
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/ProfileView;->access$800(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v2, v3, v5}, Lcom/lge/sns/media/IMediaFacade;->updateAllMediaFiles(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUpdateCallback;)V

    .line 848
    sget-object v4, Lcom/lge/sns/profile/ui/ProfileView;->updateMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v6}, Lcom/lge/sns/profile/ui/ProfileView;->access$400(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/Profile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    invoke-static {v6}, Lcom/lge/sns/profile/ui/ProfileView;->access$400(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/Profile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    iget-object v5, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    iget-object v5, v5, Lcom/lge/sns/profile/ui/ProfileView;->notifyJob:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/lge/sns/profile/ui/ProfileView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_7e
    .catchall {:try_start_1d .. :try_end_7e} :catchall_d1
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_1d .. :try_end_7e} :catch_92
    .catch Lcom/lge/sns/SnsException; {:try_start_1d .. :try_end_7e} :catch_e0

    .line 873
    :try_start_7e
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    new-instance v5, Lcom/lge/sns/profile/ui/ProfileView$10$3;

    invoke-direct {v5, p0}, Lcom/lge/sns/profile/ui/ProfileView$10$3;-><init>(Lcom/lge/sns/profile/ui/ProfileView$10;)V

    invoke-virtual {v4, v5}, Lcom/lge/sns/profile/ui/ProfileView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_ad

    .line 884
    .end local v2           #snsId:Ljava/lang/String;
    .end local v3           #userId:Ljava/lang/String;
    :cond_88
    :goto_88
    monitor-enter p0

    .line 885
    :try_start_89
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/lge/sns/profile/ui/ProfileView;->updating:Z

    .line 886
    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_89 .. :try_end_8f} :catchall_fe

    .line 888
    return-void

    .restart local v2       #snsId:Ljava/lang/String;
    .restart local v3       #userId:Ljava/lang/String;
    :cond_90
    move v5, v6

    .line 846
    goto :goto_33

    .line 850
    :catch_92
    move-exception v4

    move-object v0, v4

    .line 851
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    :try_start_94
    iget-boolean v4, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->val$retry:Z

    if-nez v4, :cond_b6

    .line 852
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    new-instance v5, Lcom/lge/sns/profile/ui/ProfileView$10$1;

    invoke-direct {v5, p0}, Lcom/lge/sns/profile/ui/ProfileView$10$1;-><init>(Lcom/lge/sns/profile/ui/ProfileView$10;)V

    invoke-virtual {v4, v5}, Lcom/lge/sns/profile/ui/ProfileView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_a2
    .catchall {:try_start_94 .. :try_end_a2} :catchall_d1

    .line 873
    :goto_a2
    :try_start_a2
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    new-instance v5, Lcom/lge/sns/profile/ui/ProfileView$10$3;

    invoke-direct {v5, p0}, Lcom/lge/sns/profile/ui/ProfileView$10$3;-><init>(Lcom/lge/sns/profile/ui/ProfileView$10;)V

    invoke-virtual {v4, v5}, Lcom/lge/sns/profile/ui/ProfileView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_ac
    .catchall {:try_start_a2 .. :try_end_ac} :catchall_ad

    goto :goto_88

    .line 884
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v2           #snsId:Ljava/lang/String;
    .end local v3           #userId:Ljava/lang/String;
    :catchall_ad
    move-exception v4

    monitor-enter p0

    .line 885
    :try_start_af
    iget-object v5, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/lge/sns/profile/ui/ProfileView;->updating:Z

    .line 886
    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_af .. :try_end_b5} :catchall_101

    throw v4

    .line 858
    .restart local v0       #e:Lcom/lge/sns/UnauthorizatedException;
    .restart local v2       #snsId:Ljava/lang/String;
    .restart local v3       #userId:Ljava/lang/String;
    :cond_b6
    :try_start_b6
    monitor-enter p0
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_d1

    .line 859
    :try_start_b7
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/lge/sns/profile/ui/ProfileView;->updating:Z

    .line 860
    monitor-exit p0
    :try_end_bd
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_dd

    .line 861
    :try_start_bd
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 862
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "sns_id"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 863
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    const/16 v5, 0x7d2

    invoke-virtual {v4, v1, v5}, Lcom/lge/sns/profile/ui/ProfileView;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_d0
    .catchall {:try_start_bd .. :try_end_d0} :catchall_d1

    goto :goto_a2

    .line 873
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v1           #intent:Landroid/content/Intent;
    :catchall_d1
    move-exception v4

    :try_start_d2
    iget-object v5, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    new-instance v6, Lcom/lge/sns/profile/ui/ProfileView$10$3;

    invoke-direct {v6, p0}, Lcom/lge/sns/profile/ui/ProfileView$10$3;-><init>(Lcom/lge/sns/profile/ui/ProfileView$10;)V

    invoke-virtual {v5, v6}, Lcom/lge/sns/profile/ui/ProfileView;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v4
    :try_end_dd
    .catchall {:try_start_d2 .. :try_end_dd} :catchall_ad

    .line 860
    .restart local v0       #e:Lcom/lge/sns/UnauthorizatedException;
    :catchall_dd
    move-exception v4

    :try_start_de
    monitor-exit p0
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_dd

    :try_start_df
    throw v4

    .line 865
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_e0
    move-exception v4

    move-object v0, v4

    .line 866
    .local v0, e:Lcom/lge/sns/SnsException;
    const-string v4, "ProfileView"

    const-string v5, "SnsException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 867
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    new-instance v5, Lcom/lge/sns/profile/ui/ProfileView$10$2;

    invoke-direct {v5, p0}, Lcom/lge/sns/profile/ui/ProfileView$10$2;-><init>(Lcom/lge/sns/profile/ui/ProfileView$10;)V

    invoke-virtual {v4, v5}, Lcom/lge/sns/profile/ui/ProfileView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_f3
    .catchall {:try_start_df .. :try_end_f3} :catchall_d1

    .line 873
    :try_start_f3
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView$10;->this$0:Lcom/lge/sns/profile/ui/ProfileView;

    new-instance v5, Lcom/lge/sns/profile/ui/ProfileView$10$3;

    invoke-direct {v5, p0}, Lcom/lge/sns/profile/ui/ProfileView$10$3;-><init>(Lcom/lge/sns/profile/ui/ProfileView$10;)V

    invoke-virtual {v4, v5}, Lcom/lge/sns/profile/ui/ProfileView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_fd
    .catchall {:try_start_f3 .. :try_end_fd} :catchall_ad

    goto :goto_88

    .line 886
    .end local v0           #e:Lcom/lge/sns/SnsException;
    .end local v2           #snsId:Ljava/lang/String;
    .end local v3           #userId:Ljava/lang/String;
    :catchall_fe
    move-exception v4

    :try_start_ff
    monitor-exit p0
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    throw v4

    :catchall_101
    move-exception v4

    :try_start_102
    monitor-exit p0
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_101

    throw v4
.end method
