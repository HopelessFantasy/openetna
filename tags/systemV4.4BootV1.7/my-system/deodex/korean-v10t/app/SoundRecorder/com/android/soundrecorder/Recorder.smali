.class public Lcom/android/soundrecorder/Recorder;
.super Ljava/lang/Object;
.source "Recorder.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/soundrecorder/Recorder$OnStateChangedListener;
    }
.end annotation


# static fields
.field public static final IDLE_STATE:I = 0x0

.field public static final INTERNAL_ERROR:I = 0x2

.field public static final NO_ERROR:I = 0x0

.field public static final PLAYING_STATE:I = 0x2

.field public static final RECORDING_STATE:I = 0x1

.field static final SAMPLE_LENGTH_KEY:Ljava/lang/String; = "sample_length"

.field static final SAMPLE_PATH_KEY:Ljava/lang/String; = "sample_path"

.field static final SAMPLE_PREFIX:Ljava/lang/String; = "recording"

.field public static final SDCARD_ACCESS_ERROR:I = 0x1


# instance fields
.field bFromPlaying:Z

.field bPauseState:Z

.field mMaxDuration:I

.field mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

.field mPlayer:Landroid/media/MediaPlayer;

.field mRecorder:Landroid/media/MediaRecorder;

.field mSampleFile:Ljava/io/File;

.field mSampleLength:I

.field mSampleStart:J

.field mState:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v2, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    .line 33
    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    .line 36
    iput v2, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 37
    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 39
    iput v2, p0, Lcom/android/soundrecorder/Recorder;->mMaxDuration:I

    .line 40
    iput-boolean v2, p0, Lcom/android/soundrecorder/Recorder;->bFromPlaying:Z

    .line 41
    iput-boolean v2, p0, Lcom/android/soundrecorder/Recorder;->bPauseState:Z

    .line 43
    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 44
    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/soundrecorder/Recorder;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    return-void
.end method

.method private positionPlayback()J
    .registers 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_7

    .line 288
    const-wide/16 v0, 0x0

    .line 290
    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    goto :goto_6
.end method

.method private setError(I)V
    .registers 3
    .parameter "error"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    if-eqz v0, :cond_9

    .line 347
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/soundrecorder/Recorder$OnStateChangedListener;->onError(I)V

    .line 348
    :cond_9
    return-void
.end method

.method private setState(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 333
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    if-ne p1, v0, :cond_5

    .line 338
    :goto_4
    return-void

    .line 336
    :cond_5
    iput p1, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    .line 337
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/Recorder;->signalStateChanged(I)V

    goto :goto_4
.end method

.method private signalStateChanged(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    if-eqz v0, :cond_9

    .line 342
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/soundrecorder/Recorder$OnStateChangedListener;->onStateChanged(I)V

    .line 343
    :cond_9
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 145
    iput v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 148
    invoke-direct {p0, v1}, Lcom/android/soundrecorder/Recorder;->signalStateChanged(I)V

    .line 149
    return-void
.end method

.method public delete()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 129
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    if-eqz v0, :cond_d

    .line 130
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 132
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 133
    iput v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 135
    invoke-direct {p0, v1}, Lcom/android/soundrecorder/Recorder;->signalStateChanged(I)V

    .line 136
    return-void
.end method

.method public getDuration(Ljava/io/File;)V
    .registers 7
    .parameter "mFile"

    .prologue
    .line 295
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 297
    .local v1, mp:Landroid/media/MediaPlayer;
    if-nez p1, :cond_8

    .line 310
    :goto_7
    return-void

    .line 301
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 303
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    add-int/lit16 v2, v2, 0x1f4

    div-int/lit16 v0, v2, 0x3e8

    .line 304
    .local v0, duration:I
    const-string v2, "Recorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duration of file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iput v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_34} :catch_38

    .line 309
    .end local v0           #duration:I
    :goto_34
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_7

    .line 306
    :catch_38
    move-exception v2

    goto :goto_34
.end method

.method public getMaxAmplitude()I
    .registers 3

    .prologue
    .line 55
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 56
    const/4 v0, 0x0

    .line 57
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    goto :goto_6
.end method

.method public getPauseState()Z
    .registers 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/soundrecorder/Recorder;->bPauseState:Z

    return v0
.end method

.method public maxDuration()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mMaxDuration:I

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2
    .parameter "mp"

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 330
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v0, 0x1

    .line 323
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 324
    invoke-direct {p0, v0}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    .line 325
    return v0
.end method

.method public pausePlayback()V
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 265
    :goto_4
    return-void

    .line 263
    :cond_5
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/soundrecorder/Recorder;->bPauseState:Z

    goto :goto_4
.end method

.method public progress()I
    .registers 8

    .prologue
    const-wide/16 v5, 0x3e8

    const/4 v3, 0x1

    .line 91
    iget v1, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    if-ne v1, v3, :cond_11

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    sub-long/2addr v1, v3

    div-long/2addr v1, v5

    long-to-int v1, v1

    .line 102
    :goto_10
    return v1

    .line 93
    :cond_11
    iget v1, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3d

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, mPosition:I
    invoke-direct {p0}, Lcom/android/soundrecorder/Recorder;->positionPlayback()J

    move-result-wide v1

    div-long/2addr v1, v5

    long-to-int v0, v1

    .line 97
    const-string v1, "Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "progress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    if-le v0, v1, :cond_3b

    .line 99
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    :cond_3b
    move v1, v0

    .line 100
    goto :goto_10

    .end local v0           #mPosition:I
    :cond_3d
    move v1, v3

    .line 102
    goto :goto_10
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "recorderState"

    .prologue
    const/4 v4, -0x1

    .line 61
    const-string v3, "sample_path"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, samplePath:Ljava/lang/String;
    if-nez v2, :cond_a

    .line 80
    :cond_9
    :goto_9
    return-void

    .line 64
    :cond_a
    const-string v3, "sample_length"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 65
    .local v1, sampleLength:I
    if-eq v1, v4, :cond_9

    .line 68
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 71
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_9

    .line 75
    :cond_31
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->delete()V

    .line 76
    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 77
    iput v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 79
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/soundrecorder/Recorder;->signalStateChanged(I)V

    goto :goto_9
.end method

.method public resumePlayback()V
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 272
    :goto_4
    return-void

    .line 270
    :cond_5
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/soundrecorder/Recorder;->bPauseState:Z

    goto :goto_4
.end method

.method public sampleFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    return-object v0
.end method

.method public sampleLength()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    return v0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "recorderState"

    .prologue
    .line 50
    const-string v0, "sample_path"

    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "sample_length"

    iget v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method public setMaxDuration(I)V
    .registers 2
    .parameter "max"

    .prologue
    .line 114
    iput p1, p0, Lcom/android/soundrecorder/Recorder;->mMaxDuration:I

    .line 115
    return-void
.end method

.method public setOnStateChangedListener(Lcom/android/soundrecorder/Recorder$OnStateChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/soundrecorder/Recorder;->mOnStateChangedListener:Lcom/android/soundrecorder/Recorder$OnStateChangedListener;

    .line 84
    return-void
.end method

.method public setPlayingFile(Ljava/io/File;)V
    .registers 3
    .parameter "mFile"

    .prologue
    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/soundrecorder/Recorder;->bFromPlaying:Z

    .line 313
    iput-object p1, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 314
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/android/soundrecorder/Recorder;->getDuration(Ljava/io/File;)V

    .line 315
    return-void
.end method

.method public startPlayback()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 237
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 239
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 241
    :try_start_c
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 243
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 244
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 245
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_2b} :catch_35
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_2b} :catch_3d

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    .line 257
    invoke-direct {p0, v3}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    .line 258
    :goto_34
    return-void

    .line 246
    :catch_35
    move-exception v1

    move-object v0, v1

    .line 247
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, v3}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    .line 248
    iput-object v4, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_34

    .line 250
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3d
    move-exception v1

    move-object v0, v1

    .line 251
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    .line 252
    iput-object v4, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_34
.end method

.method public startRecording(ILjava/lang/String;)V
    .registers 13
    .parameter "outputfileformat"
    .parameter "extension"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const-string v6, "SUDHIR_RECORDER"

    .line 152
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stop()V

    .line 153
    const-string v4, "SUDHIR_RECORDER"

    const-string v4, " 1 Recorder. startRecording"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    if-nez v4, :cond_36

    .line 156
    new-instance v3, Ljava/io/File;

    const-string v4, "/sdcard/SoundRecorder"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v3, sampleDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_27

    .line 158
    new-instance v3, Ljava/io/File;

    .end local v3           #sampleDir:Ljava/io/File;
    const-string v4, "/sdcard/sdcard"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .restart local v3       #sampleDir:Ljava/io/File;
    :cond_27
    :try_start_27
    const-string v4, "SUDHIR_RECORDER"

    const-string v5, "2 Recorder. startRecording"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v4, "recording"

    invoke-static {v4, p2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_36} :catch_8c

    .line 170
    .end local v3           #sampleDir:Ljava/io/File;
    :cond_36
    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 171
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v7}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 172
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 173
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v7}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 174
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 175
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    iget v5, p0, Lcom/android/soundrecorder/Recorder;->mMaxDuration:I

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 176
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    new-instance v5, Lcom/android/soundrecorder/Recorder$1;

    invoke-direct {v5, p0}, Lcom/android/soundrecorder/Recorder$1;-><init>(Lcom/android/soundrecorder/Recorder;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 197
    :try_start_6a
    const-string v4, "SUDHIR_RECORDER"

    const-string v5, " 4Recorder. startRecording"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_76} :catch_99

    .line 210
    :try_start_76
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->start()V
    :try_end_7b
    .catch Ljava/lang/RuntimeException; {:try_start_76 .. :try_end_7b} :catch_b2

    .line 219
    const-string v4, "SUDHIR_RECORDER"

    const-string v4, " 6  Recorder. startRecording"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    .line 221
    invoke-direct {p0, v7}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    .line 222
    :goto_8b
    return-void

    .line 163
    .restart local v3       #sampleDir:Ljava/io/File;
    :catch_8c
    move-exception v4

    move-object v0, v4

    .line 164
    .local v0, e:Ljava/io/IOException;
    const-string v4, "SUDHIR_RECORDER"

    const-string v4, " 3 Recorder. startRecording"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0, v7}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    goto :goto_8b

    .line 200
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #sampleDir:Ljava/io/File;
    :catch_99
    move-exception v4

    move-object v2, v4

    .line 201
    .local v2, exception:Ljava/io/IOException;
    const-string v4, "SUDHIR_RECORDER"

    const-string v4, " 5 Recorder. startRecording"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0, v8}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    .line 203
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->reset()V

    .line 204
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->release()V

    .line 205
    iput-object v9, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_8b

    .line 211
    .end local v2           #exception:Ljava/io/IOException;
    :catch_b2
    move-exception v4

    move-object v1, v4

    .line 212
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v4, "Recorder"

    const-string v5, "mRecorder.start() is failed"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0, v8}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    .line 214
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->reset()V

    .line 215
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->release()V

    .line 216
    iput-object v9, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_8b
.end method

.method public state()I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mState:I

    return v0
.end method

.method public stop()V
    .registers 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stopRecording()V

    .line 319
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stopPlayback()V

    .line 320
    return-void
.end method

.method public stopPlayback()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_6

    .line 284
    :goto_5
    return-void

    .line 278
    :cond_6
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 279
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 281
    iput-boolean v1, p0, Lcom/android/soundrecorder/Recorder;->bFromPlaying:Z

    .line 282
    iput-boolean v1, p0, Lcom/android/soundrecorder/Recorder;->bPauseState:Z

    .line 283
    invoke-direct {p0, v1}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    goto :goto_5
.end method

.method public stopRecording()V
    .registers 5

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_5

    .line 234
    :goto_4
    return-void

    .line 228
    :cond_5
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 229
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:I

    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    goto :goto_4
.end method
