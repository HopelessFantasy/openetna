.class public Landroid/database/sqlite/SQLiteContentHelper;
.super Ljava/lang/Object;
.source "SQLiteContentHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlobColumnAsAssetFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 7
    .parameter "db"
    .parameter "sql"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 49
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/database/sqlite/SQLiteContentHelper;->simpleQueryForBlobMemoryFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v1

    .line 50
    .local v1, file:Landroid/os/MemoryFile;
    if-nez v1, :cond_1a

    .line 51
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "No results."

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_e

    .line 54
    .end local v1           #file:Landroid/os/MemoryFile;
    :catch_e
    move-exception v2

    move-object v0, v2

    .line 55
    .local v0, ex:Ljava/io/IOException;
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #file:Landroid/os/MemoryFile;
    :cond_1a
    :try_start_1a
    invoke-static {v1}, Landroid/content/res/AssetFileDescriptor;->fromMemoryFile(Landroid/os/MemoryFile;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_e

    move-result-object v2

    return-object v2
.end method

.method private static simpleQueryForBlobMemoryFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/MemoryFile;
    .registers 9
    .parameter "db"
    .parameter "sql"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 72
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_9

    move-object v3, v4

    .line 86
    :goto_8
    return-object v3

    .line 76
    :cond_9
    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_35

    move-result v3

    if-nez v3, :cond_14

    .line 88
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v3, v4

    .line 77
    goto :goto_8

    .line 79
    :cond_14
    const/4 v3, 0x0

    :try_start_15
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_35

    move-result-object v0

    .line 80
    .local v0, bytes:[B
    if-nez v0, :cond_20

    .line 88
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v3, v4

    .line 81
    goto :goto_8

    .line 83
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/MemoryFile;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-direct {v2, v3, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 84
    .local v2, file:Landroid/os/MemoryFile;
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 85
    invoke-virtual {v2}, Landroid/os/MemoryFile;->deactivate()V
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_35

    .line 88
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v3, v2

    .line 86
    goto :goto_8

    .line 88
    .end local v0           #bytes:[B
    .end local v2           #file:Landroid/os/MemoryFile;
    :catchall_35
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3
.end method
