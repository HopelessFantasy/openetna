.class public Lcom/lge/sns/account/provider/AccountProvider$TableManageHelper;
.super Ljava/lang/Object;
.source "AccountProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/account/provider/AccountProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TableManageHelper"
.end annotation


# static fields
.field private static final SQL_CREATE_ACCOUNT_TABLE:Ljava/lang/String; = "CREATE TABLE account (_id INTEGER PRIMARY KEY AUTOINCREMENT,sns_id TEXT NOT NULL UNIQUE,title TEXT NOT NULL,url TEXT NOT NULL,updated INTEGER NOT NULL,published INTEGER NOT NULL,tab_order INTEGER NOT NULL DEFAULT -1,icon_image BLOB,user_id TEXT,user_password TEXT,remeber INTEGER NOT NULL DEFAULT 0,auto_updated INTEGER NOT NULL DEFAULT 0,account_uid INTEGER,notify INTEGER,login INTEGER,feed_updated INTEGER,friend_updated INTEGER );"

.field private static final SQL_CREATE_FEATURE_TABLE:Ljava/lang/String; = "CREATE TABLE account_feature (_id INTEGER PRIMARY KEY AUTOINCREMENT,sns_id TEXT NOT NULL,feature_code TEXT NOT NULL,feature_name TEXT NOT NULL,alertable INTEGER,protected INTEGER,restriction INTEGER );"

.field private static final SQL_CREATE_RESTRICTION_TABLE:Ljava/lang/String; = "CREATE TABLE feature_restriction (_id INTEGER PRIMARY KEY AUTOINCREMENT,sns_id TEXT NOT NULL,feature_code TEXT NOT NULL,restriction_code TEXT NOT NULL,restriction_name TEXT,restriction_value TEXT NOT NULL);"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 102
    const-string v0, "MyAccountProvider"

    const-string v1, "Create table account&account_feature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v0, "CREATE TABLE account (_id INTEGER PRIMARY KEY AUTOINCREMENT,sns_id TEXT NOT NULL UNIQUE,title TEXT NOT NULL,url TEXT NOT NULL,updated INTEGER NOT NULL,published INTEGER NOT NULL,tab_order INTEGER NOT NULL DEFAULT -1,icon_image BLOB,user_id TEXT,user_password TEXT,remeber INTEGER NOT NULL DEFAULT 0,auto_updated INTEGER NOT NULL DEFAULT 0,account_uid INTEGER,notify INTEGER,login INTEGER,feed_updated INTEGER,friend_updated INTEGER );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    const-string v0, "CREATE TABLE account_feature (_id INTEGER PRIMARY KEY AUTOINCREMENT,sns_id TEXT NOT NULL,feature_code TEXT NOT NULL,feature_name TEXT NOT NULL,alertable INTEGER,protected INTEGER,restriction INTEGER );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    const-string v0, "CREATE TABLE feature_restriction (_id INTEGER PRIMARY KEY AUTOINCREMENT,sns_id TEXT NOT NULL,feature_code TEXT NOT NULL,restriction_code TEXT NOT NULL,restriction_name TEXT,restriction_value TEXT NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static onReset(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 114
    const-string v0, "MyAccountProvider"

    const-string v1, "Reseing tables for account"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v0, "DROP TABLE IF EXISTS account"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    const-string v0, "DROP TABLE IF EXISTS account_feature"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    const-string v0, "DROP TABLE IF EXISTS feature_restriction"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    invoke-static {p0}, Lcom/lge/sns/account/provider/AccountProvider$TableManageHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 120
    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 111
    return-void
.end method
