.class Lcom/lge/sns/message/ui/SNMessageView$4;
.super Ljava/lang/Object;
.source "SNMessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/message/ui/SNMessageView;->onMessageAdded(Lcom/lge/sns/message/Message;)V
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
    .line 611
    iput-object p1, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    iput-object p2, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->val$message:Lcom/lge/sns/message/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 613
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->val$message:Lcom/lge/sns/message/Message;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$1000(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_d

    .line 647
    :cond_c
    :goto_c
    return-void

    .line 614
    :cond_d
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$500(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->val$message:Lcom/lge/sns/message/Message;

    iget-object v2, v2, Lcom/lge/sns/message/Message;->snsId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 615
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$300(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->val$message:Lcom/lge/sns/message/Message;

    iget-object v2, v2, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 617
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$1000(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 619
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$1000(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->val$message:Lcom/lge/sns/message/Message;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$1500(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->val$message:Lcom/lge/sns/message/Message;

    invoke-static {v2, v3}, Lcom/lge/sns/message/ui/SNMessageView;->access$1400(Lcom/lge/sns/message/ui/SNMessageView;Lcom/lge/sns/message/Message;)Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$1600(Lcom/lge/sns/message/ui/SNMessageView;)V

    goto :goto_c

    .line 625
    :cond_5b
    const/4 v0, 0x0

    .local v0, location:I
    :goto_5c
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$1000(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_83

    .line 627
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->val$message:Lcom/lge/sns/message/Message;

    iget-object v2, v1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$1000(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/Message;

    iget-object v1, v1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 633
    :cond_83
    const/4 v0, 0x0

    :goto_84
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$1000(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d4

    .line 635
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->val$message:Lcom/lge/sns/message/Message;

    iget-object v1, v1, Lcom/lge/sns/message/Message;->updatedDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$1000(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/Message;

    iget-object v1, v1, Lcom/lge/sns/message/Message;->updatedDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_d1

    .line 637
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$1000(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->val$message:Lcom/lge/sns/message/Message;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 638
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$1500(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->val$message:Lcom/lge/sns/message/Message;

    invoke-static {v2, v3}, Lcom/lge/sns/message/ui/SNMessageView;->access$1400(Lcom/lge/sns/message/ui/SNMessageView;Lcom/lge/sns/message/Message;)Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 639
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$1600(Lcom/lge/sns/message/ui/SNMessageView;)V

    goto/16 :goto_c

    .line 633
    :cond_d1
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    .line 644
    :cond_d4
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$1000(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->val$message:Lcom/lge/sns/message/Message;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$1500(Lcom/lge/sns/message/ui/SNMessageView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    iget-object v3, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->val$message:Lcom/lge/sns/message/Message;

    invoke-static {v2, v3}, Lcom/lge/sns/message/ui/SNMessageView;->access$1400(Lcom/lge/sns/message/ui/SNMessageView;Lcom/lge/sns/message/Message;)Lcom/lge/sns/message/ui/SNMessageView$ViewEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageView$4;->this$0:Lcom/lge/sns/message/ui/SNMessageView;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageView;->access$1600(Lcom/lge/sns/message/ui/SNMessageView;)V

    goto/16 :goto_c
.end method
