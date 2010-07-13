.class Lcom/lge/sns/message/ui/SNMessageView$5;
.super Ljava/lang/Object;
.source "SNMessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/message/ui/SNMessageView;->onMessageRemoved(Lcom/lge/sns/message/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/message/ui/SNMessageView;

.field final synthetic val$message:Lcom/lge/sns/message/Message;


# direct methods
.method constructor <init>(Lcom/lge/sns/message/ui/SNMessageView;Lcom/lge/sns/message/Message;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/lge/sns/message/ui/SNMessageView$5;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    iput-object p2, p0, Lcom/lge/sns/message/ui/SNMessageView$5;->val$message:Lcom/lge/sns/message/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 655
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$5;->val$message:Lcom/lge/sns/message/Message;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$5;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$1000(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_d

    .line 668
    :cond_c
    :goto_c
    return-void

    .line 656
    :cond_d
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$5;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$500(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView$5;->val$message:Lcom/lge/sns/message/Message;

    iget-object v2, v2, Lcom/lge/sns/message/Message;->snsId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 657
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$5;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$300(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView$5;->val$message:Lcom/lge/sns/message/Message;

    iget-object v2, v2, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 659
    const/4 v0, 0x0

    .local v0, location:I
    :goto_2e
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$5;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$1000(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 661
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$5;->val$message:Lcom/lge/sns/message/Message;

    iget-object v2, v1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$5;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$1000(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/Message;

    iget-object v1, v1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    if-ne v2, v1, :cond_5d

    .line 663
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$5;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$1000(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 664
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$5;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$1600(Lcom/lge/sns/message/ui/SNMessageView;)V

    goto :goto_c

    .line 659
    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e
.end method
