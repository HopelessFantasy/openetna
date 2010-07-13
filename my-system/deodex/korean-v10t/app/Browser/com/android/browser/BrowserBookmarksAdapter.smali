.class Lcom/android/browser/BrowserBookmarksAdapter;
.super Landroid/widget/BaseAdapter;
.source "BrowserBookmarksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserBookmarksAdapter$1;,
        Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;,
        Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;,
        Lcom/android/browser/BrowserBookmarksAdapter$IconReceiver;
    }
.end annotation


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

.field private mChangeObserver:Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCount:I

.field private mCreateShortcut:Z

.field private mCurrentPage:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDataValid:Z

.field private mExtraOffset:I

.field private final mIconReceiver:Lcom/android/browser/BrowserBookmarksAdapter$IconReceiver;

.field private mLastOrderBy:Ljava/lang/String;

.field private mLastSelectionArgs:[Ljava/lang/String;

.field private mLastWhereClause:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserBookmarksPage;Ljava/lang/String;)V
    .registers 4
    .parameter "b"
    .parameter "curPage"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/browser/BrowserBookmarksAdapter;-><init>(Lcom/android/browser/BrowserBookmarksPage;Ljava/lang/String;Z)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/android/browser/BrowserBookmarksPage;Ljava/lang/String;Z)V
    .registers 8
    .parameter "b"
    .parameter "curPage"
    .parameter "createShortcut"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 93
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 48
    const-string v0, "Bookmarks"

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->LOGTAG:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/android/browser/BrowserBookmarksAdapter$IconReceiver;

    invoke-direct {v0, p0, v3}, Lcom/android/browser/BrowserBookmarksAdapter$IconReceiver;-><init>(Lcom/android/browser/BrowserBookmarksAdapter;Lcom/android/browser/BrowserBookmarksAdapter$1;)V

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mIconReceiver:Lcom/android/browser/BrowserBookmarksAdapter$IconReceiver;

    .line 94
    iput-boolean v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mDataValid:Z

    .line 95
    iput-boolean p3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCreateShortcut:Z

    .line 96
    if-eqz p3, :cond_5e

    move v0, v1

    :goto_17
    iput v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    .line 97
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentPage:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Lcom/android/browser/BrowserBookmarksPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 101
    const-string v0, "created DESC"

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mLastOrderBy:Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;-><init>(Lcom/android/browser/BrowserBookmarksAdapter;)V

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mChangeObserver:Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;

    .line 103
    new-instance v0, Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;

    invoke-direct {v0, p0, v3}, Lcom/android/browser/BrowserBookmarksAdapter$MyDataSetObserver;-><init>(Lcom/android/browser/BrowserBookmarksAdapter;Lcom/android/browser/BrowserBookmarksAdapter$1;)V

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 105
    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserBookmarksAdapter;->search(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "favicon is NULL AND bookmark == 1"

    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mIconReceiver:Lcom/android/browser/BrowserBookmarksAdapter$IconReceiver;

    invoke-static {v0, v1, v2}, Landroid/provider/Browser;->requestAllIcons(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 111
    return-void

    .line 96
    :cond_5e
    const/4 v0, 0x1

    goto :goto_17
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserBookmarksAdapter;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/browser/BrowserBookmarksAdapter;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mDataValid:Z

    return p1
.end method

.method private bind(Lcom/android/browser/BookmarkItem;I)V
    .registers 12
    .parameter "b"
    .parameter "position"

    .prologue
    const/4 v8, 0x1

    const/16 v6, 0x50

    const/4 v7, 0x0

    .line 506
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v5, p2, v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 508
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, title:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1e

    .line 510
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 512
    :cond_1e
    invoke-virtual {p1, v2}, Lcom/android/browser/BookmarkItem;->setName(Ljava/lang/String;)V

    .line 513
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 514
    .local v3, url:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_31

    .line 515
    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 518
    :cond_31
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 519
    .local v1, isReadOnly:I
    const-string v4, "Bookmarks"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bookmark readonly :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    if-ne v1, v8, :cond_67

    .line 521
    invoke-virtual {p1, v3, v8}, Lcom/android/browser/BookmarkItem;->setUrl(Ljava/lang/String;Z)V

    .line 526
    :goto_55
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 527
    .local v0, data:[B
    if-eqz v0, :cond_6b

    .line 528
    array-length v4, v0

    invoke-static {v0, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/browser/BookmarkItem;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 532
    :goto_66
    return-void

    .line 523
    .end local v0           #data:[B
    :cond_67
    invoke-virtual {p1, v3, v7}, Lcom/android/browser/BookmarkItem;->setUrl(Ljava/lang/String;Z)V

    goto :goto_55

    .line 530
    .restart local v0       #data:[B
    :cond_6b
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/android/browser/BookmarkItem;->setFavicon(Landroid/graphics/Bitmap;)V

    goto :goto_66
.end method

.method private getString(II)Ljava/lang/String;
    .registers 5
    .parameter "cursorIndex"
    .parameter "position"

    .prologue
    .line 498
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p2, v0, :cond_8

    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    if-le p2, v0, :cond_b

    .line 499
    :cond_8
    const-string v0, ""

    .line 502
    :goto_a
    return-object v0

    .line 501
    :cond_b
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 502
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private searchInternal(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "whereClause"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1e

    .line 370
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mChangeObserver:Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 371
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 372
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 373
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 376
    :cond_1e
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mLastWhereClause:Ljava/lang/String;

    .line 377
    iput-object p2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mLastSelectionArgs:[Ljava/lang/String;

    .line 378
    iput-object p3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mLastOrderBy:Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    .line 385
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mChangeObserver:Lcom/android/browser/BrowserBookmarksAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 386
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 387
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->startManagingCursor(Landroid/database/Cursor;)V

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mDataValid:Z

    .line 390
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->notifyDataSetChanged()V

    .line 392
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    .line 393
    return-void
.end method

.method static updateBookmarkFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 9
    .parameter "cr"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 317
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 353
    :cond_4
    :goto_4
    return-void

    .line 321
    :cond_5
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 322
    .local v1, query:I
    move-object v0, p1

    .line 323
    .local v0, noQuery:Ljava/lang/String;
    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    .line 324
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v0           #noQuery:Ljava/lang/String;
    move-result-object p1

    .local p1, noQuery:Ljava/lang/String;
    move-object v0, p1

    .line 326
    .end local p1           #noQuery:Ljava/lang/String;
    .restart local v0       #noQuery:Ljava/lang/String;
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v1           #query:I
    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 332
    .local p1, url:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const/4 v0, 0x1

    aput-object p1, v4, v0

    .line 333
    .end local v0           #noQuery:Ljava/lang/String;
    .local v4, selArgs:[Ljava/lang/String;
    const-string v0, "(url == ? OR url GLOB ? || \'*\') AND bookmark == 1"

    .line 336
    .local v0, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .end local v0           #where:Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 337
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v3, "(url == ? OR url GLOB ? || \'*\') AND bookmark == 1"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 339
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    .line 340
    .local v1, succeed:Z
    const/4 v2, 0x0

    .line 341
    .end local v4           #selArgs:[Ljava/lang/String;
    .local v2, values:Landroid/content/ContentValues;
    :goto_4a
    if-eqz v1, :cond_7e

    .line 342
    if-nez v2, :cond_68

    .line 343
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .end local v1           #succeed:Z
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 344
    .local v1, os:Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .end local v2           #values:Landroid/content/ContentValues;
    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 345
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 346
    .restart local v2       #values:Landroid/content/ContentValues;
    const-string v3, "favicon"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .end local v1           #os:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 348
    :cond_68
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 350
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .local v1, succeed:Z
    goto :goto_4a

    .line 352
    :cond_7e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method public deleteAllRows()V
    .registers 14

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string v12, " OR ( "

    const-string v11, " = "

    const-string v8, " )"

    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, deleteIds:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 213
    .local v0, convertIds:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_f
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_83

    .line 214
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, url:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/webkit/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    .line 216
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 217
    .local v2, id:I
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 218
    .local v3, numVisits:I
    if-nez v3, :cond_5e

    .line 219
    if-nez v1, :cond_58

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #deleteIds:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .restart local v1       #deleteIds:Ljava/lang/StringBuilder;
    const-string v6, "( "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :goto_40
    const-string v6, "_id"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string v6, " = "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    const-string v6, " )"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :goto_52
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_f

    .line 223
    :cond_58
    const-string v6, " OR ( "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 231
    :cond_5e
    if-nez v0, :cond_7d

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #convertIds:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .restart local v0       #convertIds:Ljava/lang/StringBuilder;
    const-string v6, "( "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :goto_6a
    const-string v6, "_id"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v6, " = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    const-string v6, " )"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 235
    :cond_7d
    const-string v6, " OR ( "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    .line 244
    .end local v2           #id:I
    .end local v3           #numVisits:I
    .end local v4           #url:Ljava/lang/String;
    :cond_83
    if-eqz v1, :cond_90

    .line 245
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 248
    :cond_90
    if-eqz v0, :cond_ab

    .line 249
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 250
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "bookmark"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    iget-object v6, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v5, v8, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 254
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_ab
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshList()V

    .line 255
    return-void
.end method

.method public deleteRow(I)V
    .registers 11
    .parameter "position"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 184
    iget v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p1, v4, :cond_c

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->getCount()I

    move-result v4

    if-lt p1, v4, :cond_d

    .line 202
    :cond_c
    :goto_c
    return-void

    .line 187
    :cond_d
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v5, p1, v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 188
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, url:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/webkit/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    .line 190
    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 192
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 193
    .local v0, numVisits:I
    if-nez v0, :cond_43

    .line 194
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v1, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 201
    :goto_3f
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshList()V

    goto :goto_c

    .line 197
    :cond_43
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 198
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "bookmark"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v1, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3f
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mDataValid:Z

    if-eqz v0, :cond_7

    .line 401
    iget v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    .line 403
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getFavicon(I)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 483
    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p1, v1, :cond_9

    iget v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    if-le p1, v1, :cond_b

    :cond_9
    move-object v1, v3

    .line 491
    :goto_a
    return-object v1

    .line 486
    :cond_b
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v2, p1, v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 487
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 488
    .local v0, data:[B
    if-nez v0, :cond_1f

    move-object v1, v3

    .line 489
    goto :goto_a

    .line 491
    :cond_1f
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_a
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 421
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 430
    int-to-long v0, p1

    return-wide v0
.end method

.method public getRow(I)Landroid/os/Bundle;
    .registers 9
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 121
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v1, map:Landroid/os/Bundle;
    iget v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    if-lt p1, v3, :cond_e

    iget v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    if-lt p1, v3, :cond_f

    .line 136
    :cond_e
    :goto_e
    return-object v1

    .line 125
    :cond_f
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mExtraOffset:I

    sub-int v4, p1, v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 126
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, url:Ljava/lang/String;
    const-string v3, "title"

    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 131
    .local v0, data:[B
    if-eqz v0, :cond_43

    .line 132
    const-string v3, "favicon"

    array-length v4, v0

    invoke-static {v0, v6, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 135
    :cond_43
    const-string v3, "id"

    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_e
.end method

.method public getTitle(I)Ljava/lang/String;
    .registers 3
    .parameter "position"

    .prologue
    .line 469
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(I)Ljava/lang/String;
    .registers 3
    .parameter "position"

    .prologue
    .line 476
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 440
    iget-boolean v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mDataValid:Z

    if-nez v2, :cond_c

    .line 441
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "this should only be called when the cursor is valid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 444
    :cond_c
    if-ltz p1, :cond_12

    iget v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCount:I

    if-le p1, v2, :cond_1a

    .line 445
    :cond_12
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "BrowserBookmarksAdapter tried to get a view out of range"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 448
    :cond_1a
    if-nez p1, :cond_37

    iget-boolean v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCreateShortcut:Z

    if-nez v2, :cond_37

    .line 450
    instance-of v2, p2, Lcom/android/browser/AddNewBookmark;

    if-eqz v2, :cond_2f

    .line 451
    move-object v0, p2

    check-cast v0, Lcom/android/browser/AddNewBookmark;

    move-object v1, v0

    .line 455
    .local v1, b:Lcom/android/browser/AddNewBookmark;
    :goto_28
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCurrentPage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/browser/AddNewBookmark;->setUrl(Ljava/lang/String;)V

    move-object v2, v1

    .line 462
    .end local v1           #b:Lcom/android/browser/AddNewBookmark;
    :goto_2e
    return-object v2

    .line 453
    :cond_2f
    new-instance v1, Lcom/android/browser/AddNewBookmark;

    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {v1, v2}, Lcom/android/browser/AddNewBookmark;-><init>(Landroid/content/Context;)V

    .restart local v1       #b:Lcom/android/browser/AddNewBookmark;
    goto :goto_28

    .line 458
    .end local v1           #b:Lcom/android/browser/AddNewBookmark;
    :cond_37
    if-eqz p2, :cond_3d

    instance-of v2, p2, Lcom/android/browser/AddNewBookmark;

    if-eqz v2, :cond_44

    .line 459
    :cond_3d
    new-instance p2, Lcom/android/browser/BookmarkItem;

    .end local p2
    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mBookmarksPage:Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {p2, v2}, Lcom/android/browser/BookmarkItem;-><init>(Landroid/content/Context;)V

    .line 461
    .restart local p2
    :cond_44
    move-object v0, p2

    check-cast v0, Lcom/android/browser/BookmarkItem;

    move-object v2, v0

    invoke-direct {p0, v2, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->bind(Lcom/android/browser/BookmarkItem;I)V

    move-object v2, p2

    .line 462
    goto :goto_2e
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 412
    const/4 v0, 0x1

    return v0
.end method

.method public refreshList()V
    .registers 4

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mLastWhereClause:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mLastSelectionArgs:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mLastOrderBy:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/browser/BrowserBookmarksAdapter;->searchInternal(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public search(Ljava/lang/String;)V
    .registers 13
    .parameter "like"

    .prologue
    const-string v10, "%"

    .line 273
    const-string v7, "bookmark == 1"

    .line 274
    .local v7, whereClause:Ljava/lang/String;
    const/4 v6, 0x0

    .line 275
    .local v6, selectionArgs:[Ljava/lang/String;
    if-eqz p1, :cond_89

    .line 276
    const-string v8, " "

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, likes:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 278
    .local v1, count:I
    const/4 v3, 0x1

    .line 279
    .local v3, firstTerm:Z
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v8, 0x100

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 280
    .local v0, andClause:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_17
    array-length v8, v5

    if-ge v4, v8, :cond_35

    .line 281
    aget-object v8, v5, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2c

    .line 282
    if-eqz v3, :cond_2f

    .line 283
    const/4 v3, 0x0

    .line 287
    :goto_25
    const-string v8, "title LIKE ? OR url LIKE ? "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    add-int/lit8 v1, v1, 0x2

    .line 280
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 285
    :cond_2f
    const-string v8, " OR "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 293
    :cond_35
    if-lez v1, :cond_89

    .line 294
    new-array v6, v1, [Ljava/lang/String;

    .line 295
    const/4 v1, 0x0

    .line 296
    const/4 v4, 0x0

    :goto_3b
    array-length v8, v5

    if-ge v4, v8, :cond_6c

    .line 297
    aget-object v8, v5, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_69

    .line 298
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 299
    add-int/lit8 v2, v1, 0x1

    .end local v1           #count:I
    .local v2, count:I
    aput-object p1, v6, v1

    .line 300
    add-int/lit8 v1, v2, 0x1

    .end local v2           #count:I
    .restart local v1       #count:I
    aput-object p1, v6, v2

    .line 296
    :cond_69
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 303
    :cond_6c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " AND ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 306
    .end local v0           #andClause:Ljava/lang/StringBuilder;
    .end local v1           #count:I
    .end local v3           #firstTerm:Z
    .end local v4           #j:I
    .end local v5           #likes:[Ljava/lang/String;
    :cond_89
    iget-object v8, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mLastOrderBy:Ljava/lang/String;

    invoke-direct {p0, v7, v6, v8}, Lcom/android/browser/BrowserBookmarksAdapter;->searchInternal(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public sortAlphabetical()V
    .registers 4

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mLastWhereClause:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mLastSelectionArgs:[Ljava/lang/String;

    const-string v2, "title COLLATE UNICODE ASC"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/browser/BrowserBookmarksAdapter;->searchInternal(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public updateRow(Landroid/os/Bundle;)V
    .registers 11
    .parameter "map"

    .prologue
    const-string v8, "url"

    const-string v7, "title"

    .line 147
    const-string v5, "id"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 148
    .local v0, id:I
    const/4 v1, -0x1

    .line 149
    .local v1, position:I
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_10
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_27

    .line 150
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v0, :cond_2a

    .line 151
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 155
    :cond_27
    if-gez v1, :cond_30

    .line 176
    :cond_29
    :goto_29
    return-void

    .line 149
    :cond_2a
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_10

    .line 159
    :cond_30
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 160
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "title"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    .line 164
    const-string v5, "title"

    invoke-virtual {v4, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_52
    const-string v5, "url"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, url:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6a

    .line 169
    const-string v5, "url"

    invoke-virtual {v4, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_6a
    invoke-virtual {v4}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-lez v5, :cond_29

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_29

    .line 174
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshList()V

    goto :goto_29
.end method
