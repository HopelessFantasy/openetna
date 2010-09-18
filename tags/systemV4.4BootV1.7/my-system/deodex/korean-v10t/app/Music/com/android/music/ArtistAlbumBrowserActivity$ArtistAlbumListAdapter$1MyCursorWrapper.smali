.class Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "ArtistAlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCursorWrapper"
.end annotation


# instance fields
.field mArtistName:Ljava/lang/String;

.field mMagicColumnIdx:I

.field final synthetic this$0:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;


# direct methods
.method constructor <init>(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;Landroid/database/Cursor;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter "c"
    .parameter "artist"

    .prologue
    .line 754
    iput-object p1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 755
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 756
    iput-object p3, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mArtistName:Ljava/lang/String;

    .line 757
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mArtistName:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mArtistName:Ljava/lang/String;

    const-string v1, "<unknown>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 758
    :cond_15
    invoke-static {p1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->access$400(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mArtistName:Ljava/lang/String;

    .line 760
    :cond_1b
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    iput v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mMagicColumnIdx:I

    .line 761
    return-void
.end method


# virtual methods
.method public deactivate()V
    .registers 4

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-static {v0}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->access$300(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Lcom/android/music/ArtistAlbumBrowserActivity;

    move-result-object v0

    monitor-enter v0

    .line 796
    :try_start_7
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->access$502(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;Z)Z

    .line 797
    invoke-super {p0}, Landroid/database/CursorWrapper;->deactivate()V

    .line 798
    monitor-exit v0

    .line 799
    return-void

    .line 798
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getColumnCount()I
    .registers 2

    .prologue
    .line 789
    invoke-super {p0}, Landroid/database/CursorWrapper;->getColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .registers 3
    .parameter "name"

    .prologue
    .line 773
    const-string v0, "artist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 774
    iget v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mMagicColumnIdx:I

    .line 776
    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_a
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 3
    .parameter "idx"

    .prologue
    .line 781
    iget v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mMagicColumnIdx:I

    if-eq p1, v0, :cond_9

    .line 782
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 784
    :goto_8
    return-object v0

    :cond_9
    const-string v0, "artist"

    goto :goto_8
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 765
    iget v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mMagicColumnIdx:I

    if-eq p1, v0, :cond_9

    .line 766
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 768
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->mArtistName:Ljava/lang/String;

    goto :goto_8
.end method

.method public requery()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 803
    iget-object v0, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-static {v0}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->access$300(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Lcom/android/music/ArtistAlbumBrowserActivity;

    move-result-object v0

    monitor-enter v0

    .line 804
    :try_start_9
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-super {p0}, Landroid/database/CursorWrapper;->requery()Z

    move-result v2

    if-nez v2, :cond_20

    move v2, v4

    :goto_12
    invoke-static {v1, v2}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->access$502(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;Z)Z

    .line 805
    iget-object v1, p0, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1MyCursorWrapper;->this$0:Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-static {v1}, Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->access$500(Lcom/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Z

    move-result v1

    if-nez v1, :cond_22

    move v1, v4

    :goto_1e
    monitor-exit v0

    return v1

    :cond_20
    move v2, v3

    .line 804
    goto :goto_12

    :cond_22
    move v1, v3

    .line 805
    goto :goto_1e

    .line 806
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_24

    throw v1
.end method
