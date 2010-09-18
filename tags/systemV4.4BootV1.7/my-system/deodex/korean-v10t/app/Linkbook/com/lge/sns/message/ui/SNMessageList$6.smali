.class Lcom/lge/sns/message/ui/SNMessageList$6;
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
    .line 605
    iput-object p1, p0, Lcom/lge/sns/message/ui/SNMessageList$6;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 607
    const/4 v1, 0x0

    .line 609
    .local v1, ret:Z
    :goto_1
    if-eqz v1, :cond_18

    .line 611
    :try_start_3
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList$6;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v2}, Lcom/lge/sns/message/ui/SNMessageList;->access$1200(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_c} :catch_e

    .line 612
    const/4 v1, 0x1

    goto :goto_1

    .line 613
    :catch_e
    move-exception v2

    move-object v0, v2

    .line 614
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "SNMessageListActivity"

    const-string v3, "mThreadRefresh.join() - InterruptedException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 618
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_18
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList$6;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    const v3, 0x7f05006e

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 619
    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList$6;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/lge/sns/message/ui/SNMessageList;->access$1202(Lcom/lge/sns/message/ui/SNMessageList;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 620
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 621
    return-void
.end method
