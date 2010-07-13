.class public Lcom/android/providers/contacts/ContactsProvider$GroupMerger;
.super Landroid/content/AbstractTableMerger;
.source "ContactsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GroupMerger"
.end annotation


# static fields
.field private static final UNSYNCED_GROUP_BY_NAME_WHERE_CLAUSE:Ljava/lang/String; = "_sync_id is null AND _sync_account is null AND name=?"

.field private static final UNSYNCED_GROUP_BY_SYSTEM_ID_WHERE_CLAUSE:Ljava/lang/String; = "_sync_id is null AND _sync_account is null AND system_id=?"


# instance fields
.field private mValues:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider;)V
    .registers 8
    .parameter

    .prologue
    .line 4216
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    .line 4217
    invoke-virtual {p1}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider;->sGroupsTable:Ljava/lang/String;

    sget-object v3, Lcom/android/providers/contacts/ContactsProvider;->sGroupsURL:Landroid/net/Uri;

    sget-object v4, Lcom/android/providers/contacts/ContactsProvider;->sDeletedGroupsTable:Ljava/lang/String;

    sget-object v5, Lcom/android/providers/contacts/ContactsProvider;->sDeletedGroupsURL:Landroid/net/Uri;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/AbstractTableMerger;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V

    .line 4204
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    .line 4218
    return-void
.end method


# virtual methods
.method public deleteRow(Landroid/database/Cursor;)V
    .registers 16
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 4309
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider;->sGroupsTable:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4313
    .local v9, c:Landroid/database/Cursor;
    :try_start_2e
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 4314
    const-string v0, "name"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4315
    .local v11, oldName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 4316
    .local v10, newName:Ljava/lang/String;
    const-string v0, "_sync_account"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4317
    .local v8, account:Ljava/lang/String;
    const-string v0, "_sync_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4318
    .local v12, syncId:Ljava/lang/String;
    const-string v0, "system_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 4319
    .local v13, systemId:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 4322
    const-string v0, "ContactsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring a delete for a system group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Landroid/database/DatabaseUtils;->dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4324
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7f
    .catchall {:try_start_2e .. :try_end_7f} :catchall_8f

    .line 4331
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4335
    :goto_82
    return-void

    .line 4329
    :cond_83
    :try_start_83
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    invoke-virtual {v0, v11, v10, v8, v12}, Lcom/android/providers/contacts/ContactsProvider;->fixupPeopleStarredOnGroupRename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_88
    .catchall {:try_start_83 .. :try_end_88} :catchall_8f

    .line 4331
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4334
    invoke-interface {p1}, Landroid/database/Cursor;->deleteRow()Z

    goto :goto_82

    .line 4331
    .end local v8           #account:Ljava/lang/String;
    .end local v10           #newName:Ljava/lang/String;
    .end local v11           #oldName:Ljava/lang/String;
    .end local v12           #syncId:Ljava/lang/String;
    .end local v13           #systemId:Ljava/lang/String;
    :catchall_8f
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public insertRow(Landroid/content/ContentProvider;Landroid/database/Cursor;)V
    .registers 21
    .parameter "diffs"
    .parameter "cursor"

    .prologue
    .line 4231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    move-object v10, v0

    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 4232
    const-string v10, "_sync_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    move-object v11, v0

    move-object/from16 v0, p2

    move-object v1, v10

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4233
    const-string v10, "_sync_time"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    move-object v11, v0

    move-object/from16 v0, p2

    move-object v1, v10

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4234
    const-string v10, "_sync_version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    move-object v11, v0

    move-object/from16 v0, p2

    move-object v1, v10

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4235
    const-string v10, "_sync_account"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    move-object v11, v0

    move-object/from16 v0, p2

    move-object v1, v10

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4236
    const-string v10, "name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    move-object v11, v0

    move-object/from16 v0, p2

    move-object v1, v10

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4237
    const-string v10, "notes"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    move-object v11, v0

    move-object/from16 v0, p2

    move-object v1, v10

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4238
    const-string v10, "system_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    move-object v11, v0

    move-object/from16 v0, p2

    move-object v1, v10

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    move-object v10, v0

    const-string v11, "_sync_dirty"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    move-object v10, v0

    const-string v11, "system_id"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4242
    .local v9, systemId:Ljava/lang/String;
    const/4 v7, 0x0

    .line 4243
    .local v7, rowUpdated:Z
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_10a

    .line 4244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mTable:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    move-object v12, v0

    const-string v13, "_sync_id is null AND _sync_account is null AND name=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    const-string v17, "name"

    invoke-virtual/range {v16 .. v17}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_107

    const/4 v10, 0x1

    move v7, v10

    .line 4252
    :goto_ba
    if-nez v7, :cond_131

    .line 4253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v10, v0

    invoke-static {v10}, Lcom/android/providers/contacts/ContactsProvider;->access$6100(Lcom/android/providers/contacts/ContactsProvider;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    move-object v11, v0

    invoke-virtual {v10, v11}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    .line 4262
    :goto_cd
    const/4 v6, 0x0

    .line 4263
    .local v6, oldName:Ljava/lang/String;
    const-string v10, "name"

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4264
    .local v5, newName:Ljava/lang/String;
    const-string v10, "_sync_account"

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4265
    .local v3, account:Ljava/lang/String;
    const-string v10, "_sync_id"

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4267
    .local v8, syncId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v10, v0

    invoke-virtual {v10, v6, v5, v3, v8}, Lcom/android/providers/contacts/ContactsProvider;->fixupPeopleStarredOnGroupRename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4268
    return-void

    .line 4244
    .end local v3           #account:Ljava/lang/String;
    .end local v5           #newName:Ljava/lang/String;
    .end local v6           #oldName:Ljava/lang/String;
    .end local v8           #syncId:Ljava/lang/String;
    :cond_107
    const/4 v10, 0x0

    move v7, v10

    goto :goto_ba

    .line 4248
    :cond_10a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mTable:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    move-object v12, v0

    const-string v13, "_sync_id is null AND _sync_account is null AND system_id=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_12e

    const/4 v10, 0x1

    move v7, v10

    :goto_12d
    goto :goto_ba

    :cond_12e
    const/4 v10, 0x0

    move v7, v10

    goto :goto_12d

    .line 4257
    :cond_131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/android/providers/contacts/ContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 4258
    .local v4, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    move-object v10, v0

    const-string v11, "_sync_account"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4259
    .restart local v3       #account:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v3, v11}, Lcom/android/providers/contacts/ContactsProvider;->onLocalChangesForAccount(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_cd
.end method

.method protected notifyChanges()V
    .registers 5

    .prologue
    .line 4223
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 4225
    return-void
.end method

.method public resolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;)V
    .registers 13
    .parameter "localId"
    .parameter "syncID"
    .parameter "diffs"
    .parameter "diffsCursor"

    .prologue
    .line 4278
    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->updateOrResolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;Z)V

    .line 4279
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
    .line 4283
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4285
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select name from groups where _id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4287
    .local v3, oldName:Ljava/lang/String;
    const-string v5, "name"

    invoke-interface {p5, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p5, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4288
    .local v2, newName:Ljava/lang/String;
    const-string v5, "_sync_account"

    invoke-interface {p5, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p5, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4289
    .local v0, account:Ljava/lang/String;
    const-string v5, "_sync_id"

    invoke-interface {p5, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p5, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4291
    .local v4, syncId:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    invoke-virtual {v5, v3, v2, v0, v4}, Lcom/android/providers/contacts/ContactsProvider;->fixupPeopleStarredOnGroupRename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4293
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 4294
    const-string v5, "_sync_id"

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p5, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4295
    const-string v5, "_sync_time"

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p5, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4296
    const-string v5, "_sync_version"

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p5, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4297
    const-string v5, "_sync_account"

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p5, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4298
    const-string v5, "name"

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p5, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4299
    const-string v5, "notes"

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p5, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4300
    const-string v5, "system_id"

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p5, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4301
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    const-string v6, "_sync_dirty"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4302
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mTable:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->mValues:Landroid/content/ContentValues;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4303
    return-void
.end method

.method public updateRow(JLandroid/content/ContentProvider;Landroid/database/Cursor;)V
    .registers 12
    .parameter "localId"
    .parameter "diffs"
    .parameter "diffsCursor"

    .prologue
    .line 4272
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsProvider$GroupMerger;->updateOrResolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;Z)V

    .line 4273
    return-void
.end method
