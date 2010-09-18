.class Lcom/lge/sns/message/ui/SNMessageSend$1;
.super Ljava/lang/Object;
.source "SNMessageSend.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/message/ui/SNMessageSend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/message/ui/SNMessageSend;


# direct methods
.method constructor <init>(Lcom/lge/sns/message/ui/SNMessageSend;)V
    .registers 2
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/lge/sns/message/ui/SNMessageSend$1;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const-string v8, "SNMessageSendView"

    .line 271
    :try_start_2
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend$1;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageSend;->access$400(Lcom/lge/sns/message/ui/SNMessageSend;)Lcom/lge/sns/message/IMessageFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend$1;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageSend;->access$000(Lcom/lge/sns/message/ui/SNMessageSend;)Lcom/lge/sns/account/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageSend$1;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    invoke-static {v2}, Lcom/lge/sns/message/ui/SNMessageSend;->access$100(Lcom/lge/sns/message/ui/SNMessageSend;)Lcom/lge/sns/account/Credential;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageSend$1;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    invoke-static {v3}, Lcom/lge/sns/message/ui/SNMessageSend;->access$200(Lcom/lge/sns/message/ui/SNMessageSend;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageSend$1;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    invoke-static {v4}, Lcom/lge/sns/message/ui/SNMessageSend;->access$300(Lcom/lge/sns/message/ui/SNMessageSend;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/sns/message/ui/SNMessageSend$1;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    invoke-static {v5}, Lcom/lge/sns/message/ui/SNMessageSend;->access$300(Lcom/lge/sns/message/ui/SNMessageSend;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/lge/sns/message/IMessageFacade;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_41
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_2 .. :try_end_41} :catch_67
    .catch Lcom/lge/sns/InvalidStatusCodeException; {:try_start_2 .. :try_end_41} :catch_a9
    .catch Lcom/lge/sns/ServerConnectFail; {:try_start_2 .. :try_end_41} :catch_b3
    .catch Lcom/lge/sns/InvalidResponseException; {:try_start_2 .. :try_end_41} :catch_c9

    .line 301
    :goto_41
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend$1;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageSend;->access$600(Lcom/lge/sns/message/ui/SNMessageSend;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 303
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend$1;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageSend;->access$600(Lcom/lge/sns/message/ui/SNMessageSend;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 307
    :cond_52
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend$1;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageSend;->access$800(Lcom/lge/sns/message/ui/SNMessageSend;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend$1;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageSend;->access$1000(Lcom/lge/sns/message/ui/SNMessageSend;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend$1;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    invoke-virtual {v0}, Lcom/lge/sns/message/ui/SNMessageSend;->finish()V

    .line 309
    :goto_66
    return-void

    .line 279
    :catch_67
    move-exception v0

    move-object v6, v0

    .line 280
    .local v6, e:Lcom/lge/sns/UnauthorizatedException;
    const-string v0, "SNMessageSendView"

    const-string v0, "sendMessage() - UnauthorizatedException"

    invoke-static {v8, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "sns_id"

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend$1;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageSend;->access$500(Lcom/lge/sns/message/ui/SNMessageSend;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend$1;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    const/4 v1, 0x2

    invoke-virtual {v0, v7, v1}, Lcom/lge/sns/message/ui/SNMessageSend;->startActivityForResult(Landroid/content/Intent;I)V

    .line 286
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend$1;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageSend;->access$600(Lcom/lge/sns/message/ui/SNMessageSend;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_99

    .line 287
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend$1;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageSend;->access$600(Lcom/lge/sns/message/ui/SNMessageSend;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 290
    :cond_99
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend$1;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageSend;->access$800(Lcom/lge/sns/message/ui/SNMessageSend;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend$1;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageSend;->access$700(Lcom/lge/sns/message/ui/SNMessageSend;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_66

    .line 292
    .end local v6           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v7           #intent:Landroid/content/Intent;
    :catch_a9
    move-exception v0

    move-object v6, v0

    .line 293
    .local v6, e:Lcom/lge/sns/InvalidStatusCodeException;
    const-string v0, "SNMessageSendView"

    const-string v0, "sendMessage() - InvalidStatusCodeException"

    invoke-static {v8, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41

    .line 294
    .end local v6           #e:Lcom/lge/sns/InvalidStatusCodeException;
    :catch_b3
    move-exception v0

    move-object v6, v0

    .line 295
    .local v6, e:Lcom/lge/sns/ServerConnectFail;
    const-string v0, "SNMessageSendView"

    const-string v0, "sendMessage() - ServerConnectFail"

    invoke-static {v8, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageSend$1;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageSend$1;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageSend;->access$900(Lcom/lge/sns/message/ui/SNMessageSend;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/message/ui/SNMessageSend;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_41

    .line 297
    .end local v6           #e:Lcom/lge/sns/ServerConnectFail;
    :catch_c9
    move-exception v0

    move-object v6, v0

    .line 298
    .local v6, e:Lcom/lge/sns/InvalidResponseException;
    const-string v0, "SNMessageSendView"

    const-string v0, "sendMessage() - InvalidResponseException"

    invoke-static {v8, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_41
.end method
