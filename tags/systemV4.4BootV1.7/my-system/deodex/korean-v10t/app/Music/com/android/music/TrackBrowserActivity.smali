.class public Lcom/android/music/TrackBrowserActivity;
.super Landroid/app/ListActivity;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/music/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/TrackBrowserActivity$TrackListAdapter;,
        Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;
    }
.end annotation


# static fields
.field public static final ACTION_PUSH_FILE:Ljava/lang/String; = "com.quicinc.bluetooth.ACTION_PUSH_FILE"

.field private static final CLEAR_PLAYLIST:I = 0x11

.field public static final COMPONENT_BLUETOOTH_TRANSFER:Ljava/lang/String; = "com.quicinc.bluetooth.BluetoothDevicePicker"

.field private static final LOGTAG:Ljava/lang/String; = "TrackBrowser"

.field public static final MENU_GROUP_BT:I = 0x1

.field public static final MENU_ITEM_SEND_BT:I = 0x1

.field public static final PACKAGE_BLUETOOTH_TRANSFER:Ljava/lang/String; = "com.quicinc.bluetooth"

.field private static final PLAY_ALL:I = 0x10

.field public static final PROFILE:Ljava/lang/String; = "com.quicinc.bluetooth.intent.PROFILE"

.field public static final PROFILE_OPP:Ljava/lang/String; = "com.quicinc.bluetooth.intent.PROFILE.OPP"

.field private static final Q_ALL:I = 0xe

.field private static final Q_SELECTED:I = 0xd

.field private static final REMOVE:I = 0x12

.field private static final SAVE_AS_PLAYLIST:I = 0xf

.field private static final SEARCH:I = 0x13


# instance fields
.field private mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

.field private mAdapterDestroyed:Z

.field private mAdapterSent:Z

.field private mAlbumId:Ljava/lang/String;

.field private mArtistId:Ljava/lang/String;

.field private mBluetooth:Landroid/bluetooth/BluetoothDevice;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field private mCurrentTrackName:Ljava/lang/String;

.field private mCursorCols:[Ljava/lang/String;

.field private mDeletedOneRow:Z

.field private mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

.field private mEditMode:Z

.field private mGenre:Ljava/lang/String;

.field private mNowPlayingListener:Landroid/content/BroadcastReceiver;

.field private mPlaylist:Ljava/lang/String;

.field private mPlaylistMemberCols:[Ljava/lang/String;

.field private mReScanHandler:Landroid/os/Handler;

.field private mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedId:J

.field private mSelectedPosition:I

.field private mSortOrder:Ljava/lang/String;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackList:Landroid/widget/ListView;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 87
    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapterSent:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapterDestroyed:Z

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    .line 316
    new-instance v0, Lcom/android/music/TrackBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$1;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 328
    new-instance v0, Lcom/android/music/TrackBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$2;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 480
    new-instance v0, Lcom/android/music/TrackBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$3;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    .line 534
    new-instance v0, Lcom/android/music/TrackBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$4;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

    .line 570
    new-instance v0, Lcom/android/music/TrackBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$5;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 577
    new-instance v0, Lcom/android/music/TrackBrowserActivity$6;

    invoke-direct {v0, p0}, Lcom/android/music/TrackBrowserActivity$6;-><init>(Lcom/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/TrackBrowserActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/TrackBrowserActivity;)Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/TrackBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/music/TrackBrowserActivity;->getTrackCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/music/TrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/music/TrackBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/music/TrackBrowserActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/music/TrackBrowserActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/music/TrackBrowserActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/music/TrackBrowserActivity;->removePlaylistItem(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/music/TrackBrowserActivity;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/music/TrackBrowserActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    return v0
.end method

.method private doBluetoothDeviceTransfer(Landroid/net/Uri;)V
    .registers 6
    .parameter "uri"

    .prologue
    .line 712
    const-string v2, "ro.qualcomm.proprietary_obex"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 713
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_30

    .line 714
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 715
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.quicinc.bluetooth.ACTION_PUSH_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 716
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 717
    const-string v2, "com.quicinc.bluetooth.intent.PROFILE"

    const-string v3, "com.quicinc.bluetooth.intent.PROFILE.OPP"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    const-string v2, "com.quicinc.bluetooth"

    const-string v3, "com.quicinc.bluetooth.BluetoothDevicePicker"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    :try_start_2d
    invoke-virtual {p0, v1}, Lcom/android/music/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_30
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2d .. :try_end_30} :catch_31

    .line 727
    .end local v1           #intent:Landroid/content/Intent;
    :cond_30
    :goto_30
    return-void

    .line 721
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_31
    move-exception v0

    .line 722
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "TrackBrowser"

    const-string v3, "No Activity for : com.quicinc.bluetooth.ACTION_PUSH_FILE"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30
.end method

.method private getTrackCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 21
    .parameter "async"
    .parameter "filter"

    .prologue
    .line 978
    const/4 v15, 0x0

    .line 979
    .local v15, ret:Landroid/database/Cursor;
    const-string v4, "title_key"

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 980
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 981
    .local v17, where:Ljava/lang/StringBuilder;
    const-string v4, "title != \'\'"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    const/4 v10, 0x0

    .line 985
    .local v10, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_7c

    .line 986
    const-string v4, " "

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 987
    .local v16, searchWords:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    new-array v10, v4, [Ljava/lang/String;

    .line 988
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v13

    .line 989
    .local v13, col:Ljava/text/Collator;
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/text/Collator;->setStrength(I)V

    .line 990
    const/4 v14, 0x0

    .local v14, i:I
    :goto_30
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    if-ge v14, v4, :cond_5a

    .line 991
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x25

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v16, v14

    invoke-static {v5}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x25

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v14

    .line 990
    add-int/lit8 v14, v14, 0x1

    goto :goto_30

    .line 993
    :cond_5a
    const/4 v14, 0x0

    :goto_5b
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    if-ge v14, v4, :cond_7c

    .line 994
    const-string v4, " AND "

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    const-string v4, "artist_key||"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    const-string v4, "title_key LIKE ?"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    add-int/lit8 v14, v14, 0x1

    goto :goto_5b

    .line 1000
    .end local v13           #col:Ljava/text/Collator;
    .end local v14           #i:I
    .end local v16           #searchWords:[Ljava/lang/String;
    :cond_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_ed

    .line 1001
    const-string v4, "title_key"

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 1002
    if-eqz p1, :cond_c4

    .line 1003
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "external"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v4, v7, v8}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    move-object v8, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const/4 v15, 0x0

    .line 1085
    :cond_b6
    :goto_b6
    if-eqz v15, :cond_c3

    if-eqz p1, :cond_c3

    .line 1086
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 1087
    invoke-direct/range {p0 .. p0}, Lcom/android/music/TrackBrowserActivity;->setTitle()V

    .line 1089
    :cond_c3
    return-object v15

    .line 1009
    :cond_c4
    const-string v4, "external"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    move-object v8, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto :goto_b6

    .line 1013
    :cond_ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_222

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "nowplaying"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_120

    .line 1015
    sget-object v4, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v4, :cond_b6

    .line 1016
    new-instance v15, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    .end local v15           #ret:Landroid/database/Cursor;
    sget-object v4, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    move-object v5, v0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;-><init>(Lcom/android/music/TrackBrowserActivity;Lcom/android/music/IMediaPlaybackService;[Ljava/lang/String;)V

    .line 1017
    .restart local v15       #ret:Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_b6

    .line 1018
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/TrackBrowserActivity;->finish()V

    goto :goto_b6

    .line 1023
    :cond_120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "podcasts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_163

    .line 1024
    const-string v4, " AND is_podcast=1"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    if-eqz p1, :cond_14e

    .line 1026
    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    move-object v8, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "title_key"

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const/4 v15, 0x0

    goto/16 :goto_b6

    .line 1031
    :cond_14e
    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    move-object v8, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "title_key"

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_b6

    .line 1035
    :cond_163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "recentlyadded"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c5

    .line 1037
    const-string v4, "numweeks"

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/music/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const v5, 0x93a80

    mul-int v12, v4, v5

    .line 1038
    .local v12, X:I
    const-string v4, " AND date_added>"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    int-to-long v6, v12

    sub-long/2addr v4, v6

    move-object/from16 v0, v17

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1040
    if-eqz p1, :cond_1b0

    .line 1041
    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    move-object v8, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "title_key"

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    const/4 v15, 0x0

    goto/16 :goto_b6

    .line 1046
    :cond_1b0
    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    move-object v8, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "title_key"

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_b6

    .line 1051
    .end local v12           #X:I
    :cond_1c5
    const-string v4, "play_order"

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 1052
    if-eqz p1, :cond_1f9

    .line 1053
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "external"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v4, v7, v8}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    move-object v8, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const/4 v15, 0x0

    goto/16 :goto_b6

    .line 1058
    :cond_1f9
    const-string v4, "external"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    move-object v8, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_b6

    .line 1064
    :cond_222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_264

    .line 1065
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND album_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "track, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    .line 1068
    :cond_264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_289

    .line 1069
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND artist_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    :cond_289
    const-string v4, " AND is_music=1"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    if-eqz p1, :cond_2ad

    .line 1073
    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    move-object v8, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const/4 v15, 0x0

    goto/16 :goto_b6

    .line 1078
    :cond_2ad
    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    move-object v8, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_b6
.end method

.method private moveItem(Z)V
    .registers 15
    .parameter "up"

    .prologue
    .line 815
    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 816
    .local v3, curcount:I
    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v4

    .line 817
    .local v4, curpos:I
    if-eqz p1, :cond_11

    const/4 v10, 0x1

    if-lt v4, v10, :cond_18

    :cond_11
    if-nez p1, :cond_19

    const/4 v10, 0x1

    sub-int v10, v3, v10

    if-lt v4, v10, :cond_19

    .line 858
    :cond_18
    :goto_18
    return-void

    .line 821
    :cond_19
    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v10, v10, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v10, :cond_54

    .line 822
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v1, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    .line 823
    .local v1, c:Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;
    if-eqz p1, :cond_49

    const/4 v10, 0x1

    sub-int v10, v4, v10

    :goto_28
    invoke-virtual {v1, v4, v10}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->moveItem(II)V

    .line 824
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->notifyDataSetChanged()V

    .line 825
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ListView;->invalidateViews()V

    .line 826
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    .line 827
    if-eqz p1, :cond_4c

    .line 828
    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    const/4 v11, 0x1

    sub-int v11, v4, v11

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_18

    .line 823
    :cond_49
    add-int/lit8 v10, v4, 0x1

    goto :goto_28

    .line 830
    :cond_4c
    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_18

    .line 833
    .end local v1           #c:Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;
    :cond_54
    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v11, "play_order"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 835
    .local v2, colidx:I
    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 836
    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 837
    .local v5, currentplayidx:I
    const-string v10, "external"

    iget-object v11, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 839
    .local v0, baseUri:Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 840
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "_id=?"

    .line 841
    .local v8, where:Ljava/lang/String;
    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/String;

    .line 842
    .local v9, wherearg:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 843
    .local v6, res:Landroid/content/ContentResolver;
    if-eqz p1, :cond_bd

    .line 844
    const-string v10, "play_order"

    const/4 v11, 0x1

    sub-int v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 845
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 846
    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 847
    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 854
    :goto_a5
    const-string v10, "play_order"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 855
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 856
    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_18

    .line 849
    :cond_bd
    const-string v10, "play_order"

    add-int/lit8 v11, v5, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 850
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 851
    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 852
    iget-object v10, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_a5
.end method

.method private removeItem()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 772
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 773
    .local v1, curcount:I
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    .line 774
    .local v2, curpos:I
    if-eqz v1, :cond_11

    if-gez v2, :cond_12

    .line 812
    :cond_11
    :goto_11
    return-void

    .line 778
    :cond_12
    const-string v7, "nowplaying"

    iget-object v8, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 784
    :try_start_1c
    sget-object v7, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v7

    if-eq v2, v7, :cond_27

    .line 785
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_27} :catch_89

    .line 789
    :cond_27
    :goto_27
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 790
    .local v6, v:Landroid/view/View;
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 791
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->invalidateViews()V

    .line 792
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v7, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    invoke-virtual {v7, v2}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->removeItem(I)Z

    .line 793
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 794
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_11

    .line 797
    .end local v6           #v:Landroid/view/View;
    :cond_48
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 799
    .local v0, colidx:I
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 800
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 801
    .local v3, id:J
    const-string v7, "external"

    iget-object v8, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    .line 803
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 805
    add-int/lit8 v1, v1, -0x1

    .line 806
    if-nez v1, :cond_7e

    .line 807
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->finish()V

    goto :goto_11

    .line 809
    :cond_7e
    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    if-ge v2, v1, :cond_87

    move v8, v2

    :goto_83
    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_11

    :cond_87
    move v8, v1

    goto :goto_83

    .line 787
    .end local v0           #colidx:I
    .end local v3           #id:J
    .end local v5           #uri:Landroid/net/Uri;
    :catch_89
    move-exception v7

    goto :goto_27
.end method

.method private removePlaylistItem(I)V
    .registers 12
    .parameter "which"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 542
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, p1, v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 544
    .local v5, v:Landroid/view/View;
    :try_start_10
    sget-object v6, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v6, :cond_1f

    sget-object v6, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v6

    if-eq p1, v6, :cond_1f

    .line 546
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1f} :catch_40

    .line 552
    :cond_1f
    :goto_1f
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 553
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    .line 554
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    instance-of v6, v6, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    if-eqz v6, :cond_45

    .line 555
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    check-cast v6, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    invoke-virtual {v6, p1}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->removeItem(I)Z

    .line 566
    :goto_36
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 567
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->invalidateViews()V

    .line 568
    return-void

    .line 548
    :catch_40
    move-exception v6

    move-object v1, v6

    .line 550
    .local v1, e:Landroid/os/RemoteException;
    iput-boolean v8, p0, Lcom/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    goto :goto_1f

    .line 557
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_45
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 559
    .local v0, colidx:I
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 560
    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 561
    .local v2, id:J
    const-string v6, "external"

    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 563
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_36
.end method

.method private setTitle()V
    .registers 15

    .prologue
    .line 401
    const/4 v11, 0x0

    .line 402
    .local v11, fancyName:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v0, :cond_9b

    .line 403
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    move v13, v0

    .line 404
    .local v13, numresults:I
    :goto_10
    if-lez v13, :cond_91

    .line 405
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 406
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v1, "album"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 407
    .local v12, idx:I
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "artist_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v3, "artist_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "album"

    aput-object v4, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 420
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_80

    .line 421
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq v0, v13, :cond_7d

    .line 423
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 425
    :cond_7d
    invoke-interface {v10}, Landroid/database/Cursor;->deactivate()V

    .line 427
    :cond_80
    if-eqz v11, :cond_8a

    const-string v0, "<unknown>"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 428
    :cond_8a
    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 473
    .end local v3           #where:Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v12           #idx:I
    .end local v13           #numresults:I
    :cond_91
    :goto_91
    if-eqz v11, :cond_152

    .line 474
    invoke-virtual {p0, v11}, Lcom/android/music/TrackBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 478
    :goto_96
    return-void

    .line 403
    :cond_97
    const/4 v0, 0x0

    move v13, v0

    goto/16 :goto_10

    .line 431
    :cond_9b
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v0, :cond_119

    .line 432
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v1, "nowplaying"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 433
    invoke-static {}, Lcom/android/music/MusicUtils;->getCurrentShuffleMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b8

    .line 434
    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_91

    .line 436
    :cond_b8
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_91

    .line 438
    :cond_c0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v1, "podcasts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 439
    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_91

    .line 440
    :cond_d2
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v1, "recentlyadded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 441
    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_91

    .line 443
    :cond_e4
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v6, v0

    .line 446
    .local v6, cols:[Ljava/lang/String;
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 449
    .restart local v10       #cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_91

    .line 450
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_114

    .line 451
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 452
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 454
    :cond_114
    invoke-interface {v10}, Landroid/database/Cursor;->deactivate()V

    goto/16 :goto_91

    .line 457
    .end local v6           #cols:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_119
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    if-eqz v0, :cond_91

    .line 458
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v6, v0

    .line 461
    .restart local v6       #cols:[Ljava/lang/String;
    sget-object v0, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 464
    .restart local v10       #cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_91

    .line 465
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_14d

    .line 466
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 467
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 469
    :cond_14d
    invoke-interface {v10}, Landroid/database/Cursor;->deactivate()V

    goto/16 :goto_91

    .line 476
    .end local v6           #cols:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_152
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->setTitle(I)V

    goto/16 :goto_96
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .registers 3
    .parameter "receiver"

    .prologue
    .line 292
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/music/TrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    .line 296
    :goto_3
    return-void

    .line 293
    :catch_4
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 753
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_18

    .line 755
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_2e

    .line 768
    :cond_18
    invoke-super {p0, p1}, Landroid/app/ListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1c
    return v0

    .line 757
    :sswitch_1d
    invoke-direct {p0, v1}, Lcom/android/music/TrackBrowserActivity;->moveItem(Z)V

    move v0, v1

    .line 758
    goto :goto_1c

    .line 760
    :sswitch_22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/music/TrackBrowserActivity;->moveItem(Z)V

    move v0, v1

    .line 761
    goto :goto_1c

    .line 763
    :sswitch_28
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity;->removeItem()V

    move v0, v1

    .line 764
    goto :goto_1c

    .line 755
    nop

    :sswitch_data_2e
    .sparse-switch
        0x13 -> :sswitch_1d
        0x14 -> :sswitch_22
        0x43 -> :sswitch_28
    .end sparse-switch
.end method

.method doSearch()V
    .registers 7

    .prologue
    .line 730
    const/4 v2, 0x0

    .line 731
    .local v2, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 733
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 734
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 737
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 738
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 739
    const-string v3, "android.intent.extra.artist"

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 740
    const-string v3, "android.intent.extra.album"

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    const-string v3, "android.intent.extra.focus"

    const-string v4, "audio/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    const v3, 0x7f070052

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/music/TrackBrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 743
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/music/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 746
    return-void
.end method

.method public init(Landroid/database/Cursor;)V
    .registers 11
    .parameter "newCursor"

    .prologue
    const-string v8, "com.android.music.metachanged"

    .line 353
    iget-boolean v5, p0, Lcom/android/music/TrackBrowserActivity;->mAdapterDestroyed:Z

    if-eqz v5, :cond_7

    .line 397
    :goto_6
    return-void

    .line 355
    :cond_7
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v5, p1}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 357
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v5, :cond_1f

    .line 358
    invoke-static {p0}, Lcom/android/music/MusicUtils;->displayDatabaseError(Landroid/app/Activity;)V

    .line 359
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->closeContextMenu()V

    .line 360
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    .line 364
    :cond_1f
    invoke-static {p0}, Lcom/android/music/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    .line 365
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity;->setTitle()V

    .line 369
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 370
    .local v2, f:Landroid/content/IntentFilter;
    const-string v5, "com.android.music.metachanged"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string v5, "com.android.music.queuechanged"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    const-string v5, "nowplaying"

    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 374
    :try_start_3e
    sget-object v5, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v1

    .line 375
    .local v1, cur:I
    invoke-virtual {p0, v1}, Lcom/android/music/TrackBrowserActivity;->setSelection(I)V

    .line 376
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v2}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/music/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 377
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.music.metachanged"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0, v6}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_5d} :catch_5e

    goto :goto_6

    .line 378
    .end local v1           #cur:I
    :catch_5e
    move-exception v5

    goto :goto_6

    .line 381
    :cond_60
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "artist"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 382
    .local v3, key:Ljava/lang/String;
    if-eqz v3, :cond_96

    .line 383
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "artist_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 384
    .local v4, keyidx:I
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 385
    :goto_79
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_96

    .line 386
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, artist:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 388
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/music/TrackBrowserActivity;->setSelection(I)V

    .line 394
    .end local v0           #artist:Ljava/lang/String;
    .end local v4           #keyidx:I
    :cond_96
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v2}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/music/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 395
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.music.metachanged"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0, v6}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 391
    .restart local v0       #artist:Ljava/lang/String;
    .restart local v4       #keyidx:I
    :cond_ae
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_79
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    .line 944
    sparse-switch p1, :sswitch_data_58

    .line 975
    :cond_4
    :goto_4
    return-void

    .line 946
    :sswitch_5
    if-nez p2, :cond_b

    .line 947
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->finish()V

    goto :goto_4

    .line 949
    :cond_b
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    if-eqz v3, :cond_4

    .line 950
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v3}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/music/TrackBrowserActivity;->getTrackCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_4

    .line 955
    :sswitch_1a
    if-ne p2, v3, :cond_4

    .line 956
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 957
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_4

    .line 958
    const/4 v3, 0x1

    new-array v0, v3, [I

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    long-to-int v4, v4

    aput v4, v0, v3

    .line 959
    .local v0, list:[I
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {p0, v0, v3, v4}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_4

    .line 965
    .end local v0           #list:[I
    .end local v2           #uri:Landroid/net/Uri;
    :sswitch_3c
    if-ne p2, v3, :cond_4

    .line 966
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 967
    .restart local v2       #uri:Landroid/net/Uri;
    if-eqz v2, :cond_4

    .line 968
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {v3}, Lcom/android/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v0

    .line 969
    .restart local v0       #list:[I
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 970
    .local v1, plid:I
    int-to-long v3, v1

    invoke-static {p0, v0, v3, v4}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_4

    .line 944
    nop

    :sswitch_data_58
    .sparse-switch
        0x4 -> :sswitch_1a
        0xb -> :sswitch_5
        0xf -> :sswitch_3c
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 14
    .parameter "item"

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 646
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_a8

    .line 708
    :pswitch_9
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    :goto_d
    return v8

    .line 649
    :pswitch_e
    iget v6, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedPosition:I

    .line 650
    .local v6, position:I
    iget-object v8, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v8, v6}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V

    move v8, v11

    .line 651
    goto :goto_d

    .line 655
    .end local v6           #position:I
    :pswitch_17
    new-array v4, v11, [I

    iget-wide v8, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    long-to-int v8, v8

    aput v8, v4, v10

    .line 656
    .local v4, list:[I
    invoke-static {p0, v4}, Lcom/android/music/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[I)V

    move v8, v11

    .line 657
    goto :goto_d

    .line 661
    .end local v4           #list:[I
    :pswitch_23
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 662
    .local v3, intent:Landroid/content/Intent;
    const-class v8, Lcom/android/music/CreatePlaylist;

    invoke-virtual {v3, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 663
    const/4 v8, 0x4

    invoke-virtual {p0, v3, v8}, Lcom/android/music/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v8, v11

    .line 664
    goto :goto_d

    .line 668
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_33
    new-array v4, v11, [I

    iget-wide v8, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    long-to-int v8, v8

    aput v8, v4, v10

    .line 669
    .restart local v4       #list:[I
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "playlist"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 670
    .local v5, playlist:I
    int-to-long v8, v5

    invoke-static {p0, v4, v8, v9}, Lcom/android/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    move v8, v11

    .line 671
    goto :goto_d

    .line 676
    .end local v4           #list:[I
    .end local v5           #playlist:I
    :pswitch_4a
    iget-wide v8, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    invoke-static {p0, v8, v9}, Lcom/android/music/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    move v8, v11

    .line 677
    goto :goto_d

    .line 680
    :pswitch_51
    new-array v4, v11, [I

    .line 681
    .restart local v4       #list:[I
    iget-wide v8, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    long-to-int v8, v8

    aput v8, v4, v10

    .line 682
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 683
    .local v0, b:Landroid/os/Bundle;
    const v8, 0x7f07000d

    invoke-virtual {p0, v8}, Lcom/android/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 684
    .local v2, f:Ljava/lang/String;
    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 685
    .local v1, desc:Ljava/lang/String;
    const-string v8, "description"

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v8, "items"

    invoke-virtual {v0, v8, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 687
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 688
    .restart local v3       #intent:Landroid/content/Intent;
    const-class v8, Lcom/android/music/DeleteItems;

    invoke-virtual {v3, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 689
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 690
    const/4 v8, -0x1

    invoke-virtual {p0, v3, v8}, Lcom/android/music/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v8, v11

    .line 691
    goto :goto_d

    .line 695
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #desc:Ljava/lang/String;
    .end local v2           #f:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #list:[I
    :pswitch_8b
    iget v8, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedPosition:I

    invoke-direct {p0, v8}, Lcom/android/music/TrackBrowserActivity;->removePlaylistItem(I)V

    move v8, v11

    .line 696
    goto/16 :goto_d

    .line 699
    :pswitch_93
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->doSearch()V

    move v8, v11

    .line 700
    goto/16 :goto_d

    .line 703
    :pswitch_99
    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v9, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 704
    .local v7, uri:Landroid/net/Uri;
    invoke-direct {p0, v7}, Lcom/android/music/TrackBrowserActivity;->doBluetoothDeviceTransfer(Landroid/net/Uri;)V

    move v8, v11

    .line 705
    goto/16 :goto_d

    .line 646
    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_99
        :pswitch_4a
        :pswitch_33
        :pswitch_23
        :pswitch_e
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_51
        :pswitch_9
        :pswitch_17
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8b
        :pswitch_93
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "icicle"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v4, 0x0

    const-string v6, "artist"

    const-string v5, "album"

    .line 128
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/music/TrackBrowserActivity;->requestWindowFeature(I)Z

    .line 130
    invoke-virtual {p0, v8}, Lcom/android/music/TrackBrowserActivity;->setVolumeControlStream(I)V

    .line 131
    if-eqz p1, :cond_fd

    .line 132
    const-string v1, "selectedtrack"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    .line 133
    const-string v1, "album"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 134
    const-string v1, "artist"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 135
    const-string v1, "playlist"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    .line 136
    const-string v1, "genre"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    .line 137
    const-string v1, "editmode"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    .line 149
    :goto_43
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "title"

    aput-object v2, v1, v7

    const/4 v2, 0x2

    const-string v3, "title_key"

    aput-object v3, v1, v2

    const-string v2, "_data"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string v3, "album"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const-string v3, "artist"

    aput-object v6, v1, v2

    const/4 v2, 0x6

    const-string v3, "artist_id"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "duration"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    .line 159
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "title"

    aput-object v2, v1, v7

    const/4 v2, 0x2

    const-string v3, "title_key"

    aput-object v3, v1, v2

    const-string v2, "_data"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string v3, "album"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const-string v3, "artist"

    aput-object v6, v1, v2

    const/4 v2, 0x6

    const-string v3, "artist_id"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "duration"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "play_order"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "audio_id"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    .line 172
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/android/music/TrackBrowserActivity;->setContentView(I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 174
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 175
    iget-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v1, :cond_133

    .line 176
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    check-cast v1, Lcom/android/music/TouchInterceptor;

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    invoke-virtual {v1, v2}, Lcom/android/music/TouchInterceptor;->setDropListener(Lcom/android/music/TouchInterceptor$DropListener;)V

    .line 177
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    check-cast v1, Lcom/android/music/TouchInterceptor;

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

    invoke-virtual {v1, v2}, Lcom/android/music/TouchInterceptor;->setRemoveListener(Lcom/android/music/TouchInterceptor$RemoveListener;)V

    .line 178
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 182
    :goto_d1
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 184
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    if-eqz v1, :cond_e7

    .line 185
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v1, p0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->setActivity(Lcom/android/music/TrackBrowserActivity;)V

    .line 186
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/music/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    :cond_e7
    invoke-static {p0, p0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 191
    const-string v1, "ro.qualcomm.proprietary_obex"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 192
    const-string v1, "bluetooth"

    invoke-virtual {p0, v1}, Lcom/android/music/TrackBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    .line 194
    :cond_fc
    return-void

    .line 139
    :cond_fd
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "album"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 143
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "artist"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    .line 144
    const-string v1, "playlist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    .line 145
    const-string v1, "genre"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    .line 146
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    goto/16 :goto_43

    .line 180
    .end local v0           #intent:Landroid/content/Intent;
    :cond_133
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    goto :goto_d1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 13
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 606
    const/4 v5, 0x5

    const v6, 0x7f070039

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 607
    const v5, 0x7f07003a

    invoke-interface {p1, v7, v8, v7, v5}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v4

    .line 608
    .local v4, sub:Landroid/view/SubMenu;
    invoke-static {p0, v4}, Lcom/android/music/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 609
    iget-boolean v5, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v5, :cond_1f

    .line 610
    const/16 v5, 0x12

    const v6, 0x7f070050

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 612
    :cond_1f
    const/4 v5, 0x2

    const v6, 0x7f070036

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 613
    const/16 v5, 0xa

    const v6, 0x7f070008

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 614
    const/16 v5, 0x13

    const v6, 0x7f07001c

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 619
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    if-eqz v5, :cond_48

    .line 620
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 621
    const v5, 0x7f070001

    invoke-interface {p1, v7, v8, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 625
    :cond_48
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0

    .line 626
    .local v3, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v5, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedPosition:I

    .line 627
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedPosition:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 629
    :try_start_57
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v6, "audio_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 631
    .local v2, id_idx:I
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J
    :try_end_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_57 .. :try_end_68} :catch_9e

    .line 635
    .end local v2           #id_idx:I
    :goto_68
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "album"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 637
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "artist"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 639
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v7, "title"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    .line 641
    iget-object v5, p0, Lcom/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 642
    return-void

    .line 632
    :catch_9e
    move-exception v5

    move-object v1, v5

    .line 633
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    iget-wide v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iput-wide v5, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    goto :goto_68
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 876
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 877
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 878
    const/16 v0, 0x10

    const v1, 0x7f07000a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080192

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 880
    :cond_17
    const/4 v0, 0x6

    const v1, 0x7f070004

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020019

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 881
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

    .line 883
    const/16 v0, 0x9

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 884
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v0, :cond_76

    .line 885
    const/16 v0, 0xf

    const v1, 0x7f070046

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 886
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v1, "nowplaying"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 887
    const/16 v0, 0x11

    const v1, 0x7f070047

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080186

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 890
    :cond_76
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 251
    invoke-static {p0}, Lcom/android/music/MusicUtils;->unbindFromService(Landroid/content/Context;)V

    .line 253
    :try_start_4
    const-string v1, "nowplaying"

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 254
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/android/music/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_13} :catch_4f

    .line 264
    :goto_13
    iget-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mAdapterSent:Z

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    if-eqz v1, :cond_26

    .line 265
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v1}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 266
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_26

    .line 267
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 270
    .end local v0           #c:Landroid/database/Cursor;
    :cond_26
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    if-eqz v1, :cond_33

    .line 271
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v1}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/AsyncQueryHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 273
    :cond_33
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 277
    invoke-virtual {p0, v3}, Lcom/android/music/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 278
    iput-object v3, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 279
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mAdapterDestroyed:Z

    .line 280
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/android/music/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 281
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 282
    return-void

    .line 256
    :cond_49
    :try_start_49
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/android/music/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    :try_end_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_49 .. :try_end_4e} :catch_4f

    goto :goto_13

    .line 258
    :catch_4f
    move-exception v1

    goto :goto_13
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 867
    :goto_8
    return-void

    .line 866
    :cond_9
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v0, p3}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;I)V

    goto :goto_8
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 11
    .parameter "item"

    .prologue
    const/high16 v1, 0x400

    const/4 v8, 0x1

    .line 897
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_6a

    .line 939
    :pswitch_a
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_e
    return v0

    .line 899
    :pswitch_f
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;)V

    move v0, v8

    .line 900
    goto :goto_e

    .line 904
    :pswitch_16
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 905
    .local v7, intent:Landroid/content/Intent;
    const-class v0, Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v7, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 906
    invoke-virtual {v7, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 907
    invoke-virtual {p0, v7}, Lcom/android/music/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v8

    .line 908
    goto :goto_e

    .line 911
    .end local v7           #intent:Landroid/content/Intent;
    :pswitch_28
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.android.music.PLAYBACK_VIEWER"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 912
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual {v7, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 913
    invoke-virtual {p0, v7}, Lcom/android/music/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v8

    .line 914
    goto :goto_e

    .line 918
    .end local v7           #intent:Landroid/content/Intent;
    :pswitch_37
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

    .line 922
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_52

    .line 923
    invoke-static {p0, v6}, Lcom/android/music/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 924
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_52
    move v0, v8

    .line 926
    goto :goto_e

    .line 929
    .end local v6           #cursor:Landroid/database/Cursor;
    :pswitch_54
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 930
    .restart local v7       #intent:Landroid/content/Intent;
    const-class v0, Lcom/android/music/CreatePlaylist;

    invoke-virtual {v7, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 931
    const/16 v0, 0xf

    invoke-virtual {p0, v7, v0}, Lcom/android/music/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v8

    .line 932
    goto :goto_e

    .line 936
    .end local v7           #intent:Landroid/content/Intent;
    :pswitch_65
    invoke-static {}, Lcom/android/music/MusicUtils;->clearQueue()V

    move v0, v8

    .line 937
    goto :goto_e

    .line 897
    :pswitch_data_6a
    .packed-switch 0x6
        :pswitch_16
        :pswitch_28
        :pswitch_a
        :pswitch_37
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_54
        :pswitch_f
        :pswitch_65
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 309
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 310
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 300
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 301
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_e

    .line 302
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 304
    :cond_e
    invoke-static {p0}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 305
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 245
    .local v0, a:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mAdapterSent:Z

    .line 246
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outcicle"

    .prologue
    .line 342
    const-string v0, "selectedtrack"

    iget-wide v1, p0, Lcom/android/music/TrackBrowserActivity;->mSelectedId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 343
    const-string v0, "artist"

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v0, "album"

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v0, "playlist"

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v0, "genre"

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity;->mGenre:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v0, "editmode"

    iget-boolean v1, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 348
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 349
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 15
    .parameter "name"
    .parameter "service"

    .prologue
    const v11, 0x7f070055

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 198
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 199
    .local v9, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string v0, "file"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/android/music/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    if-nez v0, :cond_7a

    .line 207
    new-instance v0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v2, :cond_73

    const v2, 0x7f030005

    move v3, v2

    :goto_35
    new-array v5, v10, [Ljava/lang/String;

    new-array v6, v10, [I

    const-string v2, "nowplaying"

    iget-object v7, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    if-eqz v2, :cond_78

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v8, "podcasts"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;

    const-string v8, "recentlyadded"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    const/4 v2, 0x1

    move v8, v2

    :goto_5b
    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/android/music/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 217
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 218
    invoke-virtual {p0, v11}, Lcom/android/music/TrackBrowserActivity;->setTitle(I)V

    .line 219
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/music/TrackBrowserActivity;->getTrackCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 235
    :goto_72
    return-void

    .line 207
    :cond_73
    const v2, 0x7f030010

    move v3, v2

    goto :goto_35

    :cond_78
    move v8, v10

    goto :goto_5b

    .line 221
    :cond_7a
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 228
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_8c

    .line 229
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_72

    .line 231
    :cond_8c
    invoke-virtual {p0, v11}, Lcom/android/music/TrackBrowserActivity;->setTitle(I)V

    .line 232
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity;->mAdapter:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/music/TrackBrowserActivity;->getTrackCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_72
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/music/TrackBrowserActivity;->finish()V

    .line 240
    return-void
.end method
