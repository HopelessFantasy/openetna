.class final Lcom/android/contacts/SearchActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/SearchActivity;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 948
    iput-object p1, p0, Lcom/android/contacts/SearchActivity$QueryHandler;->this$0:Lcom/android/contacts/SearchActivity;

    .line 949
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 950
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 1000
    const/16 v0, 0x36

    if-eq p1, v0, :cond_5

    .line 1017
    :cond_4
    :goto_4
    return-void

    .line 1003
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$QueryHandler;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$710(Lcom/android/contacts/SearchActivity;)I

    .line 1008
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$QueryHandler;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$700(Lcom/android/contacts/SearchActivity;)I

    move-result v0

    if-nez v0, :cond_4

    .line 1013
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$QueryHandler;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-virtual {v0}, Lcom/android/contacts/SearchActivity;->finish()V

    goto :goto_4
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 979
    const/16 v0, 0x35

    if-eq p1, v0, :cond_5

    .line 996
    :cond_4
    :goto_4
    return-void

    .line 982
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$QueryHandler;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$710(Lcom/android/contacts/SearchActivity;)I

    .line 987
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$QueryHandler;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$700(Lcom/android/contacts/SearchActivity;)I

    move-result v0

    if-nez v0, :cond_4

    .line 992
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$QueryHandler;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-virtual {v0}, Lcom/android/contacts/SearchActivity;->finish()V

    goto :goto_4
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 954
    const/16 v0, 0x34

    if-eq p1, v0, :cond_6

    .line 975
    :goto_5
    return-void

    .line 957
    :cond_6
    if-nez p3, :cond_15

    .line 958
    const-string v0, "SearchActivity"

    const-string v1, "query failed! cursor is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$QueryHandler;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0, v2}, Lcom/android/contacts/SearchActivity;->access$1200(Lcom/android/contacts/SearchActivity;I)V

    goto :goto_5

    .line 962
    :cond_15
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$QueryHandler;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-virtual {v0}, Lcom/android/contacts/SearchActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_49

    .line 963
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$QueryHandler;->this$0:Lcom/android/contacts/SearchActivity;

    iget-object v0, v0, Lcom/android/contacts/SearchActivity;->mAdapter:Lcom/android/contacts/SearchActivity$SearchItemListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->setLoading(Z)V

    .line 965
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$QueryHandler;->this$0:Lcom/android/contacts/SearchActivity;

    iget-object v0, v0, Lcom/android/contacts/SearchActivity;->mAdapter:Lcom/android/contacts/SearchActivity$SearchItemListAdapter;

    invoke-virtual {v0, p3}, Lcom/android/contacts/SearchActivity$SearchItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 967
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$QueryHandler;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0, p3}, Lcom/android/contacts/SearchActivity;->access$002(Lcom/android/contacts/SearchActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 968
    :try_start_30
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$QueryHandler;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$000(Lcom/android/contacts/SearchActivity;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/SearchActivity$QueryHandler;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v1}, Lcom/android/contacts/SearchActivity;->access$1300(Lcom/android/contacts/SearchActivity;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3f} :catch_4d

    .line 971
    :goto_3f
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$QueryHandler;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/contacts/SearchActivity;->access$1200(Lcom/android/contacts/SearchActivity;I)V

    goto :goto_5

    .line 973
    :cond_49
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 969
    :catch_4d
    move-exception v0

    goto :goto_3f
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 1021
    const/16 v0, 0x37

    if-eq p1, v0, :cond_5

    .line 1038
    :cond_4
    :goto_4
    return-void

    .line 1024
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$QueryHandler;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$710(Lcom/android/contacts/SearchActivity;)I

    .line 1029
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$QueryHandler;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-static {v0}, Lcom/android/contacts/SearchActivity;->access$700(Lcom/android/contacts/SearchActivity;)I

    move-result v0

    if-nez v0, :cond_4

    .line 1034
    iget-object v0, p0, Lcom/android/contacts/SearchActivity$QueryHandler;->this$0:Lcom/android/contacts/SearchActivity;

    invoke-virtual {v0}, Lcom/android/contacts/SearchActivity;->finish()V

    goto :goto_4
.end method
