.class final Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$ThreadListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "UndeliveredMessagesDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;

    .line 258
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 259
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 281
    packed-switch p1, :pswitch_data_10

    .line 289
    :goto_3
    return-void

    .line 284
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;

    invoke-static {v0}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->access$300(Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;)V

    .line 286
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->onContentChanged()V

    goto :goto_3

    .line 281
    nop

    :pswitch_data_10
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
    .line 264
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;

    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;

    const v2, 0x7f0700c0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 266
    packed-switch p1, :pswitch_data_4c

    .line 275
    const-string v0, "[MMS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UndeliveredMessagesActivity  onQueryComplete called with unknown token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_29
    :goto_29
    return-void

    .line 268
    :pswitch_2a
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;

    invoke-static {v0}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->access$100(Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;)Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 269
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 271
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;

    invoke-static {v0}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->access$200(Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-gtz v0, :cond_29

    .line 272
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->finish()V

    goto :goto_29

    .line 266
    nop

    :pswitch_data_4c
    .packed-switch 0x6a5
        :pswitch_2a
    .end packed-switch
.end method
