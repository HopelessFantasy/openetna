.class Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;
.super Ljava/lang/Object;
.source "TwitterMessageSend.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;


# direct methods
.method constructor <init>(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)V
    .registers 2
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const-string v8, "SNMessageSendView"

    .line 289
    :try_start_2
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    invoke-static {v0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->access$400(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Lcom/lge/sns/message/IMessageFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->access$000(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Lcom/lge/sns/account/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    invoke-static {v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->access$100(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Lcom/lge/sns/account/Credential;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    invoke-static {v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->access$200(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    invoke-static {v4}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->access$300(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    invoke-static {v5}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->access$300(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Landroid/widget/EditText;

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

    .line 319
    :goto_41
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    invoke-static {v0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->access$600(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 321
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    invoke-static {v0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->access$600(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 324
    :cond_52
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    invoke-static {v0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->access$800(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 325
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    invoke-virtual {v0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->finish()V

    .line 326
    :goto_66
    return-void

    .line 297
    :catch_67
    move-exception v0

    move-object v6, v0

    .line 298
    .local v6, e:Lcom/lge/sns/UnauthorizatedException;
    const-string v0, "SNMessageSendView"

    const-string v0, "sendMessage() - UnauthorizatedException"

    invoke-static {v8, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "sns_id"

    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->access$500(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    const/4 v1, 0x1

    invoke-virtual {v0, v7, v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->startActivityForResult(Landroid/content/Intent;I)V

    .line 304
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    invoke-static {v0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->access$600(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_99

    .line 305
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    invoke-static {v0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->access$600(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 308
    :cond_99
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    invoke-static {v0}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->access$800(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->access$700(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_66

    .line 310
    .end local v6           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v7           #intent:Landroid/content/Intent;
    :catch_a9
    move-exception v0

    move-object v6, v0

    .line 311
    .local v6, e:Lcom/lge/sns/InvalidStatusCodeException;
    const-string v0, "SNMessageSendView"

    const-string v0, "sendMessage() - InvalidStatusCodeException"

    invoke-static {v8, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41

    .line 312
    .end local v6           #e:Lcom/lge/sns/InvalidStatusCodeException;
    :catch_b3
    move-exception v0

    move-object v6, v0

    .line 313
    .local v6, e:Lcom/lge/sns/ServerConnectFail;
    const-string v0, "SNMessageSendView"

    const-string v0, "sendMessage() - ServerConnectFail"

    invoke-static {v8, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    iget-object v0, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$1;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->access$900(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_41

    .line 315
    .end local v6           #e:Lcom/lge/sns/ServerConnectFail;
    :catch_c9
    move-exception v0

    move-object v6, v0

    .line 316
    .local v6, e:Lcom/lge/sns/InvalidResponseException;
    const-string v0, "SNMessageSendView"

    const-string v0, "sendMessage() - InvalidResponseException"

    invoke-static {v8, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_41
.end method
