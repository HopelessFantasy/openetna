.class Lcom/android/contacts/GroupsListActivity$DeleteClickListener;
.super Ljava/lang/Object;
.source "GroupsListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/GroupsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteClickListener"
.end annotation


# instance fields
.field private mPosition:I

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/contacts/GroupsListActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/GroupsListActivity;ILandroid/net/Uri;)V
    .registers 4
    .parameter
    .parameter "position"
    .parameter "uri"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/contacts/GroupsListActivity$DeleteClickListener;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput p2, p0, Lcom/android/contacts/GroupsListActivity$DeleteClickListener;->mPosition:I

    .line 241
    iput-object p3, p0, Lcom/android/contacts/GroupsListActivity$DeleteClickListener;->mUri:Landroid/net/Uri;

    .line 242
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    const-string v5, "no data is found to delete!"

    const-string v4, "GroupsListActivity"

    .line 245
    iget-object v1, p0, Lcom/android/contacts/GroupsListActivity$DeleteClickListener;->this$0:Lcom/android/contacts/GroupsListActivity;

    iget-object v1, v1, Lcom/android/contacts/GroupsListActivity;->mGroupsListEntries:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/contacts/GroupsListActivity$DeleteClickListener;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;

    .line 246
    .local v0, entry:Lcom/android/contacts/GroupsListActivity$ViewEntry;
    if-nez v0, :cond_1b

    .line 247
    const-string v1, "GroupsListActivity"

    const-string v1, "no data is found to delete!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_1a
    return-void

    .line 249
    :cond_1b
    iget-object v1, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/GroupsListActivity$DeleteClickListener;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 250
    const-string v1, "GroupsListActivity"

    const-string v1, "no data is found to delete!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 253
    :cond_35
    iget-object v1, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_4b

    .line 254
    :try_start_39
    iget-object v1, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/contacts/GroupsListActivity$DeleteClickListener;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-static {v2}, Lcom/android/contacts/GroupsListActivity;->access$100(Lcom/android/contacts/GroupsListActivity;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_6d

    .line 256
    :goto_44
    iget-object v1, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 257
    iput-object v3, v0, Lcom/android/contacts/GroupsListActivity$ViewEntry;->numMembersCursor:Landroid/database/Cursor;

    .line 259
    :cond_4b
    iget-object v1, p0, Lcom/android/contacts/GroupsListActivity$DeleteClickListener;->this$0:Lcom/android/contacts/GroupsListActivity;

    invoke-virtual {v1}, Lcom/android/contacts/GroupsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/GroupsListActivity$DeleteClickListener;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Lcom/android/contacts/GroupsListActivity$DeleteClickListener;->this$0:Lcom/android/contacts/GroupsListActivity;

    iget-object v1, v1, Lcom/android/contacts/GroupsListActivity;->mGroupsListEntries:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/contacts/GroupsListActivity$DeleteClickListener;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 264
    iget-object v1, p0, Lcom/android/contacts/GroupsListActivity$DeleteClickListener;->this$0:Lcom/android/contacts/GroupsListActivity;

    const v2, 0x7f0600eb

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1a

    .line 255
    :catch_6d
    move-exception v1

    goto :goto_44
.end method
