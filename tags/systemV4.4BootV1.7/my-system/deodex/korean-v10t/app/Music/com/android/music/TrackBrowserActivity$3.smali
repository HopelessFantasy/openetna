.class Lcom/android/music/TrackBrowserActivity$3;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/android/music/TouchInterceptor$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$3;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .registers 15
    .parameter "from"
    .parameter "to"

    .prologue
    .line 483
    iget-object v9, p0, Lcom/android/music/TrackBrowserActivity$3;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v9}, Lcom/android/music/TrackBrowserActivity;->access$300(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v9

    instance-of v9, v9, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v9, :cond_30

    .line 485
    iget-object v9, p0, Lcom/android/music/TrackBrowserActivity$3;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v9}, Lcom/android/music/TrackBrowserActivity;->access$300(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    check-cast v1, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    .line 486
    .local v1, c:Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;
    invoke-virtual {v1, p1, p2}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->moveItem(II)V

    .line 487
    iget-object v9, p0, Lcom/android/music/TrackBrowserActivity$3;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v9}, Lcom/android/music/TrackBrowserActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p1}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->notifyDataSetChanged()V

    .line 488
    iget-object v9, p0, Lcom/android/music/TrackBrowserActivity$3;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v9}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ListView;->invalidateViews()V

    .line 489
    iget-object v9, p0, Lcom/android/music/TrackBrowserActivity$3;->this$0:Lcom/android/music/TrackBrowserActivity;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/music/TrackBrowserActivity;->access$402(Lcom/android/music/TrackBrowserActivity;Z)Z

    .line 531
    .end local v1           #c:Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;
    :cond_2f
    return-void

    .line 492
    .restart local p1
    :cond_30
    const-string v9, "external"

    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity$3;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v10}, Lcom/android/music/TrackBrowserActivity;->access$500(Lcom/android/music/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 494
    .local v0, baseUri:Landroid/net/Uri;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 495
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "_id=?"

    .line 496
    .local v7, where:Ljava/lang/String;
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    .line 497
    .local v8, wherearg:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/music/TrackBrowserActivity$3;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v9}, Lcom/android/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 499
    .local v4, res:Landroid/content/ContentResolver;
    iget-object v9, p0, Lcom/android/music/TrackBrowserActivity$3;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v9}, Lcom/android/music/TrackBrowserActivity;->access$300(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v9

    const-string v10, "play_order"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 501
    .local v2, colidx:I
    if-ge p1, p2, :cond_c5

    .line 503
    iget-object v9, p0, Lcom/android/music/TrackBrowserActivity$3;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v9}, Lcom/android/music/TrackBrowserActivity;->access$300(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 504
    iget-object v9, p0, Lcom/android/music/TrackBrowserActivity$3;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v9}, Lcom/android/music/TrackBrowserActivity;->access$300(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 505
    .local v5, toidx:I
    iget-object v9, p0, Lcom/android/music/TrackBrowserActivity$3;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v9}, Lcom/android/music/TrackBrowserActivity;->access$300(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 506
    const-string v9, "play_order"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 507
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity$3;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v10}, Lcom/android/music/TrackBrowserActivity;->access$300(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 508
    invoke-virtual {v4, v0, v6, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 509
    add-int/lit8 v3, p1, 0x1

    .local v3, i:I
    :goto_9a
    if-gt v3, p2, :cond_2f

    .line 510
    iget-object v9, p0, Lcom/android/music/TrackBrowserActivity$3;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v9}, Lcom/android/music/TrackBrowserActivity;->access$300(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 511
    const-string v9, "play_order"

    const/4 v10, 0x1

    sub-int v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 512
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity$3;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v10}, Lcom/android/music/TrackBrowserActivity;->access$300(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 513
    invoke-virtual {v4, v0, v6, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 509
    add-int/lit8 v3, v3, 0x1

    goto :goto_9a

    .line 515
    .end local v3           #i:I
    .end local v5           #toidx:I
    :cond_c5
    if-le p1, p2, :cond_2f

    .line 517
    iget-object v9, p0, Lcom/android/music/TrackBrowserActivity$3;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v9}, Lcom/android/music/TrackBrowserActivity;->access$300(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 518
    iget-object v9, p0, Lcom/android/music/TrackBrowserActivity$3;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v9}, Lcom/android/music/TrackBrowserActivity;->access$300(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 519
    .restart local v5       #toidx:I
    iget-object v9, p0, Lcom/android/music/TrackBrowserActivity$3;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v9}, Lcom/android/music/TrackBrowserActivity;->access$300(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 520
    const-string v9, "play_order"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 521
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity$3;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v10}, Lcom/android/music/TrackBrowserActivity;->access$300(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 522
    invoke-virtual {v4, v0, v6, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 523
    const/4 v9, 0x1

    sub-int v3, p1, v9

    .restart local v3       #i:I
    :goto_100
    if-lt v3, p2, :cond_2f

    .line 524
    iget-object v9, p0, Lcom/android/music/TrackBrowserActivity$3;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v9}, Lcom/android/music/TrackBrowserActivity;->access$300(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 525
    const-string v9, "play_order"

    add-int/lit8 v10, v3, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 526
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity$3;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v10}, Lcom/android/music/TrackBrowserActivity;->access$300(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 527
    invoke-virtual {v4, v0, v6, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 523
    add-int/lit8 v3, v3, -0x1

    goto :goto_100
.end method
