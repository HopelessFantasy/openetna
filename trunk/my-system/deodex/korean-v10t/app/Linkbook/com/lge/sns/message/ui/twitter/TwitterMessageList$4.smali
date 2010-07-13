.class Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;
.super Ljava/lang/Object;
.source "TwitterMessageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->onMessageRemoved(Lcom/lge/sns/message/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

.field final synthetic val$removedMessage:Lcom/lge/sns/message/Message;


# direct methods
.method constructor <init>(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;Lcom/lge/sns/message/Message;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 876
    iput-object p1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    iput-object p2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->val$removedMessage:Lcom/lge/sns/message/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 878
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->val$removedMessage:Lcom/lge/sns/message/Message;

    if-nez v1, :cond_5

    .line 936
    :cond_4
    :goto_4
    return-void

    .line 879
    :cond_5
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$500(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->val$removedMessage:Lcom/lge/sns/message/Message;

    iget-object v2, v2, Lcom/lge/sns/message/Message;->snsId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 881
    monitor-enter p0

    .line 883
    :try_start_16
    const-string v1, "TwitterMessageList"

    const-string v2, "onMessageRemoved()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const-string v1, "Inbox"

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->val$removedMessage:Lcom/lge/sns/message/Message;

    iget-object v2, v2, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 887
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_36

    .line 891
    monitor-exit p0

    goto :goto_4

    .line 937
    :catchall_33
    move-exception v1

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_16 .. :try_end_35} :catchall_33

    throw v1

    .line 895
    :cond_36
    const/4 v0, 0x0

    .local v0, location:I
    :goto_37
    :try_start_37
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_84

    .line 897
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->val$removedMessage:Lcom/lge/sns/message/Message;

    iget-object v2, v1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/Message;

    iget-object v1, v1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 899
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 900
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7f

    .line 902
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 903
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1200(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->notifyDataSetChanged()V

    .line 905
    :cond_7f
    monitor-exit p0

    goto :goto_4

    .line 895
    :cond_81
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 909
    :cond_84
    monitor-exit p0

    goto/16 :goto_4

    .line 912
    .end local v0           #location:I
    :cond_87
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->val$removedMessage:Lcom/lge/sns/message/Message;

    iget-object v1, v1, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    const-string v2, "Outbox"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 914
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9e

    .line 918
    monitor-exit p0

    goto/16 :goto_4

    .line 921
    :cond_9e
    const/4 v0, 0x0

    .restart local v0       #location:I
    :goto_9f
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_ed

    .line 923
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->val$removedMessage:Lcom/lge/sns/message/Message;

    iget-object v2, v1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/Message;

    iget-object v1, v1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 925
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 926
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e7

    .line 928
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 929
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$4;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1200(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->notifyDataSetChanged()V

    .line 931
    :cond_e7
    monitor-exit p0

    goto/16 :goto_4

    .line 921
    :cond_ea
    add-int/lit8 v0, v0, 0x1

    goto :goto_9f

    .line 936
    .end local v0           #location:I
    :cond_ed
    monitor-exit p0
    :try_end_ee
    .catchall {:try_start_37 .. :try_end_ee} :catchall_33

    goto/16 :goto_4
.end method
