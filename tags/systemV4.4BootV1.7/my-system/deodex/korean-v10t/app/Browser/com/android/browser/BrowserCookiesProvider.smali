.class public Lcom/android/browser/BrowserCookiesProvider;
.super Landroid/content/ContentProvider;
.source "BrowserCookiesProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserCookiesProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_VERSION:I = 0x13

.field private static final ORDER_BY:Ljava/lang/String; = "visits DESC, date DESC"

.field private static final TABLE_NAMES:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BrowserCookiesProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher; = null

.field private static final URI_MATCH_COOKIES:I = 0x0

.field private static final URI_MATCH_COOKIES_ID:I = 0x1

.field private static final sDatabaseName:Ljava/lang/String; = "webview.db"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "cookies"

    const-string v4, "browserCookies"

    .line 40
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "cookies"

    aput-object v5, v0, v2

    sput-object v0, Lcom/android/browser/BrowserCookiesProvider;->TABLE_NAMES:[Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/browser/BrowserCookiesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 52
    sget-object v0, Lcom/android/browser/BrowserCookiesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browserCookies"

    const-string v1, "cookies"

    invoke-virtual {v0, v4, v5, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    sget-object v0, Lcom/android/browser/BrowserCookiesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browserCookies"

    const-string v1, "cookies/#"

    invoke-virtual {v0, v4, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const-string v1, "BrowserCookiesProvider"

    .line 75
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserCookiesProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    const-string v0, "BrowserCookiesProvider"

    const-string v0, "BrowserCookiesProvider"

    invoke-static {v1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 183
    const-string v0, "BrowserCookiesProvider"

    const-string v1, "BroserProvider::delete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .parameter "url"

    .prologue
    .line 171
    const-string v0, "BrowserCookiesProvider"

    const-string v1, "BroserProvider::getType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 177
    const-string v0, "BrowserCookiesProvider"

    const-string v1, "BroserProvider::insert"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const-string v4, "BrowserCookiesProvider"

    .line 102
    const-string v0, "BrowserCookiesProvider"

    const-string v0, "BroserProvider::onCreate"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/android/browser/BrowserCookiesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "webview.db"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserCookiesProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 107
    iget-object v0, p0, Lcom/android/browser/BrowserCookiesProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_24

    .line 108
    const-string v0, "BrowserCookiesProvider"

    const-string v0, "failed to open database"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 111
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x1

    goto :goto_23
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 24
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 119
    sget-object v5, Lcom/android/browser/BrowserCookiesProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v16

    .line 120
    .local v16, match:I
    const-string v5, "BrowserCookiesProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BroserProvider::query url=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] match="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v5, -0x1

    move/from16 v0, v16

    move v1, v5

    if-ne v0, v1, :cond_3f

    .line 122
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unknown URL"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 126
    :cond_3f
    if-nez v16, :cond_107

    .line 127
    const-string v5, "BrowserCookiesProvider"

    const-string v6, "query:0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v7, 0x0

    .line 130
    .local v7, projection:[Ljava/lang/String;
    if-eqz p2, :cond_70

    move-object/from16 v0, p2

    array-length v0, v0

    move v5, v0

    if-lez v5, :cond_70

    .line 131
    move-object/from16 v0, p2

    array-length v0, v0

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    .line 132
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move v8, v0

    move-object/from16 v0, p2

    move v1, v5

    move-object v2, v7

    move v3, v6

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    move-object/from16 v0, p2

    array-length v0, v0

    move v5, v0

    const-string v6, "_id AS _id"

    aput-object v6, v7, v5

    .line 136
    :cond_70
    new-instance v17, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    move-object/from16 v0, v17

    move v1, v5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 137
    .local v17, whereClause:Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    move/from16 v0, v16

    move v1, v5

    if-ne v0, v1, :cond_a0

    .line 138
    const-string v5, "(_id = "

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_a0
    if-eqz p3, :cond_cd

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_cd

    .line 144
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_b6

    .line 145
    const-string v5, " AND "

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_b6
    const/16 v5, 0x28

    move-object/from16 v0, v17

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const/16 v5, 0x29

    move-object/from16 v0, v17

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    :cond_cd
    const/4 v14, 0x0

    .line 154
    .local v14, c:Landroid/database/Cursor;
    :try_start_ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserCookiesProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    sget-object v6, Lcom/android/browser/BrowserCookiesProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v8, v16, 0xa

    aget-object v6, v6, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_e7} :catch_f9

    move-result-object v14

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserCookiesProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v0, v14

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v5, v14

    .line 166
    .end local v7           #projection:[Ljava/lang/String;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v17           #whereClause:Ljava/lang/StringBuilder;
    :goto_f8
    return-object v5

    .line 157
    .restart local v7       #projection:[Ljava/lang/String;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v17       #whereClause:Ljava/lang/StringBuilder;
    :catch_f9
    move-exception v5

    move-object v15, v5

    .line 158
    .local v15, e:Ljava/lang/Exception;
    const-string v5, "BrowserCookiesProvider"

    const-string v6, "BroserProvider::query exception"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    const/4 v5, 0x0

    goto :goto_f8

    .line 166
    .end local v7           #projection:[Ljava/lang/String;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v15           #e:Ljava/lang/Exception;
    .end local v17           #whereClause:Ljava/lang/StringBuilder;
    .restart local p2
    :cond_107
    const/4 v5, 0x0

    goto :goto_f8
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 190
    const-string v0, "BrowserCookiesProvider"

    const-string v1, "BroserProvider::update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v0, 0x0

    return v0
.end method
