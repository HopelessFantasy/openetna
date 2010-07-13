.class Lcom/android/browser/BrowserCookiesProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BrowserCookiesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserCookiesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 83
    const-string v0, "webview.db"

    const/4 v1, 0x0

    const/16 v2, 0x13

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 84
    iput-object p1, p0, Lcom/android/browser/BrowserCookiesProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 85
    const-string v0, "BrowserCookiesProvider"

    const-string v1, "DatabaseHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 90
    const-string v0, "BrowserCookiesProvider"

    const-string v1, "DatabaseHelper::onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 95
    const-string v0, "BrowserCookiesProvider"

    const-string v1, "DatabaseHelper::onUpgrade"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method
