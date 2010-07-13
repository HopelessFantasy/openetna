.class public Lcom/lge/elt_test/ManualMode;
.super Landroid/app/Activity;
.source "ManualMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/elt_test/ManualMode$TimerThread;,
        Lcom/lge/elt_test/ManualMode$VibratorThread;,
        Lcom/lge/elt_test/ManualMode$RingtoneThread;,
        Lcom/lge/elt_test/ManualMode$LCDThread;
    }
.end annotation


# static fields
.field private static final AUDIOFILE_PATH:Ljava/lang/String; = "/system/sounds/Aging.mp3"

.field private static final LCDBACKLIGHT_OFF_LENGTH:I = 0x3e8

.field private static final LCDBACKLIGHT_ON_LENGTH:I = 0x7d0

.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static final RINGTONE_PAUSE_LENGTH:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "ELTManualModeTest"

.field private static final VIBRATOR_LENGTH:I = 0x7d0

.field private static final VIBRATOR_PAUSE_LENGTH:I = 0x3e8


# instance fields
.field private final fn_bl:Ljava/lang/String;

.field private final fn_lcd:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCnt:I

.field private volatile mContinueLcdOnOFF:Z

.field private volatile mContinueTimer:Z

.field private volatile mContinueVibrating:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogString:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLCDThread:Lcom/lge/elt_test/ManualMode$LCDThread;

.field private mLcdOn:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOldBrightness:I

.field private mOldScreenTimeout:I

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRingtoneThread:Lcom/lge/elt_test/ManualMode$RingtoneThread;

.field private mService:Landroid/os/IHardwareService;

.field private mTimerThread:Lcom/lge/elt_test/ManualMode$TimerThread;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorThread:Lcom/lge/elt_test/ManualMode$VibratorThread;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/platform/mddi_innotek_hvga.1/lcd_onoff"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/elt_test/ManualMode;->fn_lcd:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/platform/i2c-gpio.2/i2c-adapter/i2c-2/2-0076/backlight/adam-bl/bl_onoff"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/elt_test/ManualMode;->fn_bl:Ljava/lang/String;

    .line 52
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/lge/elt_test/ManualMode;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 53
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/lge/elt_test/ManualMode;->mVibrator:Landroid/os/Vibrator;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/elt_test/ManualMode;->mHandler:Landroid/os/Handler;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/elt_test/ManualMode;->mDialogString:[Ljava/lang/String;

    .line 381
    return-void
.end method

.method static synthetic access$000(Lcom/lge/elt_test/ManualMode;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lge/elt_test/ManualMode;->stopAllThreads()V

    return-void
.end method

.method static synthetic access$1000(Lcom/lge/elt_test/ManualMode;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/lge/elt_test/ManualMode;->mCnt:I

    return v0
.end method

.method static synthetic access$1008(Lcom/lge/elt_test/ManualMode;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/lge/elt_test/ManualMode;->mCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/elt_test/ManualMode;->mCnt:I

    return v0
.end method

.method static synthetic access$1100(Lcom/lge/elt_test/ManualMode;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/lge/elt_test/ManualMode;->setLCDOnOff(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/lge/elt_test/ManualMode;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/elt_test/ManualMode;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/elt_test/ManualMode;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/lge/elt_test/ManualMode;->mContinueVibrating:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/lge/elt_test/ManualMode;)Landroid/os/Vibrator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lge/elt_test/ManualMode;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/lge/elt_test/ManualMode;->mContinueTimer:Z

    return v0
.end method

.method static synthetic access$500(Lcom/lge/elt_test/ManualMode;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/elt_test/ManualMode;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode;->mDialogString:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/elt_test/ManualMode;ILjava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/lge/elt_test/ManualMode;->setDialogText(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/lge/elt_test/ManualMode;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/lge/elt_test/ManualMode;->mLcdOn:Z

    return v0
.end method

.method static synthetic access$802(Lcom/lge/elt_test/ManualMode;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/lge/elt_test/ManualMode;->mLcdOn:Z

    return p1
.end method

.method static synthetic access$900(Lcom/lge/elt_test/ManualMode;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/lge/elt_test/ManualMode;->mContinueLcdOnOFF:Z

    return v0
.end method

.method private runApplication(I)V
    .registers 10
    .parameter "id"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, ""

    .line 426
    iput v3, p0, Lcom/lge/elt_test/ManualMode;->mCnt:I

    .line 428
    iget-object v1, p0, Lcom/lge/elt_test/ManualMode;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 429
    const-string v1, ""

    invoke-direct {p0, v3, v5}, Lcom/lge/elt_test/ManualMode;->setDialogText(ILjava/lang/String;)V

    .line 430
    const-string v1, ""

    invoke-direct {p0, v6, v5}, Lcom/lge/elt_test/ManualMode;->setDialogText(ILjava/lang/String;)V

    .line 431
    const-string v1, ""

    invoke-direct {p0, v7, v5}, Lcom/lge/elt_test/ManualMode;->setDialogText(ILjava/lang/String;)V

    .line 432
    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {p0, v1, v5}, Lcom/lge/elt_test/ManualMode;->setDialogText(ILjava/lang/String;)V

    .line 434
    packed-switch p1, :pswitch_data_a0

    .line 476
    :goto_25
    iput-boolean v3, p0, Lcom/lge/elt_test/ManualMode;->mContinueTimer:Z

    .line 477
    iget-object v1, p0, Lcom/lge/elt_test/ManualMode;->mTimerThread:Lcom/lge/elt_test/ManualMode$TimerThread;

    if-nez v1, :cond_32

    .line 478
    new-instance v1, Lcom/lge/elt_test/ManualMode$TimerThread;

    invoke-direct {v1, p0, v4}, Lcom/lge/elt_test/ManualMode$TimerThread;-><init>(Lcom/lge/elt_test/ManualMode;Lcom/lge/elt_test/ManualMode$1;)V

    iput-object v1, p0, Lcom/lge/elt_test/ManualMode;->mTimerThread:Lcom/lge/elt_test/ManualMode$TimerThread;

    .line 480
    :cond_32
    iget-object v1, p0, Lcom/lge/elt_test/ManualMode;->mTimerThread:Lcom/lge/elt_test/ManualMode$TimerThread;

    invoke-virtual {v1}, Lcom/lge/elt_test/ManualMode$TimerThread;->start()V

    .line 481
    return-void

    .line 436
    :pswitch_38
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/elt_test/ManualMode;->mLcdOn:Z

    .line 437
    iput-boolean v3, p0, Lcom/lge/elt_test/ManualMode;->mContinueLcdOnOFF:Z

    .line 438
    iget-object v1, p0, Lcom/lge/elt_test/ManualMode;->mLCDThread:Lcom/lge/elt_test/ManualMode$LCDThread;

    if-nez v1, :cond_48

    .line 439
    new-instance v1, Lcom/lge/elt_test/ManualMode$LCDThread;

    invoke-direct {v1, p0, v4}, Lcom/lge/elt_test/ManualMode$LCDThread;-><init>(Lcom/lge/elt_test/ManualMode;Lcom/lge/elt_test/ManualMode$1;)V

    iput-object v1, p0, Lcom/lge/elt_test/ManualMode;->mLCDThread:Lcom/lge/elt_test/ManualMode$LCDThread;

    .line 441
    :cond_48
    iget-object v1, p0, Lcom/lge/elt_test/ManualMode;->mLCDThread:Lcom/lge/elt_test/ManualMode$LCDThread;

    invoke-virtual {v1}, Lcom/lge/elt_test/ManualMode$LCDThread;->start()V

    goto :goto_25

    .line 445
    :pswitch_4e
    iget-object v1, p0, Lcom/lge/elt_test/ManualMode;->mRingtoneThread:Lcom/lge/elt_test/ManualMode$RingtoneThread;

    if-nez v1, :cond_59

    .line 446
    new-instance v1, Lcom/lge/elt_test/ManualMode$RingtoneThread;

    invoke-direct {v1, p0, v4}, Lcom/lge/elt_test/ManualMode$RingtoneThread;-><init>(Lcom/lge/elt_test/ManualMode;Lcom/lge/elt_test/ManualMode$1;)V

    iput-object v1, p0, Lcom/lge/elt_test/ManualMode;->mRingtoneThread:Lcom/lge/elt_test/ManualMode$RingtoneThread;

    .line 448
    :cond_59
    iget-object v1, p0, Lcom/lge/elt_test/ManualMode;->mRingtoneThread:Lcom/lge/elt_test/ManualMode$RingtoneThread;

    invoke-virtual {v1}, Lcom/lge/elt_test/ManualMode$RingtoneThread;->start()V

    goto :goto_25

    .line 452
    :pswitch_5f
    iput-boolean v3, p0, Lcom/lge/elt_test/ManualMode;->mContinueVibrating:Z

    .line 453
    iget-object v1, p0, Lcom/lge/elt_test/ManualMode;->mVibratorThread:Lcom/lge/elt_test/ManualMode$VibratorThread;

    if-nez v1, :cond_6c

    .line 454
    new-instance v1, Lcom/lge/elt_test/ManualMode$VibratorThread;

    invoke-direct {v1, p0, v4}, Lcom/lge/elt_test/ManualMode$VibratorThread;-><init>(Lcom/lge/elt_test/ManualMode;Lcom/lge/elt_test/ManualMode$1;)V

    iput-object v1, p0, Lcom/lge/elt_test/ManualMode;->mVibratorThread:Lcom/lge/elt_test/ManualMode$VibratorThread;

    .line 456
    :cond_6c
    iget-object v1, p0, Lcom/lge/elt_test/ManualMode;->mVibratorThread:Lcom/lge/elt_test/ManualMode$VibratorThread;

    invoke-virtual {v1}, Lcom/lge/elt_test/ManualMode$VibratorThread;->start()V

    goto :goto_25

    .line 460
    :pswitch_72
    iget-object v1, p0, Lcom/lge/elt_test/ManualMode;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 461
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 462
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.lge.hiddenmenu"

    const-string v2, "com.lge.hiddenmenu.device_test.CameraPreview"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    invoke-virtual {p0, v0}, Lcom/lge/elt_test/ManualMode;->startActivity(Landroid/content/Intent;)V

    goto :goto_25

    .line 469
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_87
    const-string v1, "1"

    invoke-direct {p0, v3, v1}, Lcom/lge/elt_test/ManualMode;->setDialogText(ILjava/lang/String;)V

    .line 470
    const v1, 0x7f040013

    invoke-virtual {p0, v1}, Lcom/lge/elt_test/ManualMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/lge/elt_test/ManualMode;->setDialogText(ILjava/lang/String;)V

    .line 471
    invoke-static {v3}, Landroid/media/AudioSystem;->setLoopbackMode(I)I

    .line 472
    const-string v1, "On"

    invoke-direct {p0, v7, v1}, Lcom/lge/elt_test/ManualMode;->setDialogText(ILjava/lang/String;)V

    goto :goto_25

    .line 434
    nop

    :pswitch_data_a0
    .packed-switch 0x7f050011
        :pswitch_38
        :pswitch_4e
        :pswitch_5f
        :pswitch_72
        :pswitch_87
    .end packed-switch
.end method

.method private setDialogText(ILjava/lang/String;)V
    .registers 5
    .parameter "position"
    .parameter "str"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode;->mDialogString:[Ljava/lang/String;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    aput-object p2, v0, v1

    .line 226
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lge/elt_test/ManualMode$3;

    invoke-direct {v1, p0}, Lcom/lge/elt_test/ManualMode$3;-><init>(Lcom/lge/elt_test/ManualMode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void
.end method

.method private setLCDOnOff(Z)V
    .registers 6
    .parameter "Lcd_OnOff"

    .prologue
    const-string v2, "1"

    const-string v2, "0"

    .line 244
    :try_start_4
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/lge/elt_test/ManualMode;->fn_lcd:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 245
    .local v1, elt_lcd:Ljava/io/BufferedWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/lge/elt_test/ManualMode;->fn_bl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 247
    .local v0, elt_bl:Ljava/io/BufferedWriter;
    if-eqz p1, :cond_35

    .line 249
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 250
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 251
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 252
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 254
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 273
    .end local v0           #elt_bl:Ljava/io/BufferedWriter;
    .end local v1           #elt_lcd:Ljava/io/BufferedWriter;
    :goto_34
    return-void

    .line 259
    .restart local v0       #elt_bl:Ljava/io/BufferedWriter;
    .restart local v1       #elt_lcd:Ljava/io/BufferedWriter;
    :cond_35
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 260
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 261
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 262
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 264
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4b} :catch_4c

    goto :goto_34

    .line 270
    .end local v0           #elt_bl:Ljava/io/BufferedWriter;
    .end local v1           #elt_lcd:Ljava/io/BufferedWriter;
    :catch_4c
    move-exception v2

    goto :goto_34
.end method

.method private stopAllThreads()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 134
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode;->mLCDThread:Lcom/lge/elt_test/ManualMode$LCDThread;

    if-eqz v0, :cond_11

    .line 135
    iput-boolean v2, p0, Lcom/lge/elt_test/ManualMode;->mContinueLcdOnOFF:Z

    .line 136
    iput-object v3, p0, Lcom/lge/elt_test/ManualMode;->mLCDThread:Lcom/lge/elt_test/ManualMode$LCDThread;

    .line 138
    :try_start_a
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode;->mService:Landroid/os/IHardwareService;

    iget v1, p0, Lcom/lge/elt_test/ManualMode;->mOldBrightness:I

    invoke-interface {v0, v1}, Landroid/os/IHardwareService;->setBacklights(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_3d

    .line 143
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode;->mRingtoneThread:Lcom/lge/elt_test/ManualMode$RingtoneThread;

    if-eqz v0, :cond_24

    .line 144
    iput-object v3, p0, Lcom/lge/elt_test/ManualMode;->mRingtoneThread:Lcom/lge/elt_test/ManualMode$RingtoneThread;

    .line 145
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 146
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 150
    :cond_24
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode;->mVibratorThread:Lcom/lge/elt_test/ManualMode$VibratorThread;

    if-eqz v0, :cond_31

    .line 151
    iput-boolean v2, p0, Lcom/lge/elt_test/ManualMode;->mContinueVibrating:Z

    .line 152
    iput-object v3, p0, Lcom/lge/elt_test/ManualMode;->mVibratorThread:Lcom/lge/elt_test/ManualMode$VibratorThread;

    .line 153
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 156
    :cond_31
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode;->mTimerThread:Lcom/lge/elt_test/ManualMode$TimerThread;

    if-eqz v0, :cond_39

    .line 157
    iput-boolean v2, p0, Lcom/lge/elt_test/ManualMode;->mContinueTimer:Z

    .line 158
    iput-object v3, p0, Lcom/lge/elt_test/ManualMode;->mTimerThread:Lcom/lge/elt_test/ManualMode$TimerThread;

    .line 161
    :cond_39
    invoke-static {v2}, Landroid/media/AudioSystem;->setLoopbackMode(I)I

    .line 162
    return-void

    .line 139
    :catch_3d
    move-exception v0

    goto :goto_11
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, ""

    .line 165
    iput v4, p0, Lcom/lge/elt_test/ManualMode;->mCnt:I

    .line 167
    iget-object v2, p0, Lcom/lge/elt_test/ManualMode;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 168
    const-string v2, ""

    invoke-direct {p0, v4, v6}, Lcom/lge/elt_test/ManualMode;->setDialogText(ILjava/lang/String;)V

    .line 169
    const-string v2, ""

    invoke-direct {p0, v7, v6}, Lcom/lge/elt_test/ManualMode;->setDialogText(ILjava/lang/String;)V

    .line 170
    const-string v2, ""

    invoke-direct {p0, v8, v6}, Lcom/lge/elt_test/ManualMode;->setDialogText(ILjava/lang/String;)V

    .line 171
    const/4 v2, 0x4

    const-string v3, ""

    invoke-direct {p0, v2, v6}, Lcom/lge/elt_test/ManualMode;->setDialogText(ILjava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/lge/elt_test/ManualMode;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 174
    .local v0, checkedId:I
    packed-switch v0, :pswitch_data_a6

    .line 216
    :goto_2b
    iput-boolean v4, p0, Lcom/lge/elt_test/ManualMode;->mContinueTimer:Z

    .line 217
    iget-object v2, p0, Lcom/lge/elt_test/ManualMode;->mTimerThread:Lcom/lge/elt_test/ManualMode$TimerThread;

    if-nez v2, :cond_38

    .line 218
    new-instance v2, Lcom/lge/elt_test/ManualMode$TimerThread;

    invoke-direct {v2, p0, v5}, Lcom/lge/elt_test/ManualMode$TimerThread;-><init>(Lcom/lge/elt_test/ManualMode;Lcom/lge/elt_test/ManualMode$1;)V

    iput-object v2, p0, Lcom/lge/elt_test/ManualMode;->mTimerThread:Lcom/lge/elt_test/ManualMode$TimerThread;

    .line 220
    :cond_38
    iget-object v2, p0, Lcom/lge/elt_test/ManualMode;->mTimerThread:Lcom/lge/elt_test/ManualMode$TimerThread;

    invoke-virtual {v2}, Lcom/lge/elt_test/ManualMode$TimerThread;->start()V

    .line 221
    return-void

    .line 176
    :pswitch_3e
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lge/elt_test/ManualMode;->mLcdOn:Z

    .line 177
    iput-boolean v4, p0, Lcom/lge/elt_test/ManualMode;->mContinueLcdOnOFF:Z

    .line 178
    iget-object v2, p0, Lcom/lge/elt_test/ManualMode;->mLCDThread:Lcom/lge/elt_test/ManualMode$LCDThread;

    if-nez v2, :cond_4e

    .line 179
    new-instance v2, Lcom/lge/elt_test/ManualMode$LCDThread;

    invoke-direct {v2, p0, v5}, Lcom/lge/elt_test/ManualMode$LCDThread;-><init>(Lcom/lge/elt_test/ManualMode;Lcom/lge/elt_test/ManualMode$1;)V

    iput-object v2, p0, Lcom/lge/elt_test/ManualMode;->mLCDThread:Lcom/lge/elt_test/ManualMode$LCDThread;

    .line 181
    :cond_4e
    iget-object v2, p0, Lcom/lge/elt_test/ManualMode;->mLCDThread:Lcom/lge/elt_test/ManualMode$LCDThread;

    invoke-virtual {v2}, Lcom/lge/elt_test/ManualMode$LCDThread;->start()V

    goto :goto_2b

    .line 185
    :pswitch_54
    iget-object v2, p0, Lcom/lge/elt_test/ManualMode;->mRingtoneThread:Lcom/lge/elt_test/ManualMode$RingtoneThread;

    if-nez v2, :cond_5f

    .line 186
    new-instance v2, Lcom/lge/elt_test/ManualMode$RingtoneThread;

    invoke-direct {v2, p0, v5}, Lcom/lge/elt_test/ManualMode$RingtoneThread;-><init>(Lcom/lge/elt_test/ManualMode;Lcom/lge/elt_test/ManualMode$1;)V

    iput-object v2, p0, Lcom/lge/elt_test/ManualMode;->mRingtoneThread:Lcom/lge/elt_test/ManualMode$RingtoneThread;

    .line 188
    :cond_5f
    iget-object v2, p0, Lcom/lge/elt_test/ManualMode;->mRingtoneThread:Lcom/lge/elt_test/ManualMode$RingtoneThread;

    invoke-virtual {v2}, Lcom/lge/elt_test/ManualMode$RingtoneThread;->start()V

    goto :goto_2b

    .line 192
    :pswitch_65
    iput-boolean v4, p0, Lcom/lge/elt_test/ManualMode;->mContinueVibrating:Z

    .line 193
    iget-object v2, p0, Lcom/lge/elt_test/ManualMode;->mVibratorThread:Lcom/lge/elt_test/ManualMode$VibratorThread;

    if-nez v2, :cond_72

    .line 194
    new-instance v2, Lcom/lge/elt_test/ManualMode$VibratorThread;

    invoke-direct {v2, p0, v5}, Lcom/lge/elt_test/ManualMode$VibratorThread;-><init>(Lcom/lge/elt_test/ManualMode;Lcom/lge/elt_test/ManualMode$1;)V

    iput-object v2, p0, Lcom/lge/elt_test/ManualMode;->mVibratorThread:Lcom/lge/elt_test/ManualMode$VibratorThread;

    .line 196
    :cond_72
    iget-object v2, p0, Lcom/lge/elt_test/ManualMode;->mVibratorThread:Lcom/lge/elt_test/ManualMode$VibratorThread;

    invoke-virtual {v2}, Lcom/lge/elt_test/ManualMode$VibratorThread;->start()V

    goto :goto_2b

    .line 200
    :pswitch_78
    iget-object v2, p0, Lcom/lge/elt_test/ManualMode;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 201
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 202
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.lge.hiddenmenu"

    const-string v3, "com.lge.hiddenmenu.device_test.CameraPreview"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v1}, Lcom/lge/elt_test/ManualMode;->startActivity(Landroid/content/Intent;)V

    goto :goto_2b

    .line 209
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_8d
    const-string v2, "1"

    invoke-direct {p0, v4, v2}, Lcom/lge/elt_test/ManualMode;->setDialogText(ILjava/lang/String;)V

    .line 210
    const v2, 0x7f040013

    invoke-virtual {p0, v2}, Lcom/lge/elt_test/ManualMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v7, v2}, Lcom/lge/elt_test/ManualMode;->setDialogText(ILjava/lang/String;)V

    .line 211
    invoke-static {v4}, Landroid/media/AudioSystem;->setLoopbackMode(I)I

    .line 212
    const-string v2, "On"

    invoke-direct {p0, v8, v2}, Lcom/lge/elt_test/ManualMode;->setDialogText(ILjava/lang/String;)V

    goto :goto_2b

    .line 174
    nop

    :pswitch_data_a6
    .packed-switch 0x7f050011
        :pswitch_3e
        :pswitch_54
        :pswitch_65
        :pswitch_78
        :pswitch_8d
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v5, 0x7f030003

    invoke-virtual {p0, v5}, Lcom/lge/elt_test/ManualMode;->setContentView(I)V

    .line 79
    const v5, 0x7f050002

    invoke-virtual {p0, v5}, Lcom/lge/elt_test/ManualMode;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    iput-object v5, p0, Lcom/lge/elt_test/ManualMode;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 81
    const v5, 0x7f05000a

    invoke-virtual {p0, v5}, Lcom/lge/elt_test/ManualMode;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 82
    .local v4, startButton:Landroid/widget/Button;
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const-string v5, "hardware"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/elt_test/ManualMode;->mService:Landroid/os/IHardwareService;

    .line 86
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/lge/elt_test/ManualMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/lge/elt_test/ManualMode;->mAudioManager:Landroid/media/AudioManager;

    .line 89
    :try_start_36
    invoke-virtual {p0}, Lcom/lge/elt_test/ManualMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/lge/elt_test/ManualMode;->mOldBrightness:I
    :try_end_42
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_36 .. :try_end_42} :catch_74

    .line 94
    :goto_42
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/lge/elt_test/ManualMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 96
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030002

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 97
    .local v2, layout:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 98
    const v5, 0x7f040018

    new-instance v6, Lcom/lge/elt_test/ManualMode$1;

    invoke-direct {v6, p0}, Lcom/lge/elt_test/ManualMode$1;-><init>(Lcom/lge/elt_test/ManualMode;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    new-instance v5, Lcom/lge/elt_test/ManualMode$2;

    invoke-direct {v5, p0}, Lcom/lge/elt_test/ManualMode$2;-><init>(Lcom/lge/elt_test/ManualMode;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/elt_test/ManualMode;->mDialog:Landroid/app/AlertDialog;

    .line 109
    return-void

    .line 90
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #layout:Landroid/view/View;
    :catch_74
    move-exception v5

    move-object v3, v5

    .line 91
    .local v3, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v5, 0xff

    iput v5, p0, Lcom/lge/elt_test/ManualMode;->mOldBrightness:I

    goto :goto_42
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v6, 0x7f050015

    const v5, 0x7f050014

    const v4, 0x7f050013

    const v3, 0x7f050012

    const v2, 0x7f050011

    .line 395
    iget-object v1, p0, Lcom/lge/elt_test/ManualMode;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 396
    .local v0, checkedId:I
    packed-switch p1, :pswitch_data_4a

    .line 423
    :goto_18
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 398
    :pswitch_1d
    iget-object v1, p0, Lcom/lge/elt_test/ManualMode;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 399
    invoke-direct {p0, v2}, Lcom/lge/elt_test/ManualMode;->runApplication(I)V

    goto :goto_18

    .line 403
    :pswitch_26
    iget-object v1, p0, Lcom/lge/elt_test/ManualMode;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 404
    invoke-direct {p0, v3}, Lcom/lge/elt_test/ManualMode;->runApplication(I)V

    goto :goto_18

    .line 408
    :pswitch_2f
    iget-object v1, p0, Lcom/lge/elt_test/ManualMode;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 409
    invoke-direct {p0, v4}, Lcom/lge/elt_test/ManualMode;->runApplication(I)V

    goto :goto_18

    .line 413
    :pswitch_38
    iget-object v1, p0, Lcom/lge/elt_test/ManualMode;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 414
    invoke-direct {p0, v5}, Lcom/lge/elt_test/ManualMode;->runApplication(I)V

    goto :goto_18

    .line 418
    :pswitch_41
    iget-object v1, p0, Lcom/lge/elt_test/ManualMode;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 419
    invoke-direct {p0, v6}, Lcom/lge/elt_test/ManualMode;->runApplication(I)V

    goto :goto_18

    .line 396
    :pswitch_data_4a
    .packed-switch 0x8
        :pswitch_1d
        :pswitch_26
        :pswitch_2f
        :pswitch_38
        :pswitch_41
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 124
    invoke-direct {p0}, Lcom/lge/elt_test/ManualMode;->stopAllThreads()V

    .line 125
    iget-object v0, p0, Lcom/lge/elt_test/ManualMode;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 128
    :try_start_b
    invoke-virtual {p0}, Lcom/lge/elt_test/ManualMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    iget v2, p0, Lcom/lge/elt_test/ManualMode;->mOldScreenTimeout:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_16} :catch_17

    .line 131
    :goto_16
    return-void

    .line 129
    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const-string v2, "screen_off_timeout"

    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 114
    invoke-virtual {p0}, Lcom/lge/elt_test/ManualMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/16 v1, 0x7530

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/elt_test/ManualMode;->mOldScreenTimeout:I

    .line 116
    :try_start_13
    invoke-virtual {p0}, Lcom/lge/elt_test/ManualMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1d} :catch_1e

    .line 119
    :goto_1d
    return-void

    .line 117
    :catch_1e
    move-exception v0

    goto :goto_1d
.end method
