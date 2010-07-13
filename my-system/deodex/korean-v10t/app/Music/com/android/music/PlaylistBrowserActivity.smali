.class public Lcom/android/music/PlaylistBrowserActivity;
.super Landroid/app/ListActivity;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/music/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
    }
.end annotation


# static fields
.field private static final ALL_SONGS_PLAYLIST:J = -0x2L

.field private static final CHANGE_WEEKS:I = 0x11

.field private static final DELETE_PLAYLIST:I = 0xe

.field private static final EDIT_PLAYLIST:I = 0xf

.field private static final PODCASTS_PLAYLIST:J = -0x3L

.field private static final RECENTLY_ADDED_PLAYLIST:J = -0x1L

.field private static final RENAME_PLAYLIST:I = 0x10

.field private static final TAG:Ljava/lang/String; = "PlaylistBrowserActivity"


# instance fields
.field private mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

.field mAdapterDestroyed:Z

.field mAdapterSent:Z

.field mCols:[Ljava/lang/String;

.field private mCreateShortcut:Z

.field private mPlaylistCursor:Landroid/database/Cursor;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 73
    iput-boolean v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapterDestroyed:Z

    .line 204
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/PlaylistBrowserActivity$2;-><init>(Lcom/android/music/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 212
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/PlaylistBrowserActivity$3;-><init>(Lcom/android/music/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 438
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/PlaylistBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->playRecentlyAdded()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/music/PlaylistBrowserActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->playPodcasts()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/music/PlaylistBrowserActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/PlaylistBrowserActivity;)Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/music/PlaylistBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/music/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/music/PlaylistBrowserActivity;->mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/music/PlaylistBrowserActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/music/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "async"
    .parameter "filterstring"

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x25

    const/4 v1, 0x0

    const-string v7, "name"

    .line 445
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .local v12, where:Ljava/lang/StringBuilder;
    const-string v0, "name != \'\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const/4 v6, 0x0

    .line 450
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_54

    .line 451
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 452
    .local v11, searchWords:[Ljava/lang/String;
    array-length v0, v11

    new-array v6, v0, [Ljava/lang/String;

    .line 453
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v9

    .line 454
    .local v9, col:Ljava/text/Collator;
    invoke-virtual {v9, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 455
    const/4 v10, 0x0

    .local v10, i:I
    :goto_24
    array-length v0, v11

    if-ge v10, v0, :cond_43

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v3, v11, v10

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    .line 455
    add-int/lit8 v10, v10, 0x1

    goto :goto_24

    .line 458
    :cond_43
    const/4 v10, 0x0

    :goto_44
    array-length v0, v11

    if-ge v10, v0, :cond_54

    .line 459
    const-string v0, " AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const-string v0, "name LIKE ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    add-int/lit8 v10, v10, 0x1

    goto :goto_44

    .line 464
    .end local v9           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v11           #searchWords:[Ljava/lang/String;
    :cond_54
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 467
    .local v5, whereclause:Ljava/lang/String;
    if-eqz p1, :cond_66

    .line 468
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    const-string v0, "name"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 476
    :goto_65
    return-object v0

    .line 472
    :cond_66
    const/4 v8, 0x0

    .line 473
    .local v8, c:Landroid/database/Cursor;
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    const-string v0, "name"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 476
    invoke-direct {p0, v8}, Lcom/android/music/PlaylistBrowserActivity;->mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_65
.end method

.method private mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 16
    .parameter "c"

    .prologue
    .line 480
    if-nez p1, :cond_4

    .line 481
    const/4 v0, 0x0

    .line 518
    :goto_3
    return-object v0

    .line 483
    :cond_4
    instance-of v0, p1, Landroid/database/MergeCursor;

    if-eqz v0, :cond_11

    .line 485
    const-string v0, "PlaylistBrowserActivity"

    const-string v1, "Already wrapped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 486
    goto :goto_3

    .line 488
    :cond_11
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v7, autoplaylists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    iget-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v0, :cond_36

    .line 490
    new-instance v6, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 491
    .local v6, all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v0, -0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    .end local v6           #all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_36
    new-instance v13, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 496
    .local v13, recent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "count(*)"

    aput-object v3, v2, v0

    const-string v3, "is_podcast=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 503
    .local v10, counter:Landroid/database/Cursor;
    if-eqz v10, :cond_90

    .line 504
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 505
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 506
    .local v11, numpodcasts:I
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 507
    if-lez v11, :cond_90

    .line 508
    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 509
    .local v12, podcasts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v0, -0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    .end local v11           #numpodcasts:I
    .end local v12           #podcasts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_90
    new-instance v8, Lcom/android/internal/database/ArrayListCursor;

    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    invoke-direct {v8, v0, v7}, Lcom/android/internal/database/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 517
    .local v8, autoplaylistscursor:Lcom/android/internal/database/ArrayListCursor;
    new-instance v9, Landroid/database/MergeCursor;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/database/Cursor;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-direct {v9, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .local v9, cc:Landroid/database/Cursor;
    move-object v0, v9

    .line 518
    goto/16 :goto_3
.end method

.method private playPodcasts()V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 414
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 415
    .local v2, ccols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "is_podcast=1"

    const/4 v4, 0x0

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 419
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_17

    .line 435
    :goto_16
    return-void

    .line 424
    :cond_17
    :try_start_17
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 425
    .local v8, len:I
    new-array v9, v8, [I

    .line 426
    .local v9, list:[I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1e
    if-ge v7, v8, :cond_2d

    .line 427
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 428
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v9, v7

    .line 426
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    .line 430
    :cond_2d
    const/4 v0, 0x0

    invoke-static {p0, v9, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[II)V
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_31} :catch_35

    .line 433
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_16

    .line 431
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #list:[I
    :catch_35
    move-exception v0

    .line 433
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_16

    :catchall_3a
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private playRecentlyAdded()V
    .registers 14

    .prologue
    const/4 v4, 0x0

    .line 388
    const-string v0, "numweeks"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const v1, 0x93a80

    mul-int v6, v0, v1

    .line 389
    .local v6, X:I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    .line 390
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "date_added>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v11, 0x3e8

    div-long/2addr v4, v11

    int-to-long v11, v6

    sub-long/2addr v4, v11

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 394
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_3d

    .line 410
    :goto_3c
    return-void

    .line 399
    :cond_3d
    :try_start_3d
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 400
    .local v9, len:I
    new-array v10, v9, [I

    .line 401
    .local v10, list:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_44
    if-ge v8, v9, :cond_53

    .line 402
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 403
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v10, v8

    .line 401
    add-int/lit8 v8, v8, 0x1

    goto :goto_44

    .line 405
    :cond_53
    const/4 v0, 0x0

    invoke-static {p0, v10, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[II)V
    :try_end_57
    .catchall {:try_start_3d .. :try_end_57} :catchall_60
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3d .. :try_end_57} :catch_5b

    .line 408
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3c

    .line 406
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[I
    :catch_5b
    move-exception v0

    .line 408
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3c

    :catchall_60
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private setTitle()V
    .registers 2

    .prologue
    .line 235
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->setTitle(I)V

    .line 236
    return-void
.end method


# virtual methods
.method public init(Landroid/database/Cursor;)V
    .registers 6
    .parameter "cursor"

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapterDestroyed:Z

    if-eqz v0, :cond_5

    .line 232
    :goto_4
    return-void

    .line 221
    :cond_5
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 223
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1d

    .line 224
    invoke-static {p0}, Lcom/android/music/MusicUtils;->displayDatabaseError(Landroid/app/Activity;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->closeContextMenu()V

    .line 226
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 230
    :cond_1d
    invoke-static {p0}, Lcom/android/music/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 231
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->setTitle()V

    goto :goto_4
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 338
    packed-switch p1, :pswitch_data_16

    .line 347
    :goto_3
    return-void

    .line 340
    :pswitch_4
    if-nez p2, :cond_a

    .line 341
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->finish()V

    goto :goto_3

    .line 343
    :cond_a
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_3

    .line 338
    nop

    :pswitch_data_16
    .packed-switch 0xb
        :pswitch_4
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 12
    .parameter "item"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 296
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 297
    .local v1, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_8e

    :cond_11
    :goto_11
    move v3, v7

    .line 333
    :goto_12
    return v3

    .line 299
    :sswitch_13
    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long v3, v3, v8

    if-nez v3, :cond_1d

    .line 300
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->playRecentlyAdded()V

    goto :goto_11

    .line 301
    :cond_1d
    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v5, -0x3

    cmp-long v3, v3, v5

    if-nez v3, :cond_29

    .line 302
    invoke-direct {p0}, Lcom/android/music/PlaylistBrowserActivity;->playPodcasts()V

    goto :goto_11

    .line 304
    :cond_29
    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {p0, v3, v4}, Lcom/android/music/MusicUtils;->playPlaylist(Landroid/content/Context;J)V

    goto :goto_11

    .line 308
    :sswitch_2f
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 310
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 311
    const v3, 0x7f070023

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 312
    iget-object v3, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_11

    .line 313
    const v3, 0x7f07001f

    invoke-virtual {p0, v3}, Lcom/android/music/PlaylistBrowserActivity;->setTitle(I)V

    goto :goto_11

    .line 317
    .end local v2           #uri:Landroid/net/Uri;
    :sswitch_58
    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long v3, v3, v8

    if-nez v3, :cond_6f

    .line 318
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 319
    .local v0, intent:Landroid/content/Intent;
    const-class v3, Lcom/android/music/WeekSelector;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 320
    const/16 v3, 0x11

    invoke-virtual {p0, v0, v3}, Lcom/android/music/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v3, v7

    .line 321
    goto :goto_12

    .line 323
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6f
    const-string v3, "PlaylistBrowserActivity"

    const-string v4, "should not be here"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 327
    :sswitch_77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 328
    .restart local v0       #intent:Landroid/content/Intent;
    const-class v3, Lcom/android/music/RenamePlaylist;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 329
    const-string v3, "rename"

    iget-wide v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 330
    const/16 v3, 0x10

    invoke-virtual {p0, v0, v3}, Lcom/android/music/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_11

    .line 297
    :sswitch_data_8e
    .sparse-switch
        0x5 -> :sswitch_13
        0xe -> :sswitch_2f
        0xf -> :sswitch_58
        0x10 -> :sswitch_77
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter "icicle"

    .prologue
    const/4 v13, 0x0

    const v12, 0x7f070056

    const/4 v11, 0x0

    const/4 v6, 0x1

    .line 85
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 88
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, action:Ljava/lang/String;
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 90
    iput-boolean v6, p0, Lcom/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    .line 93
    :cond_1b
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->requestWindowFeature(I)Z

    .line 94
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->setVolumeControlStream(I)V

    .line 95
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$1;

    invoke-direct {v0, p0, v7, v9}, Lcom/android/music/PlaylistBrowserActivity$1;-><init>(Lcom/android/music/PlaylistBrowserActivity;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 119
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .local v8, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v0, "file"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/android/music/PlaylistBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->setContentView(I)V

    .line 127
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v10

    .line 128
    .local v10, lv:Landroid/widget/ListView;
    invoke-virtual {v10, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 129
    invoke-virtual {v10, v6}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 132
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-nez v0, :cond_95

    .line 134
    new-instance v0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030010

    iget-object v4, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    new-array v5, v6, [Ljava/lang/String;

    const-string v2, "name"

    aput-object v2, v5, v11

    new-array v6, v6, [I

    const v2, 0x1020014

    aput v2, v6, v11

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;-><init>(Landroid/content/Context;Lcom/android/music/PlaylistBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 141
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    invoke-virtual {p0, v12}, Lcom/android/music/PlaylistBrowserActivity;->setTitle(I)V

    .line 143
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v13}, Lcom/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 161
    :goto_94
    return-void

    .line 145
    :cond_95
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0, p0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->setActivity(Lcom/android/music/PlaylistBrowserActivity;)V

    .line 146
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    .line 154
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b1

    .line 155
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_94

    .line 157
    :cond_b1
    invoke-virtual {p0, v12}, Lcom/android/music/PlaylistBrowserActivity;->setTitle(I)V

    .line 158
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v13}, Lcom/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_94
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 13
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 269
    iget-boolean v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v2, :cond_8

    .line 292
    :goto_7
    return-void

    .line 273
    :cond_8
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 275
    .local v1, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    const/4 v2, 0x5

    const v3, 0x7f070039

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 277
    iget-wide v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long v2, v2, v7

    if-ltz v2, :cond_21

    .line 278
    const/16 v2, 0xe

    const v3, 0x7f070020

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 281
    :cond_21
    iget-wide v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_31

    .line 282
    const/16 v2, 0xf

    const v3, 0x7f070021

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 285
    :cond_31
    iget-wide v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long v2, v2, v7

    if-ltz v2, :cond_3f

    .line 286
    const/16 v2, 0x10

    const v3, 0x7f070022

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 289
    :cond_3f
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 290
    iget-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v4, "name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-boolean v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-nez v0, :cond_29

    .line 241
    const/4 v0, 0x6

    const v1, 0x7f070004

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020019

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 243
    const/4 v0, 0x7

    const v1, 0x7f070005

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/android/music/MusicUtils;->isMusicLoaded()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 246
    :cond_29
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-static {p0}, Lcom/android/music/MusicUtils;->unbindFromService(Landroid/content/Context;)V

    .line 173
    iget-boolean v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapterSent:Z

    if-nez v1, :cond_13

    .line 174
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v1}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 175
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_13

    .line 176
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 179
    .end local v0           #c:Landroid/database/Cursor;
    :cond_13
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v1, :cond_20

    .line 180
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v1}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/AsyncQueryHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 182
    :cond_20
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 186
    invoke-virtual {p0, v2}, Lcom/android/music/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    iput-object v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 188
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapterDestroyed:Z

    .line 189
    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/PlaylistBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 191
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 13
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const-string v6, "android.intent.action.PICK"

    const-string v5, "vnd.android.cursor.dir/track"

    const-string v4, "playlist"

    .line 352
    iget-boolean v2, p0, Lcom/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v2, :cond_54

    .line 353
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 354
    .local v1, shortcut:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/playlist"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v2, "playlist"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 359
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 360
    const-string v3, "android.intent.extra.shortcut.NAME"

    const v2, 0x7f0a0023

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 361
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v3, 0x7f020017

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 364
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/music/PlaylistBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/music/PlaylistBrowserActivity;->finish()V

    .line 384
    .end local v1           #shortcut:Landroid/content/Intent;
    :goto_53
    return-void

    .line 368
    .end local v0           #intent:Landroid/content/Intent;
    :cond_54
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-nez v2, :cond_73

    .line 369
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const-string v2, "playlist"

    const-string v2, "recentlyadded"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_53

    .line 373
    .end local v0           #intent:Landroid/content/Intent;
    :cond_73
    const-wide/16 v2, -0x3

    cmp-long v2, p4, v2

    if-nez v2, :cond_92

    .line 374
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v2, "playlist"

    const-string v2, "podcasts"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_53

    .line 379
    .end local v0           #intent:Landroid/content/Intent;
    :cond_92
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string v2, "playlist"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_53
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 252
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_2e

    .line 265
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_c
    return v1

    .line 254
    :pswitch_d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 255
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 256
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v1, v2

    .line 258
    goto :goto_c

    .line 261
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_21
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/music/PlaylistBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v1, v2

    .line 263
    goto :goto_c

    .line 252
    nop

    :pswitch_data_2e
    .packed-switch 0x6
        :pswitch_d
        :pswitch_21
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 202
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 203
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 197
    invoke-static {p0}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 198
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 166
    .local v0, a:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/PlaylistBrowserActivity;->mAdapterSent:Z

    .line 167
    return-object v0
.end method
