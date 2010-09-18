.class Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$3;
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
    .line 357
    iput-object p1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 359
    const/4 v1, 0x0

    .line 361
    .local v1, ret:Z
    :goto_1
    if-eqz v1, :cond_18

    .line 363
    :try_start_3
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    invoke-static {v2}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->access$1100(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_c} :catch_e

    .line 364
    const/4 v1, 0x1

    goto :goto_1

    .line 365
    :catch_e
    move-exception v2

    move-object v0, v2

    .line 366
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "SNMessageSendView"

    const-string v3, "mThreadSend.join() - InterruptedException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 370
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_18
    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;->access$1102(Lcom/lge/sns/message/ui/twitter/TwitterMessageSend;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 371
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 372
    return-void
.end method
