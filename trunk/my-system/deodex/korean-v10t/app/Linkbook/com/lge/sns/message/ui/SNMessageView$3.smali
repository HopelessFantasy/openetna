.class Lcom/lge/sns/message/ui/SNMessageView$3;
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
    .line 549
    iput-object p1, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v1, 0x1

    const-string v0, "SNMessageView"

    .line 552
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageView;->access$1000(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    .line 553
    .local v11, threadSize:I
    if-ge v11, v1, :cond_10

    .line 598
    :cond_f
    :goto_f
    return-void

    .line 558
    :cond_10
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageView;->access$1000(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/util/List;

    move-result-object v0

    sub-int v1, v11, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lge/sns/message/Message;

    .line 560
    .local v10, message:Lcom/lge/sns/message/Message;
    :try_start_1e
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageView;->access$400(Lcom/lge/sns/message/ui/SNMessageView;)Lcom/lge/sns/message/IMessageFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$100(Lcom/lge/sns/message/ui/SNMessageView;)Lcom/lge/sns/account/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v2}, Lcom/lge/sns/message/ui/SNMessageView;->access$200(Lcom/lge/sns/message/ui/SNMessageView;)Lcom/lge/sns/account/Credential;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/lge/sns/message/Message;->getThreadId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/lge/sns/message/Message;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/lge/sns/message/Message;->getAuthorId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v6}, Lcom/lge/sns/message/ui/SNMessageView;->access$1100(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v7}, Lcom/lge/sns/message/ui/SNMessageView;->access$1100(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v0 .. v7}, Lcom/lge/sns/message/IMessageFacade;->replyMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_63
    .catchall {:try_start_1e .. :try_end_63} :catchall_130
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_1e .. :try_end_63} :catch_84
    .catch Lcom/lge/sns/InvalidStatusCodeException; {:try_start_1e .. :try_end_63} :catch_c7
    .catch Lcom/lge/sns/ServerConnectFail; {:try_start_1e .. :try_end_63} :catch_ed
    .catch Lcom/lge/sns/InvalidResponseException; {:try_start_1e .. :try_end_63} :catch_114

    .line 590
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageView;->access$000(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 592
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageView;->access$000(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 597
    :cond_74
    :goto_74
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageView;->access$700(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$1300(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f

    .line 570
    :catch_84
    move-exception v0

    move-object v8, v0

    .line 571
    .local v8, e:Lcom/lge/sns/UnauthorizatedException;
    :try_start_86
    const-string v0, "SNMessageView"

    const-string v1, "replyMessage() - UnauthorizatedException"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "sns_id"

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$500(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v9, v1}, Lcom/lge/sns/message/ui/SNMessageView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 577
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageView;->access$700(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$1200(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b4
    .catchall {:try_start_86 .. :try_end_b4} :catchall_130

    .line 590
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageView;->access$000(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 592
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageView;->access$000(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_f

    .line 580
    .end local v8           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v9           #intent:Landroid/content/Intent;
    :catch_c7
    move-exception v0

    move-object v8, v0

    .line 581
    .local v8, e:Lcom/lge/sns/InvalidStatusCodeException;
    :try_start_c9
    const-string v0, "SNMessageView"

    const-string v1, "replyMessage() - InvalidStatusCodeException"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 582
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$800(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/message/ui/SNMessageView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_db
    .catchall {:try_start_c9 .. :try_end_db} :catchall_130

    .line 590
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageView;->access$000(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 592
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageView;->access$000(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_74

    .line 583
    .end local v8           #e:Lcom/lge/sns/InvalidStatusCodeException;
    :catch_ed
    move-exception v0

    move-object v8, v0

    .line 584
    .local v8, e:Lcom/lge/sns/ServerConnectFail;
    :try_start_ef
    const-string v0, "SNMessageView"

    const-string v1, "replyMessage() - ServerConnectFail"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 585
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$800(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/message/ui/SNMessageView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_101
    .catchall {:try_start_ef .. :try_end_101} :catchall_130

    .line 590
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageView;->access$000(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 592
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageView;->access$000(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_74

    .line 586
    .end local v8           #e:Lcom/lge/sns/ServerConnectFail;
    :catch_114
    move-exception v0

    move-object v8, v0

    .line 587
    .local v8, e:Lcom/lge/sns/InvalidResponseException;
    :try_start_116
    const-string v0, "SNMessageView"

    const-string v1, "replyMessage() - InvalidResponseException"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11d
    .catchall {:try_start_116 .. :try_end_11d} :catchall_130

    .line 590
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageView;->access$000(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 592
    iget-object v0, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v0}, Lcom/lge/sns/message/ui/SNMessageView;->access$000(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_74

    .line 590
    .end local v8           #e:Lcom/lge/sns/InvalidResponseException;
    :catchall_130
    move-exception v0

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$000(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_142

    .line 592
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$3;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$000(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_142
    throw v0
.end method
