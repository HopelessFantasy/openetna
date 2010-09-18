.class Lcom/lge/sns/message/ui/SNMessageList$3;
.super Ljava/lang/Object;
.source "SNMessageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/message/ui/SNMessageList;->onThreadAdded(Lcom/lge/sns/message/MessageThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/message/ui/SNMessageList;

.field final synthetic val$thread:Lcom/lge/sns/message/MessageThread;


# direct methods
.method constructor <init>(Lcom/lge/sns/message/ui/SNMessageList;Lcom/lge/sns/message/MessageThread;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    iput-object p2, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->val$thread:Lcom/lge/sns/message/MessageThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 479
    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->val$thread:Lcom/lge/sns/message/MessageThread;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v4}, Lcom/lge/sns/message/ui/SNMessageList;->access$900(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_d

    .line 518
    :cond_c
    :goto_c
    return-void

    .line 481
    :cond_d
    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v4}, Lcom/lge/sns/message/ui/SNMessageList;->access$900(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/sns/message/MessageThread;

    .line 483
    .local v3, obj:Lcom/lge/sns/message/MessageThread;
    iget-object v4, v3, Lcom/lge/sns/message/MessageThread;->threadId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->val$thread:Lcom/lge/sns/message/MessageThread;

    iget-object v5, v5, Lcom/lge/sns/message/MessageThread;->threadId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    goto :goto_c

    .line 487
    .end local v3           #obj:Lcom/lge/sns/message/MessageThread;
    :cond_30
    new-instance v0, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;

    invoke-direct {v0}, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;-><init>()V

    .line 489
    .local v0, entry:Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;
    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->val$thread:Lcom/lge/sns/message/MessageThread;

    invoke-virtual {v4}, Lcom/lge/sns/message/MessageThread;->getAuthorName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;->name:Ljava/lang/String;

    .line 490
    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->val$thread:Lcom/lge/sns/message/MessageThread;

    iget v4, v4, Lcom/lge/sns/message/MessageThread;->unread:I

    iput v4, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;->unread:I

    .line 491
    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->val$thread:Lcom/lge/sns/message/MessageThread;

    invoke-virtual {v4}, Lcom/lge/sns/message/MessageThread;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;->data:Ljava/lang/String;

    .line 492
    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->val$thread:Lcom/lge/sns/message/MessageThread;

    invoke-virtual {v4}, Lcom/lge/sns/message/MessageThread;->getUpdatedDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;->date:J

    .line 493
    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->val$thread:Lcom/lge/sns/message/MessageThread;

    iget-object v4, v4, Lcom/lge/sns/message/MessageThread;->threadId:Ljava/lang/String;

    iput-object v4, v0, Lcom/lge/sns/message/ui/SNMessageList$ViewEntry;->threadId:Ljava/lang/String;

    .line 496
    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v4}, Lcom/lge/sns/message/ui/SNMessageList;->access$900(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 498
    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v4}, Lcom/lge/sns/message/ui/SNMessageList;->access$1000(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v4}, Lcom/lge/sns/message/ui/SNMessageList;->access$900(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->val$thread:Lcom/lge/sns/message/MessageThread;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v4}, Lcom/lge/sns/message/ui/SNMessageList;->access$1100(Lcom/lge/sns/message/ui/SNMessageList;)Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;->notifyDataSetChanged()V

    goto :goto_c

    .line 504
    :cond_87
    const/4 v2, 0x0

    .local v2, location:I
    :goto_88
    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v4}, Lcom/lge/sns/message/ui/SNMessageList;->access$900(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_d4

    .line 506
    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v4}, Lcom/lge/sns/message/ui/SNMessageList;->access$900(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/sns/message/MessageThread;

    iget-object v4, v4, Lcom/lge/sns/message/MessageThread;->updatedDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->val$thread:Lcom/lge/sns/message/MessageThread;

    iget-object v6, v6, Lcom/lge/sns/message/MessageThread;->updatedDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_d1

    .line 508
    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v4}, Lcom/lge/sns/message/ui/SNMessageList;->access$900(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->val$thread:Lcom/lge/sns/message/MessageThread;

    invoke-interface {v4, v2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 509
    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v4}, Lcom/lge/sns/message/ui/SNMessageList;->access$1000(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 510
    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v4}, Lcom/lge/sns/message/ui/SNMessageList;->access$1100(Lcom/lge/sns/message/ui/SNMessageList;)Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;->notifyDataSetChanged()V

    goto/16 :goto_c

    .line 504
    :cond_d1
    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    .line 515
    :cond_d4
    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v4}, Lcom/lge/sns/message/ui/SNMessageList;->access$900(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->val$thread:Lcom/lge/sns/message/MessageThread;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v4}, Lcom/lge/sns/message/ui/SNMessageList;->access$1000(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v4, p0, Lcom/lge/sns/message/ui/SNMessageList$3;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v4}, Lcom/lge/sns/message/ui/SNMessageList;->access$1100(Lcom/lge/sns/message/ui/SNMessageList;)Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;->notifyDataSetChanged()V

    goto/16 :goto_c
.end method
