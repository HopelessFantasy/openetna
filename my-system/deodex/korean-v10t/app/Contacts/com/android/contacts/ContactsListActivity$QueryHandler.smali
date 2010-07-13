.class final Lcom/android/contacts/ContactsListActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueryHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/contacts/ContactsListActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 2482
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 2483
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/contacts/ContactsListActivity;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 2484
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 8
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 2488
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactsListActivity;

    .line 2490
    .local v0, activity:Lcom/android/contacts/ContactsListActivity;
    if-nez p3, :cond_16

    .line 2491
    const-string v1, "ContactsListActivity"

    const-string v2, "query failed! cursor is 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    invoke-static {v0, v3}, Lcom/android/contacts/ContactsListActivity;->access$600(Lcom/android/contacts/ContactsListActivity;I)V

    .line 2519
    :goto_15
    return-void

    .line 2496
    :cond_16
    if-nez v0, :cond_1c

    .line 2497
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_15

    .line 2500
    :cond_1c
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Lcom/android/contacts/ContactsListActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_62

    .line 2501
    iget-object v1, v0, Lcom/android/contacts/ContactsListActivity;->mAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v1, v3}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->setLoading(Z)V

    .line 2502
    invoke-virtual {v0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearTextFilter()V

    .line 2503
    iget-object v1, v0, Lcom/android/contacts/ContactsListActivity;->mAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2506
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$700(Lcom/android/contacts/ContactsListActivity;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 2507
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$800(Lcom/android/contacts/ContactsListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$700(Lcom/android/contacts/ContactsListActivity;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2508
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$900(Lcom/android/contacts/ContactsListActivity;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 2509
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->access$1000(Lcom/android/contacts/ContactsListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 2511
    :cond_53
    invoke-static {v0, v3}, Lcom/android/contacts/ContactsListActivity;->access$902(Lcom/android/contacts/ContactsListActivity;Z)Z

    .line 2512
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsListActivity;->access$702(Lcom/android/contacts/ContactsListActivity;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 2515
    :cond_5a
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsListActivity;->access$600(Lcom/android/contacts/ContactsListActivity;I)V

    goto :goto_15

    .line 2517
    :cond_62
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_15
.end method
