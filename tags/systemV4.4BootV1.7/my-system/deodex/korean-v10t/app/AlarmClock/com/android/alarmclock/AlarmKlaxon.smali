.class Lcom/android/alarmclock/AlarmKlaxon;
.super Ljava/lang/Object;
.source "AlarmKlaxon.java"

# interfaces
.implements Lcom/android/alarmclock/Alarms$AlarmSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/alarmclock/AlarmKlaxon$VibratorThread;,
        Lcom/android/alarmclock/AlarmKlaxon$KillerCallback;
    }
.end annotation


# static fields
.field static final ALARM_TIMEOUT_SECONDS:I = 0x78

.field private static final IN_CALL_VOLUME:F = 0.125f

.field private static final KILLER:I = 0x3e8

.field private static final PAUSE_LENGTH:I = 0x3e8

.field private static final PLAY:I = 0x3e9

.field private static final SOUNDSWITCH_DELAY:I = 0x3ea

.field private static final VIBRATE_LENGTH:I = 0x3e8

.field private static final sVibratePattern:[J


# instance fields
.field audioManager:Landroid/media/AudioManager;

.field private mAlarmId:I

.field private mAlert:Ljava/lang/String;

.field volatile mContinueVibrating:Z

.field private mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

.field private mFMRadioFlag:Z

.field private mHandler:Landroid/os/Handler;

.field private mKillerCallback:Lcom/android/alarmclock/AlarmKlaxon$KillerCallback;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMode:I

.field private mPlaying:Z

.field private mVibrate:Z

.field private mVibrator:Landroid/os/Vibrator;

.field mVibratorThread:Lcom/android/alarmclock/AlarmKlaxon$VibratorThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/alarmclock/AlarmKlaxon;->sVibratePattern:[J

    return-void

    nop

    :array_a
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v1, p0, Lcom/android/alarmclock/AlarmKlaxon;->mFMRadioFlag:Z

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/alarmclock/AlarmKlaxon;->mMode:I

    .line 64
    iput-boolean v1, p0, Lcom/android/alarmclock/AlarmKlaxon;->mPlaying:Z

    .line 77
    new-instance v0, Lcom/android/alarmclock/AlarmKlaxon$1;

    invoke-direct {v0, p0}, Lcom/android/alarmclock/AlarmKlaxon$1;-><init>(Lcom/android/alarmclock/AlarmKlaxon;)V

    iput-object v0, p0, Lcom/android/alarmclock/AlarmKlaxon;->mHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/alarmclock/AlarmKlaxon;->mVibrator:Landroid/os/Vibrator;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/alarmclock/AlarmKlaxon;)Lcom/android/alarmclock/AlarmKlaxon$KillerCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/alarmclock/AlarmKlaxon;->mKillerCallback:Lcom/android/alarmclock/AlarmKlaxon$KillerCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/alarmclock/AlarmKlaxon;Landroid/content/Context;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/alarmclock/AlarmKlaxon;->play(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/alarmclock/AlarmKlaxon;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/alarmclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/alarmclock/AlarmKlaxon;)Landroid/os/Vibrator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/alarmclock/AlarmKlaxon;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method private disableKiller()V
    .registers 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/alarmclock/AlarmKlaxon;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 305
    return-void
.end method

.method private enableKiller()V
    .registers 5

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/alarmclock/AlarmKlaxon;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/alarmclock/AlarmKlaxon;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 301
    return-void
.end method

.method private play(Landroid/content/Context;I)V
    .registers 16
    .parameter "context"
    .parameter "alarmId"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 124
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v8, "audio"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    iput-object v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->audioManager:Landroid/media/AudioManager;

    .line 125
    iget-boolean v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->mPlaying:Z

    if-eqz v8, :cond_18

    invoke-virtual {p0, p1, v10}, Lcom/android/alarmclock/AlarmKlaxon;->stop(Landroid/content/Context;Z)V

    .line 127
    :cond_18
    iput p2, p0, Lcom/android/alarmclock/AlarmKlaxon;->mAlarmId:I

    .line 130
    iget v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->mAlarmId:I

    invoke-static {v0, p0, v8}, Lcom/android/alarmclock/Alarms;->getAlarm(Landroid/content/ContentResolver;Lcom/android/alarmclock/Alarms$AlarmSettings;I)V

    .line 133
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Steam Ring"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/alarmclock/AlarmKlaxon;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v9, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 134
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Alarm Ring"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/alarmclock/AlarmKlaxon;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v9, v12}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 135
    iget-object v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v12}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    if-nez v8, :cond_7f

    .line 137
    const-string v8, "AlarmClock"

    invoke-virtual {p1, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 138
    .local v6, pref:Landroid/content/SharedPreferences;
    const-string v8, "alarm_in_silent_mode"

    invoke-interface {v6, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 139
    .local v4, isTrue:Z
    if-eqz v4, :cond_7f

    .line 141
    iget-object v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 142
    .local v5, level:I
    sget-object v8, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v1, v8, v12

    .line 144
    .local v1, defaultVolume:I
    iget-object v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->audioManager:Landroid/media/AudioManager;

    if-nez v5, :cond_125

    move v9, v1

    :goto_7c
    invoke-virtual {v8, v12, v9, v10}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 150
    .end local v1           #defaultVolume:I
    .end local v4           #isTrue:Z
    .end local v5           #level:I
    .end local v6           #pref:Landroid/content/SharedPreferences;
    :cond_7f
    iget-object v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v10}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v8

    const/16 v9, 0x400

    if-ne v8, v9, :cond_128

    move v8, v11

    :goto_8a
    iput-boolean v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->mFMRadioFlag:Z

    .line 151
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SOUND RETURN IS "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/alarmclock/AlarmKlaxon;->mFMRadioFlag:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Mode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/alarmclock/AlarmKlaxon;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 153
    iget-boolean v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->mFMRadioFlag:Z

    if-eqz v8, :cond_c6

    .line 157
    iget-object v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v10}, Landroid/media/AudioManager;->setFmRadioOn(Z)V

    .line 158
    iget-object v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->audioManager:Landroid/media/AudioManager;

    const/16 v9, 0x8

    const/16 v10, -0x11

    invoke-virtual {v8, v11, v9, v10}, Landroid/media/AudioManager;->setRouting(III)V

    .line 165
    :cond_c6
    new-instance v8, Landroid/media/MediaPlayer;

    invoke-direct {v8}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 166
    iget-object v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v9, Lcom/android/alarmclock/AlarmKlaxon$2;

    invoke-direct {v9, p0}, Lcom/android/alarmclock/AlarmKlaxon$2;-><init>(Lcom/android/alarmclock/AlarmKlaxon;)V

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 177
    :try_start_d7
    const-string v8, "phone"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 181
    .local v7, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v8

    if-eqz v8, :cond_12b

    .line 182
    const-string v8, "Using the in-call alarm"

    invoke-static {v8}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 183
    iget-object v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v9, 0x3e00

    const/high16 v10, 0x3e00

    invoke-virtual {v8, v9, v10}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/android/alarmclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v10, 0x7f05

    invoke-direct {p0, v8, v9, v10}, Lcom/android/alarmclock/AlarmKlaxon;->setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V

    .line 189
    :goto_fe
    iget-object v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v8}, Lcom/android/alarmclock/AlarmKlaxon;->startAlarm(Landroid/media/MediaPlayer;)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_103} :catch_137

    .line 209
    .end local v7           #tm:Landroid/telephony/TelephonyManager;
    :goto_103
    iget-boolean v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->mVibrate:Z

    if-eqz v8, :cond_15c

    .line 210
    iget-object v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->mVibratorThread:Lcom/android/alarmclock/AlarmKlaxon$VibratorThread;

    if-nez v8, :cond_11f

    .line 212
    new-instance v8, Lcom/android/alarmclock/AlarmKlaxon$VibratorThread;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/alarmclock/AlarmKlaxon$VibratorThread;-><init>(Lcom/android/alarmclock/AlarmKlaxon;Lcom/android/alarmclock/AlarmKlaxon$1;)V

    iput-object v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->mVibratorThread:Lcom/android/alarmclock/AlarmKlaxon$VibratorThread;

    .line 213
    iput-boolean v11, p0, Lcom/android/alarmclock/AlarmKlaxon;->mContinueVibrating:Z

    .line 214
    const-string v8, "- starting vibrator..."

    invoke-static {v8}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 215
    iget-object v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->mVibratorThread:Lcom/android/alarmclock/AlarmKlaxon$VibratorThread;

    invoke-virtual {v8}, Lcom/android/alarmclock/AlarmKlaxon$VibratorThread;->start()V

    .line 222
    :cond_11f
    :goto_11f
    invoke-direct {p0}, Lcom/android/alarmclock/AlarmKlaxon;->enableKiller()V

    .line 223
    iput-boolean v11, p0, Lcom/android/alarmclock/AlarmKlaxon;->mPlaying:Z

    .line 224
    return-void

    .restart local v1       #defaultVolume:I
    .restart local v4       #isTrue:Z
    .restart local v5       #level:I
    .restart local v6       #pref:Landroid/content/SharedPreferences;
    :cond_125
    move v9, v5

    .line 144
    goto/16 :goto_7c

    .end local v1           #defaultVolume:I
    .end local v4           #isTrue:Z
    .end local v5           #level:I
    .end local v6           #pref:Landroid/content/SharedPreferences;
    :cond_128
    move v8, v10

    .line 150
    goto/16 :goto_8a

    .line 187
    .restart local v7       #tm:Landroid/telephony/TelephonyManager;
    :cond_12b
    :try_start_12b
    iget-object v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v9, p0, Lcom/android/alarmclock/AlarmKlaxon;->mAlert:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, p1, v9}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_136} :catch_137

    goto :goto_fe

    .line 190
    .end local v7           #tm:Landroid/telephony/TelephonyManager;
    :catch_137
    move-exception v8

    move-object v2, v8

    .line 191
    .local v2, ex:Ljava/lang/Exception;
    const-string v8, "Using the fallback ringtone"

    invoke-static {v8}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 196
    :try_start_13e
    iget-object v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->reset()V

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/android/alarmclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v10, 0x7f05

    invoke-direct {p0, v8, v9, v10}, Lcom/android/alarmclock/AlarmKlaxon;->setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V

    .line 201
    iget-object v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v8}, Lcom/android/alarmclock/AlarmKlaxon;->startAlarm(Landroid/media/MediaPlayer;)V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_153} :catch_154

    goto :goto_103

    .line 202
    :catch_154
    move-exception v8

    move-object v3, v8

    .line 204
    .local v3, ex2:Ljava/lang/Exception;
    const-string v8, "Failed to play fallback ringtone"

    invoke-static {v8, v3}, Lcom/android/alarmclock/Log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_103

    .line 219
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #ex2:Ljava/lang/Exception;
    :cond_15c
    iget-object v8, p0, Lcom/android/alarmclock/AlarmKlaxon;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v8}, Landroid/os/Vibrator;->cancel()V

    goto :goto_11f
.end method

.method private setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V
    .registers 11
    .parameter "resources"
    .parameter "player"
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 240
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_19

    .line 241
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 243
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 245
    :cond_19
    return-void
.end method

.method private startAlarm(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter "player"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 232
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 233
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 234
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 235
    return-void
.end method


# virtual methods
.method public postPlay(Landroid/content/Context;I)V
    .registers 7
    .parameter "context"
    .parameter "alarmId"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/alarmclock/AlarmKlaxon;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/alarmclock/AlarmKlaxon;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    return-void
.end method

.method public reportAlarm(IZIILcom/android/alarmclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "idx"
    .parameter "enabled"
    .parameter "hour"
    .parameter "minutes"
    .parameter "daysOfWeek"
    .parameter "vibrate"
    .parameter "message"
    .parameter "alert"

    .prologue
    .line 110
    iput-object p8, p0, Lcom/android/alarmclock/AlarmKlaxon;->mAlert:Ljava/lang/String;

    .line 111
    iput-object p5, p0, Lcom/android/alarmclock/AlarmKlaxon;->mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

    .line 112
    iput-boolean p6, p0, Lcom/android/alarmclock/AlarmKlaxon;->mVibrate:Z

    .line 113
    return-void
.end method

.method public setKillerCallback(Lcom/android/alarmclock/AlarmKlaxon$KillerCallback;)V
    .registers 2
    .parameter "killerCallback"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/alarmclock/AlarmKlaxon;->mKillerCallback:Lcom/android/alarmclock/AlarmKlaxon$KillerCallback;

    .line 289
    return-void
.end method

.method public stop(Landroid/content/Context;Z)V
    .registers 8
    .parameter "context"
    .parameter "snoozed"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 253
    iget-boolean v0, p0, Lcom/android/alarmclock/AlarmKlaxon;->mPlaying:Z

    if-eqz v0, :cond_50

    .line 254
    iput-boolean v4, p0, Lcom/android/alarmclock/AlarmKlaxon;->mPlaying:Z

    .line 257
    iget-object v0, p0, Lcom/android/alarmclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_18

    .line 258
    iget-object v0, p0, Lcom/android/alarmclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 259
    iget-object v0, p0, Lcom/android/alarmclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 260
    iput-object v1, p0, Lcom/android/alarmclock/AlarmKlaxon;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 264
    :cond_18
    iget-object v0, p0, Lcom/android/alarmclock/AlarmKlaxon;->mVibratorThread:Lcom/android/alarmclock/AlarmKlaxon$VibratorThread;

    if-eqz v0, :cond_25

    .line 265
    const-string v0, "- stopRing: cleaning up vibrator thread..."

    invoke-static {v0}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 266
    iput-boolean v4, p0, Lcom/android/alarmclock/AlarmKlaxon;->mContinueVibrating:Z

    .line 267
    iput-object v1, p0, Lcom/android/alarmclock/AlarmKlaxon;->mVibratorThread:Lcom/android/alarmclock/AlarmKlaxon$VibratorThread;

    .line 269
    :cond_25
    iget-object v0, p0, Lcom/android/alarmclock/AlarmKlaxon;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 271
    iget-boolean v0, p0, Lcom/android/alarmclock/AlarmKlaxon;->mFMRadioFlag:Z

    if-eqz v0, :cond_3d

    .line 272
    iget-object v0, p0, Lcom/android/alarmclock/AlarmKlaxon;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/alarmclock/AlarmKlaxon;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 276
    :cond_3d
    if-nez p2, :cond_50

    iget-object v0, p0, Lcom/android/alarmclock/AlarmKlaxon;->mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/alarmclock/AlarmKlaxon;->mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

    invoke-virtual {v0}, Lcom/android/alarmclock/Alarms$DaysOfWeek;->isRepeatSet()Z

    move-result v0

    if-nez v0, :cond_50

    .line 277
    :cond_4b
    iget v0, p0, Lcom/android/alarmclock/AlarmKlaxon;->mAlarmId:I

    invoke-static {p1, v0, v4}, Lcom/android/alarmclock/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 280
    :cond_50
    invoke-direct {p0}, Lcom/android/alarmclock/AlarmKlaxon;->disableKiller()V

    .line 281
    return-void
.end method
