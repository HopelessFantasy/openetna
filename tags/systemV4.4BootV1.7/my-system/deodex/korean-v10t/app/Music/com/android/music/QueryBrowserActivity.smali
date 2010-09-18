.class public Lcom/android/music/QueryBrowserActivity;
.super Landroid/app/ListActivity;
.source "QueryBrowserActivity.java"

# interfaces
.implements Lcom/android/music/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/QueryBrowserActivity$QueryListAdapter;
    }
.end annotation


# static fields
.field private static final ADD_TO_QUEUE:I = 0x1

.field private static final EXPLORE_ALBUM:I = 0x6

.field private static final EXPLORE_ARTIST:I = 0x4

.field private static final PLAY_ALBUM:I = 0x5

.field private static final PLAY_ARTIST:I = 0x3

.field private static final PLAY_NEXT:I = 0x2

.field private static final PLAY_NOW:I = 0x0

.field private static final REQUERY:I = 0x3


# instance fields
.field private mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

.field private mAdapterDestroyed:Z

.field private mAdapterSent:Z

.field private mFilterString:Ljava/lang/String;

.field private mQueryCursor:Landroid/database/Cursor;

.field private mReScanHandler:Landroid/os/Handler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mTrackList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapterDestroyed:Z

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 197
    new-instance v0, Lcom/android/music/QueryBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/QueryBrowserActivity$1;-><init>(Lcom/android/music/QueryBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 205
    new-instance v0, Lcom/android/music/QueryBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/music/QueryBrowserActivity$2;-><init>(Lcom/android/music/QueryBrowserActivity;)V

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/QueryBrowserActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/QueryBrowserActivity;)Lcom/android/music/QueryBrowserActivity$QueryListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/QueryBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/music/QueryBrowserActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/music/QueryBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "async"
    .parameter "filter"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 287
    if-nez p2, :cond_6

    .line 288
    const-string p2, ""

    .line 290
    :cond_6
    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v1

    const/4 v0, 0x1

    const-string v5, "mime_type"

    aput-object v5, v4, v0

    const/4 v0, 0x2

    const-string v5, "artist"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "album"

    aput-object v5, v4, v0

    const/4 v0, 0x4

    const-string v5, "title"

    aput-object v5, v4, v0

    const/4 v0, 0x5

    const-string v5, "data1"

    aput-object v5, v4, v0

    const/4 v0, 0x6

    const-string v5, "data2"

    aput-object v5, v4, v0

    .line 300
    .local v4, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://media/external/audio/search/fancy/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 303
    .local v3, search:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 304
    .local v11, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_51

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 305
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :goto_50
    return-object v11

    :cond_51
    move-object v5, p0

    move-object v6, v3

    move-object v7, v4

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    .line 307
    invoke-static/range {v5 .. v10}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_50
.end method


# virtual methods
.method public init(Landroid/database/Cursor;)V
    .registers 6
    .parameter "c"

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapterDestroyed:Z

    if-eqz v0, :cond_5

    .line 241
    :goto_4
    return-void

    .line 232
    :cond_5
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 234
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1e

    .line 235
    invoke-static {p0}, Lcom/android/music/MusicUtils;->displayDatabaseError(Landroid/app/Activity;)V

    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 237
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 240
    :cond_1e
    invoke-static {p0}, Lcom/android/music/MusicUtils;->hideDatabaseError(Landroid/app/Activity;)V

    goto :goto_4
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 217
    packed-switch p1, :pswitch_data_16

    .line 226
    :goto_3
    return-void

    .line 219
    :pswitch_4
    if-nez p2, :cond_a

    .line 220
    invoke-virtual {p0}, Lcom/android/music/QueryBrowserActivity;->finish()V

    goto :goto_3

    .line 222
    :cond_a
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_3

    .line 217
    nop

    :pswitch_data_16
    .packed-switch 0xb
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->setVolumeControlStream(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/music/QueryBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    .line 83
    invoke-static {p0, p0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 85
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-static {p0}, Lcom/android/music/MusicUtils;->unbindFromService(Landroid/content/Context;)V

    .line 177
    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/music/QueryBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 179
    iget-boolean v1, p0, Lcom/android/music/QueryBrowserActivity;->mAdapterSent:Z

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    if-eqz v1, :cond_1f

    .line 180
    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v1}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 181
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1f

    .line 182
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 188
    .end local v0           #c:Landroid/database/Cursor;
    :cond_1f
    invoke-virtual {p0, v2}, Lcom/android/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    iput-object v2, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    .line 190
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/QueryBrowserActivity;->mAdapterDestroyed:Z

    .line 191
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 16
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    const-string v9, "artist"

    const-string v8, "android.intent.action.PICK"

    const-string v7, "album"

    .line 248
    iget-object v3, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v3, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 249
    iget-object v3, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v3

    if-nez v3, :cond_1c

    iget-object v3, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 271
    :cond_1c
    :goto_1c
    return-void

    .line 252
    :cond_1d
    iget-object v3, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    const-string v5, "mime_type"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, selectedType:Ljava/lang/String;
    const-string v3, "artist"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, intent:Landroid/content/Intent;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "vnd.android.cursor.dir/album"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v3, "artist"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1c

    .line 260
    .end local v0           #intent:Landroid/content/Intent;
    :cond_52
    const-string v3, "album"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 261
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v3, "album"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1c

    .line 265
    .end local v0           #intent:Landroid/content/Intent;
    :cond_79
    if-ltz p3, :cond_8b

    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-ltz v3, :cond_8b

    .line 266
    const/4 v3, 0x1

    new-array v1, v3, [I

    long-to-int v3, p4

    aput v3, v1, v6

    .line 267
    .local v1, list:[I
    invoke-static {p0, v1, v6}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[II)V

    goto :goto_1c

    .line 269
    .end local v1           #list:[I
    :cond_8b
    const-string v3, "QueryBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid position/id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 275
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 283
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 278
    :pswitch_c
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/music/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    .line 279
    const/4 v0, 0x1

    goto :goto_b

    .line 275
    nop

    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 171
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 172
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapterSent:Z

    .line 165
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 17
    .parameter "name"
    .parameter "service"

    .prologue
    .line 89
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v7, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v0, "file"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/android/music/QueryBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0}, Lcom/android/music/QueryBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 97
    .local v10, intent:Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 99
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    .line 100
    .local v13, uri:Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 101
    .local v12, path:Ljava/lang/String;
    const-string v0, "content://media/external/audio/media/"

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 103
    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 104
    .local v9, id:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v11, v0, [I

    const/4 v0, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v11, v0

    .line 105
    .local v11, list:[I
    const/4 v0, 0x0

    invoke-static {p0, v11, v0}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[II)V

    .line 106
    invoke-virtual {p0}, Lcom/android/music/QueryBrowserActivity;->finish()V

    .line 156
    .end local v9           #id:Ljava/lang/String;
    .end local v11           #list:[I
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #uri:Landroid/net/Uri;
    :goto_52
    return-void

    .line 108
    .restart local v12       #path:Ljava/lang/String;
    .restart local v13       #uri:Landroid/net/Uri;
    :cond_53
    const-string v0, "content://media/external/audio/albums/"

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 110
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v8, i:Landroid/content/Intent;
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v1, "vnd.android.cursor.dir/track"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v0, "album"

    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v8}, Lcom/android/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/music/QueryBrowserActivity;->finish()V

    goto :goto_52

    .line 116
    .end local v8           #i:Landroid/content/Intent;
    :cond_79
    const-string v0, "content://media/external/audio/artists/"

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 118
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .restart local v8       #i:Landroid/content/Intent;
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v1, "vnd.android.cursor.dir/album"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v0, "artist"

    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v8}, Lcom/android/music/QueryBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/music/QueryBrowserActivity;->finish()V

    goto :goto_52

    .line 126
    .end local v8           #i:Landroid/content/Intent;
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #uri:Landroid/net/Uri;
    :cond_9f
    const-string v0, "query"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 128
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->setContentView(I)V

    .line 129
    invoke-virtual {p0}, Lcom/android/music/QueryBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 130
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    if-nez v0, :cond_f8

    .line 132
    new-instance v0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {p0}, Lcom/android/music/QueryBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030010

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-array v6, v2, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;-><init>(Landroid/content/Context;Lcom/android/music/QueryBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    .line 139
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 141
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_52

    .line 143
    :cond_ec
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFilterText(Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    goto/16 :goto_52

    .line 147
    :cond_f8
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, p0}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->setActivity(Lcom/android/music/QueryBrowserActivity;)V

    .line 148
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    .line 150
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_115

    .line 151
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/music/QueryBrowserActivity;->init(Landroid/database/Cursor;)V

    goto/16 :goto_52

    .line 153
    :cond_115
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity;->mAdapter:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_52
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 160
    return-void
.end method
