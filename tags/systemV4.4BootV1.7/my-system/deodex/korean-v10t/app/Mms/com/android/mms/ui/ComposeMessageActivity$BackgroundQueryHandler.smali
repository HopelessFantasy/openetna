.class final Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 4504
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 4505
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 4506
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 4542
    packed-switch p1, :pswitch_data_18

    .line 4555
    :goto_3
    const/16 v0, 0x25e5

    if-ne p1, v0, :cond_c

    .line 4556
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7500(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 4558
    :cond_c
    return-void

    .line 4547
    :pswitch_d
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;)V

    .line 4551
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7400(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_3

    .line 4542
    :pswitch_data_18
    .packed-switch 0x25e4
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 4510
    sparse-switch p1, :sswitch_data_40

    .line 4538
    :goto_3
    return-void

    .line 4512
    :sswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 4519
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1800(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 4520
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 4525
    :cond_20
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_3

    .line 4531
    :sswitch_2a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7000(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 4532
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7102(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 4533
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7200(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 4534
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7300(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_3

    .line 4510
    nop

    :sswitch_data_40
    .sparse-switch
        0x2537 -> :sswitch_4
        0x2648 -> :sswitch_2a
        0x2649 -> :sswitch_2a
    .end sparse-switch
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 4562
    packed-switch p1, :pswitch_data_a

    .line 4567
    :goto_3
    return-void

    .line 4564
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateAllNotifications(Landroid/content/Context;)V

    goto :goto_3

    .line 4562
    :pswitch_data_a
    .packed-switch 0x26ac
        :pswitch_4
    .end packed-switch
.end method
