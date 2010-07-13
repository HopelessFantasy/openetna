.class public Lcom/lge/sns/message/provider/MessageProvider$TableManageHelper;
.super Ljava/lang/Object;
.source "MessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/message/provider/MessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TableManageHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 149
    const-string v0, "CREATE TABLE MessageThreads (_id INTEGER PRIMARY KEY AUTOINCREMENT,sns_id TEXT NOT NULL,user_id TEXT NOT NULL,thread_id TEXT NOT NULL,author_id TEXT NOT NULL,author_name TEXT,title TEXT,summary TEXT,updated INTEGER NOT NULL,published INTEGER NOT NULL,unread INTEGER NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    const-string v0, "CREATE TABLE MessageItems (_id INTEGER PRIMARY KEY AUTOINCREMENT,sns_id TEXT NOT NULL,user_id TEXT NOT NULL,thread_id TEXT NOT NULL,message_id TEXT NOT NULL,author_id TEXT NOT NULL,author_name TEXT,subject TEXT,body TEXT,updated INTEGER NOT NULL,published INTEGER NOT NULL,unread INTEGER NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    const-string v0, "CREATE TABLE MessageRecipient (_id INTEGER PRIMARY KEY AUTOINCREMENT,sns_id TEXT NOT NULL,user_id TEXT NOT NULL,thread_id TEXT NOT NULL,message_id TEXT NOT NULL,recipient_id TEXT NOT NULL,recipient_name TEXT,recipient_display_name TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 190
    const-string v0, "CREATE TABLE MessageUpdatedTime (_id INTEGER PRIMARY KEY AUTOINCREMENT,sns_id TEXT NOT NULL,user_id TEXT NOT NULL,updated INTEGER NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public static onReset(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 257
    const-string v0, "DROP TABLE IF EXISTS MessageThreads"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 258
    const-string v0, "DROP TABLE IF EXISTS MessageItems"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 259
    const-string v0, "DROP TABLE IF EXISTS MessageRecipient"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 260
    const-string v0, "DROP TABLE IF EXISTS MessageUpdatedTime"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 262
    invoke-static {p0}, Lcom/lge/sns/message/provider/MessageProvider$TableManageHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 263
    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 249
    return-void
.end method
