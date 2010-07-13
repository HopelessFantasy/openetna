.class Lcom/android/mms/ui/ComposeMessageActivity$2;
.super Landroid/os/Handler;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    .line 462
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_56

    .line 470
    const-string v3, "ComposeMessageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_1f
    :goto_1f
    return-void

    .line 464
    :pswitch_20
    const-string v2, "mms"

    .line 474
    .local v2, type:Ljava/lang/String;
    :goto_22
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v2, v5, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;J)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 475
    .local v1, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v1, :cond_1f

    .line 476
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$800(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 477
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$900(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v3

    if-eqz v3, :cond_53

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$400(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v3

    move v0, v3

    .line 480
    .local v0, attachmentType:I
    :goto_4a
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$2;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1000(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    goto :goto_1f

    .line 467
    .end local v0           #attachmentType:I
    .end local v1           #msgItem:Lcom/android/mms/ui/MessageItem;
    .end local v2           #type:Ljava/lang/String;
    :pswitch_50
    const-string v2, "sms"

    .line 468
    .restart local v2       #type:Ljava/lang/String;
    goto :goto_22

    .line 477
    .restart local v1       #msgItem:Lcom/android/mms/ui/MessageItem;
    :cond_53
    const/4 v3, 0x0

    move v0, v3

    goto :goto_4a

    .line 462
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_20
        :pswitch_50
    .end packed-switch
.end method
