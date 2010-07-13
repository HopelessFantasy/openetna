.class public Lcom/android/music/MusicPicker;
.super Landroid/app/ListActivity;
.source "MusicPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/android/music/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/MusicPicker$QueryHandler;,
        Lcom/android/music/MusicPicker$TrackListAdapter;
    }
.end annotation


# static fields
.field static final ALBUM_MENU:I = 0x2

.field static final ARTIST_MENU:I = 0x3

.field static final CURSOR_COLS:[Ljava/lang/String; = null

.field static final DBG:Z = false

.field static final FOCUS_KEY:Ljava/lang/String; = "focused"

.field static final LIST_STATE_KEY:Ljava/lang/String; = "liststate"

.field static final MY_QUERY_TOKEN:I = 0x2a

.field static final SORT_MODE_KEY:Ljava/lang/String; = "sortMode"

.field static final TAG:Ljava/lang/String; = "MusicPicker"

.field static final TRACK_MENU:I = 0x1

.field static sFormatBuilder:Ljava/lang/StringBuilder;

.field static sFormatter:Ljava/util/Formatter;

.field static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field mAdapter:Lcom/android/music/MusicPicker$TrackListAdapter;

.field mBaseUri:Landroid/net/Uri;

.field mCancelButton:Landroid/view/View;

.field mCursor:Landroid/database/Cursor;

.field mListContainer:Landroid/view/View;

.field mListHasFocus:Z

.field mListShown:Z

.field mListState:Landroid/os/Parcelable;

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field mOkayButton:Landroid/view/View;

.field mPlayingId:J

.field mProgressContainer:Landroid/view/View;

.field mQueryHandler:Lcom/android/music/MusicPicker$QueryHandler;

.field mSelectedId:J

.field mSelectedUri:Landroid/net/Uri;

.field mSortMode:I

.field mSortOrder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x5

    .line 89
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const-string v1, "artist"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "track"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/music/MusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 104
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/music/MusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/music/MusicPicker;->sFormatter:Ljava/util/Formatter;

    .line 106
    new-array v0, v3, [Ljava/lang/Object;

    sput-object v0, Lcom/android/music/MusicPicker;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, -0x1

    .line 64
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/MusicPicker;->mSortMode:I

    .line 143
    iput-wide v1, p0, Lcom/android/music/MusicPicker;->mSelectedId:J

    .line 149
    iput-wide v1, p0, Lcom/android/music/MusicPicker;->mPlayingId:J

    .line 375
    return-void
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "secs"

    .prologue
    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    .line 405
    const v2, 0x7f070003

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, durationformat:Ljava/lang/String;
    sget-object v2, Lcom/android/music/MusicPicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 412
    sget-object v1, Lcom/android/music/MusicPicker;->sTimeArgs:[Ljava/lang/Object;

    .line 413
    .local v1, timeArgs:[Ljava/lang/Object;
    const-wide/16 v2, 0xe10

    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 414
    const/4 v2, 0x1

    div-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 415
    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 416
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 417
    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 419
    sget-object v2, Lcom/android/music/MusicPicker;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method doQuery(ZLjava/lang/String;)Landroid/database/Cursor;
    .registers 22
    .parameter "sync"
    .parameter "filterstring"

    .prologue
    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MusicPicker;->mQueryHandler:Lcom/android/music/MusicPicker$QueryHandler;

    move-object v2, v0

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Lcom/android/music/MusicPicker$QueryHandler;->cancelOperation(I)V

    .line 613
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 614
    .local v18, where:Ljava/lang/StringBuilder;
    const-string v2, "title != \'\'"

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    const/4 v6, 0x0

    .line 618
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_8e

    .line 619
    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 620
    .local v17, searchWords:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move v2, v0

    new-array v6, v2, [Ljava/lang/String;

    .line 621
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v15

    .line 622
    .local v15, col:Ljava/text/Collator;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 623
    const/16 v16, 0x0

    .local v16, i:I
    :goto_33
    move-object/from16 v0, v17

    array-length v0, v0

    move v2, v0

    move/from16 v0, v16

    move v1, v2

    if-ge v0, v1, :cond_60

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v17, v16

    invoke-static {v3}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v16

    .line 623
    add-int/lit8 v16, v16, 0x1

    goto :goto_33

    .line 626
    :cond_60
    const/16 v16, 0x0

    :goto_62
    move-object/from16 v0, v17

    array-length v0, v0

    move v2, v0

    move/from16 v0, v16

    move v1, v2

    if-ge v0, v1, :cond_8e

    .line 627
    const-string v2, " AND "

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    const-string v2, "artist_key||"

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    const-string v2, "album_key||"

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    const-string v2, "title_key LIKE ?"

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    add-int/lit8 v16, v16, 0x1

    goto :goto_62

    .line 638
    .end local v15           #col:Ljava/text/Collator;
    .end local v16           #i:I
    .end local v17           #searchWords:[Ljava/lang/String;
    :cond_8e
    if-eqz p1, :cond_a9

    .line 640
    :try_start_90
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/MusicPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    move-object v3, v0

    sget-object v4, Lcom/android/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_90 .. :try_end_a7} :catch_d7

    move-result-object v2

    .line 650
    :goto_a8
    return-object v2

    .line 645
    :cond_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MusicPicker;->mAdapter:Lcom/android/music/MusicPicker$TrackListAdapter;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/music/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 646
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/android/music/MusicPicker;->setProgressBarIndeterminateVisibility(Z)V

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MusicPicker;->mQueryHandler:Lcom/android/music/MusicPicker$QueryHandler;

    move-object v7, v0

    const/16 v8, 0x2a

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    move-object v10, v0

    sget-object v11, Lcom/android/music/MusicPicker;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    move-object v14, v0

    move-object v13, v6

    invoke-virtual/range {v7 .. v14}, Lcom/android/music/MusicPicker$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :goto_d5
    const/4 v2, 0x0

    goto :goto_a8

    .line 642
    :catch_d7
    move-exception v2

    goto :goto_d5
.end method

.method makeListShown()V
    .registers 3

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/android/music/MusicPicker;->mListShown:Z

    if-nez v0, :cond_2b

    .line 590
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/MusicPicker;->mListShown:Z

    .line 591
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mProgressContainer:Landroid/view/View;

    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 593
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mProgressContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mListContainer:Landroid/view/View;

    const/high16 v1, 0x10a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 596
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mListContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 598
    :cond_2b
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 710
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 722
    :cond_7
    :goto_7
    return-void

    .line 712
    :pswitch_8
    iget-wide v0, p0, Lcom/android/music/MusicPicker;->mSelectedId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7

    .line 713
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/music/MusicPicker;->setResult(ILandroid/content/Intent;)V

    .line 714
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->finish()V

    goto :goto_7

    .line 719
    :pswitch_23
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->finish()V

    goto :goto_7

    .line 710
    nop

    :pswitch_data_28
    .packed-switch 0x7f0a001f
        :pswitch_8
        :pswitch_23
    .end packed-switch
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "mp"

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-ne v0, p1, :cond_18

    .line 692
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 693
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 694
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 695
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MusicPicker;->mPlayingId:J

    .line 696
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 698
    :cond_18
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "icicle"

    .prologue
    const/4 v12, 0x0

    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    .line 425
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 427
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->requestWindowFeature(I)Z

    .line 429
    const/4 v11, 0x1

    .line 430
    .local v11, sortMode:I
    if-nez p1, :cond_c8

    .line 431
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 442
    :goto_1b
    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 443
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 453
    :cond_2f
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->setContentView(I)V

    .line 455
    const-string v0, "title_key"

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 457
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 459
    .local v3, listView:Landroid/widget/ListView;
    invoke-virtual {v3, v12}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 461
    new-instance v0, Lcom/android/music/MusicPicker$TrackListAdapter;

    const v4, 0x7f03000a

    new-array v5, v12, [Ljava/lang/String;

    new-array v6, v12, [I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/music/MusicPicker$TrackListAdapter;-><init>(Lcom/android/music/MusicPicker;Landroid/content/Context;Landroid/widget/ListView;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mAdapter:Lcom/android/music/MusicPicker$TrackListAdapter;

    .line 465
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mAdapter:Lcom/android/music/MusicPicker$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 467
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 470
    invoke-virtual {v3, v12}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 472
    new-instance v0, Lcom/android/music/MusicPicker$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/music/MusicPicker$QueryHandler;-><init>(Lcom/android/music/MusicPicker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mQueryHandler:Lcom/android/music/MusicPicker$QueryHandler;

    .line 474
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mProgressContainer:Landroid/view/View;

    .line 475
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mListContainer:Landroid/view/View;

    .line 477
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mOkayButton:Landroid/view/View;

    .line 478
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mOkayButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mCancelButton:Landroid/view/View;

    .line 480
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    if-eqz v0, :cond_c4

    .line 485
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 486
    .local v8, builder:Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v10

    .line 487
    .local v10, path:Ljava/lang/String;
    const/16 v0, 0x2f

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 488
    .local v9, idx:I
    if-ltz v9, :cond_ad

    .line 489
    invoke-virtual {v10, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 491
    :cond_ad
    invoke-virtual {v8, v10}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 492
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 496
    .local v7, baseSelectedUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v7, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 499
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/music/MusicPicker;->mSelectedId:J

    .line 503
    .end local v7           #baseSelectedUri:Landroid/net/Uri;
    .end local v8           #builder:Landroid/net/Uri$Builder;
    .end local v9           #idx:I
    .end local v10           #path:Ljava/lang/String;
    :cond_c4
    invoke-virtual {p0, v11}, Lcom/android/music/MusicPicker;->setSortMode(I)Z

    .line 504
    .end local v3           #listView:Landroid/widget/ListView;
    :goto_c7
    return-void

    .line 434
    :cond_c8
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 438
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mListState:Landroid/os/Parcelable;

    .line 439
    const-string v0, "focused"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/music/MusicPicker;->mListHasFocus:Z

    .line 440
    const-string v0, "sortMode"

    invoke-virtual {p1, v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_1b

    .line 445
    :cond_ea
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    .line 446
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mBaseUri:Landroid/net/Uri;

    if-nez v0, :cond_2f

    .line 447
    const-string v0, "MusicPicker"

    const-string v1, "No data URI given to PICK action"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->finish()V

    goto :goto_c7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 519
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 520
    const v0, 0x7f070058

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 521
    const/4 v0, 0x2

    const v1, 0x7f070059

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 522
    const/4 v0, 0x3

    const v1, 0x7f07005a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 523
    return v3
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 661
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->setSelected(Landroid/database/Cursor;)V

    .line 662
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 512
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/music/MusicPicker;->setSortMode(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 513
    const/4 v0, 0x1

    .line 515
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_b
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 536
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 537
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->stopMediaPlayer()V

    .line 538
    return-void
.end method

.method public onRestart()V
    .registers 3

    .prologue
    .line 507
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 508
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    .line 509
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 527
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 530
    const-string v0, "liststate"

    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 531
    const-string v0, "focused"

    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 532
    const-string v0, "sortMode"

    iget v1, p0, Lcom/android/music/MusicPicker;->mSortMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 533
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 541
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 547
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mAdapter:Lcom/android/music/MusicPicker$TrackListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/music/MusicPicker$TrackListAdapter;->setLoading(Z)V

    .line 548
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mAdapter:Lcom/android/music/MusicPicker$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/MusicPicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 549
    return-void
.end method

.method setSelected(Landroid/database/Cursor;)V
    .registers 9
    .parameter "c"

    .prologue
    .line 665
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 666
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/android/music/MusicPicker;->mCursor:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 667
    .local v1, newId:J
    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    .line 669
    iput-wide v1, p0, Lcom/android/music/MusicPicker;->mSelectedId:J

    .line 670
    iget-wide v4, p0, Lcom/android/music/MusicPicker;->mPlayingId:J

    cmp-long v4, v1, v4

    if-nez v4, :cond_22

    iget-object v4, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v4, :cond_5c

    .line 671
    :cond_22
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->stopMediaPlayer()V

    .line 672
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 674
    :try_start_2c
    iget-object v4, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/android/music/MusicPicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v4, p0, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 675
    iget-object v4, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 676
    iget-object v4, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 677
    iget-object v4, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 678
    iget-object v4, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 679
    iput-wide v1, p0, Lcom/android/music/MusicPicker;->mPlayingId:J

    .line 680
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidateViews()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_51} :catch_52

    .line 688
    :cond_51
    :goto_51
    return-void

    .line 681
    :catch_52
    move-exception v4

    move-object v0, v4

    .line 682
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MusicPicker"

    const-string v5, "Unable to play track"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51

    .line 684
    .end local v0           #e:Ljava/io/IOException;
    :cond_5c
    iget-object v4, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_51

    .line 685
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->stopMediaPlayer()V

    .line 686
    invoke-virtual {p0}, Lcom/android/music/MusicPicker;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_51
.end method

.method setSortMode(I)Z
    .registers 6
    .parameter "sortMode"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 556
    iget v0, p0, Lcom/android/music/MusicPicker;->mSortMode:I

    if-eq p1, v0, :cond_a

    .line 557
    packed-switch p1, :pswitch_data_2e

    :cond_a
    move v0, v1

    .line 581
    :goto_b
    return v0

    .line 559
    :pswitch_c
    iput p1, p0, Lcom/android/music/MusicPicker;->mSortMode:I

    .line 560
    const-string v0, "title_key"

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 561
    invoke-virtual {p0, v1, v3}, Lcom/android/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    move v0, v2

    .line 562
    goto :goto_b

    .line 564
    :pswitch_17
    iput p1, p0, Lcom/android/music/MusicPicker;->mSortMode:I

    .line 565
    const-string v0, "album_key ASC, track ASC, title_key ASC"

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 568
    invoke-virtual {p0, v1, v3}, Lcom/android/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    move v0, v2

    .line 569
    goto :goto_b

    .line 571
    :pswitch_22
    iput p1, p0, Lcom/android/music/MusicPicker;->mSortMode:I

    .line 572
    const-string v0, "artist_key ASC, album_key ASC, track ASC, title_key ASC"

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mSortOrder:Ljava/lang/String;

    .line 576
    invoke-virtual {p0, v1, v3}, Lcom/android/music/MusicPicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    move v0, v2

    .line 577
    goto :goto_b

    .line 557
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_17
        :pswitch_22
    .end packed-switch
.end method

.method stopMediaPlayer()V
    .registers 3

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_15

    .line 702
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 703
    iget-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 704
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/MusicPicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 705
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/MusicPicker;->mPlayingId:J

    .line 707
    :cond_15
    return-void
.end method
