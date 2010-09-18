.class public Lcom/android/soundrecorder/SoundRecorder;
.super Landroid/app/Activity;
.source "SoundRecorder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/soundrecorder/Recorder$OnStateChangedListener;


# static fields
.field static final AUDIO_3GPP:Ljava/lang/String; = "audio/3gpp"

.field static final AUDIO_ALL:Ljava/lang/String; = "*/*"

.field static final AUDIO_AMR:Ljava/lang/String; = "audio/amr"

.field static final AUDIO_ANY:Ljava/lang/String; = "audio/*"

.field static final BITRATE_3GPP:I = 0x170c

.field static final BITRATE_AMR:I = 0x170c

.field public static final GENERAL_MODE:I = 0x0

.field static final MAX_FILE_SIZE_KEY:Ljava/lang/String; = "max_file_size"

.field public static final MMS_MODE:I = 0x1

.field public static final MODEMMS_ID:I = 0x1

.field public static final MODE_ID:I = 0x0

.field static final RECORDER_STATE_KEY:Ljava/lang/String; = "recorder_state"

.field static final SAMPLE_INTERRUPTED_KEY:Ljava/lang/String; = "sample_interrupted"

.field static final STATE_FILE_NAME:Ljava/lang/String; = "soundrecorder.state"

.field static final TAG:Ljava/lang/String; = "SoundRecorder"


# instance fields
.field bGetContent:Z

.field bLCDevent:Z

.field mAudioManager:Landroid/media/AudioManager;

.field mAudioMode:I

.field mAudioPath:I

.field mChangedPath:Z

.field mDeleteButton:Landroid/widget/Button;

.field mErrorUiMessage:Ljava/lang/String;

.field mExitButtons:Landroid/widget/LinearLayout;

.field mFileNameMessage:Landroid/widget/TextView;

.field mFileSizeMessage:Landroid/widget/TextView;

.field final mHandler:Landroid/os/Handler;

.field mInfoMessage2Layout:Landroid/widget/LinearLayout;

.field private mLCDOnOffReceiver:Landroid/content/BroadcastReceiver;

.field mMMSExitButtons:Landroid/widget/LinearLayout;

.field mMaxFileSize:J

.field mMemoryAvailable:Landroid/widget/TextView;

.field mPlayButton:Landroid/widget/ImageButton;

.field mPlayingPause:Ljava/lang/Runnable;

.field mRecordButton:Landroid/widget/ImageButton;

.field mRecordModeMessage:Landroid/widget/TextView;

.field mRecorder:Lcom/android/soundrecorder/Recorder;

.field mRecordingModeLayout:Landroid/widget/LinearLayout;

.field mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

.field mRequestedType:Ljava/lang/String;

.field private mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

.field mSampleInterrupted:Z

.field mShareButton:Landroid/widget/Button;

.field mStateLED:Landroid/widget/ImageView;

.field mStateMessage1:Landroid/widget/TextView;

.field mStateMessage2:Landroid/widget/TextView;

.field mStateProgressBar:Landroid/widget/ProgressBar;

.field mStopButton:Landroid/widget/ImageButton;

.field mTimerFormat:Ljava/lang/String;

.field mTimerView:Landroid/widget/TextView;

.field mUpdateTimer:Ljava/lang/Runnable;

.field mUseAsButton:Landroid/widget/Button;

.field mVUMeter:Lcom/android/soundrecorder/VUMeter;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field macceptButton:Landroid/widget/Button;

.field mdiscardButton:Landroid/widget/Button;

.field recordMode:I

.field ringUri:Landroid/net/Uri;

.field stringavailable:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 186
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 213
    iput v2, p0, Lcom/android/soundrecorder/SoundRecorder;->recordMode:I

    .line 214
    iput-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->bGetContent:Z

    .line 215
    iput-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->bLCDevent:Z

    .line 217
    iput-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->ringUri:Landroid/net/Uri;

    .line 220
    const-string v0, "audio/*"

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 222
    iput-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 223
    iput-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 227
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    .line 231
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    .line 232
    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$1;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mUpdateTimer:Ljava/lang/Runnable;

    .line 236
    new-instance v0, Lcom/android/soundrecorder/SoundRecorder$2;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/SoundRecorder$2;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayingPause:Ljava/lang/Runnable;

    .line 299
    iput-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    .line 300
    iput-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mLCDOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 304
    iput v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioPath:I

    .line 305
    iput v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    .line 306
    iput-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mChangedPath:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/soundrecorder/SoundRecorder;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateTimerView()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/soundrecorder/SoundRecorder;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->determineStoporNot()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/soundrecorder/SoundRecorder;Ljava/io/File;)Landroid/net/Uri;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/soundrecorder/SoundRecorder;->addToMediaDB(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/soundrecorder/SoundRecorder;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUi()V

    return-void
.end method

.method private addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    .registers 24
    .parameter "file"

    .prologue
    .line 1252
    invoke-virtual/range {p0 .. p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 1253
    .local v15, res:Landroid/content/res/Resources;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1254
    .local v9, cv:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1255
    .local v7, current:J
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    .line 1256
    .local v13, modDate:J
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 1257
    .local v10, date:Ljava/util/Date;
    new-instance v11, Ljava/text/SimpleDateFormat;

    const v19, 0x7f040010

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1259
    .local v11, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v11, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    .line 1261
    .local v18, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v19

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x3e8

    move v12, v0

    .line 1265
    .local v12, mDuration:I
    const-string v19, "is_music"

    const-string v20, "0"

    move-object v0, v9

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    const-string v19, "title"

    move-object v0, v9

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    const-string v19, "_data"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    move-object v0, v9

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    const-string v19, "date_added"

    const-wide/16 v20, 0x3e8

    div-long v20, v7, v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v9

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1270
    const-string v19, "date_modified"

    const-wide/16 v20, 0x3e8

    div-long v20, v13, v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v9

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1271
    const-string v19, "mime_type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v0, v9

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    const-string v19, "SoundRecorder"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Duration "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const-string v19, "duration"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v9

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1274
    const-string v19, "artist"

    const v20, 0x7f040011

    move-object v0, v15

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v9

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    const-string v19, "album"

    const v20, 0x7f040012

    move-object v0, v15

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v9

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    const-string v19, "SoundRecorder"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Inserting audio record: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    invoke-virtual/range {p0 .. p0}, Lcom/android/soundrecorder/SoundRecorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 1280
    .local v16, resolver:Landroid/content/ContentResolver;
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1281
    .local v6, base:Landroid/net/Uri;
    const-string v19, "SoundRecorder"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ContentURI: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    move-object/from16 v0, v16

    move-object v1, v6

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    .line 1283
    .local v17, result:Landroid/net/Uri;
    if-nez v17, :cond_160

    .line 1284
    new-instance v19, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v20, 0x7f04

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const v20, 0x7f040016

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const v20, 0x7f04000d

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1290
    const/16 v19, 0x0

    .line 1301
    :goto_15f
    return-object v19

    .line 1292
    :cond_160
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/soundrecorder/SoundRecorder;->getPlaylistId(Landroid/content/res/Resources;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_177

    .line 1293
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/soundrecorder/SoundRecorder;->createPlaylist(Landroid/content/res/Resources;Landroid/content/ContentResolver;)Landroid/net/Uri;

    .line 1295
    :cond_177
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1296
    .local v5, audioId:I
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/soundrecorder/SoundRecorder;->getPlaylistId(Landroid/content/res/Resources;)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v5

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/soundrecorder/SoundRecorder;->addToPlaylist(Landroid/content/ContentResolver;IJ)V

    .line 1300
    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/SoundRecorder;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v19, v17

    .line 1301
    goto :goto_15f
.end method

.method private addToPlaylist(Landroid/content/ContentResolver;IJ)V
    .registers 15
    .parameter "resolver"
    .parameter "audioId"
    .parameter "playlistId"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 1169
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v9

    .line 1172
    .local v2, cols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p3, p4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 1173
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1174
    .local v7, cur:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1175
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1176
    .local v6, base:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1177
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1178
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "play_order"

    add-int v3, v6, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1179
    const-string v0, "audio_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1180
    invoke-virtual {p1, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1181
    return-void
.end method

.method private createPlaylist(Landroid/content/res/Resources;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .registers 8
    .parameter "res"
    .parameter "resolver"

    .prologue
    .line 1234
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1235
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "name"

    const v3, 0x7f040013

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1237
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_3f

    .line 1238
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x7f04

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f040016

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f04000d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1245
    :cond_3f
    return-object v1
.end method

.method private determineStoporNot()V
    .registers 4

    .prologue
    .line 1420
    const-string v0, "SoundRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "determineStoporNot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->bLCDevent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->bLCDevent:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 1423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->bLCDevent:Z

    .line 1429
    :goto_22
    return-void

    .line 1427
    :cond_23
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->stop()V

    goto :goto_22
.end method

.method private doShareAudio()V
    .registers 6

    .prologue
    .line 1029
    const/4 v2, 0x0

    .line 1030
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->ringUri:Landroid/net/Uri;

    if-nez v3, :cond_15

    .line 1033
    :try_start_5
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v3}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/soundrecorder/SoundRecorder;->addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    :try_end_e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_e} :catch_12

    move-result-object v2

    .line 1043
    :goto_f
    if-nez v2, :cond_18

    .line 1056
    :goto_11
    return-void

    .line 1035
    :catch_12
    move-exception v3

    move-object v0, v3

    .line 1036
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_11

    .line 1041
    .end local v0           #ex:Ljava/lang/UnsupportedOperationException;
    :cond_15
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->ringUri:Landroid/net/Uri;

    goto :goto_f

    .line 1047
    :cond_18
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1048
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1049
    const-string v3, "audio/3gpp"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1050
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1052
    const v3, 0x7f040028

    :try_start_2f
    invoke-virtual {p0, v3}, Lcom/android/soundrecorder/SoundRecorder;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/soundrecorder/SoundRecorder;->startActivity(Landroid/content/Intent;)V
    :try_end_3a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2f .. :try_end_3a} :catch_3b

    goto :goto_11

    .line 1053
    :catch_3b
    move-exception v3

    move-object v0, v3

    .line 1054
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const v3, 0x7f040027

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_11
.end method

.method private getAudioUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 15
    .parameter "file"

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x0

    const-string v12, "SoundRecorder"

    .line 1210
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1211
    .local v1, uri:Landroid/net/Uri;
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    .line 1212
    .local v2, ids:[Ljava/lang/String;
    const-string v9, "_data=?"

    .line 1213
    .local v9, where:Ljava/lang/String;
    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v10

    .line 1214
    .local v4, args:[Ljava/lang/String;
    const-string v3, "_data=?"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/soundrecorder/SoundRecorder;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1215
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_23

    .line 1216
    const-string v0, "SoundRecorder"

    const-string v0, "query returns null"

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_23
    const/4 v7, -0x1

    .line 1219
    .local v7, id:I
    if-eqz v6, :cond_36

    .line 1220
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1221
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_33

    .line 1222
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1224
    :cond_33
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1226
    :cond_36
    int-to-long v10, v7

    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 1227
    .local v8, newUrl:Landroid/net/Uri;
    const-string v0, "SoundRecorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioUri"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    return-object v8
.end method

.method private getPlaylistId(Landroid/content/res/Resources;)I
    .registers 12
    .parameter "res"

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 1187
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1188
    .local v1, uri:Landroid/net/Uri;
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 1189
    .local v2, ids:[Ljava/lang/String;
    const-string v8, "name=?"

    .line 1190
    .local v8, where:Ljava/lang/String;
    new-array v4, v3, [Ljava/lang/String;

    const v0, 0x7f040013

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 1191
    .local v4, args:[Ljava/lang/String;
    const-string v3, "name=?"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/soundrecorder/SoundRecorder;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1192
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_2c

    .line 1193
    const-string v0, "SoundRecorder"

    const-string v3, "query returns null"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_2c
    const/4 v7, -0x1

    .line 1196
    .local v7, id:I
    if-eqz v6, :cond_3f

    .line 1197
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1198
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1199
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1201
    :cond_3c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1203
    :cond_3f
    return v7
.end method

.method private initResourceRefs()V
    .registers 3

    .prologue
    .line 486
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    .line 487
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    .line 488
    const v0, 0x7f060018

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    .line 490
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    .line 491
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    .line 492
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    .line 493
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    .line 494
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerView:Landroid/widget/TextView;

    .line 495
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingModeLayout:Landroid/widget/LinearLayout;

    .line 496
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mInfoMessage2Layout:Landroid/widget/LinearLayout;

    .line 497
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordModeMessage:Landroid/widget/TextView;

    .line 498
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mMemoryAvailable:Landroid/widget/TextView;

    .line 499
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameMessage:Landroid/widget/TextView;

    .line 500
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileSizeMessage:Landroid/widget/TextView;

    .line 502
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->stringavailable:Landroid/widget/TextView;

    .line 503
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    .line 505
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mMMSExitButtons:Landroid/widget/LinearLayout;

    .line 507
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mUseAsButton:Landroid/widget/Button;

    .line 508
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mShareButton:Landroid/widget/Button;

    .line 509
    const v0, 0x7f060011

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mDeleteButton:Landroid/widget/Button;

    .line 511
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mdiscardButton:Landroid/widget/Button;

    .line 512
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->macceptButton:Landroid/widget/Button;

    .line 514
    const v0, 0x7f060015

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/soundrecorder/VUMeter;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    .line 516
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mUseAsButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mShareButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mdiscardButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->macceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f04000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    .line 531
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/VUMeter;->setRecorder(Lcom/android/soundrecorder/Recorder;)V

    .line 532
    return-void
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 1154
    :try_start_1
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1155
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_9

    move-object v1, v7

    .line 1160
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_8
    return-object v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_9
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1158
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_11
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v1

    goto :goto_8

    .line 1159
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_13
    move-exception v1

    move-object v6, v1

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 1160
    goto :goto_8
.end method

.method private registerExternalStorageListener()V
    .registers 3

    .prologue
    .line 1087
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_24

    .line 1088
    new-instance v1, Lcom/android/soundrecorder/SoundRecorder$5;

    invoke-direct {v1, p0}, Lcom/android/soundrecorder/SoundRecorder$5;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    .line 1115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1116
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1117
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1118
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1119
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/soundrecorder/SoundRecorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1121
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_24
    return-void
.end method

.method private registerLCDOnOffListener()V
    .registers 3

    .prologue
    .line 1128
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mLCDOnOffReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1f

    .line 1129
    new-instance v1, Lcom/android/soundrecorder/SoundRecorder$6;

    invoke-direct {v1, p0}, Lcom/android/soundrecorder/SoundRecorder$6;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mLCDOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 1141
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1142
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1143
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1145
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mLCDOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/soundrecorder/SoundRecorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1147
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_1f
    return-void
.end method

.method private saveSample()V
    .registers 5

    .prologue
    .line 1006
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v2}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v2

    if-nez v2, :cond_9

    .line 1026
    :cond_8
    :goto_8
    return-void

    .line 1008
    :cond_9
    const/4 v1, 0x0

    .line 1009
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->ringUri:Landroid/net/Uri;

    if-nez v2, :cond_2b

    .line 1012
    :try_start_e
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v2}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/soundrecorder/SoundRecorder;->addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    :try_end_17
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_e .. :try_end_17} :catch_28

    move-result-object v1

    .line 1022
    :goto_18
    if-eqz v1, :cond_8

    .line 1025
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/soundrecorder/SoundRecorder;->setResult(ILandroid/content/Intent;)V

    goto :goto_8

    .line 1014
    :catch_28
    move-exception v2

    move-object v0, v2

    .line 1015
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_8

    .line 1020
    .end local v0           #ex:Ljava/lang/UnsupportedOperationException;
    :cond_2b
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->ringUri:Landroid/net/Uri;

    goto :goto_18
.end method

.method private stopAudioPlayback()V
    .registers 4

    .prologue
    .line 541
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 545
    return-void
.end method

.method private updateMemoryBar()V
    .registers 10

    .prologue
    const-string v8, "SoundRecorder"

    .line 1479
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 1481
    .local v3, mSDCardDir:Ljava/io/File;
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1482
    .local v2, fs:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 1483
    .local v0, blocks:J
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v4, v6

    .line 1485
    .local v4, totalBlocks:J
    const-string v6, "SoundRecorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    const-string v6, "SoundRecorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "total "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    return-void
.end method

.method private updateTimeRemaining()V
    .registers 13

    .prologue
    const-wide/16 v9, 0x3c

    const/4 v11, 0x0

    const/4 v8, 0x1

    .line 1437
    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v5}, Lcom/android/soundrecorder/RemainingTimeCalculator;->timeRemaining()J

    move-result-wide v2

    .line 1439
    .local v2, t:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_76

    .line 1440
    iput-boolean v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 1441
    const-string v5, "SoundRecord"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTimeRemaining   mSampleInterrupted : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v5}, Lcom/android/soundrecorder/RemainingTimeCalculator;->currentLowerLimit()I

    move-result v0

    .line 1444
    .local v0, limit:I
    packed-switch v0, :pswitch_data_b4

    .line 1454
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 1457
    :goto_38
    iget-boolean v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mChangedPath:Z

    if-ne v5, v8, :cond_54

    .line 1458
    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    iget v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v5

    const/16 v6, 0x800

    if-ne v5, v6, :cond_52

    .line 1459
    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    iget v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    iget v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioPath:I

    const/4 v8, -0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/media/AudioManager;->setRouting(III)V

    .line 1461
    :cond_52
    iput-boolean v11, p0, Lcom/android/soundrecorder/SoundRecorder;->mChangedPath:Z

    .line 1463
    :cond_54
    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v5}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 1475
    .end local v0           #limit:I
    :cond_59
    :goto_59
    return-void

    .line 1446
    .restart local v0       #limit:I
    :pswitch_5a
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f040006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    goto :goto_38

    .line 1450
    :pswitch_68
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f040007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    goto :goto_38

    .line 1467
    .end local v0           #limit:I
    :cond_76
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1468
    .local v1, res:Landroid/content/res/Resources;
    const-string v4, ""

    .line 1470
    .local v4, timeStr:Ljava/lang/String;
    cmp-long v5, v2, v9

    if-gez v5, :cond_94

    .line 1471
    const v5, 0x7f04000a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_59

    .line 1472
    :cond_94
    const-wide/16 v5, 0x21c

    cmp-long v5, v2, v5

    if-gez v5, :cond_59

    .line 1473
    const v5, 0x7f040009

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    div-long v7, v2, v9

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_59

    .line 1444
    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_68
        :pswitch_5a
    .end packed-switch
.end method

.method private updateTimerView()V
    .registers 30

    .prologue
    .line 1309
    invoke-virtual/range {p0 .. p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1310
    .local v12, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v14

    .line 1312
    .local v14, state:I
    const/16 v22, 0x1

    move v0, v14

    move/from16 v1, v22

    if-eq v0, v1, :cond_1c

    const/16 v22, 0x2

    move v0, v14

    move/from16 v1, v22

    if-ne v0, v1, :cond_9c

    :cond_1c
    const/16 v22, 0x1

    move/from16 v11, v22

    .line 1314
    .local v11, ongoing:Z
    :goto_20
    if-eqz v11, :cond_a1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/soundrecorder/Recorder;->progress()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v19, v22

    .line 1317
    .local v19, time:J
    :goto_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/soundrecorder/Recorder;->maxDuration()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v22, v19, v22

    if-lez v22, :cond_b3

    const/16 v22, 0x1

    move v0, v14

    move/from16 v1, v22

    if-ne v0, v1, :cond_b3

    .line 1319
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mChangedPath:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_92

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v22

    const/16 v23, 0x800

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8a

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mAudioPath:I

    move/from16 v24, v0

    const/16 v25, -0x1

    invoke-virtual/range {v22 .. v25}, Landroid/media/AudioManager;->setRouting(III)V

    .line 1323
    :cond_8a
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/soundrecorder/SoundRecorder;->mChangedPath:Z

    .line 1325
    :cond_92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 1416
    :cond_9b
    :goto_9b
    return-void

    .line 1312
    .end local v11           #ongoing:Z
    .end local v19           #time:J
    :cond_9c
    const/16 v22, 0x0

    move/from16 v11, v22

    goto :goto_20

    .line 1314
    .restart local v11       #ongoing:Z
    :cond_a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v19, v22

    goto :goto_33

    .line 1328
    .restart local v19       #time:J
    :cond_b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-wide/16 v25, 0x3c

    div-long v25, v19, v25

    const-wide/16 v27, 0x3c

    div-long v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-wide/16 v25, 0x3c

    div-long v25, v19, v25

    const-wide/16 v27, 0x3c

    rem-long v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    const-wide/16 v25, 0x3c

    rem-long v25, v19, v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 1330
    .local v21, timeStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mTimerView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1332
    const/16 v22, 0x2

    move v0, v14

    move/from16 v1, v22

    if-ne v0, v1, :cond_2e6

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x64

    mul-long v23, v23, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    div-long v23, v23, v25

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1339
    :cond_128
    :goto_128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/soundrecorder/RemainingTimeCalculator;->reset()V

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    move-object/from16 v22, v0

    const/16 v23, 0x170c

    invoke-virtual/range {v22 .. v23}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/soundrecorder/RemainingTimeCalculator;->timeRemaining()J

    move-result-wide v15

    .line 1343
    .local v15, t:J
    const-string v22, "SoundRecorder"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "updateTimerView"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const-wide/16 v22, 0x0

    cmp-long v22, v15, v22

    if-gtz v22, :cond_16e

    const/16 v22, 0x2

    move v0, v14

    move/from16 v1, v22

    if-ne v0, v1, :cond_9b

    .line 1353
    :cond_16e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/SoundRecorder;->recordMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2f2

    .line 1355
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f04001c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1356
    .local v7, mmsStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mRecordModeMessage:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1365
    .end local v7           #mmsStr:Ljava/lang/String;
    :goto_1ac
    if-nez v14, :cond_389

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v22

    if-nez v22, :cond_389

    .line 1367
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/SoundRecorder;->recordMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_324

    .line 1370
    invoke-virtual/range {p0 .. p0}, Lcom/android/soundrecorder/SoundRecorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 1371
    .local v13, resolver:Landroid/content/ContentResolver;
    const-string v22, "MMSSETTINGDB_MESSAGESIZE_I"

    move-object v0, v13

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1372
    .local v10, msgMaxSize_flexValues:Ljava/lang/String;
    const-wide/16 v8, 0x12c

    .line 1374
    .local v8, msgMaxSize_Val:J
    if-eqz v10, :cond_1e1

    .line 1375
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide v8, v0

    .line 1376
    :cond_1e1
    const-wide/16 v22, 0x14

    sub-long v8, v8, v22

    .line 1377
    const-string v22, "SoundRecorder"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "MMS Flex value: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    const-wide/16 v22, 0x400

    mul-long v22, v22, v8

    const-wide/16 v24, 0x2e1

    div-long v22, v22, v24

    move-wide v0, v15

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v17

    .line 1381
    .local v17, tMMS:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    move-object/from16 v22, v0

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/soundrecorder/Recorder;->setMaxDuration(I)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-wide/16 v25, 0x3c

    div-long v25, v17, v25

    const-wide/16 v27, 0x3c

    div-long v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-wide/16 v25, 0x3c

    div-long v25, v17, v25

    const-wide/16 v27, 0x3c

    rem-long v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    const-wide/16 v25, 0x3c

    rem-long v25, v17, v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1384
    .local v5, availableStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->stringavailable:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const v23, 0x7f04002d

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(I)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mMemoryAvailable:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1407
    .end local v5           #availableStr:Ljava/lang/String;
    .end local v8           #msgMaxSize_Val:J
    .end local v10           #msgMaxSize_flexValues:Ljava/lang/String;
    .end local v13           #resolver:Landroid/content/ContentResolver;
    .end local v17           #tMMS:J
    :cond_273
    :goto_273
    const/16 v22, 0x2

    move v0, v14

    move/from16 v1, v22

    if-ne v0, v1, :cond_2c5

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide v15, v0

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-wide/16 v25, 0x3c

    div-long v25, v15, v25

    const-wide/16 v27, 0x3c

    div-long v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-wide/16 v25, 0x3c

    div-long v25, v15, v25

    const-wide/16 v27, 0x3c

    rem-long v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    const-wide/16 v25, 0x3c

    rem-long v25, v15, v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1414
    :cond_2c5
    if-eqz v11, :cond_9b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/soundrecorder/Recorder;->getPauseState()Z

    move-result v22

    if-nez v22, :cond_9b

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mUpdateTimer:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    const-wide/16 v24, 0x1f4

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9b

    .line 1334
    .end local v15           #t:J
    :cond_2e6
    const/16 v22, 0x1

    move v0, v14

    move/from16 v1, v22

    if-ne v0, v1, :cond_128

    .line 1335
    invoke-direct/range {p0 .. p0}, Lcom/android/soundrecorder/SoundRecorder;->updateTimeRemaining()V

    goto/16 :goto_128

    .line 1360
    .restart local v15       #t:J
    :cond_2f2
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f040019

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1361
    .local v6, generalStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mRecordModeMessage:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1ac

    .line 1390
    .end local v6           #generalStr:Ljava/lang/String;
    :cond_324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-wide/16 v25, 0x3c

    div-long v25, v15, v25

    const-wide/16 v27, 0x3c

    div-long v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-wide/16 v25, 0x3c

    div-long v25, v15, v25

    const-wide/16 v27, 0x3c

    rem-long v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    const-wide/16 v25, 0x3c

    rem-long v25, v15, v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1391
    .restart local v5       #availableStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->stringavailable:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const v23, 0x7f04002c

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(I)V

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    move-object/from16 v22, v0

    move-wide v0, v15

    long-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/soundrecorder/Recorder;->setMaxDuration(I)V

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mMemoryAvailable:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_273

    .line 1395
    .end local v5           #availableStr:Ljava/lang/String;
    :cond_389
    const/16 v22, 0x1

    move v0, v14

    move/from16 v1, v22

    if-ne v0, v1, :cond_273

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/soundrecorder/Recorder;->maxDuration()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide v15, v0

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mTimerFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-wide/16 v25, 0x3c

    div-long v25, v15, v25

    const-wide/16 v27, 0x3c

    div-long v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-wide/16 v25, 0x3c

    div-long v25, v15, v25

    const-wide/16 v27, 0x3c

    rem-long v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    const-wide/16 v25, 0x3c

    rem-long v25, v15, v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1399
    .local v4, availStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/SoundRecorder;->recordMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_404

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->stringavailable:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const v23, 0x7f04002d

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(I)V

    .line 1403
    :goto_3f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->mMemoryAvailable:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_273

    .line 1402
    :cond_404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/SoundRecorder;->stringavailable:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const v23, 0x7f04002c

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3f6
.end method

.method private updateUi()V
    .registers 16

    .prologue
    const-wide/16 v12, 0x400

    const/4 v11, 0x1

    const/4 v10, 0x4

    const/4 v9, 0x0

    const-string v14, "["

    .line 1638
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1640
    .local v5, res:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v6}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v6

    packed-switch v6, :pswitch_data_376

    .line 1859
    :goto_14
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateTimerView()V

    .line 1860
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    invoke-virtual {v6}, Lcom/android/soundrecorder/VUMeter;->invalidate()V

    .line 1861
    return-void

    .line 1642
    :pswitch_1d
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v6}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v6

    if-nez v6, :cond_111

    .line 1643
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1644
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1645
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1646
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1647
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1648
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1650
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 1652
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1653
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1654
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    const v7, 0x7f020002

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1655
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1656
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    const v7, 0x7f04000f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1657
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1659
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mMemoryAvailable:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1660
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordModeMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1667
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1669
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mMMSExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1671
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    invoke-virtual {v6, v9}, Lcom/android/soundrecorder/VUMeter;->setVisibility(I)V

    .line 1672
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1673
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mInfoMessage2Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1674
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1675
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    const v7, 0x7f020005

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1676
    const/high16 v6, 0x7f04

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/soundrecorder/SoundRecorder;->setTitle(Ljava/lang/CharSequence;)V

    .line 1733
    :goto_a9
    const-string v6, "SoundRecord"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateUi   mSampleInterrupted : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    iget-boolean v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    if-eqz v6, :cond_e5

    .line 1735
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1736
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    const v7, 0x7f040005

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1737
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    const v7, 0x7f020002

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1738
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1742
    :cond_e5
    const-string v6, "SoundRecorder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mErrorUiMessage "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    if-eqz v6, :cond_1fc

    .line 1744
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1745
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_14

    .line 1680
    :cond_111
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1681
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mInfoMessage2Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1686
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v6}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v0

    .line 1687
    .local v0, currentFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1688
    .local v1, fileName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 1689
    .local v2, fileSize:J
    const-string v6, "SoundRecorder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fileSize "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    cmp-long v6, v2, v12

    if-lez v6, :cond_1d6

    .line 1691
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-long v7, v2, v12

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "KB]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1694
    .local v4, fileSizeStr:Ljava/lang/String;
    :goto_160
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1695
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileSizeMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1698
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1699
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1700
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1701
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1702
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1703
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1705
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1706
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1707
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1708
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mMemoryAvailable:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1709
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordModeMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1713
    iget-boolean v6, p0, Lcom/android/soundrecorder/SoundRecorder;->bGetContent:Z

    if-ne v6, v11, :cond_1f1

    .line 1715
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1716
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mMMSExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1726
    :goto_1af
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    invoke-virtual {v6, v10}, Lcom/android/soundrecorder/VUMeter;->setVisibility(I)V

    .line 1727
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileSizeMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1728
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileSizeMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1729
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1730
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    const v7, 0x7f020005

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1731
    const/high16 v6, 0x7f04

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/soundrecorder/SoundRecorder;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_a9

    .line 1693
    .end local v4           #fileSizeStr:Ljava/lang/String;
    :cond_1d6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "B]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #fileSizeStr:Ljava/lang/String;
    goto/16 :goto_160

    .line 1720
    :cond_1f1
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1721
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mMMSExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1af

    .line 1749
    .end local v0           #currentFile:Ljava/io/File;
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #fileSize:J
    .end local v4           #fileSizeStr:Ljava/lang/String;
    :cond_1fc
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_14

    .line 1754
    :pswitch_203
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1755
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1756
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1757
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1758
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1759
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1760
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1761
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mInfoMessage2Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1762
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    if-eqz v6, :cond_283

    .line 1763
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1764
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1770
    :goto_23b
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1771
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    const v7, 0x7f020007

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1772
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1773
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    const v7, 0x7f040004

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1774
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mMemoryAvailable:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1775
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordModeMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1776
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1778
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mMMSExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1780
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    invoke-virtual {v6, v9}, Lcom/android/soundrecorder/VUMeter;->setVisibility(I)V

    .line 1782
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1784
    const v6, 0x7f040001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/soundrecorder/SoundRecorder;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    .line 1768
    :cond_283
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_23b

    .line 1788
    :pswitch_289
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1789
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1790
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1791
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1792
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1793
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1794
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v6}, Lcom/android/soundrecorder/Recorder;->getPauseState()Z

    move-result v6

    if-ne v6, v11, :cond_352

    .line 1796
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    const v7, 0x7f020005

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1819
    :goto_2b7
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordingModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1820
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mInfoMessage2Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1827
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v6}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v0

    .line 1828
    .restart local v0       #currentFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1829
    .restart local v1       #fileName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 1830
    .restart local v2       #fileSize:J
    const-string v6, "SoundRecorder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fileSize "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    cmp-long v6, v2, v12

    if-lez v6, :cond_35c

    .line 1832
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-long v7, v2, v12

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "KB]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1835
    .restart local v4       #fileSizeStr:Ljava/lang/String;
    :goto_306
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileNameMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1836
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileSizeMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1837
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileSizeMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1838
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mFileSizeMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1841
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage1:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1842
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateLED:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1843
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateMessage2:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1845
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1847
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mMMSExitButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1849
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;

    invoke-virtual {v6, v10}, Lcom/android/soundrecorder/VUMeter;->setVisibility(I)V

    .line 1850
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mMemoryAvailable:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1851
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecordModeMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1852
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mStateProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1854
    const/high16 v6, 0x7f04

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/soundrecorder/SoundRecorder;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    .line 1801
    .end local v0           #currentFile:Ljava/io/File;
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #fileSize:J
    .end local v4           #fileSizeStr:Ljava/lang/String;
    :cond_352
    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayButton:Landroid/widget/ImageButton;

    const v7, 0x7f020003

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_2b7

    .line 1834
    .restart local v0       #currentFile:Ljava/io/File;
    .restart local v1       #fileName:Ljava/lang/String;
    .restart local v2       #fileSize:J
    :cond_35c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "B]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #fileSizeStr:Ljava/lang/String;
    goto :goto_306

    .line 1640
    :pswitch_data_376
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_203
        :pswitch_289
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "button"

    .prologue
    const/16 v4, 0x800

    const/4 v3, -0x1

    const/4 v2, 0x1

    const-string v6, "kimeh"

    const-string v5, "SoundRecorder"

    .line 551
    const-string v0, "SoundRecorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_2a2

    .line 795
    :cond_2b
    :goto_2b
    :pswitch_2b
    return-void

    .line 558
    :pswitch_2c
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RemainingTimeCalculator;->reset()V

    .line 559
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 560
    const-string v0, "SoundRecorder"

    const-string v0, " onClick not Environment.MEDIA_MOUNTED"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iput-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 562
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 563
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUi()V

    .line 610
    :cond_56
    :goto_56
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUi()V

    goto :goto_2b

    .line 564
    :cond_5a
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RemainingTimeCalculator;->diskSpaceAvailable()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 565
    const-string v0, "SoundRecorder"

    const-string v0, " onClick not diskSpaceAvailable"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iput-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 567
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 568
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUi()V

    goto :goto_56

    .line 570
    :cond_7c
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->stopAudioPlayback()V

    .line 572
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->clear()V

    .line 573
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->ringUri:Landroid/net/Uri;

    .line 575
    const-string v0, "audio/amr"

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 577
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    .line 578
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    .line 579
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v0

    iput v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioPath:I

    .line 580
    iget v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioPath:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_bc

    .line 581
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    invoke-virtual {v0, v1, v4, v3}, Landroid/media/AudioManager;->setRouting(III)V

    .line 582
    iput-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mChangedPath:Z

    .line 584
    :cond_bc
    const-string v0, "kimeh"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rocorder_AMR: M["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], P["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioPath:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    const/16 v1, 0x170c

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    .line 587
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    const/4 v1, 0x3

    const-string v2, ".amr"

    invoke-virtual {v0, v1, v2}, Lcom/android/soundrecorder/Recorder;->startRecording(ILjava/lang/String;)V

    .line 605
    :goto_f7
    iget-wide v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_56

    .line 606
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setFileSizeLimit(Ljava/io/File;J)V

    goto/16 :goto_56

    .line 588
    :cond_10e
    const-string v0, "audio/3gpp"

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 590
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    .line 591
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    .line 592
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v0

    iput v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioPath:I

    .line 593
    iget v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioPath:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_143

    .line 594
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    invoke-virtual {v0, v1, v4, v3}, Landroid/media/AudioManager;->setRouting(III)V

    .line 595
    iput-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mChangedPath:Z

    .line 597
    :cond_143
    const-string v0, "kimeh"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rocorder_3GPP: M["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], P["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioPath:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    const/16 v1, 0x170c

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/RemainingTimeCalculator;->setBitRate(I)V

    .line 600
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    const-string v1, ".3gpp"

    invoke-virtual {v0, v2, v1}, Lcom/android/soundrecorder/Recorder;->startRecording(ILjava/lang/String;)V

    goto/16 :goto_f7

    .line 602
    :cond_17f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid output file type requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :pswitch_187
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a8

    .line 615
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->getPauseState()Z

    move-result v0

    if-ne v0, v2, :cond_1a2

    .line 619
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->resumePlayback()V

    .line 626
    :goto_19d
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUi()V

    goto/16 :goto_2b

    .line 624
    :cond_1a2
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->pausePlayback()V

    goto :goto_19d

    .line 632
    :cond_1a8
    const-string v0, "kimeh"

    const-string v0, "Rocorder_button: playButton"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mChangedPath:Z

    if-ne v0, v2, :cond_1c9

    .line 634
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v0

    if-ne v0, v4, :cond_1c6

    .line 635
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    iget v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioPath:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setRouting(III)V

    .line 637
    :cond_1c6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mChangedPath:Z

    .line 640
    :cond_1c9
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->startPlayback()V

    goto/16 :goto_2b

    .line 644
    :pswitch_1d0
    const-string v0, "kimeh"

    const-string v0, "Rocorder_button: stopButton"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->progress()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_200

    .line 648
    const-string v0, "SoundRecorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sampleLength is too small"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->progress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 652
    :cond_200
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mChangedPath:Z

    if-ne v0, v2, :cond_21a

    .line 653
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v0

    if-ne v0, v4, :cond_217

    .line 654
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    iget v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioPath:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setRouting(III)V

    .line 656
    :cond_217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mChangedPath:Z

    .line 659
    :cond_21a
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 660
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->addToMediaDB(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->ringUri:Landroid/net/Uri;

    goto/16 :goto_2b

    .line 664
    :pswitch_22d
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->bGetContent:Z

    if-ne v0, v2, :cond_2b

    .line 665
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v0

    if-lez v0, :cond_23c

    .line 666
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->saveSample()V

    .line 667
    :cond_23c
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->finish()V

    goto/16 :goto_2b

    .line 675
    :pswitch_241
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->finish()V

    goto/16 :goto_2b

    .line 724
    :pswitch_246
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040023

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040029

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/SoundRecorder;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/soundrecorder/SoundRecorder$3;

    invoke-direct {v2, p0}, Lcom/android/soundrecorder/SoundRecorder$3;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2b

    .line 743
    :pswitch_279
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->doShareAudio()V

    .line 744
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->finish()V

    goto/16 :goto_2b

    .line 747
    :pswitch_281
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040024

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x7f05

    new-instance v2, Lcom/android/soundrecorder/SoundRecorder$4;

    invoke-direct {v2, p0}, Lcom/android/soundrecorder/SoundRecorder$4;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2b

    .line 556
    nop

    :pswitch_data_2a2
    .packed-switch 0x7f06000f
        :pswitch_281
        :pswitch_279
        :pswitch_246
        :pswitch_2b
        :pswitch_22d
        :pswitch_241
        :pswitch_2b
        :pswitch_2c
        :pswitch_187
        :pswitch_1d0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 408
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 410
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->setContentView(I)V

    .line 411
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->initResourceRefs()V

    .line 412
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUi()V

    .line 413
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "icycle"

    .prologue
    .line 314
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 316
    new-instance v4, Ljava/io/File;

    const-string v8, "/sdcard/SoundRecorder"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v4, path:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1f

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 320
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 323
    :cond_1f
    const/4 v2, 0x0

    .line 324
    .local v2, fileName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 326
    .local v1, actionName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 327
    .local v3, i:Landroid/content/Intent;
    if-eqz v3, :cond_93

    .line 328
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    .line 329
    .local v7, s:Ljava/lang/String;
    const-string v8, "audio/amr"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4b

    const-string v8, "audio/3gpp"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4b

    const-string v8, "audio/*"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4b

    const-string v8, "*/*"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13e

    .line 330
    :cond_4b
    iput-object v7, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 338
    :cond_4d
    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 341
    const-string v8, "mms"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_148

    .line 342
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/soundrecorder/SoundRecorder;->recordMode:I

    .line 346
    :goto_62
    const-string v8, "SoundRecorder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "action Name"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    if-eqz v1, :cond_87

    const-string v8, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_87

    .line 349
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/soundrecorder/SoundRecorder;->bGetContent:Z

    .line 351
    :cond_87
    const-string v0, "android.provider.MediaStore.extra.MAX_BYTES"

    .line 353
    .local v0, EXTRA_MAX_BYTES:Ljava/lang/String;
    const-string v8, "android.provider.MediaStore.extra.MAX_BYTES"

    const-wide/16 v9, -0x1

    invoke-virtual {v3, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    .line 356
    .end local v0           #EXTRA_MAX_BYTES:Ljava/lang/String;
    .end local v7           #s:Ljava/lang/String;
    :cond_93
    const-string v8, "audio/*"

    iget-object v9, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14d

    .line 358
    const-string v8, "audio/amr"

    iput-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    .line 363
    :cond_a1
    :goto_a1
    const/high16 v8, 0x7f03

    invoke-virtual {p0, v8}, Lcom/android/soundrecorder/SoundRecorder;->setContentView(I)V

    .line 365
    new-instance v8, Lcom/android/soundrecorder/Recorder;

    invoke-direct {v8}, Lcom/android/soundrecorder/Recorder;-><init>()V

    iput-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    .line 366
    iget-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v8, p0}, Lcom/android/soundrecorder/Recorder;->setOnStateChangedListener(Lcom/android/soundrecorder/Recorder$OnStateChangedListener;)V

    .line 367
    new-instance v8, Lcom/android/soundrecorder/RemainingTimeCalculator;

    invoke-direct {v8}, Lcom/android/soundrecorder/RemainingTimeCalculator;-><init>()V

    iput-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mRemainingTimeCalculator:Lcom/android/soundrecorder/RemainingTimeCalculator;

    .line 369
    const-string v8, "power"

    invoke-virtual {p0, v8}, Lcom/android/soundrecorder/SoundRecorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 371
    .local v5, pm:Landroid/os/PowerManager;
    const/4 v8, 0x6

    const-string v9, "SoundRecorder"

    invoke-virtual {v5, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 374
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->initResourceRefs()V

    .line 376
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/soundrecorder/SoundRecorder;->setResult(I)V

    .line 377
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->registerExternalStorageListener()V

    .line 378
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->registerLCDOnOffListener()V

    .line 380
    if-eqz p1, :cond_113

    .line 381
    const-string v8, "recorder_state"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 382
    .local v6, recorderState:Landroid/os/Bundle;
    if-eqz v6, :cond_113

    .line 383
    iget-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v8, v6}, Lcom/android/soundrecorder/Recorder;->restoreState(Landroid/os/Bundle;)V

    .line 384
    const-string v8, "sample_interrupted"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 385
    const-string v8, "SoundRecord"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate   mSampleInterrupted : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-string v8, "max_file_size"

    const-wide/16 v9, -0x1

    invoke-virtual {v6, v8, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    .line 391
    .end local v6           #recorderState:Landroid/os/Bundle;
    :cond_113
    const-string v8, "audio"

    invoke-virtual {p0, v8}, Lcom/android/soundrecorder/SoundRecorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    .line 394
    if-eqz v2, :cond_13a

    .line 397
    const-string v8, "SoundRecorder"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-direct {p0, v2}, Lcom/android/soundrecorder/SoundRecorder;->getAudioUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->ringUri:Landroid/net/Uri;

    .line 399
    iget-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/android/soundrecorder/Recorder;->setPlayingFile(Ljava/io/File;)V

    .line 400
    iget-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v8}, Lcom/android/soundrecorder/Recorder;->startPlayback()V

    .line 401
    const/4 v2, 0x0

    .line 403
    :cond_13a
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUi()V

    .line 404
    .end local v5           #pm:Landroid/os/PowerManager;
    :goto_13d
    return-void

    .line 331
    .restart local v7       #s:Ljava/lang/String;
    .restart local p1
    :cond_13e
    if-eqz v7, :cond_4d

    .line 333
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/soundrecorder/SoundRecorder;->setResult(I)V

    .line 334
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->finish()V

    goto :goto_13d

    .line 344
    :cond_148
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/soundrecorder/SoundRecorder;->recordMode:I

    goto/16 :goto_62

    .line 359
    .end local v7           #s:Ljava/lang/String;
    :cond_14d
    const-string v8, "*/*"

    iget-object v9, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a1

    .line 360
    const-string v8, "audio/3gpp"

    iput-object v8, p0, Lcom/android/soundrecorder/SoundRecorder;->mRequestedType:Ljava/lang/String;

    goto/16 :goto_a1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    .line 910
    const-string v2, "SoundRecorder"

    const-string v3, "onCreateOptionsMenu"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, menu1:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 920
    .local v1, menu2:Ljava/lang/String;
    invoke-interface {p1, v4, v4, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 921
    const/4 v2, 0x1

    invoke-interface {p1, v4, v2, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 922
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1063
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_c

    .line 1064
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1065
    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mSDCardMountEventReceiver:Landroid/content/BroadcastReceiver;

    .line 1067
    :cond_c
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mLCDOnOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_17

    .line 1068
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mLCDOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/SoundRecorder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1069
    iput-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mLCDOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 1072
    :cond_17
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mChangedPath:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_35

    .line 1073
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v0

    const/16 v1, 0x800

    if-ne v0, v1, :cond_32

    .line 1074
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    iget v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioPath:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setRouting(III)V

    .line 1076
    :cond_32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mChangedPath:Z

    .line 1079
    :cond_35
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1080
    return-void
.end method

.method public onError(I)V
    .registers 9
    .parameter "error"

    .prologue
    const/4 v6, 0x0

    .line 1887
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1889
    .local v1, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 1890
    .local v0, message:Ljava/lang/String;
    packed-switch p1, :pswitch_data_58

    .line 1898
    :goto_9
    iget-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mChangedPath:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_26

    .line 1899
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v2

    const/16 v3, 0x800

    if-ne v2, v3, :cond_24

    .line 1900
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    iget v4, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioPath:I

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->setRouting(III)V

    .line 1902
    :cond_24
    iput-boolean v6, p0, Lcom/android/soundrecorder/SoundRecorder;->mChangedPath:Z

    .line 1904
    :cond_26
    if-eqz v0, :cond_46

    .line 1905
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x7f04

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f04000d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1912
    :cond_46
    return-void

    .line 1892
    :pswitch_47
    const v2, 0x7f040014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1893
    goto :goto_9

    .line 1895
    :pswitch_4f
    const v2, 0x7f040015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 1890
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_47
        :pswitch_4f
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 802
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4d

    .line 803
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mChangedPath:Z

    if-ne v0, v4, :cond_21

    .line 804
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v0

    const/16 v1, 0x800

    if-ne v0, v1, :cond_1e

    .line 805
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    iget v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioPath:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setRouting(III)V

    .line 807
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mChangedPath:Z

    .line 809
    :cond_21
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_52

    :goto_2a
    move v0, v4

    .line 826
    :goto_2b
    return v0

    .line 811
    :pswitch_2c
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v0

    if-lez v0, :cond_37

    .line 812
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->saveSample()V

    .line 813
    :cond_37
    invoke-virtual {p0}, Lcom/android/soundrecorder/SoundRecorder;->finish()V

    goto :goto_2a

    .line 816
    :pswitch_3b
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 817
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->saveSample()V

    goto :goto_2a

    .line 820
    :pswitch_44
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->clear()V

    .line 821
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->ringUri:Landroid/net/Uri;

    goto :goto_2a

    .line 826
    :cond_4d
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_2b

    .line 809
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_44
        :pswitch_3b
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 927
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 999
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 986
    :pswitch_d
    iget v0, p0, Lcom/android/soundrecorder/SoundRecorder;->recordMode:I

    if-ne v0, v1, :cond_19

    .line 989
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/soundrecorder/SoundRecorder;->recordMode:I

    .line 996
    :goto_14
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUi()V

    move v0, v1

    .line 997
    goto :goto_c

    .line 994
    :cond_19
    iput v1, p0, Lcom/android/soundrecorder/SoundRecorder;->recordMode:I

    goto :goto_14

    .line 927
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method protected onPause()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 844
    const/4 v0, 0x0

    .line 845
    .local v0, mCurrentState:I
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v0

    .line 847
    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    .line 849
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mPlayingPause:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 868
    :cond_14
    :goto_14
    const-string v1, "SoundRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause   mSampleInterrupted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 870
    return-void

    .line 851
    :cond_32
    if-eqz v0, :cond_14

    .line 857
    iput-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 859
    iget-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mChangedPath:Z

    if-ne v1, v2, :cond_53

    .line 860
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v1

    const/16 v2, 0x800

    if-ne v1, v2, :cond_50

    .line 861
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    iget v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioPath:I

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setRouting(III)V

    .line 863
    :cond_50
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mChangedPath:Z

    .line 865
    :cond_53
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->stop()V

    goto :goto_14
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 873
    const-string v0, "SoundRecorder"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 875
    if-eqz p1, :cond_30

    .line 877
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->state()I

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v0

    if-nez v0, :cond_40

    .line 882
    iget v0, p0, Lcom/android/soundrecorder/SoundRecorder;->recordMode:I

    if-ne v0, v3, :cond_31

    .line 885
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 886
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 907
    :cond_30
    :goto_30
    return v3

    .line 891
    :cond_31
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 892
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_30

    .line 898
    :cond_40
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 899
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_30
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "outState"

    .prologue
    .line 417
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 419
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1}, Lcom/android/soundrecorder/Recorder;->sampleLength()I

    move-result v1

    if-nez v1, :cond_c

    .line 430
    :goto_b
    return-void

    .line 422
    :cond_c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 424
    .local v0, recorderState:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v1, v0}, Lcom/android/soundrecorder/Recorder;->saveState(Landroid/os/Bundle;)V

    .line 425
    const-string v1, "SoundRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveInstanceState   mSampleInterrupted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v1, "sample_interrupted"

    iget-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 427
    const-string v1, "max_file_size"

    iget-wide v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mMaxFileSize:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 429
    const-string v1, "recorder_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_b
.end method

.method public onStateChanged(I)V
    .registers 6
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 1867
    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    if-ne p1, v3, :cond_26

    .line 1868
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    .line 1869
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mErrorUiMessage:Ljava/lang/String;

    .line 1870
    const-string v0, "SoundRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged   mSampleInterrupted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    :cond_26
    if-ne p1, v3, :cond_31

    .line 1874
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1880
    :cond_2d
    :goto_2d
    invoke-direct {p0}, Lcom/android/soundrecorder/SoundRecorder;->updateUi()V

    .line 1881
    return-void

    .line 1876
    :cond_31
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1877
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2d
.end method

.method public onStop()V
    .registers 5

    .prologue
    .line 832
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mChangedPath:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 833
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v0

    const/16 v1, 0x800

    if-ne v0, v1, :cond_1b

    .line 834
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioMode:I

    iget v2, p0, Lcom/android/soundrecorder/SoundRecorder;->mAudioPath:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setRouting(III)V

    .line 836
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mChangedPath:Z

    .line 838
    :cond_1e
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 839
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 840
    return-void
.end method
