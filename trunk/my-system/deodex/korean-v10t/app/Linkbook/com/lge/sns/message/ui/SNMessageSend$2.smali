.class Lcom/lge/sns/message/ui/SNMessageSend$2;
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
    .line 314
    iput-object p1, p0, Lcom/lge/sns/message/ui/SNMessageSend$2;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 316
    const/4 v1, 0x0

    .line 318
    .local v1, ret:Z
    :goto_1
    if-eqz v1, :cond_18

    .line 320
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageSend$2;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    invoke-static {v3}, Lcom/lge/sns/message/ui/SNMessageSend;->access$1100(Lcom/lge/sns/message/ui/SNMessageSend;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_c} :catch_e

    .line 321
    const/4 v1, 0x1

    goto :goto_1

    .line 322
    :catch_e
    move-exception v3

    move-object v0, v3

    .line 323
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "SNMessageSendView"

    const-string v4, "mThreadSend.join() - InterruptedException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 327
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v2, successMsg:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageSend$2;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    const v4, 0x7f05006f

    invoke-virtual {v3, v4}, Lcom/lge/sns/message/ui/SNMessageSend;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageSend$2;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    const v4, 0x7f0500c0

    invoke-virtual {v3, v4}, Lcom/lge/sns/message/ui/SNMessageSend;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageSend$2;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 333
    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageSend$2;->this$0:Lcom/lge/sns/message/ui/SNMessageSend;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/lge/sns/message/ui/SNMessageSend;->access$1102(Lcom/lge/sns/message/ui/SNMessageSend;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 334
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 335
    return-void
.end method
