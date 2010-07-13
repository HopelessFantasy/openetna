.class Lcom/lge/sns/message/ui/SNMessageView$9;
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
    .line 766
    iput-object p1, p0, Lcom/lge/sns/message/ui/SNMessageView$9;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 768
    const/4 v1, 0x0

    .line 770
    .local v1, ret:Z
    :goto_1
    if-eqz v1, :cond_18

    .line 772
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView$9;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v3}, Lcom/lge/sns/message/ui/SNMessageView;->access$1800(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_c} :catch_e

    .line 773
    const/4 v1, 0x1

    goto :goto_1

    .line 774
    :catch_e
    move-exception v3

    move-object v0, v3

    .line 775
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "SNMessageView"

    const-string v4, "mThreadReply.join() - InterruptedException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 779
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 780
    .local v2, successMsg:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView$9;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    const v4, 0x7f050070

    invoke-virtual {v3, v4}, Lcom/lge/sns/message/ui/SNMessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView$9;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    const v4, 0x7f0500c0

    invoke-virtual {v3, v4}, Lcom/lge/sns/message/ui/SNMessageView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView$9;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 784
    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView$9;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v3}, Lcom/lge/sns/message/ui/SNMessageView;->access$1900(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 785
    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView$9;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v3}, Lcom/lge/sns/message/ui/SNMessageView;->access$2000(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 786
    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView$9;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v3}, Lcom/lge/sns/message/ui/SNMessageView;->access$1100(Lcom/lge/sns/message/ui/SNMessageView;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 788
    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView$9;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/lge/sns/message/ui/SNMessageView;->access$1802(Lcom/lge/sns/message/ui/SNMessageView;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 789
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 790
    return-void
.end method
