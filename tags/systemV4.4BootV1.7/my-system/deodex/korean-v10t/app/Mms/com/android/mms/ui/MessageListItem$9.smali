.class Lcom/android/mms/ui/MessageListItem$9;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->setErrorIndicatorClickListener(Lcom/android/mms/ui/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$msgItem:Lcom/android/mms/ui/MessageItem;

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;ILcom/android/mms/ui/MessageItem;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 841
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput p2, p0, Lcom/android/mms/ui/MessageListItem$9;->val$what:I

    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem$9;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 842
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$2000(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 843
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$9;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$2000(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MessageListItem$9;->val$what:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 844
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$9;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 845
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 847
    .end local v0           #msg:Landroid/os/Message;
    :cond_22
    return-void
.end method
