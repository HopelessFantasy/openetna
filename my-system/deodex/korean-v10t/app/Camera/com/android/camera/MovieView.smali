.class public Lcom/android/camera/MovieView;
.super Landroid/app/Activity;
.source "MovieView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# static fields
.field private static final CMDNAME:Ljava/lang/String; = "command"

.field private static final CMDPAUSE:Ljava/lang/String; = "pause"

.field private static final SERVICECMD:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final TAG:Ljava/lang/String; = "MovieView"


# instance fields
.field bAutoAllTest:Ljava/lang/Integer;

.field private mFinishOnCompletion:Z

.field mHandler:Landroid/os/Handler;

.field mPlayingChecker:Ljava/lang/Runnable;

.field private mPositionWhenPaused:I

.field private mProgressView:Landroid/view/View;

.field private mStreaming:Z

.field private mUri:Landroid/net/Uri;

.field private mVideoView:Landroid/widget/VideoView;

.field private mWasPlayingWhenPaused:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput-boolean v1, p0, Lcom/android/camera/MovieView;->mStreaming:Z

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/MovieView;->mPositionWhenPaused:I

    .line 59
    iput-boolean v1, p0, Lcom/android/camera/MovieView;->mWasPlayingWhenPaused:Z

    .line 248
    new-instance v0, Lcom/android/camera/MovieView$4;

    invoke-direct {v0, p0}, Lcom/android/camera/MovieView$4;-><init>(Lcom/android/camera/MovieView;)V

    iput-object v0, p0, Lcom/android/camera/MovieView;->mHandler:Landroid/os/Handler;

    .line 254
    new-instance v0, Lcom/android/camera/MovieView$5;

    invoke-direct {v0, p0}, Lcom/android/camera/MovieView$5;-><init>(Lcom/android/camera/MovieView;)V

    iput-object v0, p0, Lcom/android/camera/MovieView;->mPlayingChecker:Ljava/lang/Runnable;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/MovieView;)Landroid/widget/VideoView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/MovieView;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/MovieView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/MovieView;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method private getBookmark()Ljava/lang/Integer;
    .registers 15

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v13, 0x0

    .line 141
    iget-object v0, p0, Lcom/android/camera/MovieView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 142
    .local v12, scheme:Ljava/lang/String;
    const-string v0, "content"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 143
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "duration"

    aput-object v0, v2, v1

    const-string v0, "bookmark"

    aput-object v0, v2, v3

    .line 146
    .local v2, projection:[Ljava/lang/String;
    :try_start_1c
    invoke-virtual {p0}, Lcom/android/camera/MovieView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/MovieView;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_28
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_28} :catch_63

    move-result-object v10

    .line 147
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_64

    .line 149
    :try_start_2b
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, v10, v0}, Lcom/android/camera/MovieView;->getCursorInteger(Landroid/database/Cursor;I)I

    move-result v11

    .line 151
    .local v11, duration:I
    const/4 v0, 0x1

    invoke-direct {p0, v10, v0}, Lcom/android/camera/MovieView;->getCursorInteger(Landroid/database/Cursor;I)I
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_6a

    move-result v9

    .line 152
    .local v9, bookmark:I
    const v7, 0xea60

    .line 153
    .local v7, ONE_MINUTE:I
    const v8, 0x1d4c0

    .line 154
    .local v8, TWO_MINUTES:I
    const v6, 0x493e0

    .line 155
    .local v6, FIVE_MINUTES:I
    const v0, 0x1d4c0

    if-lt v9, v0, :cond_55

    const v0, 0x493e0

    if-lt v11, v0, :cond_55

    const v0, 0xea60

    sub-int v0, v11, v0

    if-le v9, v0, :cond_5a

    .line 164
    :cond_55
    :try_start_55
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_58
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_55 .. :try_end_58} :catch_63

    move-object v0, v13

    .line 171
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #FIVE_MINUTES:I
    .end local v7           #ONE_MINUTE:I
    .end local v8           #TWO_MINUTES:I
    .end local v9           #bookmark:I
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #duration:I
    :goto_59
    return-object v0

    .line 161
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #FIVE_MINUTES:I
    .restart local v7       #ONE_MINUTE:I
    .restart local v8       #TWO_MINUTES:I
    .restart local v9       #bookmark:I
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v11       #duration:I
    :cond_5a
    :try_start_5a
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(I)V
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_6a

    .line 164
    :try_start_5f
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_59

    .line 167
    .end local v6           #FIVE_MINUTES:I
    .end local v7           #ONE_MINUTE:I
    .end local v8           #TWO_MINUTES:I
    .end local v9           #bookmark:I
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #duration:I
    :catch_63
    move-exception v0

    .end local v2           #projection:[Ljava/lang/String;
    :cond_64
    :goto_64
    move-object v0, v13

    .line 171
    goto :goto_59

    .line 164
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_66
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_64

    :catchall_6a
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_6f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5f .. :try_end_6f} :catch_63
.end method

.method private getCursorInteger(Landroid/database/Cursor;I)I
    .registers 5
    .parameter "cursor"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 176
    :try_start_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_4} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_4} :catch_8

    move-result v1

    .line 180
    :goto_5
    return v1

    .line 177
    :catch_6
    move-exception v0

    .line 178
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    goto :goto_5

    .line 179
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catch_8
    move-exception v0

    .line 180
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_5
.end method

.method private pauseMusicBGM()V
    .registers 4

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v0}, Lcom/android/camera/MovieView;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    return-void
.end method

.method private setBookmark(I)V
    .registers 8
    .parameter "bookmark"

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/camera/MovieView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, scheme:Ljava/lang/String;
    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 188
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 189
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "bookmark"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :try_start_1c
    invoke-virtual {p0}, Lcom/android/camera/MovieView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/MovieView;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_27} :catch_2a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_27} :catch_28

    .line 199
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_27
    :goto_27
    return-void

    .line 195
    .restart local v1       #values:Landroid/content/ContentValues;
    :catch_28
    move-exception v2

    goto :goto_27

    .line 192
    :catch_2a
    move-exception v2

    goto :goto_27
.end method

.method private stopFmRadioBGM()V
    .registers 4

    .prologue
    .line 290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lge.android.fmradio.fmradioservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    invoke-virtual {p0, v0}, Lcom/android/camera/MovieView;->sendBroadcast(Landroid/content/Intent;)V

    .line 294
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter "mp"

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/camera/MovieView;->mFinishOnCompletion:Z

    if-eqz v0, :cond_7

    .line 272
    invoke-virtual {p0}, Lcom/android/camera/MovieView;->finish()V

    .line 274
    :cond_7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v7, "android.intent.extra.screenOrientation"

    const-string v10, "MovieView"

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/MovieView;->bAutoAllTest:Ljava/lang/Integer;

    .line 72
    const-string v6, "MovieView"

    const-string v6, "onCreate"

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const v6, 0x7f03000a

    invoke-virtual {p0, v6}, Lcom/android/camera/MovieView;->setContentView(I)V

    .line 75
    const v6, 0x7f0b0036

    invoke-virtual {p0, v6}, Lcom/android/camera/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/VideoView;

    iput-object v6, p0, Lcom/android/camera/MovieView;->mVideoView:Landroid/widget/VideoView;

    .line 76
    const v6, 0x7f0b0037

    invoke-virtual {p0, v6}, Lcom/android/camera/MovieView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/MovieView;->mProgressView:Landroid/view/View;

    .line 77
    invoke-virtual {p0}, Lcom/android/camera/MovieView;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 78
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "android.intent.extra.screenOrientation"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 79
    const-string v6, "android.intent.extra.screenOrientation"

    const/4 v6, -0x1

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 81
    .local v4, orientation:I
    invoke-virtual {p0}, Lcom/android/camera/MovieView;->getRequestedOrientation()I

    move-result v6

    if-eq v4, v6, :cond_4c

    .line 82
    invoke-virtual {p0, v4}, Lcom/android/camera/MovieView;->setRequestedOrientation(I)V

    .line 85
    .end local v4           #orientation:I
    :cond_4c
    const-string v6, "android.intent.extra.finishOnCompletion"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/camera/MovieView;->mFinishOnCompletion:Z

    .line 86
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/MovieView;->mUri:Landroid/net/Uri;

    .line 88
    iput-boolean v9, p0, Lcom/android/camera/MovieView;->mStreaming:Z

    .line 91
    iget-object v6, p0, Lcom/android/camera/MovieView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, scheme:Ljava/lang/String;
    const-string v6, "http"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_72

    const-string v6, "rtsp"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 94
    :cond_72
    iput-boolean v8, p0, Lcom/android/camera/MovieView;->mStreaming:Z

    .line 95
    const-string v6, "MovieView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mStreaming value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/camera/MovieView;->mStreaming:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_8e
    iget-object v6, p0, Lcom/android/camera/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v6, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 99
    iget-object v6, p0, Lcom/android/camera/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v6, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 100
    iget-object v6, p0, Lcom/android/camera/MovieView;->mVideoView:Landroid/widget/VideoView;

    iget-object v7, p0, Lcom/android/camera/MovieView;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 101
    iget-object v6, p0, Lcom/android/camera/MovieView;->mVideoView:Landroid/widget/VideoView;

    new-instance v7, Landroid/widget/MediaController;

    invoke-direct {v7, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 102
    iget-object v6, p0, Lcom/android/camera/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v6}, Landroid/widget/VideoView;->requestFocus()Z

    .line 104
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.music.musicservicecommand"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, i:Landroid/content/Intent;
    const-string v6, "command"

    const-string v7, "pause"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v2}, Lcom/android/camera/MovieView;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    invoke-direct {p0}, Lcom/android/camera/MovieView;->getBookmark()Ljava/lang/Integer;

    move-result-object v0

    .line 109
    .local v0, bookmark:Ljava/lang/Integer;
    if-eqz v0, :cond_112

    .line 110
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0900a9

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 112
    const v6, 0x7f0900aa

    invoke-virtual {p0, v6}, Lcom/android/camera/MovieView;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {p0, v8}, Lcom/android/camera/MenuHelper;->formatDuration(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 115
    new-instance v6, Lcom/android/camera/MovieView$1;

    invoke-direct {v6, p0}, Lcom/android/camera/MovieView$1;-><init>(Lcom/android/camera/MovieView;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    const v6, 0x7f0900ab

    new-instance v7, Lcom/android/camera/MovieView$2;

    invoke-direct {v7, p0, v0}, Lcom/android/camera/MovieView$2;-><init>(Lcom/android/camera/MovieView;Ljava/lang/Integer;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    const v6, 0x7f0900ac

    new-instance v7, Lcom/android/camera/MovieView$3;

    invoke-direct {v7, p0}, Lcom/android/camera/MovieView$3;-><init>(Lcom/android/camera/MovieView;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 129
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 135
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :goto_10b
    invoke-direct {p0}, Lcom/android/camera/MovieView;->pauseMusicBGM()V

    .line 136
    invoke-direct {p0}, Lcom/android/camera/MovieView;->stopFmRadioBGM()V

    .line 138
    return-void

    .line 131
    :cond_112
    iget-object v6, p0, Lcom/android/camera/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v6}, Landroid/widget/VideoView;->start()V

    goto :goto_10b
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 6
    .parameter "player"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/camera/MovieView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lcom/android/camera/MovieView;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 4

    .prologue
    const-string v2, "MovieView"

    .line 203
    iget-object v0, p0, Lcom/android/camera/MovieView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/android/camera/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/MovieView;->setBookmark(I)V

    .line 206
    iget-object v0, p0, Lcom/android/camera/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/camera/MovieView;->mPositionWhenPaused:I

    .line 207
    iget-object v0, p0, Lcom/android/camera/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/MovieView;->mWasPlayingWhenPaused:Z

    .line 208
    iget-object v0, p0, Lcom/android/camera/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 209
    const-string v0, "MovieView"

    const-string v0, "onPause"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 212
    iget-object v0, p0, Lcom/android/camera/MovieView;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/camera/MovieView;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_47

    .line 214
    const-string v0, "MovieView"

    const-string v0, "movieview auto test_ihurga "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Lcom/android/camera/MovieView;->finish()V

    .line 219
    :cond_47
    return-void
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const-string v4, "MovieView"

    .line 223
    const-string v1, "MovieView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStreaming value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/MovieView;->mStreaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/MovieView;->mPositionWhenPaused:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Lcom/android/camera/MovieView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 228
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "AutoAllTest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/android/camera/MovieView;->bAutoAllTest:Ljava/lang/Integer;

    .line 229
    iget v1, p0, Lcom/android/camera/MovieView;->mPositionWhenPaused:I

    if-ltz v1, :cond_4e

    .line 230
    iget-object v1, p0, Lcom/android/camera/MovieView;->mVideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/android/camera/MovieView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 231
    iget-object v1, p0, Lcom/android/camera/MovieView;->mVideoView:Landroid/widget/VideoView;

    iget v2, p0, Lcom/android/camera/MovieView;->mPositionWhenPaused:I

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 232
    iget-boolean v1, p0, Lcom/android/camera/MovieView;->mWasPlayingWhenPaused:Z

    if-eqz v1, :cond_4e

    .line 233
    iget-object v1, p0, Lcom/android/camera/MovieView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 236
    :cond_4e
    const-string v1, "MovieView"

    const-string v1, "onResume"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-boolean v1, p0, Lcom/android/camera/MovieView;->mStreaming:Z

    if-ne v1, v3, :cond_5d

    iget-boolean v1, p0, Lcom/android/camera/MovieView;->mWasPlayingWhenPaused:Z

    if-eq v1, v3, :cond_66

    :cond_5d
    iget-boolean v1, p0, Lcom/android/camera/MovieView;->mStreaming:Z

    if-ne v1, v3, :cond_79

    iget v1, p0, Lcom/android/camera/MovieView;->mPositionWhenPaused:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_79

    .line 239
    :cond_66
    iget-object v1, p0, Lcom/android/camera/MovieView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/MovieView;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    iget-object v1, p0, Lcom/android/camera/MovieView;->mProgressView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 245
    :goto_75
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 246
    return-void

    .line 242
    :cond_79
    iget-object v1, p0, Lcom/android/camera/MovieView;->mProgressView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_75
.end method
