.class public Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;
.super Landroid/app/Activity;
.source "SpeakerTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeakerTest"


# instance fields
.field private MAXLEVEL:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mLevel:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mStreamType:I

.field private mVolumeText:Landroid/widget/TextView;

.field public packageName:Ljava/lang/String;

.field private seekBar:Landroid/widget/SeekBar;

.field private volumeLevelsCoarse:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const-string v0, "com.lge.hiddenmenu"

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->packageName:Ljava/lang/String;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest$1;-><init>(Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method private final PlayTone()V
    .registers 6

    .prologue
    .line 170
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 172
    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mLevel:I

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->MAXLEVEL:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_11

    .line 173
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->stopSample()V

    .line 202
    :goto_10
    return-void

    .line 177
    :cond_11
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mStreamType:I

    iget v3, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mLevel:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 178
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->startsample()V

    .line 179
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->seekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mLevel:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 180
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mVolumeText:Landroid/widget/TextView;

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 186
    new-instance v0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest$4;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest$4;-><init>(Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;)V

    .line 198
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 200
    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mLevel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mLevel:I

    goto :goto_10
.end method

.method static synthetic access$002(Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mLevel:I

    return p1
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->PlayTone()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static createVolumeLevels(I)[I
    .registers 11
    .parameter "numlevels"

    .prologue
    .line 205
    const-wide/high16 v0, 0x3ff0

    .line 206
    .local v0, curve:D
    new-array v7, p0, [I

    .line 208
    .local v7, volumes:[I
    const-wide/16 v5, 0x0

    .line 209
    .local v5, val:D
    const/4 v8, 0x1

    sub-int v8, p0, v8

    int-to-double v8, v8

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    .line 210
    .local v3, max:D
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, p0, :cond_21

    .line 211
    int-to-double v8, v2

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double v5, v8, v3

    .line 212
    const-wide/high16 v8, 0x4059

    mul-double/2addr v8, v5

    double-to-int v8, v8

    aput v8, v7, v2

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 214
    :cond_21
    return-object v7
.end method

.method private postSetVolume(I)V
    .registers 2
    .parameter "progress"

    .prologue
    .line 148
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f03003f

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->setContentView(I)V

    .line 80
    const v0, 0x7f0700dc

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->seekBar:Landroid/widget/SeekBar;

    .line 81
    const v0, 0x7f070108

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mVolumeText:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f070109

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mButton:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest$2;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest$2;-><init>(Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mAudioManager:Landroid/media/AudioManager;

    .line 93
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v3, v2, v1}, Landroid/media/AudioManager;->setRouting(III)V

    .line 95
    iput v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mStreamType:I

    .line 97
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->MAXLEVEL:I

    .line 98
    const-string v0, "SpeakerTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAX LEVEL is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->MAXLEVEL:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->MAXLEVEL:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 100
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 101
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->seekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 103
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->MAXLEVEL:I

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->createVolumeLevels(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->volumeLevelsCoarse:[I

    .line 106
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a4

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    :goto_96
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mRingtone:Landroid/media/Ringtone;

    .line 110
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 111
    return-void

    .line 106
    :cond_a4
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_96
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 118
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mLevel:I

    .line 120
    new-instance v0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest$3;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest$3;-><init>(Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;)V

    .line 132
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 133
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 143
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 139
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->stopSample()V

    .line 140
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 146
    return-void
.end method

.method public startsample()V
    .registers 3

    .prologue
    .line 159
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mStreamType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mStreamType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    .line 166
    :goto_a
    return-void

    .line 164
    :cond_b
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->stopSample()V

    .line 165
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_a
.end method

.method public stopSample()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_9

    .line 152
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/SpeakerTest;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 154
    :cond_9
    return-void
.end method
