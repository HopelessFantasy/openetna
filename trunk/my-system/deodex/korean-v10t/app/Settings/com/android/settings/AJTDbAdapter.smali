.class public Lcom/android/settings/AJTDbAdapter;
.super Ljava/lang/Object;
.source "AJTDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AJTDbAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table XTRA (_id integer primary key autoincrement, connect booleannot null, time long not null, use_time long not null);"

.field public static final DATABASE_MAIN_TABLE:Ljava/lang/String; = "XTRA"

.field private static final DATABASE_NAME:Ljava/lang/String; = "XTRA"

.field private static final DATABASE_VERSION:I = 0x3

.field public static final KEY_CONNECT:Ljava/lang/String; = "connect"

.field public static final KEY_ROWID:Ljava/lang/String; = "_id"

.field public static final KEY_TIME:Ljava/lang/String; = "time"

.field public static final KEY_USE_TIME:Ljava/lang/String; = "use_time"


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/android/settings/AJTDbAdapter$DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "ctx"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/settings/AJTDbAdapter;->mCtx:Landroid/content/Context;

    .line 56
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/AJTDbAdapter;->mDbHelper:Lcom/android/settings/AJTDbAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/settings/AJTDbAdapter$DatabaseHelper;->close()V

    .line 70
    return-void
.end method

.method public dataInsert(Landroid/content/ContentValues;)J
    .registers 5
    .parameter "initialValues"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/AJTDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "XTRA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public dataSearch(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "DB_TABLE"

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-object v0, p0, Lcom/android/settings/AJTDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "XTRA"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "connect"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "time"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "use_time"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public dataUpdate(Landroid/content/ContentValues;)Z
    .registers 5
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lcom/android/settings/AJTDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "XTRA"

    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public open()Lcom/android/settings/AJTDbAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v1, Lcom/android/settings/AJTDbAdapter$DatabaseHelper;

    iget-object v2, p0, Lcom/android/settings/AJTDbAdapter;->mCtx:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/AJTDbAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/AJTDbAdapter;->mDbHelper:Lcom/android/settings/AJTDbAdapter$DatabaseHelper;

    .line 61
    :try_start_9
    iget-object v1, p0, Lcom/android/settings/AJTDbAdapter;->mDbHelper:Lcom/android/settings/AJTDbAdapter$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/settings/AJTDbAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AJTDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_11} :catch_12

    .line 65
    :goto_11
    return-object p0

    .line 62
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 63
    .local v0, ex:Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Lcom/android/settings/AJTDbAdapter;->mDbHelper:Lcom/android/settings/AJTDbAdapter$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/settings/AJTDbAdapter$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AJTDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_11
.end method
