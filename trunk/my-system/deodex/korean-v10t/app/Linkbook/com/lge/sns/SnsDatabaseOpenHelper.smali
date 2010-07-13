.class public Lcom/lge/sns/SnsDatabaseOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SnsDatabaseOpenHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "lge_linkbook.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SnsDatabaseOpenHelper"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 34
    const-string v0, "lge_linkbook.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 39
    const-string v0, "SnsDatabaseOpenHelper"

    const-string v1, "Create tables for LinkBook"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {p1}, Lcom/lge/sns/account/provider/AccountProvider$TableManageHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 42
    invoke-static {p1}, Lcom/lge/sns/message/provider/MessageProvider$TableManageHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 43
    invoke-static {p1}, Lcom/lge/sns/profile/provider/ProfileProvider$TableManageHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 44
    invoke-static {p1}, Lcom/lge/sns/media/provider/MediaProvider$TableManageHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 45
    invoke-static {p1}, Lcom/lge/sns/feed/provider/FeedProvider$TableManageHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 50
    const-string v0, "SnsDatabaseOpenHelper"

    const-string v1, "Upgrade tables for LinkBook"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {p1, p2, p3}, Lcom/lge/sns/account/provider/AccountProvider$TableManageHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 53
    invoke-static {p1, p2, p3}, Lcom/lge/sns/message/provider/MessageProvider$TableManageHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 54
    invoke-static {p1, p2, p3}, Lcom/lge/sns/profile/provider/ProfileProvider$TableManageHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 55
    invoke-static {p1, p2, p3}, Lcom/lge/sns/media/provider/MediaProvider$TableManageHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 56
    invoke-static {p1, p2, p3}, Lcom/lge/sns/feed/provider/FeedProvider$TableManageHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 57
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 61
    const-string v1, "SnsDatabaseOpenHelper"

    const-string v2, "Reset tables for LinkBook"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 64
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/lge/sns/account/provider/AccountProvider$TableManageHelper;->onReset(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    invoke-static {v0}, Lcom/lge/sns/feed/provider/FeedProvider$TableManageHelper;->onReset(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 66
    invoke-static {v0}, Lcom/lge/sns/message/provider/MessageProvider$TableManageHelper;->onReset(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 67
    invoke-static {v0}, Lcom/lge/sns/profile/provider/ProfileProvider$TableManageHelper;->onReset(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 68
    invoke-static {v0}, Lcom/lge/sns/media/provider/MediaProvider$TableManageHelper;->onReset(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 69
    return-void
.end method
