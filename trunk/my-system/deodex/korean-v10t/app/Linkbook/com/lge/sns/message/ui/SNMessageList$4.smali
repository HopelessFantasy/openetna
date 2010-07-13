.class Lcom/lge/sns/message/ui/SNMessageList$4;
.super Ljava/lang/Object;
.source "SNMessageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/message/ui/SNMessageList;->onThreadRemoved(Lcom/lge/sns/message/MessageThread;)V
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
    .line 525
    iput-object p1, p0, Lcom/lge/sns/message/ui/SNMessageList$4;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    iput-object p2, p0, Lcom/lge/sns/message/ui/SNMessageList$4;->val$thread:Lcom/lge/sns/message/MessageThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 528
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageList$4;->val$thread:Lcom/lge/sns/message/MessageThread;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageList$4;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageList;->access$900(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_d

    .line 540
    :cond_c
    :goto_c
    return-void

    .line 530
    :cond_d
    const/4 v0, 0x0

    .local v0, location:I
    :goto_e
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageList$4;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageList;->access$900(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 532
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageList$4;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageList;->access$900(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/MessageThread;

    iget-object v1, v1, Lcom/lge/sns/message/MessageThread;->threadId:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/sns/message/ui/SNMessageList$4;->val$thread:Lcom/lge/sns/message/MessageThread;

    iget-object v2, v2, Lcom/lge/sns/message/MessageThread;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 534
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageList$4;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageList;->access$1000(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 535
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageList$4;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageList;->access$900(Lcom/lge/sns/message/ui/SNMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 536
    iget-object v1, p0, Lcom/lge/sns/message/ui/SNMessageList$4;->this$0:Lcom/lge/sns/message/ui/SNMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/SNMessageList;->access$1100(Lcom/lge/sns/message/ui/SNMessageList;)Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/message/ui/SNMessageList$ViewAdapter;->notifyDataSetChanged()V

    goto :goto_c

    .line 530
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method
