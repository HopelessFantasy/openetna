.class Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;
.super Landroid/content/AbstractTableMerger;
.source "SubscribedFeedsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedMerger"
.end annotation


# instance fields
.field private mValues:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;)V
    .registers 8
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->this$0:Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;

    .line 291
    invoke-virtual {p1}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->access$100()Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->access$300()Landroid/net/Uri;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/AbstractTableMerger;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V

    .line 289
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    .line 292
    return-void
.end method


# virtual methods
.method public deleteRow(Landroid/database/Cursor;)V
    .registers 11
    .parameter "localCursor"

    .prologue
    const/4 v5, 0x0

    .line 352
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 354
    .local v2, localPersonId:J
    iget-object v4, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 355
    iget-object v4, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string v6, "_sync_dirty"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    iget-object v6, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string v7, "_sync_id"

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v4, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string v7, "_sync_time"

    move-object v0, v5

    check-cast v0, Ljava/lang/Long;

    move-object v6, v0

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 358
    iget-object v4, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string v7, "_sync_version"

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v4, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->this$0:Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;

    invoke-virtual {v4}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 360
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v4, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mTable:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 361
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 362
    return-void
.end method

.method public insertRow(Landroid/content/ContentProvider;Landroid/database/Cursor;)V
    .registers 7
    .parameter "diffs"
    .parameter "diffsCursor"

    .prologue
    const-string v3, "_sync_id"

    .line 303
    iget-object v1, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->this$0:Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;

    invoke-virtual {v1}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 307
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 308
    const-string v1, "_sync_id"

    iget-object v1, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p2, v3, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 310
    const-string v1, "_sync_account"

    iget-object v2, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p2, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 312
    const-string v1, "_sync_version"

    iget-object v2, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p2, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 314
    iget-object v1, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mDeletedTable:Ljava/lang/String;

    const-string v2, "_sync_id"

    iget-object v2, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 315
    return-void
.end method

.method protected notifyChanges()V
    .registers 5

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->this$0:Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;

    invoke-virtual {v0}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->access$100()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 299
    return-void
.end method

.method public resolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;)V
    .registers 13
    .parameter "localPersonID"
    .parameter "syncID"
    .parameter "diffs"
    .parameter "diffsCursor"

    .prologue
    .line 326
    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->updateOrResolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;Z)V

    .line 327
    return-void
.end method

.method protected updateOrResolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;Z)V
    .registers 12
    .parameter "localPersonID"
    .parameter "syncID"
    .parameter "diffs"
    .parameter "diffsCursor"
    .parameter "conflicts"

    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 333
    const-string v1, "_sync_id"

    iget-object v2, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p5, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 335
    const-string v1, "_sync_time"

    iget-object v2, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p5, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 337
    const-string v1, "_sync_version"

    iget-object v2, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p5, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 339
    iget-object v1, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string v2, "_sync_dirty"

    if-eqz p6, :cond_4a

    const/4 v3, 0x1

    :goto_21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    iget-object v1, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->this$0:Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;

    invoke-virtual {v1}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 341
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mTable:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 343
    return-void

    .line 339
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_4a
    const/4 v3, 0x0

    goto :goto_21
.end method

.method public updateRow(JLandroid/content/ContentProvider;Landroid/database/Cursor;)V
    .registers 12
    .parameter "localPersonID"
    .parameter "diffs"
    .parameter "diffsCursor"

    .prologue
    .line 320
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->updateOrResolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;Z)V

    .line 321
    return-void
.end method
