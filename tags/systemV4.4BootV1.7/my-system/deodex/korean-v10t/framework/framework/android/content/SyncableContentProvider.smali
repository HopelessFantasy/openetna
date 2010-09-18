.class public abstract Landroid/content/SyncableContentProvider;
.super Landroid/content/ContentProvider;
.source "SyncableContentProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract changeRequiresLocalSync(Landroid/net/Uri;)Z
.end method

.method public abstract close()V
.end method

.method protected abstract deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected abstract deleteRowsForRemovedAccounts(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getContainsDiffs()Z
.end method

.method public abstract getDatabase()Landroid/database/sqlite/SQLiteDatabase;
.end method

.method protected abstract getMergers()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<+",
            "Landroid/content/AbstractTableMerger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSyncingAccount()Ljava/lang/String;
.end method

.method public abstract getTemporaryInstance()Landroid/content/SyncableContentProvider;
.end method

.method protected abstract insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public abstract isMergeCancelled()Z
.end method

.method protected abstract isTemporary()Z
.end method

.method public abstract merge(Landroid/content/SyncContext;Landroid/content/SyncableContentProvider;Landroid/content/TempProviderSyncResult;Landroid/content/SyncResult;)V
.end method

.method protected abstract onAccountsChanged([Ljava/lang/String;)V
.end method

.method protected abstract onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract onSyncCanceled()V
.end method

.method public abstract onSyncStart(Landroid/content/SyncContext;Ljava/lang/String;)V
.end method

.method public abstract onSyncStop(Landroid/content/SyncContext;Z)V
.end method

.method protected abstract queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract readSyncDataBytes(Ljava/lang/String;)[B
.end method

.method public abstract setContainsDiffs(Z)V
.end method

.method protected abstract updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected abstract upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;II)Z
.end method

.method public abstract wipeAccount(Ljava/lang/String;)V
.end method

.method public abstract writeSyncDataBytes(Ljava/lang/String;[B)V
.end method
