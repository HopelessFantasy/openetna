.class Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;
.super Ljava/lang/Object;
.source "TwitterMessageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->onMessageUpdated(Lcom/lge/sns/message/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

.field final synthetic val$updatedMessage:Lcom/lge/sns/message/Message;


# direct methods
.method constructor <init>(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;Lcom/lge/sns/message/Message;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 947
    iput-object p1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    iput-object p2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 949
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    if-nez v1, :cond_7

    .line 1089
    :cond_6
    :goto_6
    return-void

    .line 950
    :cond_7
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$500(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    iget-object v2, v2, Lcom/lge/sns/message/Message;->snsId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 952
    monitor-enter p0

    .line 955
    :try_start_18
    const-string v1, "Inbox"

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    iget-object v2, v2, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_172

    .line 957
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_31

    .line 961
    monitor-exit p0

    goto :goto_6

    .line 1090
    :catchall_2e
    move-exception v1

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_2e

    throw v1

    .line 964
    :cond_31
    const/4 v0, 0x0

    .local v0, location:I
    :goto_32
    :try_start_32
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_79

    .line 966
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    iget-object v2, v1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/Message;

    iget-object v1, v1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 968
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 969
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)I

    move-result v1

    if-ne v1, v6, :cond_79

    .line 971
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 972
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1200(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->notifyDataSetChanged()V

    .line 978
    :cond_79
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 980
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)I

    move-result v1

    if-ne v1, v6, :cond_b2

    .line 983
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    invoke-virtual {v2, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->createNewViewEntry(Lcom/lge/sns/message/Message;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1200(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->notifyDataSetChanged()V

    .line 986
    :cond_b2
    monitor-exit p0

    goto/16 :goto_6

    .line 964
    :cond_b5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_32

    .line 989
    :cond_b9
    const/4 v0, 0x0

    :goto_ba
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_e4

    .line 991
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    iget-object v2, v1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/Message;

    iget-object v1, v1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 993
    monitor-exit p0

    goto/16 :goto_6

    .line 989
    :cond_e1
    add-int/lit8 v0, v0, 0x1

    goto :goto_ba

    .line 997
    :cond_e4
    const/4 v0, 0x0

    :goto_e5
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_142

    .line 999
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    iget-object v1, v1, Lcom/lge/sns/message/Message;->updatedDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/Message;

    iget-object v1, v1, Lcom/lge/sns/message/Message;->updatedDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_13f

    .line 1001
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1002
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)I

    move-result v1

    if-ne v1, v6, :cond_13c

    .line 1004
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    invoke-virtual {v2, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->createNewViewEntry(Lcom/lge/sns/message/Message;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1005
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1200(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->notifyDataSetChanged()V

    .line 1008
    :cond_13c
    monitor-exit p0

    goto/16 :goto_6

    .line 997
    :cond_13f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e5

    .line 1012
    :cond_142
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)I

    move-result v1

    if-ne v1, v6, :cond_16f

    .line 1015
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    invoke-virtual {v2, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->createNewViewEntry(Lcom/lge/sns/message/Message;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1200(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->notifyDataSetChanged()V

    .line 1019
    :cond_16f
    monitor-exit p0

    goto/16 :goto_6

    .line 1022
    .end local v0           #location:I
    :cond_172
    const-string v1, "Outbox"

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    iget-object v2, v2, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c7

    .line 1025
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_189

    .line 1029
    monitor-exit p0

    goto/16 :goto_6

    .line 1032
    :cond_189
    const/4 v0, 0x0

    .restart local v0       #location:I
    :goto_18a
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d1

    .line 1034
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    iget-object v2, v1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/Message;

    iget-object v1, v1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20d

    .line 1036
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1037
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)I

    move-result v1

    if-ne v1, v7, :cond_1d1

    .line 1039
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1040
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1200(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->notifyDataSetChanged()V

    .line 1046
    :cond_1d1
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_211

    .line 1048
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1049
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)I

    move-result v1

    if-ne v1, v7, :cond_20a

    .line 1051
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    invoke-virtual {v2, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->createNewViewEntry(Lcom/lge/sns/message/Message;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1200(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->notifyDataSetChanged()V

    .line 1054
    :cond_20a
    monitor-exit p0

    goto/16 :goto_6

    .line 1032
    :cond_20d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_18a

    .line 1057
    :cond_211
    const/4 v0, 0x0

    :goto_212
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23c

    .line 1059
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    iget-object v2, v1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/Message;

    iget-object v1, v1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_239

    .line 1061
    monitor-exit p0

    goto/16 :goto_6

    .line 1057
    :cond_239
    add-int/lit8 v0, v0, 0x1

    goto :goto_212

    .line 1066
    :cond_23c
    const/4 v0, 0x0

    :goto_23d
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29a

    .line 1068
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    iget-object v1, v1, Lcom/lge/sns/message/Message;->updatedDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/Message;

    iget-object v1, v1, Lcom/lge/sns/message/Message;->updatedDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_297

    .line 1070
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1071
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)I

    move-result v1

    if-ne v1, v7, :cond_294

    .line 1073
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    invoke-virtual {v2, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->createNewViewEntry(Lcom/lge/sns/message/Message;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1074
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1200(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->notifyDataSetChanged()V

    .line 1077
    :cond_294
    monitor-exit p0

    goto/16 :goto_6

    .line 1066
    :cond_297
    add-int/lit8 v0, v0, 0x1

    goto :goto_23d

    .line 1081
    :cond_29a
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1082
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)I

    move-result v1

    if-ne v1, v7, :cond_2c7

    .line 1084
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->val$updatedMessage:Lcom/lge/sns/message/Message;

    invoke-virtual {v2, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->createNewViewEntry(Lcom/lge/sns/message/Message;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$5;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1200(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->notifyDataSetChanged()V

    .line 1089
    .end local v0           #location:I
    :cond_2c7
    monitor-exit p0
    :try_end_2c8
    .catchall {:try_start_32 .. :try_end_2c8} :catchall_2e

    goto/16 :goto_6
.end method
