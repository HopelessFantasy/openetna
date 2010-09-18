.class Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;
.super Ljava/lang/Object;
.source "TwitterMessageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->onMessageAdded(Lcom/lge/sns/message/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

.field final synthetic val$addedMessage:Lcom/lge/sns/message/Message;


# direct methods
.method constructor <init>(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;Lcom/lge/sns/message/Message;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 749
    iput-object p1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    iput-object p2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->val$addedMessage:Lcom/lge/sns/message/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 751
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->val$addedMessage:Lcom/lge/sns/message/Message;

    if-nez v1, :cond_7

    .line 867
    :cond_6
    :goto_6
    return-void

    .line 752
    :cond_7
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$500(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->val$addedMessage:Lcom/lge/sns/message/Message;

    iget-object v2, v2, Lcom/lge/sns/message/Message;->snsId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 754
    monitor-enter p0

    .line 758
    :try_start_18
    const-string v1, "Inbox"

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->val$addedMessage:Lcom/lge/sns/message/Message;

    iget-object v2, v2, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_125

    .line 760
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_31

    .line 764
    monitor-exit p0

    goto :goto_6

    .line 868
    :catchall_2e
    move-exception v1

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_2e

    throw v1

    .line 767
    :cond_31
    :try_start_31
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 769
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->val$addedMessage:Lcom/lge/sns/message/Message;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)I

    move-result v1

    if-ne v1, v6, :cond_6a

    .line 772
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->val$addedMessage:Lcom/lge/sns/message/Message;

    invoke-virtual {v2, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->createNewViewEntry(Lcom/lge/sns/message/Message;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1200(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->notifyDataSetChanged()V

    .line 775
    :cond_6a
    monitor-exit p0

    goto :goto_6

    .line 779
    :cond_6c
    const/4 v0, 0x0

    .local v0, location:I
    :goto_6d
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_97

    .line 781
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->val$addedMessage:Lcom/lge/sns/message/Message;

    iget-object v2, v1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/Message;

    iget-object v1, v1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 783
    monitor-exit p0

    goto/16 :goto_6

    .line 779
    :cond_94
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 788
    :cond_97
    const/4 v0, 0x0

    :goto_98
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_f5

    .line 790
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->val$addedMessage:Lcom/lge/sns/message/Message;

    iget-object v1, v1, Lcom/lge/sns/message/Message;->updatedDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/Message;

    iget-object v1, v1, Lcom/lge/sns/message/Message;->updatedDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_f2

    .line 792
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->val$addedMessage:Lcom/lge/sns/message/Message;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 793
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)I

    move-result v1

    if-ne v1, v6, :cond_ef

    .line 795
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->val$addedMessage:Lcom/lge/sns/message/Message;

    invoke-virtual {v2, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->createNewViewEntry(Lcom/lge/sns/message/Message;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 796
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1200(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->notifyDataSetChanged()V

    .line 799
    :cond_ef
    monitor-exit p0

    goto/16 :goto_6

    .line 788
    :cond_f2
    add-int/lit8 v0, v0, 0x1

    goto :goto_98

    .line 803
    :cond_f5
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1000(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->val$addedMessage:Lcom/lge/sns/message/Message;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)I

    move-result v1

    if-ne v1, v6, :cond_122

    .line 806
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->val$addedMessage:Lcom/lge/sns/message/Message;

    invoke-virtual {v2, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->createNewViewEntry(Lcom/lge/sns/message/Message;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1200(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->notifyDataSetChanged()V

    .line 810
    :cond_122
    monitor-exit p0

    goto/16 :goto_6

    .line 814
    .end local v0           #location:I
    :cond_125
    const-string v1, "Outbox"

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->val$addedMessage:Lcom/lge/sns/message/Message;

    iget-object v2, v2, Lcom/lge/sns/message/Message;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22e

    .line 817
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_13c

    .line 821
    monitor-exit p0

    goto/16 :goto_6

    .line 824
    :cond_13c
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_178

    .line 826
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->val$addedMessage:Lcom/lge/sns/message/Message;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)I

    move-result v1

    if-ne v1, v7, :cond_175

    .line 829
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->val$addedMessage:Lcom/lge/sns/message/Message;

    invoke-virtual {v2, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->createNewViewEntry(Lcom/lge/sns/message/Message;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1200(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->notifyDataSetChanged()V

    .line 832
    :cond_175
    monitor-exit p0

    goto/16 :goto_6

    .line 835
    :cond_178
    const/4 v0, 0x0

    .restart local v0       #location:I
    :goto_179
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a3

    .line 837
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->val$addedMessage:Lcom/lge/sns/message/Message;

    iget-object v2, v1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/Message;

    iget-object v1, v1, Lcom/lge/sns/message/Message;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a0

    .line 839
    monitor-exit p0

    goto/16 :goto_6

    .line 835
    :cond_1a0
    add-int/lit8 v0, v0, 0x1

    goto :goto_179

    .line 844
    :cond_1a3
    const/4 v0, 0x0

    :goto_1a4
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_201

    .line 846
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->val$addedMessage:Lcom/lge/sns/message/Message;

    iget-object v1, v1, Lcom/lge/sns/message/Message;->updatedDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/message/Message;

    iget-object v1, v1, Lcom/lge/sns/message/Message;->updatedDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1fe

    .line 848
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->val$addedMessage:Lcom/lge/sns/message/Message;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 849
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)I

    move-result v1

    if-ne v1, v7, :cond_1fb

    .line 851
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->val$addedMessage:Lcom/lge/sns/message/Message;

    invoke-virtual {v2, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->createNewViewEntry(Lcom/lge/sns/message/Message;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 852
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1200(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->notifyDataSetChanged()V

    .line 855
    :cond_1fb
    monitor-exit p0

    goto/16 :goto_6

    .line 844
    :cond_1fe
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a4

    .line 859
    :cond_201
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1300(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->val$addedMessage:Lcom/lge/sns/message/Message;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)I

    move-result v1

    if-ne v1, v7, :cond_22e

    .line 862
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1100(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    iget-object v3, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->val$addedMessage:Lcom/lge/sns/message/Message;

    invoke-virtual {v2, v3}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->createNewViewEntry(Lcom/lge/sns/message/Message;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    iget-object v1, p0, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$3;->this$0:Lcom/lge/sns/message/ui/twitter/TwitterMessageList;

    invoke-static {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList;->access$1200(Lcom/lge/sns/message/ui/twitter/TwitterMessageList;)Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/message/ui/twitter/TwitterMessageList$ViewAdapter;->notifyDataSetChanged()V

    .line 867
    .end local v0           #location:I
    :cond_22e
    monitor-exit p0
    :try_end_22f
    .catchall {:try_start_31 .. :try_end_22f} :catchall_2e

    goto/16 :goto_6
.end method
