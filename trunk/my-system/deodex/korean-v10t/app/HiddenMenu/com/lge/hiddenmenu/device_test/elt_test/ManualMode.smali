.class public Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;
.super Landroid/app/Activity;
.source "ManualMode.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$1;,
        Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;,
        Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;,
        Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;,
        Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$CameraThread;,
        Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$LCDThread;,
        Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$VibratorThread;
    }
.end annotation


# static fields
.field private static final MP3_LENGTH:I = 0x9c40

.field private static final MP3_VIBRATOR_LENGTH:I = 0x4e20

.field private static final PAUSE_LENGTH:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ELTManualModeTest"

.field private static final VIBRATOR_LENGTH:I = 0x7d0


# instance fields
.field mCameraThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$CameraThread;

.field volatile mContinueCameraPre:Z

.field volatile mContinueLcdOnOFF:Z

.field volatile mContinueMP3RingNVibrator:Z

.field volatile mContinueMP3RingPlay:Z

.field volatile mContinueMP3Vibrator:Z

.field volatile mContinueVibrating:Z

.field mLCDThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$LCDThread;

.field private mLcdOn:Z

.field mMP3RingNVibratorThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;

.field mMP3RingerThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field mRingerThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;

.field private mService:Landroid/os/IHardwareService;

.field private mStatus:I

.field mVibrator:Landroid/os/Vibrator;

.field mVibratorThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$VibratorThread;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mVibrator:Landroid/os/Vibrator;

    .line 48
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 348
    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mLcdOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mLcdOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Landroid/os/IHardwareService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mService:Landroid/os/IHardwareService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->path:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mStatus:I

    return v0
.end method

.method static synthetic access$402(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mStatus:I

    return p1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 3
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 220
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "ELT Test : ManualTest"

    .line 223
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 226
    .local v0, checkedId:I
    packed-switch v0, :pswitch_data_76

    .line 268
    :cond_d
    :goto_d
    return-void

    .line 228
    :pswitch_e
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mContinueLcdOnOFF:Z

    .line 229
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mLCDThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$LCDThread;

    if-nez v1, :cond_d

    .line 230
    new-instance v1, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$LCDThread;

    invoke-direct {v1, p0, v3}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$LCDThread;-><init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$1;)V

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mLCDThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$LCDThread;

    .line 231
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mLCDThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$LCDThread;

    invoke-virtual {v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$LCDThread;->start()V

    goto :goto_d

    .line 240
    :pswitch_21
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mContinueMP3RingPlay:Z

    .line 241
    new-instance v1, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;

    invoke-direct {v1, p0, v3}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;-><init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$1;)V

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mMP3RingerThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;

    .line 242
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mMP3RingerThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;

    invoke-virtual {v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;->run()V

    .line 243
    const-string v1, "ELT Test : ManualTest"

    const-string v1, "MP3 ringtone"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 246
    :pswitch_37
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mContinueVibrating:Z

    .line 247
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$VibratorThread;

    if-nez v1, :cond_d

    .line 248
    new-instance v1, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$VibratorThread;

    invoke-direct {v1, p0, v3}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$VibratorThread;-><init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$1;)V

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$VibratorThread;

    .line 249
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$VibratorThread;

    invoke-virtual {v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$VibratorThread;->start()V

    goto :goto_d

    .line 253
    :pswitch_4a
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mContinueCameraPre:Z

    .line 254
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mCameraThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$CameraThread;

    if-nez v1, :cond_d

    .line 255
    new-instance v1, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$CameraThread;

    invoke-direct {v1, p0, v3}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$CameraThread;-><init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$1;)V

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mCameraThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$CameraThread;

    .line 256
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mCameraThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$CameraThread;

    invoke-virtual {v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$CameraThread;->start()V

    goto :goto_d

    .line 260
    :pswitch_5d
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mContinueMP3RingNVibrator:Z

    .line 261
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mContinueMP3Vibrator:Z

    .line 262
    new-instance v1, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;

    invoke-direct {v1, p0, v3}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;-><init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$1;)V

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mMP3RingNVibratorThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;

    .line 263
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mMP3RingNVibratorThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;

    invoke-virtual {v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;->run()V

    .line 264
    const-string v1, "ELT Test : ManualTest"

    const-string v1, "MP3 rington + Vibrator"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 226
    :pswitch_data_76
    .packed-switch 0x7f07002a
        :pswitch_e
        :pswitch_21
        :pswitch_37
        :pswitch_4a
        :pswitch_5d
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->setContentView(I)V

    .line 206
    const v1, 0x7f070022

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 207
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 210
    const v1, 0x7f070028

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 211
    .local v0, clearButton:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const-string v1, "hardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mService:Landroid/os/IHardwareService;

    .line 215
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mLcdOn:Z

    .line 216
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mStatus:I

    .line 217
    return-void
.end method

.method public onStop()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v4, "ELT Test : ManualTest"

    .line 272
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 274
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$VibratorThread;

    if-eqz v0, :cond_14

    .line 275
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mContinueVibrating:Z

    .line 276
    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$VibratorThread;

    .line 277
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 280
    :cond_14
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mLCDThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$LCDThread;

    if-eqz v0, :cond_23

    .line 281
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mContinueLcdOnOFF:Z

    .line 282
    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mLCDThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$LCDThread;

    .line 284
    :try_start_1c
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mService:Landroid/os/IHardwareService;

    const/16 v1, 0xff

    invoke-interface {v0, v1}, Landroid/os/IHardwareService;->setBacklights(I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_23} :catch_5c

    .line 289
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mMP3RingerThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;

    if-eqz v0, :cond_3e

    .line 290
    const-string v0, "ELT Test : ManualTest"

    const-string v0, "stop mMP3RingerThread"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mContinueMP3RingPlay:Z

    .line 292
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mMP3RingerThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;->release()V

    .line 293
    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mMP3RingerThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;

    .line 294
    const-string v0, "ELT Test : ManualTest"

    const-string v0, "released mMP3RingerThread"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_3e
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mMP3RingNVibratorThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;

    if-eqz v0, :cond_5b

    .line 298
    const-string v0, "ELT Test : ManualTest"

    const-string v0, "stop mMP3RingNVibratorThread"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mContinueMP3RingNVibrator:Z

    .line 301
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mMP3RingNVibratorThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;->release()V

    .line 302
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mContinueMP3Vibrator:Z

    .line 303
    const-string v0, "ELT Test : ManualTest"

    const-string v0, "released mMP3RingNVibratorThread"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mMP3RingNVibratorThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;

    .line 307
    :cond_5b
    return-void

    .line 285
    :catch_5c
    move-exception v0

    goto :goto_23
.end method

.method public release()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v4, "ELT Test : ManualTest"

    .line 310
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$VibratorThread;

    if-eqz v0, :cond_11

    .line 311
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mContinueVibrating:Z

    .line 312
    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mVibratorThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$VibratorThread;

    .line 313
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 316
    :cond_11
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mLCDThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$LCDThread;

    if-eqz v0, :cond_20

    .line 317
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mContinueLcdOnOFF:Z

    .line 318
    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mLCDThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$LCDThread;

    .line 320
    :try_start_19
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mService:Landroid/os/IHardwareService;

    const/16 v1, 0xff

    invoke-interface {v0, v1}, Landroid/os/IHardwareService;->setBacklights(I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_20} :catch_4b

    .line 325
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mMP3RingerThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;

    if-eqz v0, :cond_2d

    .line 326
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mContinueMP3RingPlay:Z

    .line 327
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mMP3RingerThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;->release()V

    .line 328
    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mMP3RingerThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;

    .line 331
    :cond_2d
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mMP3RingNVibratorThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;

    if-eqz v0, :cond_4a

    .line 332
    const-string v0, "ELT Test : ManualTest"

    const-string v0, "stop mMP3RingNVibratorThread"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mContinueMP3RingNVibrator:Z

    .line 334
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mMP3RingNVibratorThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;->release()V

    .line 335
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mContinueMP3Vibrator:Z

    .line 336
    const-string v0, "ELT Test : ManualTest"

    const-string v0, "released mMP3RingNVibratorThread"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mMP3RingNVibratorThread:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;

    .line 345
    :cond_4a
    return-void

    .line 321
    :catch_4b
    move-exception v0

    goto :goto_20
.end method
