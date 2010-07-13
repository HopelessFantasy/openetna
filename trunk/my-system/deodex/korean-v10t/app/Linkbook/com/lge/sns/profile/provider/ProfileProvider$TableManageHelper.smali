.class public Lcom/lge/sns/profile/provider/ProfileProvider$TableManageHelper;
.super Ljava/lang/Object;
.source "ProfileProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/provider/ProfileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TableManageHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 173
    const-string v0, "ProfileProvider"

    const-string v1, "Creating tables for profile"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v0, "CREATE TABLE profile (_id INTEGER PRIMARY KEY AUTOINCREMENT,sns_id TEXT NOT NULL,user_id TEXT NOT NULL,user_name TEXT,display_name TEXT,avatar_link TEXT,avatar BLOB,email TEXT,phone_number TEXT,other_phone_number TEXT,gender TEXT,status TEXT,birth_date_time TEXT,birthday TEXT,hometown TEXT,politics TEXT,interests TEXT,activities TEXT,music TEXT,affiliations TEXT,follower_count INTEGER,following_count INTEGER,friend_count INTEGER,profile_updated INTEGER,comment_list_updated INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 176
    const-string v0, "CREATE TABLE profile_comment (_id INTEGER PRIMARY KEY AUTOINCREMENT,sns_id TEXT NOT NULL,user_id TEXT NOT NULL,user_name TEXT,display_name TEXT,published INTEGER,comment_id INTEGER,comment TEXT,profile_id INTEGER REFERENCES profile (_id) ON DELETE CASCADE);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    const-string v0, "CREATE TABLE friend_request (_id INTEGER PRIMARY KEY AUTOINCREMENT,sns_id TEXT NOT NULL,user_id TEXT NOT NULL,user_name TEXT,display_name TEXT,published INTEGER NOT NULL,request_id TEXT NOT NULL,request_message TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public static onReset(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 185
    const-string v0, "ProfileProvider"

    const-string v1, "Reseting tables for profile"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v0, "DROP TABLE IF EXISTS profile"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 188
    const-string v0, "DROP TABLE IF EXISTS profile_comment"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    const-string v0, "DROP TABLE IF EXISTS friend_request"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 191
    invoke-static {p0}, Lcom/lge/sns/profile/provider/ProfileProvider$TableManageHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 192
    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 182
    return-void
.end method
