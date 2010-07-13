.class Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;
.super Landroid/database/AbstractCursor;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowPlayingCursor"
.end annotation


# instance fields
.field private mCols:[Ljava/lang/String;

.field private mCurPos:I

.field private mCurrentPlaylistCursor:Landroid/database/Cursor;

.field private mCursorIdxs:[I

.field private mNowPlaying:[I

.field private mService:Lcom/android/music/IMediaPlaybackService;

.field private mSize:I

.field final synthetic this$0:Lcom/android/music/TrackBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/android/music/TrackBrowserActivity;Lcom/android/music/IMediaPlaybackService;[Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "service"
    .parameter "cols"

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 1096
    iput-object p3, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCols:[Ljava/lang/String;

    .line 1097
    iput-object p2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 1098
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 1099
    return-void
.end method

.method private dump()V
    .registers 5

    .prologue
    .line 1232
    const-string v1, "("

    .line 1233
    .local v1, where:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget v2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-ge v0, v2, :cond_38

    .line 1234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1235
    iget v2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_35

    .line 1236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1233
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1239
    :cond_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1240
    const-string v2, "NowPlayingCursor: "

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    return-void
.end method

.method private makeNowPlayingCursor()V
    .registers 15

    .prologue
    .line 1101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 1103
    :try_start_3
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_15

    .line 1107
    :goto_b
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    array-length v0, v0

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    .line 1108
    iget v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-nez v0, :cond_1d

    .line 1174
    :cond_14
    :goto_14
    return-void

    .line 1104
    :catch_15
    move-exception v0

    move-object v8, v0

    .line 1105
    .local v8, ex:Landroid/os/RemoteException;
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    goto :goto_b

    .line 1112
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_1d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1113
    .local v13, where:Ljava/lang/StringBuilder;
    const-string v0, "_id IN ("

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    const/4 v9, 0x0

    .local v9, i:I
    :goto_28
    iget v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-ge v9, v0, :cond_41

    .line 1115
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    aget v0, v0, v9

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1116
    iget v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge v9, v0, :cond_3e

    .line 1117
    const-string v0, ","

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    :cond_3e
    add-int/lit8 v9, v9, 0x1

    goto :goto_28

    .line 1120
    :cond_41
    const-string v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->this$0:Lcom/android/music/TrackBrowserActivity;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCols:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 1126
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-nez v0, :cond_61

    .line 1127
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    goto :goto_14

    .line 1131
    :cond_61
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 1132
    .local v11, size:I
    if-nez v11, :cond_77

    .line 1133
    const-string v0, "TrackBrowser"

    const-string v1, "makeNowPlayingCursor query did not succeed because current playlist size is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 1135
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    goto :goto_14

    .line 1139
    :cond_77
    new-array v0, v11, [I

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[I

    .line 1140
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1141
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1142
    .local v6, colidx:I
    const/4 v9, 0x0

    :goto_89
    if-ge v9, v11, :cond_9d

    .line 1143
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[I

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v0, v9

    .line 1144
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1142
    add-int/lit8 v9, v9, 0x1

    goto :goto_89

    .line 1146
    :cond_9d
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1147
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurPos:I

    .line 1154
    const/4 v10, 0x0

    .line 1155
    .local v10, removed:I
    :try_start_a6
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int v9, v0, v1

    :goto_ac
    if-ltz v9, :cond_c4

    .line 1156
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    aget v12, v0, v9

    .line 1157
    .local v12, trackid:I
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[I

    invoke-static {v0, v12}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v7

    .line 1158
    .local v7, crsridx:I
    if-gez v7, :cond_c1

    .line 1160
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0, v12}, Lcom/android/music/IMediaPlaybackService;->removeTrack(I)I

    move-result v0

    add-int/2addr v10, v0

    .line 1155
    :cond_c1
    add-int/lit8 v9, v9, -0x1

    goto :goto_ac

    .line 1163
    .end local v7           #crsridx:I
    .end local v12           #trackid:I
    :cond_c4
    if-lez v10, :cond_14

    .line 1164
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    .line 1165
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    array-length v0, v0

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    .line 1166
    iget v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-nez v0, :cond_14

    .line 1167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[I
    :try_end_da
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_da} :catch_dc

    goto/16 :goto_14

    .line 1171
    :catch_dc
    move-exception v0

    move-object v8, v0

    .line 1172
    .restart local v8       #ex:Landroid/os/RemoteException;
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    goto/16 :goto_14
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 1324
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1326
    :cond_9
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 1327
    return-void
.end method

.method public deactivate()V
    .registers 2

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 1310
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 1311
    :cond_9
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCols:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 1179
    iget v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    return v0
.end method

.method public getDouble(I)D
    .registers 4
    .parameter "column"

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 3
    .parameter "column"

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 4
    .parameter "column"

    .prologue
    .line 1264
    :try_start_0
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1267
    :goto_6
    return v1

    .line 1265
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1266
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->onChange(Z)V

    .line 1267
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getLong(I)J
    .registers 5
    .parameter "column"

    .prologue
    .line 1275
    :try_start_0
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v1

    .line 1278
    :goto_6
    return-wide v1

    .line 1276
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1277
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->onChange(Z)V

    .line 1278
    const-wide/16 v1, 0x0

    goto :goto_6
.end method

.method public getShort(I)S
    .registers 3
    .parameter "column"

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4
    .parameter "column"

    .prologue
    .line 1247
    :try_start_0
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1250
    :goto_6
    return-object v1

    .line 1248
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1249
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->onChange(Z)V

    .line 1250
    const-string v1, ""

    goto :goto_6
.end method

.method public isNull(I)Z
    .registers 3
    .parameter "column"

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public moveItem(II)V
    .registers 5
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1224
    :try_start_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0, p1, p2}, Lcom/android/music/IMediaPlaybackService;->moveQueueItem(II)V

    .line 1225
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    .line 1226
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v0, v1}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->onMove(II)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 1229
    :goto_13
    return-void

    .line 1227
    :catch_14
    move-exception v0

    goto :goto_13
.end method

.method public onMove(II)Z
    .registers 7
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v3, 0x1

    .line 1185
    if-ne p1, p2, :cond_5

    move v2, v3

    .line 1201
    :goto_4
    return v2

    .line 1188
    :cond_5
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[I

    if-nez v2, :cond_f

    .line 1189
    :cond_d
    const/4 v2, 0x0

    goto :goto_4

    .line 1196
    :cond_f
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    aget v1, v2, p2

    .line 1197
    .local v1, newid:I
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 1198
    .local v0, crsridx:I
    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1199
    iput p2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurPos:I

    move v2, v3

    .line 1201
    goto :goto_4
.end method

.method public removeItem(I)Z
    .registers 7
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 1207
    :try_start_1
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1, p1, p1}, Lcom/android/music/IMediaPlaybackService;->removeTracks(II)I

    move-result v1

    if-nez v1, :cond_b

    .line 1208
    const/4 v1, 0x0

    .line 1219
    :goto_a
    return v1

    .line 1210
    :cond_b
    move v0, p1

    .line 1211
    .local v0, i:I
    iget v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    .line 1212
    :goto_11
    iget v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-ge v0, v1, :cond_22

    .line 1213
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 1214
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1216
    :cond_22
    const/4 v1, -0x1

    iget v2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v1, v2}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->onMove(II)Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_28} :catch_2a

    .end local v0           #i:I
    :goto_28
    move v1, v4

    .line 1219
    goto :goto_a

    .line 1217
    :catch_2a
    move-exception v1

    goto :goto_28
.end method

.method public requery()Z
    .registers 2

    .prologue
    .line 1316
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 1317
    const/4 v0, 0x1

    return v0
.end method
