.class Lcom/android/contacts/ContactsListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ContactsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactsListActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactsListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity$1;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 513
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 516
    :cond_14
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$1;->this$0:Lcom/android/contacts/ContactsListActivity;

    invoke-virtual {v1}, Lcom/android/contacts/ContactsListActivity;->dataChanged()V

    .line 517
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$1;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget-object v1, v1, Lcom/android/contacts/ContactsListActivity;->mAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->clearBitmapCache()V

    .line 518
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$1;->this$0:Lcom/android/contacts/ContactsListActivity;

    iget-object v1, v1, Lcom/android/contacts/ContactsListActivity;->mAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->notifyDataSetChanged()V

    .line 520
    :cond_27
    return-void
.end method
