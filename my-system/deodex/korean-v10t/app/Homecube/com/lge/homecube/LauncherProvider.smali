.class public Lcom/lge/homecube/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/homecube/LauncherProvider$SqlArguments;,
        Lcom/lge/homecube/LauncherProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.lge.homecube.settings"

.field static final CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri; = null

.field private static final DATABASE_NAME:Ljava/lang/String; = "launcher.db"

.field private static final DATABASE_VERSION:I = 0x4

.field static final EXTRA_BIND_HOMECUBE:Ljava/lang/String; = "com.lge.homecube"

.field static final EXTRA_BIND_SOURCES:Ljava/lang/String; = "com.android.launcher.settings.bindsources"

.field static final EXTRA_BIND_TARGETS:Ljava/lang/String; = "com.android.launcher.settings.bindtargets"

.field private static final LOGD:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "LauncherProvider"

.field static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    const-string v0, "content://com.lge.homecube.settings/appWidgetReset"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/homecube/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 1036
    return-void
.end method

.method static buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;
    .registers 6
    .parameter "column"
    .parameter "values"

    .prologue
    .line 1026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1027
    .local v1, selectWhere:Ljava/lang/StringBuilder;
    array-length v2, p1

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_24

    .line 1028
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1029
    if-lez v0, :cond_21

    .line 1030
    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 1033
    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .registers 5
    .parameter "uri"

    .prologue
    .line 178
    const-string v1, "notify"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, notify:Ljava/lang/String;
    if-eqz v0, :cond_10

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 180
    :cond_10
    invoke-virtual {p0}, Lcom/lge/homecube/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 182
    :cond_1c
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 11
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 137
    new-instance v0, Lcom/lge/homecube/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/lge/homecube/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 139
    .local v0, args:Lcom/lge/homecube/LauncherProvider$SqlArguments;
    iget-object v4, p0, Lcom/lge/homecube/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 140
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 142
    :try_start_e
    array-length v3, p2

    .line 143
    .local v3, numValues:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_10
    if-ge v2, v3, :cond_29

    .line 144
    iget-object v4, v0, Lcom/lge/homecube/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v6, p2, v2

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_34

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_26

    const/4 v4, 0x0

    .line 148
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 152
    :goto_25
    return v4

    .line 143
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 146
    :cond_29
    :try_start_29
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_34

    .line 148
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 151
    invoke-direct {p0, p1}, Lcom/lge/homecube/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 152
    array-length v4, p2

    goto :goto_25

    .line 148
    .end local v2           #i:I
    .end local v3           #numValues:I
    :catchall_34
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 157
    new-instance v0, Lcom/lge/homecube/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/lge/homecube/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 159
    .local v0, args:Lcom/lge/homecube/LauncherProvider$SqlArguments;
    iget-object v3, p0, Lcom/lge/homecube/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 160
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/lge/homecube/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/homecube/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/lge/homecube/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 161
    .local v1, count:I
    if-lez v1, :cond_1a

    invoke-direct {p0, p1}, Lcom/lge/homecube/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 163
    :cond_1a
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 98
    new-instance v0, Lcom/lge/homecube/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/lge/homecube/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 99
    .local v0, args:Lcom/lge/homecube/LauncherProvider$SqlArguments;
    iget-object v1, v0, Lcom/lge/homecube/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/lge/homecube/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    :goto_23
    return-object v1

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/lge/homecube/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_23
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v6, 0x0

    .line 123
    new-instance v0, Lcom/lge/homecube/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/lge/homecube/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 125
    .local v0, args:Lcom/lge/homecube/LauncherProvider$SqlArguments;
    iget-object v4, p0, Lcom/lge/homecube/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 126
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v4, v0, Lcom/lge/homecube/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v4, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 127
    .local v2, rowId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1a

    move-object v4, v6

    .line 132
    :goto_19
    return-object v4

    .line 129
    :cond_1a
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 130
    invoke-direct {p0, p1}, Lcom/lge/homecube/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    move-object v4, p1

    .line 132
    goto :goto_19
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 92
    new-instance v0, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/lge/homecube/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/homecube/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/homecube/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 110
    new-instance v8, Lcom/lge/homecube/LauncherProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/lge/homecube/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 111
    .local v8, args:Lcom/lge/homecube/LauncherProvider$SqlArguments;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 112
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, v8, Lcom/lge/homecube/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/lge/homecube/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 115
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v8, Lcom/lge/homecube/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/lge/homecube/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 116
    .local v9, result:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/lge/homecube/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 118
    return-object v9
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 168
    new-instance v0, Lcom/lge/homecube/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/lge/homecube/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 170
    .local v0, args:Lcom/lge/homecube/LauncherProvider$SqlArguments;
    iget-object v3, p0, Lcom/lge/homecube/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 171
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/lge/homecube/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/homecube/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/lge/homecube/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 172
    .local v1, count:I
    if-lez v1, :cond_1a

    invoke-direct {p0, p1}, Lcom/lge/homecube/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 174
    :cond_1a
    return v1
.end method
