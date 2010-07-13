.class public Lcom/lge/sns/feed/provider/FeedProvider$TableManageHelper;
.super Ljava/lang/Object;
.source "FeedProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/feed/provider/FeedProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TableManageHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 95
    const-string v0, "FeedProvider"

    const-string v1, "Creating tables for feed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v0, "CREATE TABLE feed (_id INTEGER PRIMARY KEY AUTOINCREMENT,feed_type TEXT NOT NULL,sns_id TEXT NOT NULL,user_id TEXT NOT NULL,user_name TEXT,display_name TEXT,published INTEGER NOT NULL,opened INTEGER,data_link TEXT,subdata_link TEXT,summary TEXT,data_uri TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static onReset(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 104
    const-string v0, "FeedProvider"

    const-string v1, "Reseting tables for feed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v0, "DROP TABLE IF EXISTS feed"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    invoke-static {p0}, Lcom/lge/sns/feed/provider/FeedProvider$TableManageHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 108
    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 101
    return-void
.end method
