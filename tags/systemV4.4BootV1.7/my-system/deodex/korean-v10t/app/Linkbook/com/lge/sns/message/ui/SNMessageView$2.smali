.class Lcom/lge/sns/message/ui/SNMessageView$2;
.super Ljava/lang/Object;
.source "SNMessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/message/ui/SNMessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/message/ui/SNMessageView;


# direct methods
.method constructor <init>(Lcom/lge/sns/message/ui/SNMessageView;)V
    .registers 2
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/lge/sns/message/ui/SNMessageView$2;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const-string v6, "SNMessageView"

    .line 508
    :try_start_2
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView$2;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v2}, Lcom/lge/sns/message/ui/SNMessageView;->access$400(Lcom/lge/sns/message/ui/SNMessageView;)Lcom/lge/sns/message/IMessageFacade;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView$2;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v3}, Lcom/lge/sns/message/ui/SNMessageView;->access$100(Lcom/lge/sns/message/ui/SNMessageView;)Lcom/lge/sns/account/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageView$2;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v4}, Lcom/lge/sns/message/ui/SNMessageView;->access$200(Lcom/lge/sns/message/ui/SNMessageView;)Lcom/lge/sns/account/Credential;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/sns/message/ui/SNMessageView$2;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v5}, Lcom/lge/sns/message/ui/SNMessageView;->access$300(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/lge/sns/message/IMessageFacade;->updateMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_2 .. :try_end_25} :catch_46
    .catch Lcom/lge/sns/InvalidStatusCodeException; {:try_start_2 .. :try_end_25} :catch_88
    .catch Lcom/lge/sns/ServerConnectFail; {:try_start_2 .. :try_end_25} :catch_9d
    .catch Lcom/lge/sns/InvalidResponseException; {:try_start_2 .. :try_end_25} :catch_b3
    .catch Lcom/lge/feed/parser/FeedParseException; {:try_start_2 .. :try_end_25} :catch_be
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_25} :catch_c9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_25} :catch_d4

    .line 539
    :goto_25
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView$2;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v2}, Lcom/lge/sns/message/ui/SNMessageView;->access$000(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 540
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView$2;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v2}, Lcom/lge/sns/message/ui/SNMessageView;->access$000(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 543
    :cond_36
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView$2;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v2}, Lcom/lge/sns/message/ui/SNMessageView;->access$700(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView$2;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v3}, Lcom/lge/sns/message/ui/SNMessageView;->access$900(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 544
    :goto_45
    return-void

    .line 509
    :catch_46
    move-exception v2

    move-object v0, v2

    .line 510
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    const-string v2, "SNMessageView"

    const-string v2, "updateMessages() - UnauthorizatedException"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 512
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "sns_id"

    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView$2;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v3}, Lcom/lge/sns/message/ui/SNMessageView;->access$500(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView$2;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/lge/sns/message/ui/SNMessageView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 516
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView$2;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v2}, Lcom/lge/sns/message/ui/SNMessageView;->access$000(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_78

    .line 517
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView$2;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v2}, Lcom/lge/sns/message/ui/SNMessageView;->access$000(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 520
    :cond_78
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView$2;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v2}, Lcom/lge/sns/message/ui/SNMessageView;->access$700(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView$2;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v3}, Lcom/lge/sns/message/ui/SNMessageView;->access$600(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_45

    .line 523
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v1           #intent:Landroid/content/Intent;
    :catch_88
    move-exception v2

    move-object v0, v2

    .line 524
    .local v0, e:Lcom/lge/sns/InvalidStatusCodeException;
    const-string v2, "SNMessageView"

    const-string v2, "updateMessages() - InvalidStatusCodeException"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView$2;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView$2;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v3}, Lcom/lge/sns/message/ui/SNMessageView;->access$800(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/sns/message/ui/SNMessageView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_25

    .line 526
    .end local v0           #e:Lcom/lge/sns/InvalidStatusCodeException;
    :catch_9d
    move-exception v2

    move-object v0, v2

    .line 527
    .local v0, e:Lcom/lge/sns/ServerConnectFail;
    const-string v2, "SNMessageView"

    const-string v2, "updateMessages() - ServerConnectFail"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 528
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView$2;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView$2;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v3}, Lcom/lge/sns/message/ui/SNMessageView;->access$800(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/sns/message/ui/SNMessageView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_25

    .line 529
    .end local v0           #e:Lcom/lge/sns/ServerConnectFail;
    :catch_b3
    move-exception v2

    move-object v0, v2

    .line 530
    .local v0, e:Lcom/lge/sns/InvalidResponseException;
    const-string v2, "SNMessageView"

    const-string v2, "updateMessages() - InvalidResponseException"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 531
    .end local v0           #e:Lcom/lge/sns/InvalidResponseException;
    :catch_be
    move-exception v2

    move-object v0, v2

    .line 532
    .local v0, e:Lcom/lge/feed/parser/FeedParseException;
    const-string v2, "SNMessageView"

    const-string v2, "updateMessages() - FeedParseException"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 533
    .end local v0           #e:Lcom/lge/feed/parser/FeedParseException;
    :catch_c9
    move-exception v2

    move-object v0, v2

    .line 534
    .local v0, e:Ljava/io/IOException;
    const-string v2, "SNMessageView"

    const-string v2, "updateMessages() - IOException"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 535
    .end local v0           #e:Ljava/io/IOException;
    :catch_d4
    move-exception v2

    move-object v0, v2

    .line 536
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "SNMessageView"

    const-string v2, "updateMessages() - XmlPullParserException"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25
.end method
