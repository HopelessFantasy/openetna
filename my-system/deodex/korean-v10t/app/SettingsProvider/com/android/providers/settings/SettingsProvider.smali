.class public Lcom/android/providers/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TABLE_OLD_FAVORITES:Ljava/lang/String; = "old_favorites"

.field private static final TAG:Ljava/lang/String; = "SettingsProvider"


# instance fields
.field private mBackupManager:Landroid/backup/BackupManager;

.field private mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 56
    return-void
.end method

.method private checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V
    .registers 9
    .parameter "args"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v6, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v5, "android.permission.WRITE_GSERVICES"

    .line 168
    const-string v0, "secure"

    iget-object v1, p1, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2e

    .line 172
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denial: writing to secure settings requires %1$s"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    aput-object v6, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_2e
    const-string v0, "gservices"

    iget-object v1, p1, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_GSERVICES"

    invoke-virtual {v0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_56

    .line 181
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denial: writing to gservices settings requires %1$s"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "android.permission.WRITE_GSERVICES"

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_56
    return-void
.end method

.method private getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;
    .registers 10
    .parameter "tableUri"
    .parameter "values"
    .parameter "rowId"

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_24

    .line 105
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_24
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    .local v1, table:Ljava/lang/String;
    const-string v2, "gservices"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    const-string v2, "system"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    const-string v2, "secure"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 110
    :cond_47
    const-string v2, "name"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, name:Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 113
    .end local v0           #name:Ljava/lang/String;
    :goto_51
    return-object v2

    :cond_52
    invoke-static {p1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_51
.end method

.method private parseProviderList(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .registers 16
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 270
    const-string v0, "value"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 271
    .local v12, value:Ljava/lang/String;
    const/4 v9, 0x0

    .line 272
    .local v9, newProviders:Ljava/lang/String;
    if-eqz v12, :cond_85

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_85

    .line 273
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 274
    .local v10, prefix:C
    const/16 v0, 0x2b

    if-eq v10, v0, :cond_1d

    const/16 v0, 0x2d

    if-ne v10, v0, :cond_85

    .line 276
    :cond_1d
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 279
    const-string v11, ""

    .line 280
    .local v11, providers:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "value"

    aput-object v1, v2, v0

    .line 281
    .local v2, columns:[Ljava/lang/String;
    const-string v3, "name=\'location_providers_allowed\'"

    .line 282
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 283
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4a

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4a

    .line 285
    :try_start_3f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 286
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_87

    move-result-object v11

    .line 288
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 292
    :cond_4a
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 293
    .local v8, index:I
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    add-int v7, v8, v0

    .line 295
    .local v7, end:I
    if-lez v8, :cond_62

    const/4 v0, 0x1

    sub-int v0, v8, v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_62

    const/4 v8, -0x1

    .line 296
    :cond_62
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_71

    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_71

    const/4 v8, -0x1

    .line 298
    :cond_71
    const/16 v0, 0x2b

    if-ne v10, v0, :cond_a4

    if-gez v8, :cond_a4

    .line 300
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8c

    .line 301
    move-object v9, v12

    .line 320
    :cond_7e
    :goto_7e
    if-eqz v9, :cond_85

    .line 321
    const-string v0, "value"

    invoke-virtual {p2, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #end:I
    .end local v8           #index:I
    .end local v10           #prefix:C
    .end local v11           #providers:Ljava/lang/String;
    :cond_85
    const/4 v0, 0x1

    :goto_86
    return v0

    .line 288
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v10       #prefix:C
    .restart local v11       #providers:Ljava/lang/String;
    :catchall_87
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 303
    .restart local v7       #end:I
    .restart local v8       #index:I
    :cond_8c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_7e

    .line 305
    :cond_a4
    const/16 v0, 0x2d

    if-ne v10, v0, :cond_d7

    if-ltz v8, :cond_d7

    .line 308
    if-lez v8, :cond_ae

    add-int/lit8 v8, v8, -0x1

    .line 309
    :cond_ae
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_b6

    add-int/lit8 v7, v7, 0x1

    .line 311
    :cond_b6
    const/4 v0, 0x0

    invoke-virtual {v11, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 312
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_7e

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_7e

    .line 317
    :cond_d7
    const/4 v0, 0x0

    goto :goto_86
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .registers 12
    .parameter "uri"

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, backedUpDataChanged:Z
    const/4 v2, 0x0

    .local v2, property:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 131
    .local v3, table:Ljava/lang/String;
    const-string v6, "system"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 132
    const-string v2, "sys.settings_system_version"

    .line 133
    const/4 v0, 0x1

    .line 141
    :cond_18
    :goto_18
    if-eqz v2, :cond_2b

    .line 142
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long v4, v6, v8

    .line 144
    .local v4, version:J
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .end local v4           #version:J
    :cond_2b
    if-eqz v0, :cond_32

    .line 149
    iget-object v6, p0, Lcom/android/providers/settings/SettingsProvider;->mBackupManager:Landroid/backup/BackupManager;

    invoke-virtual {v6}, Landroid/backup/BackupManager;->dataChanged()V

    .line 153
    :cond_32
    const-string v6, "notify"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, notify:Ljava/lang/String;
    if-eqz v1, :cond_42

    const-string v6, "true"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 155
    :cond_42
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 160
    :cond_4e
    return-void

    .line 134
    .end local v1           #notify:Ljava/lang/String;
    :cond_4f
    const-string v6, "secure"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 135
    const-string v2, "sys.settings_secure_version"

    .line 136
    const/4 v0, 0x1

    goto :goto_18

    .line 137
    :cond_5b
    const-string v6, "gservices"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 138
    const-string v2, "sys.settings_gservices_version"

    goto :goto_18
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 12
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v8, 0x0

    .line 240
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 241
    .local v0, args:Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    const-string v4, "favorites"

    iget-object v5, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    move v4, v8

    .line 260
    :goto_11
    return v4

    .line 244
    :cond_12
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    .line 246
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 247
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 249
    :try_start_1e
    array-length v3, p2

    .line 250
    .local v3, numValues:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_20
    if-ge v2, v3, :cond_39

    .line 251
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v6, p2, v2

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_44

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_36

    .line 256
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v4, v8

    goto :goto_11

    .line 250
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 254
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_44

    .line 256
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 259
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;)V

    .line 260
    array-length v4, p2

    goto :goto_11

    .line 256
    .end local v2           #i:I
    .end local v3           #numValues:I
    :catchall_44
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const-string v5, "favorites"

    .line 356
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 357
    .local v0, args:Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    const-string v3, "favorites"

    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 358
    const/4 v3, 0x0

    .line 368
    :goto_12
    return v3

    .line 359
    :cond_13
    const-string v3, "old_favorites"

    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 360
    const-string v3, "favorites"

    iput-object v5, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    .line 362
    :cond_21
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    .line 364
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 365
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 366
    .local v1, count:I
    if-lez v1, :cond_39

    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;)V

    :cond_39
    move v3, v1

    .line 368
    goto :goto_12
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 230
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 231
    .local v0, args:Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    iget-object v1, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    :goto_23
    return-object v1

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_23
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 11
    .parameter "url"
    .parameter "initialValues"

    .prologue
    const/4 v7, 0x0

    .line 331
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 332
    .local v0, args:Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    const-string v5, "favorites"

    iget-object v6, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    move-object v5, v7

    .line 351
    :goto_11
    return-object v5

    .line 335
    :cond_12
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    .line 339
    const-string v5, "name"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, name:Ljava/lang/String;
    const-string v5, "location_providers_allowed"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 341
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->parseProviderList(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v5

    if-nez v5, :cond_2b

    move-object v5, v7

    goto :goto_11

    .line 344
    :cond_2b
    iget-object v5, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 345
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v5, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 346
    .local v3, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_3f

    move-object v5, v7

    goto :goto_11

    .line 349
    :cond_3f
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/providers/settings/SettingsProvider;->getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;

    move-result-object p1

    .line 350
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;)V

    move-object v5, p1

    .line 351
    goto :goto_11
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 189
    new-instance v0, Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    .line 190
    new-instance v0, Landroid/backup/BackupManager;

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mBackupManager:Landroid/backup/BackupManager;

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v4

    .line 396
    .local v4, ringtoneType:I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_44

    .line 397
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 400
    .local v1, context:Landroid/content/Context;
    invoke-static {v1, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 401
    .local v5, soundUri:Landroid/net/Uri;
    if-nez v5, :cond_15

    .line 403
    invoke-static {v1}, Landroid/media/RingtoneManager;->getValidRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    .line 406
    :cond_15
    if-eqz v5, :cond_44

    .line 408
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, authority:Ljava/lang/String;
    const-string v6, "drm"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 410
    .local v3, isDrmAuthority:Z
    if-nez v3, :cond_2b

    const-string v6, "media"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 412
    :cond_2b
    if-eqz v3, :cond_30

    .line 417
    :try_start_2d
    invoke-static {v1}, Landroid/provider/DrmStore;->enforceAccessDrmPermission(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/SecurityException; {:try_start_2d .. :try_end_30} :catch_39

    .line 423
    :cond_30
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 428
    .end local v0           #authority:Ljava/lang/String;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #isDrmAuthority:Z
    .end local v5           #soundUri:Landroid/net/Uri;
    :goto_38
    return-object v6

    .line 418
    .restart local v0       #authority:Ljava/lang/String;
    .restart local v1       #context:Landroid/content/Context;
    .restart local v3       #isDrmAuthority:Z
    .restart local v5       #soundUri:Landroid/net/Uri;
    :catch_39
    move-exception v2

    .line 419
    .local v2, e:Ljava/lang/SecurityException;
    new-instance v6, Ljava/io/FileNotFoundException;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 428
    .end local v0           #authority:Ljava/lang/String;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #e:Ljava/lang/SecurityException;
    .end local v3           #isDrmAuthority:Z
    .end local v5           #soundUri:Landroid/net/Uri;
    :cond_44
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    goto :goto_38
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 22
    .parameter "url"
    .parameter "select"
    .parameter "where"
    .parameter "whereArgs"
    .parameter "sort"

    .prologue
    .line 196
    new-instance v12, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    move-object v0, v12

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 197
    .local v12, args:Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/providers/settings/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 204
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "favorites"

    iget-object v7, v12, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 205
    const/4 v6, 0x0

    .line 223
    :goto_20
    return-object v6

    .line 206
    :cond_21
    const-string v6, "old_favorites"

    iget-object v7, v12, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 207
    const-string v6, "favorites"

    iput-object v6, v12, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    .line 208
    const-string v6, "PRAGMA table_info(favorites);"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 209
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_4a

    .line 210
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_47

    const/4 v6, 0x1

    move v14, v6

    .line 211
    .local v14, exists:Z
    :goto_40
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 212
    if-nez v14, :cond_4c

    const/4 v6, 0x0

    goto :goto_20

    .line 210
    .end local v14           #exists:Z
    :cond_47
    const/4 v6, 0x0

    move v14, v6

    goto :goto_40

    .line 214
    :cond_4a
    const/4 v6, 0x0

    goto :goto_20

    .line 218
    .end local v13           #cursor:Landroid/database/Cursor;
    :cond_4c
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 219
    .local v4, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v6, v12, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 221
    iget-object v7, v12, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v8, v12, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p2

    move-object/from16 v11, p5

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 222
    .local v15, ret:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object v0, v15

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v6, v15

    .line 223
    goto :goto_20
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "url"
    .parameter "initialValues"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 373
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/providers/settings/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 374
    .local v0, args:Lcom/android/providers/settings/SettingsProvider$SqlArguments;
    const-string v3, "favorites"

    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 375
    const/4 v3, 0x0

    .line 383
    :goto_10
    return v3

    .line 377
    :cond_11
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->checkWritePermissions(Lcom/android/providers/settings/SettingsProvider$SqlArguments;)V

    .line 379
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mOpenHelper:Lcom/android/providers/settings/DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 380
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/providers/settings/SettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 381
    .local v1, count:I
    if-lez v1, :cond_29

    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->sendNotify(Landroid/net/Uri;)V

    :cond_29
    move v3, v1

    .line 383
    goto :goto_10
.end method
