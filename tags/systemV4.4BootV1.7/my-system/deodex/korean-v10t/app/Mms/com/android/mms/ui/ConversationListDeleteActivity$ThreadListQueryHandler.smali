.class final Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConversationListDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationListDeleteActivity;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDeleteActivity;

    .line 250
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 251
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 271
    packed-switch p1, :pswitch_data_24

    .line 291
    :goto_3
    return-void

    .line 275
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDeleteActivity;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;)V

    .line 278
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDeleteActivity;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 281
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDeleteActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->access$300(Lcom/android/mms/ui/ConversationListDeleteActivity;)V

    .line 283
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDeleteActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->onContentChanged()V

    .line 286
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDeleteActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->access$400(Lcom/android/mms/ui/ConversationListDeleteActivity;)V

    .line 287
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDeleteActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->access$500(Lcom/android/mms/ui/ConversationListDeleteActivity;)V

    goto :goto_3

    .line 271
    nop

    :pswitch_data_24
    .packed-switch 0x709
        :pswitch_4
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 255
    packed-switch p1, :pswitch_data_48

    .line 265
    const-string v0, "ConversationListDeleteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete called with unknown token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_1b
    :goto_1b
    return-void

    .line 257
    :pswitch_1c
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDeleteActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->access$000(Lcom/android/mms/ui/ConversationListDeleteActivity;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 258
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDeleteActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDeleteActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListDeleteActivity;->access$100(Lcom/android/mms/ui/ConversationListDeleteActivity;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListDeleteActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDeleteActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListDeleteActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 261
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDeleteActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->access$200(Lcom/android/mms/ui/ConversationListDeleteActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-gtz v0, :cond_1b

    .line 262
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListDeleteActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->finish()V

    goto :goto_1b

    .line 255
    :pswitch_data_48
    .packed-switch 0x6a5
        :pswitch_1c
    .end packed-switch
.end method
