.class Lcom/android/mms/ui/ManageSimMessages$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ManageSimMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field private final mParent:Lcom/android/mms/ui/ManageSimMessages;

.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/ContentResolver;Lcom/android/mms/ui/ManageSimMessages;)V
    .registers 4
    .parameter
    .parameter "contentResolver"
    .parameter "parent"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    .line 123
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 124
    iput-object p3, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->mParent:Lcom/android/mms/ui/ManageSimMessages;

    .line 125
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 11
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0, p3}, Lcom/android/mms/ui/ManageSimMessages;->access$102(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 132
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 134
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;I)V

    .line 146
    :goto_20
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->startManagingCursor(Landroid/database/Cursor;)V

    .line 148
    :cond_2b
    return-void

    .line 135
    :cond_2c
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$300(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v0

    if-nez v0, :cond_6d

    .line 136
    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    new-instance v0, Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->mParent:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v2}, Lcom/android/mms/ui/ManageSimMessages;->access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$400(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/ListView;

    move-result-object v3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZI)V

    invoke-static {v6, v0}, Lcom/android/mms/ui/ManageSimMessages;->access$302(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/MessageListAdapter;)Lcom/android/mms/ui/MessageListAdapter;

    .line 139
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$400(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$300(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$400(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->mParent:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0, v4}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;I)V

    goto :goto_20

    .line 143
    :cond_6d
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$300(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 144
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0, v4}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;I)V

    goto :goto_20
.end method
