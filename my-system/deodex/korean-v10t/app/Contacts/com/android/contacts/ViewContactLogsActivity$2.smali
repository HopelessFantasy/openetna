.class Lcom/android/contacts/ViewContactLogsActivity$2;
.super Landroid/os/Handler;
.source "ViewContactLogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ViewContactLogsActivity;->creatActionDialogHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ViewContactLogsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ViewContactLogsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/contacts/ViewContactLogsActivity$2;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x4

    .line 437
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_96

    .line 476
    :goto_a
    return-void

    .line 439
    :pswitch_b
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity$2;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-static {v0}, Lcom/android/contacts/ViewContactLogsActivity;->access$300(Lcom/android/contacts/ViewContactLogsActivity;)V

    .line 440
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1c

    .line 441
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity$2;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v3, v1}, Lcom/android/contacts/ViewContactLogsActivity;->access$200(Lcom/android/contacts/ViewContactLogsActivity;II)V

    goto :goto_a

    .line 443
    :cond_1c
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity$2;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-static {v0, v1}, Lcom/android/contacts/ViewContactLogsActivity;->access$400(Lcom/android/contacts/ViewContactLogsActivity;I)V

    goto :goto_a

    .line 447
    :pswitch_22
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity$2;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-static {v0}, Lcom/android/contacts/ViewContactLogsActivity;->access$500(Lcom/android/contacts/ViewContactLogsActivity;)V

    .line 448
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity$2;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-static {v0}, Lcom/android/contacts/ViewContactLogsActivity;->access$600(Lcom/android/contacts/ViewContactLogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_3b

    .line 449
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity$2;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v4, v1}, Lcom/android/contacts/ViewContactLogsActivity;->access$200(Lcom/android/contacts/ViewContactLogsActivity;II)V

    goto :goto_a

    .line 451
    :cond_3b
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity$2;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-static {v0, v1}, Lcom/android/contacts/ViewContactLogsActivity;->access$400(Lcom/android/contacts/ViewContactLogsActivity;I)V

    goto :goto_a

    .line 455
    :pswitch_41
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity$2;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-static {v0}, Lcom/android/contacts/ViewContactLogsActivity;->access$700(Lcom/android/contacts/ViewContactLogsActivity;)V

    .line 457
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity$2;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-static {v0, v1}, Lcom/android/contacts/ViewContactLogsActivity;->access$400(Lcom/android/contacts/ViewContactLogsActivity;I)V

    goto :goto_a

    .line 460
    :pswitch_4c
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity$2;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    iget-object v1, p0, Lcom/android/contacts/ViewContactLogsActivity$2;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    iget-object v1, v1, Lcom/android/contacts/ViewContactLogsActivity;->mLogEntries:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/contacts/ViewContactLogsActivity;->access$800(Lcom/android/contacts/ViewContactLogsActivity;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    .line 461
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity$2;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-static {v0, v5}, Lcom/android/contacts/ViewContactLogsActivity;->access$400(Lcom/android/contacts/ViewContactLogsActivity;I)V

    goto :goto_a

    .line 464
    :pswitch_5c
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity$2;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-static {v0}, Lcom/android/contacts/ViewContactLogsActivity;->access$900(Lcom/android/contacts/ViewContactLogsActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 465
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity$2;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-static {v0}, Lcom/android/contacts/ViewContactLogsActivity;->access$900(Lcom/android/contacts/ViewContactLogsActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 466
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity$2;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-static {v0}, Lcom/android/contacts/ViewContactLogsActivity;->access$900(Lcom/android/contacts/ViewContactLogsActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 467
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity$2;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-static {v0}, Lcom/android/contacts/ViewContactLogsActivity;->access$900(Lcom/android/contacts/ViewContactLogsActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 468
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity$2;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-static {v0}, Lcom/android/contacts/ViewContactLogsActivity;->access$900(Lcom/android/contacts/ViewContactLogsActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 469
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity$2;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-virtual {v0, v2}, Lcom/android/contacts/ViewContactLogsActivity;->dismissDialog(I)V

    .line 470
    iget-object v0, p0, Lcom/android/contacts/ViewContactLogsActivity$2;->this$0:Lcom/android/contacts/ViewContactLogsActivity;

    invoke-static {v0}, Lcom/android/contacts/ViewContactLogsActivity;->access$1000(Lcom/android/contacts/ViewContactLogsActivity;)V

    goto/16 :goto_a

    .line 437
    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_b
        :pswitch_22
        :pswitch_41
        :pswitch_4c
        :pswitch_5c
    .end packed-switch
.end method
