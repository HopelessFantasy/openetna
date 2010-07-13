.class public Lcom/android/browser/BrowserProvider;
.super Landroid/content/ContentProvider;
.source "BrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserProvider$MySuggestionCursor;,
        Lcom/android/browser/BrowserProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String; = null

.field private static final DATABASE_VERSION:I = 0x13

.field private static final MAX_SUGGESTION_LONG_ENTRIES:I = 0x6

.field private static final MAX_SUGGESTION_SHORT_ENTRIES:I = 0x3

.field private static final ORDER_BY:Ljava/lang/String; = "visits DESC, date DESC"

.field private static final PICASA_URL:Ljava/lang/String; = "http://picasaweb.google.com/m/viewer?source=androidclient"

.field private static final SUGGEST_COLUMN_ICON_1_ID:I = 0x5

.field private static final SUGGEST_COLUMN_ICON_2_ID:I = 0x6

.field private static final SUGGEST_COLUMN_INTENT_ACTION_ID:I = 0x1

.field private static final SUGGEST_COLUMN_INTENT_DATA_ID:I = 0x2

.field private static final SUGGEST_COLUMN_QUERY_ID:I = 0x7

.field private static final SUGGEST_COLUMN_TEXT_1_ID:I = 0x3

.field private static final SUGGEST_COLUMN_TEXT_2_ID:I = 0x4

.field private static final SUGGEST_PROJECTION:[Ljava/lang/String; = null

.field private static final SUGGEST_SELECTION:Ljava/lang/String; = "url LIKE ? OR url LIKE ? OR url LIKE ? OR url LIKE ?"

.field private static final TABLE_NAMES:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BrowserProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher; = null

.field private static final URI_MATCH_BOOKMARKS:I = 0x0

.field private static final URI_MATCH_BOOKMARKS_ID:I = 0xa

.field private static final URI_MATCH_SEARCHES:I = 0x1

.field private static final URI_MATCH_SEARCHES_ID:I = 0xb

.field private static final URI_MATCH_SUGGEST:I = 0x14

.field private static final sDatabaseName:Ljava/lang/String; = "browser.db"


# instance fields
.field private SUGGEST_ARGS:[Ljava/lang/String;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "browser"

    .line 62
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "bookmarks"

    aput-object v1, v0, v3

    const-string v1, "searches"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "url"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v2

    const-string v1, "bookmark"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/browser/BrowserProvider;->SUGGEST_PROJECTION:[Ljava/lang/String;

    .line 82
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "suggest_intent_action"

    aput-object v1, v0, v4

    const-string v1, "suggest_intent_data"

    aput-object v1, v0, v2

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/BrowserProvider;->COLUMNS:[Ljava/lang/String;

    .line 107
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 108
    sget-object v0, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    sget-object v1, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v5, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    sget-object v0, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    sget-object v0, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    sget-object v1, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v5, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    sget-object v0, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    sget-object v0, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    const-string v1, "search_suggest_query"

    const/16 v2, 0x14

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    .line 140
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/android/browser/BrowserProvider;->replaceSystemPropertyInString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/browser/BrowserProvider;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method private fixPicasaBookmark()V
    .registers 8

    .prologue
    const-string v6, "http://picasaweb.google.com/m/viewer?source=androidclient"

    .line 365
    iget-object v2, p0, Lcom/android/browser/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 366
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "SELECT _id FROM bookmarks WHERE bookmark = 1 AND url = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "http://picasaweb.google.com/m/viewer?source=androidclient"

    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 369
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_16
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_62

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO bookmarks (title, url, visits, date, created, bookmark) VALUES(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/browser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0700d8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "http://picasaweb.google.com/m/viewer?source=androidclient"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', 0, 0, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 1);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_16 .. :try_end_62} :catchall_68

    .line 378
    :cond_62
    if-eqz v0, :cond_67

    .line 379
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 382
    :cond_67
    return-void

    .line 378
    :catchall_68
    move-exception v2

    if-eqz v0, :cond_6e

    .line 379
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6e
    throw v2
.end method

.method private static replaceSystemPropertyInString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 12
    .parameter "context"
    .parameter "srcString"

    .prologue
    .line 144
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 145
    .local v7, sb:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 147
    .local v5, lastCharLoc:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "client_id"

    invoke-static {v8, v9}, Lcom/google/android/providers/GoogleSettings$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, client_id:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v2, v8, :cond_5a

    .line 150
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 151
    .local v0, c:C
    const/16 v8, 0x7b

    if-ne v0, v8, :cond_4e

    .line 152
    invoke-interface {p1, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 153
    move v5, v2

    .line 155
    move v3, v2

    .local v3, j:I
    :goto_28
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v3, v8, :cond_4e

    .line 156
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 157
    .local v4, k:C
    const/16 v8, 0x7d

    if-ne v4, v8, :cond_57

    .line 158
    add-int/lit8 v8, v2, 0x1

    invoke-interface {p1, v8, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, propertyKeyValue:Ljava/lang/String;
    const-string v8, "CLIENT_ID"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 160
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    :goto_4b
    add-int/lit8 v5, v3, 0x1

    .line 165
    move v2, v3

    .line 149
    .end local v3           #j:I
    .end local v4           #k:C
    .end local v6           #propertyKeyValue:Ljava/lang/String;
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 162
    .restart local v3       #j:I
    .restart local v4       #k:C
    .restart local v6       #propertyKeyValue:Ljava/lang/String;
    :cond_51
    const-string v8, "unknown"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4b

    .line 155
    .end local v6           #propertyKeyValue:Ljava/lang/String;
    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 171
    .end local v0           #c:C
    .end local v3           #j:I
    .end local v4           #k:C
    :cond_5a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int/2addr v8, v5

    if-lez v8, :cond_6c

    .line 173
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {p1, v5, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 175
    :cond_6c
    return-object v7
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 758
    iget-object v4, p0, Lcom/android/browser/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 760
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 761
    .local v2, match:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_13

    const/16 v4, 0x14

    if-ne v2, v4, :cond_1b

    .line 762
    :cond_13
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown URL"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 765
    :cond_1b
    const/16 v4, 0xa

    if-eq v2, v4, :cond_23

    const/16 v4, 0xb

    if-ne v2, v4, :cond_54

    .line 766
    :cond_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 767
    .local v3, sb:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_3d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3d

    .line 768
    const-string v4, "( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    const-string v4, " ) AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    :cond_3d
    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 777
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_54
    sget-object v4, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v5, v2, 0xa

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 778
    .local v0, count:I
    invoke-virtual {p0}, Lcom/android/browser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 779
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "url"

    .prologue
    .line 694
    sget-object v1, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 695
    .local v0, match:I
    sparse-switch v0, :sswitch_data_20

    .line 712
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 697
    :sswitch_11
    const-string v1, "vnd.android.cursor.dir/bookmark"

    .line 709
    :goto_13
    return-object v1

    .line 700
    :sswitch_14
    const-string v1, "vnd.android.cursor.item/bookmark"

    goto :goto_13

    .line 703
    :sswitch_17
    const-string v1, "vnd.android.cursor.dir/searches"

    goto :goto_13

    .line 706
    :sswitch_1a
    const-string v1, "vnd.android.cursor.item/searches"

    goto :goto_13

    .line 709
    :sswitch_1d
    const-string v1, "vnd.android.cursor.dir/vnd.android.search.suggest"

    goto :goto_13

    .line 695
    :sswitch_data_20
    .sparse-switch
        0x0 -> :sswitch_11
        0x1 -> :sswitch_17
        0xa -> :sswitch_14
        0xb -> :sswitch_1a
        0x14 -> :sswitch_1d
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 14
    .parameter "url"
    .parameter "initialValues"

    .prologue
    const-wide/16 v7, 0x0

    const-string v10, "url"

    const-string v9, "Unknown URL"

    .line 718
    iget-object v5, p0, Lcom/android/browser/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 720
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 721
    .local v1, match:I
    const/4 v4, 0x0

    .line 722
    .local v4, uri:Landroid/net/Uri;
    packed-switch v1, :pswitch_data_60

    .line 746
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unknown URL"

    invoke-direct {v5, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 725
    :pswitch_1e
    sget-object v5, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const-string v6, "url"

    invoke-virtual {v0, v5, v10, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 727
    .local v2, rowID:J
    cmp-long v5, v2, v7

    if-lez v5, :cond_33

    .line 728
    sget-object v5, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 749
    :cond_33
    :goto_33
    if-nez v4, :cond_53

    .line 750
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unknown URL"

    invoke-direct {v5, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 736
    .end local v2           #rowID:J
    :pswitch_3d
    sget-object v5, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const-string v6, "url"

    invoke-virtual {v0, v5, v10, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 738
    .restart local v2       #rowID:J
    cmp-long v5, v2, v7

    if-lez v5, :cond_33

    .line 739
    sget-object v5, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_33

    .line 752
    :cond_53
    invoke-virtual {p0}, Lcom/android/browser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 753
    return-object v4

    .line 722
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_3d
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/browser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 344
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/android/browser/BrowserProvider$DatabaseHelper;

    invoke-direct {v1, v0}, Lcom/android/browser/BrowserProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 361
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 39
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
    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 582
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v27

    .line 583
    .local v27, match:I
    const/4 v6, -0x1

    move/from16 v0, v27

    move v1, v6

    if-ne v0, v1, :cond_20

    .line 584
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown URL"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 587
    :cond_20
    const/16 v6, 0x14

    move/from16 v0, v27

    move v1, v6

    if-ne v0, v1, :cond_1df

    .line 590
    const/4 v6, 0x0

    aget-object v6, p4, v6

    if-eqz v6, :cond_37

    const/4 v6, 0x0

    aget-object v6, p4, v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 591
    :cond_37
    const/4 v8, 0x0

    .line 592
    .local v8, suggestSelection:Ljava/lang/String;
    const/4 v9, 0x0

    .line 609
    .local v9, myArgs:[Ljava/lang/String;
    :goto_39
    sget-object v6, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    sget-object v7, Lcom/android/browser/BrowserProvider;->SUGGEST_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "visits DESC, date DESC"

    new-instance v13, Ljava/lang/Integer;

    const/4 v14, 0x6

    invoke-direct {v13, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 614
    .local v24, c:Landroid/database/Cursor;
    sget-object v6, Landroid/text/util/Regex;->WEB_URL_PATTERN:Ljava/util/regex/Pattern;

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_11c

    .line 615
    new-instance v6, Lcom/android/browser/BrowserProvider$MySuggestionCursor;

    const/4 v7, 0x0

    const-string v8, ""

    .end local v8           #suggestSelection:Ljava/lang/String;
    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/BrowserProvider$MySuggestionCursor;-><init>(Lcom/android/browser/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 689
    .end local v9           #myArgs:[Ljava/lang/String;
    .end local p2
    :goto_70
    return-object v6

    .line 594
    .end local v24           #c:Landroid/database/Cursor;
    .restart local p2
    :cond_71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 595
    .local v26, like:Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, p4, v6

    const-string v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 596
    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/String;

    .line 597
    .restart local v9       #myArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    aput-object v26, v9, v6

    .line 598
    move-object/from16 v8, p3

    .restart local v8       #suggestSelection:Ljava/lang/String;
    goto :goto_39

    .line 600
    .end local v8           #suggestSelection:Ljava/lang/String;
    .end local v9           #myArgs:[Ljava/lang/String;
    :cond_9b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://www."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://www."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    move-object v9, v0

    .line 605
    .restart local v9       #myArgs:[Ljava/lang/String;
    const-string v8, "url LIKE ? OR url LIKE ? OR url LIKE ? OR url LIKE ?"

    .restart local v8       #suggestSelection:Ljava/lang/String;
    goto/16 :goto_39

    .line 618
    .end local v26           #like:Ljava/lang/String;
    .restart local v24       #c:Landroid/database/Cursor;
    :cond_11c
    if-eqz v9, :cond_1b7

    array-length v6, v9

    const/4 v7, 0x1

    if-le v6, v7, :cond_1b7

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1b7

    .line 620
    const-string v6, "search"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ISearchManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ISearchManager;

    move-result-object v30

    .line 623
    .local v30, sm:Landroid/app/ISearchManager;
    const/16 v29, 0x0

    .line 626
    .local v29, si:Landroid/server/search/SearchableInfo;
    :try_start_135
    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "com.android.browser"

    .end local v8           #suggestSelection:Ljava/lang/String;
    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v7, 0x1

    move-object/from16 v0, v30

    move-object v1, v6

    move v2, v7

    invoke-interface {v0, v1, v2}, Landroid/app/ISearchManager;->getSearchableInfo(Landroid/content/ComponentName;Z)Landroid/server/search/SearchableInfo;

    move-result-object v29

    .line 630
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v6, "content://"

    move-object/from16 v0, v31

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 631
    .local v31, uriStr:Ljava/lang/StringBuilder;
    invoke-virtual/range {v29 .. v29}, Landroid/server/search/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual/range {v29 .. v29}, Landroid/server/search/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v25

    .line 634
    .local v25, contentPath:Ljava/lang/String;
    if-eqz v25, :cond_172

    .line 635
    const/16 v6, 0x2f

    move-object/from16 v0, v31

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 636
    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    :cond_172
    const-string v6, "/search_suggest_query"

    move-object/from16 v0, v31

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    const/4 v14, 0x0

    .line 642
    .local v14, selArgs:[Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Landroid/server/search/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1c9

    .line 643
    const/4 v6, 0x1

    new-array v14, v6, [Ljava/lang/String;

    .end local v14           #selArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, p4, v7

    aput-object v7, v14, v6

    .line 650
    .restart local v14       #selArgs:[Ljava/lang/String;
    :goto_18a
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {v29 .. v29}, Landroid/server/search/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 654
    .local v28, sc:Landroid/database/Cursor;
    new-instance v6, Lcom/android/browser/BrowserProvider$MySuggestionCursor;

    const/4 v7, 0x0

    aget-object v7, p4, v7

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object/from16 v3, v28

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/BrowserProvider$MySuggestionCursor;-><init>(Lcom/android/browser/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_1b4
    .catch Landroid/os/RemoteException; {:try_start_135 .. :try_end_1b4} :catch_1b6

    goto/16 :goto_70

    .line 655
    .end local v14           #selArgs:[Ljava/lang/String;
    .end local v25           #contentPath:Ljava/lang/String;
    .end local v28           #sc:Landroid/database/Cursor;
    .end local v31           #uriStr:Ljava/lang/StringBuilder;
    :catch_1b6
    move-exception v6

    .line 658
    .end local v29           #si:Landroid/server/search/SearchableInfo;
    .end local v30           #sm:Landroid/app/ISearchManager;
    :cond_1b7
    new-instance v6, Lcom/android/browser/BrowserProvider$MySuggestionCursor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, p4, v8

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/BrowserProvider$MySuggestionCursor;-><init>(Lcom/android/browser/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    goto/16 :goto_70

    .line 645
    .restart local v14       #selArgs:[Ljava/lang/String;
    .restart local v25       #contentPath:Ljava/lang/String;
    .restart local v29       #si:Landroid/server/search/SearchableInfo;
    .restart local v30       #sm:Landroid/app/ISearchManager;
    .restart local v31       #uriStr:Ljava/lang/StringBuilder;
    :cond_1c9
    const/16 v6, 0x2f

    :try_start_1cb
    move-object/from16 v0, v31

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 646
    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1de
    .catch Landroid/os/RemoteException; {:try_start_1cb .. :try_end_1de} :catch_1b6

    goto :goto_18a

    .line 662
    .end local v9           #myArgs:[Ljava/lang/String;
    .end local v14           #selArgs:[Ljava/lang/String;
    .end local v24           #c:Landroid/database/Cursor;
    .end local v25           #contentPath:Ljava/lang/String;
    .end local v29           #si:Landroid/server/search/SearchableInfo;
    .end local v30           #sm:Landroid/app/ISearchManager;
    .end local v31           #uriStr:Ljava/lang/StringBuilder;
    :cond_1df
    const/16 v17, 0x0

    .line 663
    .local v17, projection:[Ljava/lang/String;
    if-eqz p2, :cond_20c

    move-object/from16 v0, p2

    array-length v0, v0

    move v6, v0

    if-lez v6, :cond_20c

    .line 664
    move-object/from16 v0, p2

    array-length v0, v0

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 665
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move v8, v0

    move-object/from16 v0, p2

    move v1, v6

    move-object/from16 v2, v17

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    move-object/from16 v0, p2

    array-length v0, v0

    move v6, v0

    const-string v7, "_id AS _id"

    aput-object v7, v17, v6

    .line 669
    :cond_20c
    new-instance v32, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    move-object/from16 v0, v32

    move v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 670
    .local v32, whereClause:Ljava/lang/StringBuilder;
    const/16 v6, 0xa

    move/from16 v0, v27

    move v1, v6

    if-eq v0, v1, :cond_224

    const/16 v6, 0xb

    move/from16 v0, v27

    move v1, v6

    if-ne v0, v1, :cond_244

    .line 671
    :cond_224
    const-string v6, "(_id = "

    move-object/from16 v0, v32

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/String;

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    :cond_244
    if-eqz p3, :cond_271

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_271

    .line 677
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_25a

    .line 678
    const-string v6, " AND "

    move-object/from16 v0, v32

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    :cond_25a
    const/16 v6, 0x28

    move-object/from16 v0, v32

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 682
    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    const/16 v6, 0x29

    move-object/from16 v0, v32

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 685
    :cond_271
    sget-object v6, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v7, v27, 0xa

    aget-object v16, v6, v7

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object v15, v5

    move-object/from16 v19, p4

    move-object/from16 v22, p5

    invoke-virtual/range {v15 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 688
    .restart local v24       #c:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object/from16 v6, v24

    .line 689
    goto/16 :goto_70
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 785
    iget-object v4, p0, Lcom/android/browser/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 787
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/android/browser/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 788
    .local v1, match:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_13

    const/16 v4, 0x14

    if-ne v1, v4, :cond_1b

    .line 789
    :cond_13
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown URL"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 792
    :cond_1b
    const/16 v4, 0xa

    if-eq v1, v4, :cond_23

    const/16 v4, 0xb

    if-ne v1, v4, :cond_54

    .line 793
    :cond_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 794
    .local v3, sb:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_3d

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3d

    .line 795
    const-string v4, "( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    const-string v4, " ) AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    :cond_3d
    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 804
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_54
    sget-object v4, Lcom/android/browser/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v5, v1, 0xa

    aget-object v4, v4, v5

    invoke-virtual {v0, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 805
    .local v2, ret:I
    invoke-virtual {p0}, Lcom/android/browser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 806
    return v2
.end method
