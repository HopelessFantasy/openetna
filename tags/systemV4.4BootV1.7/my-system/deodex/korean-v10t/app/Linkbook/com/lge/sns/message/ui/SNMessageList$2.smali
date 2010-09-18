.class Lcom/lge/sns/message/ui/SNMessageList$2;
.super Ljava/lang/Object;
.source "SNMessageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/message/ui/SNMessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/message/ui/SNMessageList;


# direct methods
.method constructor <init>(Lcom/lge/sns/message/ui/SNMessageList;)V
    .registers 2
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/lge/sns/message/ui/SNMessageList$2;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const-string v2, "SNMessageListActivity"

    .line 170
    :try_start_2
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList$2;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v2}, Lcom/lge/sns/message/ui/SNMessageList;->access$300(Lcom/lge/sns/message/ui/SNMessageList;)Lcom/lge/sns/message/IMessageFacade;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageList$2;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v3}, Lcom/lge/sns/message/ui/SNMessageList;->access$100(Lcom/lge/sns/message/ui/SNMessageList;)Lcom/lge/sns/account/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageList$2;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v4}, Lcom/lge/sns/message/ui/SNMessageList;->access$200(Lcom/lge/sns/message/ui/SNMessageList;)Lcom/lge/sns/account/Credential;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/lge/sns/message/IMessageFacade;->updateThreads(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_7b
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_2 .. :try_end_1f} :catch_40
    .catch Lcom/lge/sns/InvalidStatusCodeException; {:try_start_2 .. :try_end_1f} :catch_7d
    .catch Lcom/lge/sns/ServerConnectFail; {:try_start_2 .. :try_end_1f} :catch_92
    .catch Lcom/lge/sns/InvalidResponseException; {:try_start_2 .. :try_end_1f} :catch_a8

    .line 196
    :goto_1f
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList$2;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v2}, Lcom/lge/sns/message/ui/SNMessageList;->access$000(Lcom/lge/sns/message/ui/SNMessageList;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 198
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList$2;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v2}, Lcom/lge/sns/message/ui/SNMessageList;->access$000(Lcom/lge/sns/message/ui/SNMessageList;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 202
    :cond_30
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList$2;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v2}, Lcom/lge/sns/message/ui/SNMessageList;->access$600(Lcom/lge/sns/message/ui/SNMessageList;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageList$2;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v3}, Lcom/lge/sns/message/ui/SNMessageList;->access$800(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    :goto_3f
    return-void

    .line 172
    :catch_40
    move-exception v2

    move-object v0, v2

    .line 173
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    :try_start_42
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "sns_id"

    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageList$2;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v3}, Lcom/lge/sns/message/ui/SNMessageList;->access$400(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList$2;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/lge/sns/message/ui/SNMessageList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 177
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList$2;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v2}, Lcom/lge/sns/message/ui/SNMessageList;->access$000(Lcom/lge/sns/message/ui/SNMessageList;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_6b

    .line 178
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList$2;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v2}, Lcom/lge/sns/message/ui/SNMessageList;->access$000(Lcom/lge/sns/message/ui/SNMessageList;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 181
    :cond_6b
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList$2;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v2}, Lcom/lge/sns/message/ui/SNMessageList;->access$600(Lcom/lge/sns/message/ui/SNMessageList;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageList$2;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v3}, Lcom/lge/sns/message/ui/SNMessageList;->access$500(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7a
    .catchall {:try_start_42 .. :try_end_7a} :catchall_7b

    goto :goto_3f

    .line 192
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v1           #intent:Landroid/content/Intent;
    :catchall_7b
    move-exception v2

    throw v2

    .line 183
    :catch_7d
    move-exception v2

    move-object v0, v2

    .line 184
    .local v0, e:Lcom/lge/sns/InvalidStatusCodeException;
    :try_start_7f
    const-string v2, "SNMessageListActivity"

    const-string v3, "updateThreads() - InvalidStatusCodeException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList$2;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageList$2;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v3}, Lcom/lge/sns/message/ui/SNMessageList;->access$700(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/sns/message/ui/SNMessageList;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 186
    .end local v0           #e:Lcom/lge/sns/InvalidStatusCodeException;
    :catch_92
    move-exception v2

    move-object v0, v2

    .line 187
    .local v0, e:Lcom/lge/sns/ServerConnectFail;
    const-string v2, "SNMessageListActivity"

    const-string v3, "updateThreads() - ServerConnectFail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList$2;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageList$2;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v3}, Lcom/lge/sns/message/ui/SNMessageList;->access$700(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/sns/message/ui/SNMessageList;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1f

    .line 189
    .end local v0           #e:Lcom/lge/sns/ServerConnectFail;
    :catch_a8
    move-exception v2

    move-object v0, v2

    .line 190
    .local v0, e:Lcom/lge/sns/InvalidResponseException;
    const-string v2, "SNMessageListActivity"

    const-string v3, "updateThreads() - InvalidResponseException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b1
    .catchall {:try_start_7f .. :try_end_b1} :catchall_7b

    goto/16 :goto_1f
.end method
