.class public Lcom/lge/sns/media/provider/MediaProvider$TableManageHelper;
.super Ljava/lang/Object;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/media/provider/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TableManageHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 143
    const-string v0, "MediaProvider"

    const-string v1, "Creating tables for media"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v0, "CREATE TABLE media_folder (_id INTEGER PRIMARY KEY AUTOINCREMENT,sns_id TEXT NOT NULL,user_id TEXT NOT NULL,folder_id TEXT NOT NULL,folder_name TEXT,published INTEGER NOT NULL,updated INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 146
    const-string v0, "CREATE TABLE media_file (_id INTEGER PRIMARY KEY AUTOINCREMENT,sns_id TEXT NOT NULL,user_id TEXT NOT NULL,user_name TEXT,display_name TEXT,folder_id TEXT NOT NULL,file_id TEXT NOT NULL,title TEXT,description TEXT,mime_type TEXT,link TEXT,thumbnail_link TEXT,thumbnail BLOB,published INTEGER NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    const-string v0, "CREATE TABLE media_comment (_id INTEGER PRIMARY KEY AUTOINCREMENT,sns_id TEXT NOT NULL,user_id TEXT NOT NULL,user_name TEXT,display_name TEXT,comment_id TEXT NOT NULL,comment TEXT,published INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public static onReset(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 155
    const-string v0, "MediaProvider"

    const-string v1, "Reseting tables for media"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v0, "DROP TABLE IF EXISTS media_folder"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    const-string v0, "DROP TABLE IF EXISTS media_file"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    const-string v0, "DROP TABLE IF EXISTS media_comment"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    invoke-static {p0}, Lcom/lge/sns/media/provider/MediaProvider$TableManageHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 162
    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 152
    return-void
.end method
