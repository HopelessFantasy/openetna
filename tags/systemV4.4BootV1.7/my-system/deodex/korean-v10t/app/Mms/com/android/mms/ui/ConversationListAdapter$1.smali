.class Lcom/android/mms/ui/ConversationListAdapter$1;
.super Ljava/lang/Object;
.source "ConversationListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListAdapter$1;->this$0:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, r:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListAdapter$1;->this$0:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationListAdapter;->access$000(Lcom/android/mms/ui/ConversationListAdapter;)Ljava/util/Stack;

    move-result-object v3

    monitor-enter v3

    .line 141
    :try_start_8
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListAdapter$1;->this$0:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationListAdapter;->access$000(Lcom/android/mms/ui/ConversationListAdapter;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_22

    .line 142
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListAdapter$1;->this$0:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationListAdapter;->access$000(Lcom/android/mms/ui/ConversationListAdapter;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Runnable;

    move-object v1, v0

    .line 144
    :cond_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_29

    .line 145
    if-eqz v1, :cond_28

    .line 146
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 148
    :cond_28
    return-void

    .line 144
    :catchall_29
    move-exception v2

    :try_start_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v2
.end method
