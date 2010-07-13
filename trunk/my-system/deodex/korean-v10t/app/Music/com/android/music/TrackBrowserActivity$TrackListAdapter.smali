.class Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/TrackBrowserActivity$TrackListAdapter$QueryHandler;,
        Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/music/TrackBrowserActivity;

.field mArtistIdx:I

.field mAudioIdIdx:I

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field mDisableNowPlayingIndicator:Z

.field mDurationIdx:I

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field mIsNowPlaying:Z

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/music/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V
    .registers 16
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "isnowplaying"
    .parameter "disablenowplayingindicator"

    .prologue
    const/4 v6, 0x0

    .line 1382
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 1353
    iput-object v6, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    .line 1355
    iput-object v6, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 1356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    .line 1383
    iput-object p2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    .line 1384
    invoke-direct {p0, p4}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1385
    iput-boolean p7, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    .line 1386
    iput-boolean p8, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    .line 1387
    const v0, 0x7f07002f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 1388
    const v0, 0x7f070030

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 1390
    new-instance v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$QueryHandler;-><init>(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 1391
    return-void
.end method

.method static synthetic access$800(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/android/music/TrackBrowserActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .registers 6
    .parameter "cursor"

    .prologue
    .line 1402
    if-eqz p1, :cond_2b

    .line 1403
    const-string v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    .line 1404
    const-string v2, "artist"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    .line 1405
    const-string v2, "duration"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mDurationIdx:I

    .line 1407
    :try_start_1a
    const-string v2, "audio_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_22} :catch_2c

    .line 1413
    :goto_22
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v2, :cond_37

    .line 1414
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v2, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 1422
    :cond_2b
    :goto_2b
    return-void

    .line 1409
    :catch_2c
    move-exception v2

    move-object v1, v2

    .line 1410
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    goto :goto_22

    .line 1415
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :cond_37
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v2}, Lcom/android/music/TrackBrowserActivity;->access$900(Lcom/android/music/TrackBrowserActivity;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 1416
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    const v3, 0x10402e4

    invoke-virtual {v2, v3}, Lcom/android/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1419
    .local v0, alpha:Ljava/lang/String;
    new-instance v2, Lcom/android/music/MusicAlphabetIndexer;

    iget v3, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    invoke-direct {v2, p1, v3, v0}, Lcom/android/music/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    goto :goto_2b
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v10, 0x0

    .line 1449
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    .line 1451
    .local v6, vh:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    iget v7, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    iget-object v8, v6, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    invoke-interface {p3, v7, v8}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1452
    iget-object v7, v6, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    iget-object v8, v6, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v8, v8, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v9, v6, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v9, v9, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v7, v8, v10, v9}, Landroid/widget/TextView;->setText([CII)V

    .line 1454
    iget v7, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mDurationIdx:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    add-int/lit16 v7, v7, 0x1f4

    div-int/lit16 v5, v7, 0x3e8

    .line 1455
    .local v5, secs:I
    if-nez v5, :cond_9a

    .line 1456
    iget-object v7, v6, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1461
    :goto_2e
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 1462
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v10, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1464
    iget v7, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1465
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_47

    const-string v7, "<unknown>"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 1466
    :cond_47
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    :goto_4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 1471
    .local v3, len:I
    iget-object v7, v6, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v7, v7

    if-ge v7, v3, :cond_59

    .line 1472
    new-array v7, v3, [C

    iput-object v7, v6, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 1474
    :cond_59
    iget-object v7, v6, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    invoke-virtual {v0, v10, v3, v7, v10}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 1475
    iget-object v7, v6, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    iget-object v8, v6, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    invoke-virtual {v7, v8, v10, v3}, Landroid/widget/TextView;->setText([CII)V

    .line 1477
    iget-object v2, v6, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 1478
    .local v2, iv:Landroid/widget/ImageView;
    const/4 v1, -0x1

    .line 1479
    .local v1, id:I
    sget-object v7, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v7, :cond_76

    .line 1482
    :try_start_6c
    iget-boolean v7, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-eqz v7, :cond_a9

    .line 1483
    sget-object v7, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_75} :catch_b6

    move-result v1

    .line 1502
    :cond_76
    :goto_76
    iget-boolean v7, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-eqz v7, :cond_80

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    if-eq v7, v1, :cond_90

    :cond_80
    iget-boolean v7, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-nez v7, :cond_b0

    iget-boolean v7, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    if-nez v7, :cond_b0

    iget v7, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v1, :cond_b0

    .line 1504
    :cond_90
    const v7, 0x7f020035

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1505
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1509
    :goto_99
    return-void

    .line 1458
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #id:I
    .end local v2           #iv:Landroid/widget/ImageView;
    .end local v3           #len:I
    .end local v4           #name:Ljava/lang/String;
    :cond_9a
    iget-object v7, v6, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    int-to-long v8, v5

    invoke-static {p2, v8, v9}, Lcom/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2e

    .line 1468
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v4       #name:Ljava/lang/String;
    :cond_a5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 1485
    .restart local v1       #id:I
    .restart local v2       #iv:Landroid/widget/ImageView;
    .restart local v3       #len:I
    :cond_a9
    :try_start_a9
    sget-object v7, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->getAudioId()I
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_ae} :catch_b6

    move-result v1

    goto :goto_76

    .line 1507
    :cond_b0
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_99

    .line 1487
    :catch_b6
    move-exception v7

    goto :goto_76
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 1513
    if-eqz p1, :cond_9

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1520
    :cond_8
    :goto_8
    return-void

    .line 1515
    :cond_9
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity;->access$300(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_8

    .line 1516
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v0, p1}, Lcom/android/music/TrackBrowserActivity;->access$302(Lcom/android/music/TrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1517
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1518
    invoke-direct {p0, p1}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    goto :goto_8
.end method

.method public getPositionForSection(I)I
    .registers 4
    .parameter "section"

    .prologue
    .line 1547
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v1, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    .line 1548
    .local v0, pos:I
    return v0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .registers 2

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 1552
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-eqz v0, :cond_b

    .line 1540
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 1542
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1426
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1427
    .local v1, v:Landroid/view/View;
    const v3, 0x7f0a0017

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1428
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v3}, Lcom/android/music/TrackBrowserActivity;->access$900(Lcom/android/music/TrackBrowserActivity;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 1429
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1430
    const v3, 0x7f020022

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1435
    :goto_1f
    new-instance v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;-><init>()V

    .line 1436
    .local v2, vh:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    const v3, 0x7f0a0023

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 1437
    const v3, 0x7f0a0024

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 1438
    const v3, 0x7f0a0022

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    .line 1439
    const v3, 0x7f0a0025

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 1440
    new-instance v3, Landroid/database/CharArrayBuffer;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v3, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 1441
    const/16 v3, 0xc8

    new-array v3, v3, [C

    iput-object v3, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 1442
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1443
    return-object v1

    .line 1432
    .end local v2           #vh:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    .restart local p0
    :cond_63
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1f
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 6
    .parameter "constraint"

    .prologue
    .line 1524
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1525
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_1d

    if-nez v1, :cond_e

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_18

    :cond_e
    if-eqz v1, :cond_1d

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1528
    :cond_18
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1533
    :goto_1c
    return-object v2

    .line 1530
    :cond_1d
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/music/TrackBrowserActivity;->access$200(Lcom/android/music/TrackBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1531
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 1532
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 1533
    goto :goto_1c
.end method

.method public setActivity(Lcom/android/music/TrackBrowserActivity;)V
    .registers 2
    .parameter "newactivity"

    .prologue
    .line 1394
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;

    .line 1395
    return-void
.end method
