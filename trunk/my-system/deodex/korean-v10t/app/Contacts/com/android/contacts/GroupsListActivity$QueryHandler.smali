.class final Lcom/android/contacts/GroupsListActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "GroupsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/GroupsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/GroupsListActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/GroupsListActivity;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    .line 1110
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1111
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 1116
    if-nez p3, :cond_10

    .line 1117
    const-string v0, "GroupsListActivity"

    const-string v1, "query failed! cursor is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-static {v0, v2}, Lcom/android/contacts/GroupsListActivity;->access$200(Lcom/android/contacts/GroupsListActivity;I)V

    .line 1154
    :goto_f
    return-void

    .line 1122
    :cond_10
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-virtual {v0}, Lcom/android/contacts/GroupsListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_aa

    .line 1123
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    iget-object v0, v0, Lcom/android/contacts/GroupsListActivity;->mAdapter:Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->setLoading(Z)V

    .line 1124
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-static {v0}, Lcom/android/contacts/GroupsListActivity;->access$300(Lcom/android/contacts/GroupsListActivity;)V

    .line 1125
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-virtual {v0}, Lcom/android/contacts/GroupsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearTextFilter()V

    .line 1126
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    iget-object v0, v0, Lcom/android/contacts/GroupsListActivity;->mAdapter:Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;

    invoke-virtual {v0, p3}, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1128
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-static {v0, p3}, Lcom/android/contacts/GroupsListActivity;->access$002(Lcom/android/contacts/GroupsListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1129
    :try_start_39
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-static {v0}, Lcom/android/contacts/GroupsListActivity;->access$000(Lcom/android/contacts/GroupsListActivity;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-static {v1}, Lcom/android/contacts/GroupsListActivity;->access$400(Lcom/android/contacts/GroupsListActivity;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_48} :catch_af

    .line 1132
    :goto_48
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-static {v0, p3}, Lcom/android/contacts/GroupsListActivity;->access$500(Lcom/android/contacts/GroupsListActivity;Landroid/database/Cursor;)V

    .line 1134
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-static {v0}, Lcom/android/contacts/GroupsListActivity;->access$600(Lcom/android/contacts/GroupsListActivity;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-static {v0}, Lcom/android/contacts/GroupsListActivity;->access$700(Lcom/android/contacts/GroupsListActivity;)I

    move-result v0

    const v1, 0x70000005

    if-ne v0, v1, :cond_65

    .line 1135
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-static {v0}, Lcom/android/contacts/GroupsListActivity;->access$800(Lcom/android/contacts/GroupsListActivity;)V

    .line 1140
    :cond_65
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-static {v0}, Lcom/android/contacts/GroupsListActivity;->access$900(Lcom/android/contacts/GroupsListActivity;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_98

    .line 1141
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-static {v0}, Lcom/android/contacts/GroupsListActivity;->access$1000(Lcom/android/contacts/GroupsListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-static {v1}, Lcom/android/contacts/GroupsListActivity;->access$900(Lcom/android/contacts/GroupsListActivity;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1142
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-static {v0}, Lcom/android/contacts/GroupsListActivity;->access$1100(Lcom/android/contacts/GroupsListActivity;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1143
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-static {v0}, Lcom/android/contacts/GroupsListActivity;->access$1200(Lcom/android/contacts/GroupsListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 1145
    :cond_8d
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/GroupsListActivity;->access$902(Lcom/android/contacts/GroupsListActivity;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 1146
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-static {v0, v2}, Lcom/android/contacts/GroupsListActivity;->access$1102(Lcom/android/contacts/GroupsListActivity;Z)Z

    .line 1149
    :cond_98
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/contacts/GroupsListActivity;->access$200(Lcom/android/contacts/GroupsListActivity;I)V

    .line 1150
    iget-object v0, p0, Lcom/android/contacts/GroupsListActivity$QueryHandler;->this$0:Lcom/android/contacts/GroupsListActivity;

    iget-object v0, v0, Lcom/android/contacts/GroupsListActivity;->mAdapter:Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/GroupsListActivity$GroupItemListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_f

    .line 1152
    :cond_aa
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_f

    .line 1130
    :catch_af
    move-exception v0

    goto :goto_48
.end method
