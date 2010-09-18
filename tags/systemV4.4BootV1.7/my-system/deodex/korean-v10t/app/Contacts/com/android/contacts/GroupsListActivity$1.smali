.class Lcom/android/contacts/GroupsListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "GroupsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/GroupsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/GroupsListActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/GroupsListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/contacts/GroupsListActivity$1;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 197
    :cond_14
    iget-object v1, p0, Lcom/android/contacts/GroupsListActivity$1;->this$0:Lcom/android/contacts/GroupsListActivity;

    iget-object v1, v1, Lcom/android/contacts/GroupsListActivity;->mAdapter:Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->clearBitmapCache()V

    .line 198
    iget-object v1, p0, Lcom/android/contacts/GroupsListActivity$1;->this$0:Lcom/android/contacts/GroupsListActivity;

    iget-object v1, v1, Lcom/android/contacts/GroupsListActivity;->mAdapter:Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->notifyDataSetChanged()V

    .line 200
    :cond_22
    return-void
.end method
