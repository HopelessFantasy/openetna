.class public Lcom/android/music/ArtistAlbumBrowserActivity;
.super Landroid/app/ExpandableListActivity;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/music/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    }
.end annotation


# static fields
.field private static final SEARCH:I = 0xd


# instance fields
.field private mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

.field private mAdapterDestroyed:Z

.field private mAdapterSent:Z

.field private mArtistCursor:Landroid/database/Cursor;

.field private mCurrentAlbumId:Ljava/lang/String;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistId:Ljava/lang/String;

.field private mCurrentArtistName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapterDestroyed:Z

    .line 188
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/ArtistAlbumBrowserActivity$1;-><init>(Lcom/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 194
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/ArtistAlbumBrowserActivity$2;-><init>(Lcom/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 205
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/ArtistAlbumBrowserActivity$3;-><init>(Lcom/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/ArtistAlbumBrowserActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/ArtistAlbumBrowserActivity;)Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/ArtistAlbumBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "async"
    .parameter "filter"

    .prologue
    const/16 v3, 0x25

    const/4 v1, 0x0

    const-string v7, "artist_key"

    .line 484
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 485
    .local v12, where:Ljava/lang/StringBuilder;
    const-string v0, "artist != \'\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    const/4 v6, 0x0

    .line 489
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_57

    .line 490
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 491
    .local v11, searchWords:[Ljava/lang/String;
    array-length v0, v11

    new-array v6, v0, [Ljava/lang/String;

    .line 492
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v8

    .line 493
    .local v8, col:Ljava/text/Collator;
    invoke-virtual {v8, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 494
    const/4 v9, 0x0

    .local v9, i:I
    :goto_23
    array-length v0, v11

    if-ge v9, v0, :cond_46

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v11, v9

    invoke-static {v2}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    .line 494
    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    .line 497
    :cond_46
    const/4 v9, 0x0

    :goto_47
    array-length v0, v11

    if-ge v9, v0, :cond_57

    .line 498
    const-string v0, " AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const-string v0, "artist_key LIKE ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    add-int/lit8 v9, v9, 0x1

    goto :goto_47

    .line 503
    .end local v8           #col:Ljava/text/Collator;
    .end local v9           #i:I
    .end local v11           #searchWords:[Ljava/lang/String;
    :cond_57
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 504
    .local v5, whereclause:Ljava/lang/String;
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v1

    const/4 v0, 0x1

    const-string v2, "artist"

    aput-object v2, v4, v0

    const/4 v0, 0x2

    const-string v2, "number_of_albums"

    aput-object v2, v4, v0

    const/4 v0, 0x3

    const-string v2, "number_of_tracks"

    aput-object v2, v4, v0

    .line 510
    .local v4, cols:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 511
    .local v10, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_7e

    .line 512
    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "artist_key"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :goto_7d
    return-object v10

    .line 515
    :cond_7e
    sget-object v3, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "artist_key"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_7d
.end method

.method private setTitle()V
    .registers 2

    .prologue
    .line 237
    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->setTitle(I)V

    .line 238
    return-void
.end method


# virtual methods
.method doSearch()V
    .registers 8

    .prologue
    const-string v6, "android.intent.extra.focus"

    const-string v5, "android.intent.extra.artist"

    .line 429
    const/4 v2, 0x0

    .line 430
    .local v2, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 432
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 433
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 436
    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v3, :cond_45

    .line 437
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 438
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 439
    const-string v3, "android.intent.extra.artist"

    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v3, "android.intent.extra.focus"

    const-string v3, "vnd.android.cursor.item/artist"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    :goto_2b
    const v3, 0x7f070052

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 449
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/music/ArtistAlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 452
    return-void

    .line 442
    :cond_45
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
    const-string v3, "android.intent.extra.artist"

    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    const-string v3, "android.intent.extra.album"

    iget-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string v3, "android.intent.extra.focus"

    const-string v3, "vnd.android.cursor.item/album"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2b
.end method

.method public init(Landroid/database/Cursor;)V
    .registers 6
    .parameter "c"

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapterDestroyed:Z

    if-eqz v0, :cond_5

    .line 234
    :goto_4
    return-void

    .line 223
    :cond_5
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 225
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1d

    .line 226
    invoke-static {p0}, Lcom/android/music/MusicUtils;->displayDatabaseError(Landroid/app/Activity;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->closeContextMenu()V

    .line 228
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 232
    :cond_1d
    invoke-static {p0}, Lcom/android/music/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 233
    invoke-direct {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->setTitle()V

    goto :goto_4
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 456
    sparse-switch p1, :sswitch_data_4a

    .line 480
    :cond_3
    :goto_3
    return-void

    .line 458
    :sswitch_4
    if-nez p2, :cond_a

    .line 459
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->finish()V

    goto :goto_3

    .line 461
    :cond_a
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v2}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_3

    .line 466
    :sswitch_15
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 467
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 468
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_3

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, list:[I
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v2, :cond_3a

    .line 471
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/music/MusicUtils;->getSongListForArtist(Landroid/content/Context;I)[I

    move-result-object v0

    .line 475
    :cond_2d
    :goto_2d
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p0, v0, v2, v3}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_3

    .line 472
    :cond_3a
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_2d

    .line 473
    iget-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v0

    goto :goto_2d

    .line 456
    nop

    :sswitch_data_4a
    .sparse-switch
        0x4 -> :sswitch_15
        0xb -> :sswitch_4
    .end sparse-switch
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 13
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const-string v5, "album"

    .line 243
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 245
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v2, intent:Landroid/content/Intent;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "vnd.android.cursor.dir/track"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v3, "album"

    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v3

    invoke-interface {v3, p3, p4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 249
    .local v1, c:Landroid/database/Cursor;
    const-string v3, "album"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, album:Ljava/lang/String;
    if-eqz v0, :cond_3f

    const-string v3, "<unknown>"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 252
    :cond_3f
    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v3, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 253
    iget-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 254
    const-string v3, "artist"

    iget-object v4, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    :cond_5b
    invoke-virtual {p0, v2}, Lcom/android/music/ArtistAlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 257
    const/4 v3, 0x1

    return v3
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 12
    .parameter "item"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 361
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_ee

    .line 425
    :pswitch_9
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    :goto_d
    return v6

    .line 364
    :pswitch_e
    iget-object v6, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v6, :cond_22

    iget-object v6, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->getSongListForArtist(Landroid/content/Context;I)[I

    move-result-object v6

    move-object v4, v6

    .line 369
    .local v4, list:[I
    :goto_1d
    invoke-static {p0, v4, v9}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[II)V

    move v6, v8

    .line 370
    goto :goto_d

    .line 364
    .end local v4           #list:[I
    :cond_22
    iget-object v6, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v6

    move-object v4, v6

    goto :goto_1d

    .line 374
    :pswitch_2e
    iget-object v6, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v6, :cond_42

    iget-object v6, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->getSongListForArtist(Landroid/content/Context;I)[I

    move-result-object v6

    move-object v4, v6

    .line 378
    .restart local v4       #list:[I
    :goto_3d
    invoke-static {p0, v4}, Lcom/android/music/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[I)V

    move v6, v8

    .line 379
    goto :goto_d

    .line 374
    .end local v4           #list:[I
    :cond_42
    iget-object v6, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v6

    move-object v4, v6

    goto :goto_3d

    .line 383
    :pswitch_4e
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 384
    .local v3, intent:Landroid/content/Intent;
    const-class v6, Lcom/android/music/CreatePlaylist;

    invoke-virtual {v3, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 385
    const/4 v6, 0x4

    invoke-virtual {p0, v3, v6}, Lcom/android/music/ArtistAlbumBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v6, v8

    .line 386
    goto :goto_d

    .line 390
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_5e
    iget-object v6, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v6, :cond_7d

    iget-object v6, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->getSongListForArtist(Landroid/content/Context;I)[I

    move-result-object v6

    move-object v4, v6

    .line 394
    .restart local v4       #list:[I
    :goto_6d
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "playlist"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 395
    .local v5, playlist:I
    int-to-long v6, v5

    invoke-static {p0, v4, v6, v7}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    move v6, v8

    .line 396
    goto :goto_d

    .line 390
    .end local v4           #list:[I
    .end local v5           #playlist:I
    :cond_7d
    iget-object v6, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v6

    move-object v4, v6

    goto :goto_6d

    .line 402
    :pswitch_89
    iget-object v6, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v6, :cond_cb

    .line 403
    iget-object v6, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->getSongListForArtist(Landroid/content/Context;I)[I

    move-result-object v4

    .line 404
    .restart local v4       #list:[I
    const v6, 0x7f07000b

    invoke-virtual {p0, v6}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, f:Ljava/lang/String;
    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, desc:Ljava/lang/String;
    :goto_a8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 412
    .local v0, b:Landroid/os/Bundle;
    const-string v6, "description"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v6, "items"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 414
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 415
    .restart local v3       #intent:Landroid/content/Intent;
    const-class v6, Lcom/android/music/DeleteItems;

    invoke-virtual {v3, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 416
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 417
    const/4 v6, -0x1

    invoke-virtual {p0, v3, v6}, Lcom/android/music/ArtistAlbumBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v6, v8

    .line 418
    goto/16 :goto_d

    .line 407
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #desc:Ljava/lang/String;
    .end local v2           #f:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #list:[I
    :cond_cb
    iget-object v6, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v4

    .line 408
    .restart local v4       #list:[I
    const v6, 0x7f07000c

    invoke-virtual {p0, v6}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 409
    .restart local v2       #f:Ljava/lang/String;
    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #desc:Ljava/lang/String;
    goto :goto_a8

    .line 422
    .end local v1           #desc:Ljava/lang/String;
    .end local v2           #f:Ljava/lang/String;
    .end local v4           #list:[I
    :pswitch_e7
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->doSearch()V

    move v6, v8

    .line 423
    goto/16 :goto_d

    .line 361
    nop

    :pswitch_data_ee
    .packed-switch 0x3
        :pswitch_5e
        :pswitch_4e
        :pswitch_e
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_89
        :pswitch_9
        :pswitch_2e
        :pswitch_e7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "icicle"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 83
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->requestWindowFeature(I)Z

    .line 85
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->setVolumeControlStream(I)V

    .line 86
    if-eqz p1, :cond_30

    .line 87
    const-string v0, "selectedalbum"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 88
    const-string v0, "selectedalbumname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 89
    const-string v0, "selectedartist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 90
    const-string v0, "selectedartistname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 92
    :cond_30
    invoke-static {p0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/content/Context;)Z

    .line 94
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v10, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v0, "file"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v10}, Lcom/android/music/ArtistAlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->setContentView(I)V

    .line 102
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v11

    .line 103
    .local v11, lv:Landroid/widget/ExpandableListView;
    invoke-virtual {v11, v1}, Landroid/widget/ExpandableListView;->setFastScrollEnabled(Z)V

    .line 104
    invoke-virtual {v11, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 105
    invoke-virtual {v11, v1}, Landroid/widget/ExpandableListView;->setTextFilterEnabled(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 108
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-nez v0, :cond_9f

    .line 110
    new-instance v0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v4, 0x7f030013

    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [I

    const v7, 0x7f030011

    new-array v8, v2, [Ljava/lang/String;

    new-array v9, v2, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;-><init>(Landroid/content/Context;Lcom/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 120
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 121
    const v0, 0x7f070053

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->setTitle(I)V

    .line 122
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 133
    :goto_9e
    return-void

    .line 124
    :cond_9f
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0, p0}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->setActivity(Lcom/android/music/ArtistAlbumBrowserActivity;)V

    .line 125
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 126
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    .line 127
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_bb

    .line 128
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_9e

    .line 130
    :cond_bb
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_9e
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 15
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    .line 308
    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x0

    const v10, 0x7f070039

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 309
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const v10, 0x7f07003a

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v6

    .line 310
    .local v6, sub:Landroid/view/SubMenu;
    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 311
    const/4 v7, 0x0

    const/16 v8, 0xa

    const/4 v9, 0x0

    const v10, 0x7f070008

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 312
    const/4 v7, 0x0

    const/16 v8, 0xd

    const/4 v9, 0x0

    const v10, 0x7f07001c

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 314
    move-object v0, p3

    check-cast v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v5, v0

    .line 316
    .local v5, mi:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v7, v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v4

    .line 317
    .local v4, itemtype:I
    iget-wide v7, v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    .line 318
    .local v3, gpos:I
    iget-wide v7, v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    .line 319
    .local v2, cpos:I
    if-nez v4, :cond_9d

    .line 320
    const/4 v7, -0x1

    if-ne v3, v7, :cond_4d

    .line 322
    const-string v7, "Artist/Album"

    const-string v8, "no group"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_4c
    :goto_4c
    return-void

    .line 325
    :cond_4d
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v7

    sub-int/2addr v3, v7

    .line 326
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v7, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 327
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 328
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v9, "artist"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 329
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 330
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    if-eqz v7, :cond_8c

    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    const-string v8, "<unknown>"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_97

    .line 331
    :cond_8c
    const v7, 0x7f07002f

    invoke-virtual {p0, v7}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_4c

    .line 333
    :cond_97
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_4c

    .line 336
    :cond_9d
    const/4 v7, 0x1

    if-ne v4, v7, :cond_4c

    .line 337
    const/4 v7, -0x1

    if-ne v2, v7, :cond_ab

    .line 339
    const-string v7, "Artist/Album"

    const-string v8, "no child"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 342
    :cond_ab
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v7

    invoke-interface {v7, v3, v2}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 343
    .local v1, c:Landroid/database/Cursor;
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 344
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 345
    iget-wide v7, v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 346
    const-string v7, "album"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 347
    invoke-virtual {p0}, Lcom/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v7

    sub-int/2addr v3, v7

    .line 348
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v7, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 349
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const-string v9, "artist"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 351
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v7, :cond_ff

    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v8, "<unknown>"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10b

    .line 352
    :cond_ff
    const v7, 0x7f070030

    invoke-virtual {p0, v7}, Lcom/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_4c

    .line 354
    :cond_10b
    iget-object v7, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_4c
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 262
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 263
    const/4 v0, 0x6

    const v1, 0x7f070004

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020019

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 264
    const/4 v0, 0x7

    const v1, 0x7f070005

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 265
    const/16 v0, 0x9

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-static {p0}, Lcom/android/music/MusicUtils;->unbindFromService(Landroid/content/Context;)V

    .line 156
    iget-boolean v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapterSent:Z

    if-nez v1, :cond_13

    .line 157
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 158
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_13

    .line 159
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 162
    .end local v0           #c:Landroid/database/Cursor;
    :cond_13
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v1, :cond_20

    .line 163
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/AsyncQueryHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 165
    :cond_20
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p0, v2}, Lcom/android/music/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 170
    iput-object v2, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 171
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapterDestroyed:Z

    .line 172
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/ArtistAlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onDestroy()V

    .line 174
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 11
    .parameter "item"

    .prologue
    const/4 v8, 0x1

    .line 279
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    .line 303
    :pswitch_8
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 281
    :pswitch_d
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 282
    .local v7, intent:Landroid/content/Intent;
    const-class v0, Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v7, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 283
    const/high16 v0, 0x400

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0, v7}, Lcom/android/music/ArtistAlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v8

    .line 285
    goto :goto_c

    .line 288
    .end local v7           #intent:Landroid/content/Intent;
    :pswitch_21
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.android.music.PLAYBACK_VIEWER"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/android/music/ArtistAlbumBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v8

    .line 290
    goto :goto_c

    .line 293
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

    .line 297
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_48

    .line 298
    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_48
    move v0, v8

    .line 301
    goto :goto_c

    .line 279
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
    .line 214
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 215
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 216
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onPause()V

    .line 217
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 271
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/android/music/MusicUtils;->isMusicLoaded()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 272
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onResume()V

    .line 179
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/ArtistAlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 185
    invoke-static {p0}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 186
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapterSent:Z

    .line 138
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outcicle"

    .prologue
    .line 146
    const-string v0, "selectedalbum"

    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "selectedalbumname"

    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "selectedartist"

    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "selectedartistname"

    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 151
    return-void
.end method
