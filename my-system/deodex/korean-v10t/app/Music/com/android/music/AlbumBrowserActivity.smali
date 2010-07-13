.class public Lcom/android/music/AlbumBrowserActivity;
.super Landroid/app/ListActivity;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/music/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;
    }
.end annotation


# static fields
.field private static final SEARCH:I = 0xd


# instance fields
.field private mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

.field private mAdapterDestroyed:Z

.field private mAdapterSent:Z

.field private mAlbumCursor:Landroid/database/Cursor;

.field private mArtistId:Ljava/lang/String;

.field private mCurrentAlbumId:Ljava/lang/String;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapterDestroyed:Z

    .line 180
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/AlbumBrowserActivity$1;-><init>(Lcom/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 186
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/AlbumBrowserActivity$2;-><init>(Lcom/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 197
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/AlbumBrowserActivity$3;-><init>(Lcom/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/AlbumBrowserActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/AlbumBrowserActivity;)Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/AlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/music/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/music/AlbumBrowserActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/music/AlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "async"
    .parameter "filter"

    .prologue
    .line 416
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .local v12, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    const/4 v6, 0x0

    .line 421
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_5c

    .line 422
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 423
    .local v11, searchWords:[Ljava/lang/String;
    array-length v0, v11

    new-array v6, v0, [Ljava/lang/String;

    .line 424
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v8

    .line 425
    .local v8, col:Ljava/text/Collator;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/text/Collator;->setStrength(I)V

    .line 426
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1f
    array-length v0, v11

    if-ge v9, v0, :cond_46

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v11, v9

    invoke-static {v1}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    .line 426
    add-int/lit8 v9, v9, 0x1

    goto :goto_1f

    .line 429
    :cond_46
    const/4 v9, 0x0

    :goto_47
    array-length v0, v11

    if-ge v9, v0, :cond_5c

    .line 430
    const-string v0, " AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const-string v0, "artist_key||"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const-string v0, "album_key LIKE ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    add-int/lit8 v9, v9, 0x1

    goto :goto_47

    .line 436
    .end local v8           #col:Ljava/text/Collator;
    .end local v9           #i:I
    .end local v11           #searchWords:[Ljava/lang/String;
    :cond_5c
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 438
    .local v5, whereclause:Ljava/lang/String;
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "artist"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "album"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string v1, "album_art"

    aput-object v1, v4, v0

    .line 444
    .local v4, cols:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 445
    .local v10, ret:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v0, :cond_af

    .line 446
    if-eqz p1, :cond_97

    .line 447
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v0, "external"

    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v0, v7, v8}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    const-string v7, "album_key"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :goto_96
    return-object v10

    .line 452
    :cond_97
    const-string v0, "external"

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    const-string v7, "album_key"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_96

    .line 458
    :cond_af
    if-eqz p1, :cond_bc

    .line 459
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "album_key"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_96

    .line 463
    :cond_bc
    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "album_key"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_96
.end method

.method private setTitle()V
    .registers 4

    .prologue
    .line 229
    const-string v0, ""

    .line 232
    .local v0, fancyName:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3b

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 234
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 235
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_34

    const-string v1, "<unknown>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 237
    :cond_34
    const v1, 0x7f07002f

    invoke-virtual {p0, v1}, Lcom/android/music/AlbumBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 240
    :cond_3b
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    if-eqz v1, :cond_45

    if-eqz v0, :cond_45

    .line 241
    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 244
    :goto_44
    return-void

    .line 243
    :cond_45
    const v1, 0x7f070014

    invoke-virtual {p0, v1}, Lcom/android/music/AlbumBrowserActivity;->setTitle(I)V

    goto :goto_44
.end method


# virtual methods
.method doSearch()V
    .registers 7

    .prologue
    .line 318
    const/4 v2, 0x0

    .line 319
    .local v2, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 321
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 322
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 325
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    const-string v3, "android.intent.extra.artist"

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v3, "android.intent.extra.album"

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v3, "android.intent.extra.focus"

    const-string v4, "vnd.android.cursor.item/album"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const v3, 0x7f070052

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/music/AlbumBrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 331
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/music/AlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 334
    return-void
.end method

.method public init(Landroid/database/Cursor;)V
    .registers 6
    .parameter "c"

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapterDestroyed:Z

    if-eqz v0, :cond_5

    .line 226
    :goto_4
    return-void

    .line 215
    :cond_5
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 217
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1d

    .line 218
    invoke-static {p0}, Lcom/android/music/MusicUtils;->displayDatabaseError(Landroid/app/Activity;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->closeContextMenu()V

    .line 220
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 224
    :cond_1d
    invoke-static {p0}, Lcom/android/music/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 225
    invoke-direct {p0}, Lcom/android/music/AlbumBrowserActivity;->setTitle()V

    goto :goto_4
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 338
    sparse-switch p1, :sswitch_data_36

    .line 357
    :cond_3
    :goto_3
    return-void

    .line 340
    :sswitch_4
    if-nez p2, :cond_a

    .line 341
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->finish()V

    goto :goto_3

    .line 343
    :cond_a
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v2}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/music/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_3

    .line 348
    :sswitch_15
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 349
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 350
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_3

    .line 351
    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v0

    .line 352
    .local v0, list:[I
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p0, v0, v2, v3}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_3

    .line 338
    nop

    :sswitch_data_36
    .sparse-switch
        0x4 -> :sswitch_15
        0xb -> :sswitch_4
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 12
    .parameter "item"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 269
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_9a

    .line 314
    :pswitch_9
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    :goto_d
    return v6

    .line 272
    :pswitch_e
    iget-object v6, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v4

    .line 273
    .local v4, list:[I
    invoke-static {p0, v4, v9}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[II)V

    move v6, v8

    .line 274
    goto :goto_d

    .line 278
    .end local v4           #list:[I
    :pswitch_1d
    iget-object v6, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v4

    .line 279
    .restart local v4       #list:[I
    invoke-static {p0, v4}, Lcom/android/music/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[I)V

    move v6, v8

    .line 280
    goto :goto_d

    .line 284
    .end local v4           #list:[I
    :pswitch_2c
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 285
    .local v3, intent:Landroid/content/Intent;
    const-class v6, Lcom/android/music/CreatePlaylist;

    invoke-virtual {v3, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 286
    const/4 v6, 0x4

    invoke-virtual {p0, v3, v6}, Lcom/android/music/AlbumBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v6, v8

    .line 287
    goto :goto_d

    .line 291
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_3c
    iget-object v6, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v4

    .line 292
    .restart local v4       #list:[I
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "playlist"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 293
    .local v5, playlist:I
    int-to-long v6, v5

    invoke-static {p0, v4, v6, v7}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    move v6, v8

    .line 294
    goto :goto_d

    .line 297
    .end local v4           #list:[I
    .end local v5           #playlist:I
    :pswitch_56
    iget-object v6, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v4

    .line 298
    .restart local v4       #list:[I
    const v6, 0x7f07000c

    invoke-virtual {p0, v6}, Lcom/android/music/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, f:Ljava/lang/String;
    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, desc:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 301
    .local v0, b:Landroid/os/Bundle;
    const-string v6, "description"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v6, "items"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 303
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 304
    .restart local v3       #intent:Landroid/content/Intent;
    const-class v6, Lcom/android/music/DeleteItems;

    invoke-virtual {v3, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 305
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 306
    const/4 v6, -0x1

    invoke-virtual {p0, v3, v6}, Lcom/android/music/AlbumBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v6, v8

    .line 307
    goto/16 :goto_d

    .line 310
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #desc:Ljava/lang/String;
    .end local v2           #f:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #list:[I
    :pswitch_94
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->doSearch()V

    move v6, v8

    .line 311
    goto/16 :goto_d

    .line 269
    :pswitch_data_9a
    .packed-switch 0x3
        :pswitch_3c
        :pswitch_2c
        :pswitch_e
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_56
        :pswitch_9
        :pswitch_1d
        :pswitch_94
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "artist"

    .line 80
    if-eqz p1, :cond_8c

    .line 81
    const-string v0, "selectedalbum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 82
    const-string v0, "artist"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 86
    :goto_17
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->requestWindowFeature(I)Z

    .line 88
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->setVolumeControlStream(I)V

    .line 89
    invoke-static {p0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/content/Context;)Z

    .line 91
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v7, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v0, "file"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/android/music/AlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->setContentView(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v8

    .line 100
    .local v8, lv:Landroid/widget/ListView;
    invoke-virtual {v8, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 101
    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 102
    invoke-virtual {v8, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    .line 105
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-nez v0, :cond_9a

    .line 107
    new-instance v0, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030010

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;-><init>(Landroid/content/Context;Lcom/android/music/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    .line 114
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    const v0, 0x7f070054

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->setTitle(I)V

    .line 116
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v9}, Lcom/android/music/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 127
    :goto_8b
    return-void

    .line 84
    .end local v7           #f:Landroid/content/IntentFilter;
    .end local v8           #lv:Landroid/widget/ListView;
    :cond_8c
    invoke-virtual {p0}, Lcom/android/music/AlbumBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "artist"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    goto/16 :goto_17

    .line 118
    .restart local v7       #f:Landroid/content/IntentFilter;
    .restart local v8       #lv:Landroid/widget/ListView;
    :cond_9a
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, p0}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->setActivity(Lcom/android/music/AlbumBrowserActivity;)V

    .line 119
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 121
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b6

    .line 122
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_8b

    .line 124
    :cond_b6
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v9}, Lcom/android/music/AlbumBrowserActivity;->getAlbumCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_8b
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 10
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const/4 v5, 0x0

    .line 248
    const/4 v3, 0x5

    const v4, 0x7f070039

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 249
    const/4 v3, 0x1

    const v4, 0x7f07003a

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v2

    .line 250
    .local v2, sub:Landroid/view/SubMenu;
    invoke-static {p0, v2}, Lcom/android/music/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 251
    const/16 v3, 0xa

    const v4, 0x7f070008

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 252
    const/16 v3, 0xd

    const v4, 0x7f07001c

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 254
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 255
    .local v1, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 256
    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 257
    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v5, "album"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 258
    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v5, "artist"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 260
    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v3, :cond_6c

    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v4, "<unknown>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 261
    :cond_6c
    const v3, 0x7f070030

    invoke-virtual {p0, v3}, Lcom/android/music/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 265
    :goto_76
    return-void

    .line 263
    :cond_77
    iget-object v3, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_76
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 371
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 372
    const/4 v0, 0x6

    const v1, 0x7f070004

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020019

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 373
    const/4 v0, 0x7

    const v1, 0x7f070005

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 374
    const/16 v0, 0x9

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 375
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-static {p0}, Lcom/android/music/MusicUtils;->unbindFromService(Landroid/content/Context;)V

    .line 148
    iget-boolean v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapterSent:Z

    if-nez v1, :cond_13

    .line 149
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v1}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 150
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_13

    .line 151
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 154
    .end local v0           #c:Landroid/database/Cursor;
    :cond_13
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v1, :cond_20

    .line 155
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v1}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/AsyncQueryHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 157
    :cond_20
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 161
    invoke-virtual {p0, v2}, Lcom/android/music/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    iput-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    .line 163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapterDestroyed:Z

    .line 164
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/AlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 166
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 362
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v1, "album"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v1, "artist"

    iget-object v2, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 367
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 11
    .parameter "item"

    .prologue
    const/4 v8, 0x1

    .line 388
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    .line 412
    :pswitch_8
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 390
    :pswitch_d
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 391
    .local v7, intent:Landroid/content/Intent;
    const-class v0, Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v7, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 392
    const/high16 v0, 0x400

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0, v7}, Lcom/android/music/AlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v8

    .line 394
    goto :goto_c

    .line 397
    .end local v7           #intent:Landroid/content/Intent;
    :pswitch_21
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.android.music.PLAYBACK_VIEWER"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/android/music/AlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v8

    .line 399
    goto :goto_c

    .line 402
    .end local v7           #intent:Landroid/content/Intent;
    :pswitch_2d
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "is_music=1"

    const/4 v4, 0x0

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 406
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_48

    .line 407
    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 408
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_48
    move v0, v8

    .line 410
    goto :goto_c

    .line 388
    :pswitch_data_4a
    .packed-switch 0x6
        :pswitch_d
        :pswitch_21
        :pswitch_8
        :pswitch_2d
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/AlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 208
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 209
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 380
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/android/music/MusicUtils;->isMusicLoaded()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 381
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 170
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/AlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 177
    invoke-static {p0}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 178
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapterSent:Z

    .line 132
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outcicle"

    .prologue
    .line 140
    const-string v0, "selectedalbum"

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v0, "artist"

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    return-void
.end method
