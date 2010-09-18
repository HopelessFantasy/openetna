.class public Lcom/lge/elt_test/AutomaticTest;
.super Landroid/app/Activity;
.source "AutomaticTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/elt_test/AutomaticTest$TimerThread;,
        Lcom/lge/elt_test/AutomaticTest$TestThread;
    }
.end annotation


# static fields
.field private static final AUDIOFILE_PATH:Ljava/lang/String; = "/system/sounds/Aging.mp3"

.field private static final CAMERA_PREVIEW_LENGTH:I = 0xdbba0

.field private static final CAMERA_PREVIEW_ON_WAIT_LENGTH:I = 0x1770

.field private static final LCDBACKLIGHT_OFF_LENGTH:I = 0x7d0

.field private static final LCDBACKLIGHT_ON_LENGTH:I = 0x7d0

.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static final RINGTONE_PAUSE_LENGTH:I = 0x7d0

.field private static final RINGTONE_PLAYING_LENGTH:I = 0xdbba0

.field private static final VIBRATOR_LENGTH:I = 0x7d0

.field private static final VIBRATOR_PAUSE_LENGTH:I = 0x3e8

.field private static final VIBRATOR_TEST_LENGTH:I = 0xdbba0


# instance fields
.field private final fn_bl:Ljava/lang/String;

.field private final fn_lcd:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCameraPreview:Lcom/lge/elt_test/CameraPreview;

.field private mCameraVisibility:I

.field private mCnt:I

.field private volatile mContinueTimer:Z

.field private mDialogString:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOldBrightness:I

.field private mOldScreenTimeout:I

.field private mService:Landroid/os/IHardwareService;

.field private volatile mTestRunning:Z

.field private mTestThread:Lcom/lge/elt_test/AutomaticTest$TestThread;

.field private mTimerThread:Lcom/lge/elt_test/AutomaticTest$TimerThread;

.field private mTotalCnt:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/platform/mddi_innotek_hvga.1/lcd_onoff"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/elt_test/AutomaticTest;->fn_lcd:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/platform/i2c-gpio.2/i2c-adapter/i2c-2/2-0076/backlight/adam-bl/bl_onoff"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/elt_test/AutomaticTest;->fn_bl:Ljava/lang/String;

    .line 47
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/lge/elt_test/AutomaticTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 48
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/lge/elt_test/AutomaticTest;->mVibrator:Landroid/os/Vibrator;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/elt_test/AutomaticTest;->mHandler:Landroid/os/Handler;

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/elt_test/AutomaticTest;->mDialogString:[Ljava/lang/String;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/elt_test/AutomaticTest;->mCameraVisibility:I

    .line 334
    return-void
.end method

.method static synthetic access$1000(Lcom/lge/elt_test/AutomaticTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/elt_test/AutomaticTest;->mOldBrightness:I

    return v0
.end method

.method static synthetic access$1100(Lcom/lge/elt_test/AutomaticTest;)Landroid/os/IHardwareService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/elt_test/AutomaticTest;->mService:Landroid/os/IHardwareService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/elt_test/AutomaticTest;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/elt_test/AutomaticTest;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/elt_test/AutomaticTest;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/elt_test/AutomaticTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/elt_test/AutomaticTest;)Landroid/os/Vibrator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/elt_test/AutomaticTest;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lge/elt_test/AutomaticTest;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lge/elt_test/AutomaticTest;->setCameraVisibility(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/lge/elt_test/AutomaticTest;)Lcom/lge/elt_test/AutomaticTest$TimerThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/elt_test/AutomaticTest;->mTimerThread:Lcom/lge/elt_test/AutomaticTest$TimerThread;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/lge/elt_test/AutomaticTest;Lcom/lge/elt_test/AutomaticTest$TimerThread;)Lcom/lge/elt_test/AutomaticTest$TimerThread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lge/elt_test/AutomaticTest;->mTimerThread:Lcom/lge/elt_test/AutomaticTest$TimerThread;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/lge/elt_test/AutomaticTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/lge/elt_test/AutomaticTest;->mContinueTimer:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/lge/elt_test/AutomaticTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/lge/elt_test/AutomaticTest;->mContinueTimer:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lge/elt_test/AutomaticTest;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/elt_test/AutomaticTest;->mDialogString:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/elt_test/AutomaticTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/elt_test/AutomaticTest;->mCameraVisibility:I

    return v0
.end method

.method static synthetic access$400(Lcom/lge/elt_test/AutomaticTest;)Lcom/lge/elt_test/CameraPreview;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/elt_test/AutomaticTest;->mCameraPreview:Lcom/lge/elt_test/CameraPreview;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/lge/elt_test/AutomaticTest;->setDialogText(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/elt_test/AutomaticTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/elt_test/AutomaticTest;->mCnt:I

    return v0
.end method

.method static synthetic access$608(Lcom/lge/elt_test/AutomaticTest;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/elt_test/AutomaticTest;->mCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/elt_test/AutomaticTest;->mCnt:I

    return v0
.end method

.method static synthetic access$700(Lcom/lge/elt_test/AutomaticTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/lge/elt_test/AutomaticTest;->mTotalCnt:I

    return v0
.end method

.method static synthetic access$800(Lcom/lge/elt_test/AutomaticTest;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lge/elt_test/AutomaticTest;->setLCDOnOff(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/lge/elt_test/AutomaticTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/lge/elt_test/AutomaticTest;->mTestRunning:Z

    return v0
.end method

.method private setCameraVisibility(I)V
    .registers 4
    .parameter "visibility"

    .prologue
    .line 159
    iput p1, p0, Lcom/lge/elt_test/AutomaticTest;->mCameraVisibility:I

    .line 160
    iget-object v0, p0, Lcom/lge/elt_test/AutomaticTest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lge/elt_test/AutomaticTest$2;

    invoke-direct {v1, p0}, Lcom/lge/elt_test/AutomaticTest$2;-><init>(Lcom/lge/elt_test/AutomaticTest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    return-void
.end method

.method private setDialogText(ILjava/lang/String;)V
    .registers 5
    .parameter "position"
    .parameter "str"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lge/elt_test/AutomaticTest;->mDialogString:[Ljava/lang/String;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    aput-object p2, v0, v1

    .line 144
    iget-object v0, p0, Lcom/lge/elt_test/AutomaticTest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lge/elt_test/AutomaticTest$1;

    invoke-direct {v1, p0}, Lcom/lge/elt_test/AutomaticTest$1;-><init>(Lcom/lge/elt_test/AutomaticTest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    return-void
.end method

.method private setLCDOnOff(Z)V
    .registers 6
    .parameter "aLcdOn"

    .prologue
    const-string v2, "1"

    const-string v2, "0"

    .line 170
    :try_start_4
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/lge/elt_test/AutomaticTest;->fn_lcd:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 171
    .local v1, elt_lcd:Ljava/io/BufferedWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/lge/elt_test/AutomaticTest;->fn_bl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 173
    .local v0, elt_bl:Ljava/io/BufferedWriter;
    if-eqz p1, :cond_35

    .line 174
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 175
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 176
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 177
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 179
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 195
    .end local v0           #elt_bl:Ljava/io/BufferedWriter;
    .end local v1           #elt_lcd:Ljava/io/BufferedWriter;
    :goto_34
    return-void

    .line 184
    .restart local v0       #elt_bl:Ljava/io/BufferedWriter;
    .restart local v1       #elt_lcd:Ljava/io/BufferedWriter;
    :cond_35
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 185
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 186
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 187
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 189
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4b} :catch_4c

    goto :goto_34

    .line 192
    .end local v0           #elt_bl:Ljava/io/BufferedWriter;
    .end local v1           #elt_lcd:Ljava/io/BufferedWriter;
    :catch_4c
    move-exception v2

    goto :goto_34
.end method

.method private stopAllThreads()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/lge/elt_test/AutomaticTest;->mTestThread:Lcom/lge/elt_test/AutomaticTest$TestThread;

    if-eqz v0, :cond_a

    .line 125
    iput-boolean v1, p0, Lcom/lge/elt_test/AutomaticTest;->mTestRunning:Z

    .line 126
    iput-object v2, p0, Lcom/lge/elt_test/AutomaticTest;->mTestThread:Lcom/lge/elt_test/AutomaticTest$TestThread;

    .line 129
    :cond_a
    iget-object v0, p0, Lcom/lge/elt_test/AutomaticTest;->mTimerThread:Lcom/lge/elt_test/AutomaticTest$TimerThread;

    if-eqz v0, :cond_12

    .line 130
    iput-boolean v1, p0, Lcom/lge/elt_test/AutomaticTest;->mContinueTimer:Z

    .line 131
    iput-object v2, p0, Lcom/lge/elt_test/AutomaticTest;->mTimerThread:Lcom/lge/elt_test/AutomaticTest$TimerThread;

    .line 135
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/lge/elt_test/AutomaticTest;->mService:Landroid/os/IHardwareService;

    iget v1, p0, Lcom/lge/elt_test/AutomaticTest;->mOldBrightness:I

    invoke-interface {v0, v1}, Landroid/os/IHardwareService;->setBacklights(I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1f

    .line 138
    :goto_19
    iget-object v0, p0, Lcom/lge/elt_test/AutomaticTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 139
    return-void

    .line 136
    :catch_1f
    move-exception v0

    goto :goto_19
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/lge/elt_test/AutomaticTest;->setContentView(I)V

    .line 71
    const v1, 0x7f05000f

    invoke-virtual {p0, v1}, Lcom/lge/elt_test/AutomaticTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/elt_test/CameraPreview;

    iput-object v1, p0, Lcom/lge/elt_test/AutomaticTest;->mCameraPreview:Lcom/lge/elt_test/CameraPreview;

    .line 72
    iget-object v1, p0, Lcom/lge/elt_test/AutomaticTest;->mCameraPreview:Lcom/lge/elt_test/CameraPreview;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lge/elt_test/CameraPreview;->setVisibility(I)V

    .line 74
    const-string v1, "hardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/elt_test/AutomaticTest;->mService:Landroid/os/IHardwareService;

    .line 76
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/lge/elt_test/AutomaticTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/lge/elt_test/AutomaticTest;->mAudioManager:Landroid/media/AudioManager;

    .line 79
    :try_start_30
    invoke-virtual {p0}, Lcom/lge/elt_test/AutomaticTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lge/elt_test/AutomaticTest;->mOldBrightness:I
    :try_end_3c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_30 .. :try_end_3c} :catch_3d

    .line 83
    :goto_3c
    return-void

    .line 80
    :catch_3d
    move-exception v1

    move-object v0, v1

    .line 81
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v1, 0xff

    iput v1, p0, Lcom/lge/elt_test/AutomaticTest;->mOldBrightness:I

    goto :goto_3c
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 114
    invoke-direct {p0}, Lcom/lge/elt_test/AutomaticTest;->stopAllThreads()V

    .line 115
    iget-object v0, p0, Lcom/lge/elt_test/AutomaticTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 118
    :try_start_b
    invoke-virtual {p0}, Lcom/lge/elt_test/AutomaticTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    iget v2, p0, Lcom/lge/elt_test/AutomaticTest;->mOldScreenTimeout:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_16} :catch_17

    .line 121
    :goto_16
    return-void

    .line 119
    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v3, "screen_off_timeout"

    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 89
    invoke-direct {p0}, Lcom/lge/elt_test/AutomaticTest;->stopAllThreads()V

    .line 91
    invoke-virtual {p0}, Lcom/lge/elt_test/AutomaticTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 92
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "repeatCount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lge/elt_test/AutomaticTest;->mTotalCnt:I

    .line 94
    iput v4, p0, Lcom/lge/elt_test/AutomaticTest;->mCnt:I

    .line 96
    invoke-virtual {p0}, Lcom/lge/elt_test/AutomaticTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    const/16 v2, 0x7530

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lge/elt_test/AutomaticTest;->mOldScreenTimeout:I

    .line 98
    :try_start_27
    invoke-virtual {p0}, Lcom/lge/elt_test/AutomaticTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_31} :catch_4e

    .line 102
    :goto_31
    iput-boolean v4, p0, Lcom/lge/elt_test/AutomaticTest;->mTestRunning:Z

    .line 103
    new-instance v1, Lcom/lge/elt_test/AutomaticTest$TestThread;

    invoke-direct {v1, p0, v5}, Lcom/lge/elt_test/AutomaticTest$TestThread;-><init>(Lcom/lge/elt_test/AutomaticTest;Lcom/lge/elt_test/AutomaticTest$1;)V

    iput-object v1, p0, Lcom/lge/elt_test/AutomaticTest;->mTestThread:Lcom/lge/elt_test/AutomaticTest$TestThread;

    .line 104
    iget-object v1, p0, Lcom/lge/elt_test/AutomaticTest;->mTestThread:Lcom/lge/elt_test/AutomaticTest$TestThread;

    invoke-virtual {v1}, Lcom/lge/elt_test/AutomaticTest$TestThread;->start()V

    .line 106
    iput-boolean v4, p0, Lcom/lge/elt_test/AutomaticTest;->mContinueTimer:Z

    .line 107
    new-instance v1, Lcom/lge/elt_test/AutomaticTest$TimerThread;

    invoke-direct {v1, p0, v5}, Lcom/lge/elt_test/AutomaticTest$TimerThread;-><init>(Lcom/lge/elt_test/AutomaticTest;Lcom/lge/elt_test/AutomaticTest$1;)V

    iput-object v1, p0, Lcom/lge/elt_test/AutomaticTest;->mTimerThread:Lcom/lge/elt_test/AutomaticTest$TimerThread;

    .line 108
    iget-object v1, p0, Lcom/lge/elt_test/AutomaticTest;->mTimerThread:Lcom/lge/elt_test/AutomaticTest$TimerThread;

    invoke-virtual {v1}, Lcom/lge/elt_test/AutomaticTest$TimerThread;->start()V

    .line 109
    return-void

    .line 99
    :catch_4e
    move-exception v1

    goto :goto_31
.end method
