.class final Lcom/android/contacts/RecentCallsListActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "RecentCallsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/RecentCallsListActivity;
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
            "Lcom/android/contacts/RecentCallsListActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 668
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 669
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/contacts/RecentCallsListActivity;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 671
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 675
    iget-object v2, p0, Lcom/android/contacts/RecentCallsListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/RecentCallsListActivity;

    .line 676
    .local v0, activity:Lcom/android/contacts/RecentCallsListActivity;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/contacts/RecentCallsListActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 677
    iget-object v1, v0, Lcom/android/contacts/RecentCallsListActivity;->mAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;

    .line 678
    .local v1, callsAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->setLoading(Z)V

    .line 679
    invoke-virtual {v1, p3}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 683
    .end local v1           #callsAdapter:Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;
    :goto_19
    return-void

    .line 681
    :cond_1a
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_19
.end method
