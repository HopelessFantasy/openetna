.class Lcom/android/mms/ui/ConversationHeaderView$1;
.super Ljava/lang/Object;
.source "ConversationHeaderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationHeaderView;->onHeaderLoaded(Lcom/android/mms/ui/ConversationHeader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationHeaderView;

.field final synthetic val$newHeader:Lcom/android/mms/ui/ConversationHeader;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationHeaderView;Lcom/android/mms/ui/ConversationHeader;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/mms/ui/ConversationHeaderView$1;->this$0:Lcom/android/mms/ui/ConversationHeaderView;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationHeaderView$1;->val$newHeader:Lcom/android/mms/ui/ConversationHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/mms/ui/ConversationHeaderView$1;->this$0:Lcom/android/mms/ui/ConversationHeaderView;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationHeaderView;->access$000(Lcom/android/mms/ui/ConversationHeaderView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 198
    :try_start_7
    iget-object v1, p0, Lcom/android/mms/ui/ConversationHeaderView$1;->this$0:Lcom/android/mms/ui/ConversationHeaderView;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationHeaderView;->access$100(Lcom/android/mms/ui/ConversationHeaderView;)Lcom/android/mms/ui/ConversationHeader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationHeaderView$1;->val$newHeader:Lcom/android/mms/ui/ConversationHeader;

    if-ne v1, v2, :cond_2d

    .line 199
    iget-object v1, p0, Lcom/android/mms/ui/ConversationHeaderView$1;->this$0:Lcom/android/mms/ui/ConversationHeaderView;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationHeaderView;->access$300(Lcom/android/mms/ui/ConversationHeaderView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationHeaderView$1;->this$0:Lcom/android/mms/ui/ConversationHeaderView;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationHeaderView$1;->val$newHeader:Lcom/android/mms/ui/ConversationHeader;

    invoke-static {v2, v3}, Lcom/android/mms/ui/ConversationHeaderView;->access$200(Lcom/android/mms/ui/ConversationHeaderView;Lcom/android/mms/ui/ConversationHeader;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v1, p0, Lcom/android/mms/ui/ConversationHeaderView$1;->this$0:Lcom/android/mms/ui/ConversationHeaderView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationHeaderView$1;->val$newHeader:Lcom/android/mms/ui/ConversationHeader;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationHeader;->getPresenceResourceId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationHeaderView;->setPresenceIcon(I)V

    .line 203
    :cond_2d
    monitor-exit v0

    .line 204
    return-void

    .line 203
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v1
.end method
