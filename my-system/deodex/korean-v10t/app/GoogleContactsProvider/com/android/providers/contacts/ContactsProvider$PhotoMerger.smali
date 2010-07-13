.class public Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;
.super Landroid/content/AbstractTableMerger;
.source "ContactsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PhotoMerger"
.end annotation


# instance fields
.field private mValues:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider;)V
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 4341
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    .line 4342
    invoke-virtual {p1}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider;->sPhotosTable:Ljava/lang/String;

    sget-object v3, Lcom/android/providers/contacts/ContactsProvider;->sPhotosURL:Landroid/net/Uri;

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/content/AbstractTableMerger;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V

    .line 4339
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;->mValues:Landroid/content/ContentValues;

    .line 4343
    return-void
.end method


# virtual methods
.method public deleteRow(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 4419
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 4420
    return-void
.end method

.method public insertRow(Landroid/content/ContentProvider;Landroid/database/Cursor;)V
    .registers 11
    .parameter "diffs"
    .parameter "cursor"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4356
    const-string v2, "_sync_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4357
    .local v1, syncId:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "select count(*) from _deleted_people where _sync_id=?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object v1, v4, v6

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_26

    move v0, v7

    .line 4360
    .local v0, contactIsDeleted:Z
    :goto_23
    if-eqz v0, :cond_28

    .line 4361
    return-void

    .end local v0           #contactIsDeleted:Z
    :cond_26
    move v0, v6

    .line 4357
    goto :goto_23

    .line 4364
    .restart local v0       #contactIsDeleted:Z
    :cond_28
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "the photo row is inserted by PersonMerger.insertRow"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected notifyChanges()V
    .registers 5

    .prologue
    .line 4348
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 4350
    return-void
.end method

.method public resolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;)V
    .registers 13
    .parameter "localId"
    .parameter "syncID"
    .parameter "diffs"
    .parameter "diffsCursor"

    .prologue
    .line 4376
    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;->updateOrResolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;Z)V

    .line 4377
    return-void
.end method

.method protected updateOrResolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;Z)V
    .registers 16
    .parameter "localRowId"
    .parameter "syncID"
    .parameter "diffs"
    .parameter "cursor"
    .parameter "conflicts"

    .prologue
    const/4 v4, 0x0

    const-string v8, "local_version"

    const-string v7, "exists_on_server"

    const-string v6, "ContactsProvider"

    .line 4381
    const-string v3, "ContactsProvider"

    const/4 v3, 0x2

    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 4382
    const-string v3, "ContactsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PhotoMerger.updateOrResolveRow: localRowId "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", syncId "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", conflicts "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", server row "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p5}, Landroid/database/DatabaseUtils;->dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4386
    :cond_4a
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 4387
    const-string v3, "_sync_time"

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p5, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4388
    const-string v3, "_sync_version"

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p5, v3, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4389
    const-string v3, "exists_on_server"

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p5, v7, v3}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4391
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;->mValues:Landroid/content/ContentValues;

    const-string v6, "sync_error"

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4395
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT _sync_dirty FROM photos WHERE _id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " UNION SELECT 0 AS _sync_dirty ORDER BY _sync_dirty DESC LIMIT 1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    .line 4399
    .local v1, syncDirty:J
    const-wide/16 v5, 0x0

    cmp-long v3, v1, v5

    if-nez v3, :cond_c0

    .line 4400
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;->mValues:Landroid/content/ContentValues;

    const-string v5, "exists_on_server"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_c0

    .line 4401
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;->mValues:Landroid/content/ContentValues;

    const-string v6, "data"

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4402
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;->mValues:Landroid/content/ContentValues;

    const-string v5, "local_version"

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;->mValues:Landroid/content/ContentValues;

    const-string v6, "local_version"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4412
    :cond_c0
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;->mTable:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;->mValues:Landroid/content/ContentValues;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4413
    return-void
.end method

.method public updateRow(JLandroid/content/ContentProvider;Landroid/database/Cursor;)V
    .registers 12
    .parameter "localId"
    .parameter "diffs"
    .parameter "diffsCursor"

    .prologue
    .line 4370
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsProvider$PhotoMerger;->updateOrResolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;Z)V

    .line 4371
    return-void
.end method
