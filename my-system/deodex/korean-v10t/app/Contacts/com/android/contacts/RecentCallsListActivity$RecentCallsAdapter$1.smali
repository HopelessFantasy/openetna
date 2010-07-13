.class Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter$1;
.super Landroid/os/Handler;
.source "RecentCallsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter$1;->this$1:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 221
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 229
    :goto_5
    return-void

    .line 223
    :pswitch_6
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter$1;->this$1:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 226
    :pswitch_c
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter$1;->this$1:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->startRequestProcessing()V

    goto :goto_5

    .line 221
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
