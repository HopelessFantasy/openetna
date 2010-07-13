.class Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;
.super Ljava/lang/Object;
.source "TwitterMessageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/message/ui/twitter/TwitterMessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;


# direct methods
.method constructor <init>(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)V
    .registers 2
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const-string v6, "TwitterMessageList"

    .line 461
    :try_start_2
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_53

    .line 463
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$400(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/message/IMessageFacade;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$200(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/account/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v4}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/account/Credential;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Inbox"

    invoke-interface {v2, v3, v4, v5}, Lcom/lge/sns/message/IMessageFacade;->updateMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_2 .. :try_end_2a} :catch_7c
    .catch Lcom/lge/sns/InvalidStatusCodeException; {:try_start_2 .. :try_end_2a} :catch_c6
    .catch Lcom/lge/sns/ServerConnectFail; {:try_start_2 .. :try_end_2a} :catch_dc
    .catch Lcom/lge/sns/InvalidResponseException; {:try_start_2 .. :try_end_2a} :catch_f2
    .catch Lcom/lge/feed/parser/FeedParseException; {:try_start_2 .. :try_end_2a} :catch_fd
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2a} :catch_108
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2a} :catch_113

    .line 504
    :cond_2a
    :goto_2a
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 505
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 508
    :cond_3b
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$600(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 509
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$600(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$900(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 510
    :cond_52
    :goto_52
    return-void

    .line 466
    :cond_53
    :try_start_53
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    .line 468
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$400(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/message/IMessageFacade;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$200(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/account/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v4}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/account/Credential;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Outbox"

    invoke-interface {v2, v3, v4, v5}, Lcom/lge/sns/message/IMessageFacade;->updateMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_53 .. :try_end_7b} :catch_7c
    .catch Lcom/lge/sns/InvalidStatusCodeException; {:try_start_53 .. :try_end_7b} :catch_c6
    .catch Lcom/lge/sns/ServerConnectFail; {:try_start_53 .. :try_end_7b} :catch_dc
    .catch Lcom/lge/sns/InvalidResponseException; {:try_start_53 .. :try_end_7b} :catch_f2
    .catch Lcom/lge/feed/parser/FeedParseException; {:try_start_53 .. :try_end_7b} :catch_fd
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_7b} :catch_108
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_53 .. :try_end_7b} :catch_113

    goto :goto_2a

    .line 472
    :catch_7c
    move-exception v2

    move-object v0, v2

    .line 473
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    const-string v2, "TwitterMessageList"

    const-string v2, "updateMessages() - UnauthorizatedException"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 476
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "sns_id"

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$500(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 479
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_ae

    .line 480
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 483
    :cond_ae
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$600(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 484
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$600(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$700(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_52

    .line 488
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v1           #intent:Landroid/content/Intent;
    :catch_c6
    move-exception v2

    move-object v0, v2

    .line 489
    .local v0, e:Lcom/lge/sns/InvalidStatusCodeException;
    const-string v2, "TwitterMessageList"

    const-string v2, "updateMessages() - InvalidStatusCodeException"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$800(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2a

    .line 491
    .end local v0           #e:Lcom/lge/sns/InvalidStatusCodeException;
    :catch_dc
    move-exception v2

    move-object v0, v2

    .line 492
    .local v0, e:Lcom/lge/sns/ServerConnectFail;
    const-string v2, "TwitterMessageList"

    const-string v2, "updateMessages() - ServerConnectFail"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$2;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$800(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2a

    .line 494
    .end local v0           #e:Lcom/lge/sns/ServerConnectFail;
    :catch_f2
    move-exception v2

    move-object v0, v2

    .line 495
    .local v0, e:Lcom/lge/sns/InvalidResponseException;
    const-string v2, "TwitterMessageList"

    const-string v2, "updateMessages() - InvalidResponseException"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2a

    .line 496
    .end local v0           #e:Lcom/lge/sns/InvalidResponseException;
    :catch_fd
    move-exception v2

    move-object v0, v2

    .line 497
    .local v0, e:Lcom/lge/feed/parser/FeedParseException;
    const-string v2, "TwitterMessageList"

    const-string v2, "updateMessages() - FeedParseException"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2a

    .line 498
    .end local v0           #e:Lcom/lge/feed/parser/FeedParseException;
    :catch_108
    move-exception v2

    move-object v0, v2

    .line 499
    .local v0, e:Ljava/io/IOException;
    const-string v2, "TwitterMessageList"

    const-string v2, "updateMessages() - IOException"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2a

    .line 500
    .end local v0           #e:Ljava/io/IOException;
    :catch_113
    move-exception v2

    move-object v0, v2

    .line 501
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "TwitterMessageList"

    const-string v2, "updateMessages() - XmlPullParserException"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2a
.end method
