.class Lcom/android/contacts/GroupsListActivity$3;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/contacts/GroupsListActivity;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/contacts/GroupsListActivity$3;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$3;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-static {v0}, Lcom/android/contacts/GroupsListActivity;->access$000(Lcom/android/contacts/GroupsListActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$3;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-static {v0}, Lcom/android/contacts/GroupsListActivity;->access$000(Lcom/android/contacts/GroupsListActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_19

    .line 229
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$3;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-virtual {v0}, Lcom/android/contacts/GroupsListActivity;->startAsyncQuery()V

    .line 231
    :cond_19
    return-void
.end method
