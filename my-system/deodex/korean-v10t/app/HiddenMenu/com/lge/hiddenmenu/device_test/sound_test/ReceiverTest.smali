.class public Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;
.super Landroid/app/Activity;
.source "ReceiverTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReceiverTest"


# instance fields
.field private MAXLEVEL:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mLevel:I

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mStreamType:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

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

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->packageName:Ljava/lang/String;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$1;-><init>(Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method private final PlayTone()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 166
    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mLevel:I

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->MAXLEVEL:I

    sub-int/2addr v2, v5

    if-le v1, v2, :cond_c

    .line 167
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->stopSample()V

    .line 195
    :goto_b
    return-void

    .line 170
    :cond_c
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mStreamType:I

    iget v3, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mLevel:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 171
    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mLevel:I

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->MAXLEVEL:I

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_33

    .line 173
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->seekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mLevel:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 174
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mVolumeText:Landroid/widget/TextView;

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mLevel:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :cond_33
    new-instance v0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$4;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$4;-><init>(Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;)V

    .line 189
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 190
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->startsample()V

    .line 191
    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 192
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->stopSample()V

    .line 193
    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mLevel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mLevel:I

    goto :goto_b
.end method

.method static synthetic access$002(Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mLevel:I

    return p1
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->PlayTone()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static createVolumeLevels(I)[I
    .registers 11
    .parameter "numlevels"

    .prologue
    .line 198
    const-wide/high16 v0, 0x3ff0

    .line 199
    .local v0, curve:D
    new-array v7, p0, [I

    .line 201
    .local v7, volumes:[I
    const-wide/16 v5, 0x0

    .line 202
    .local v5, val:D
    const/4 v8, 0x1

    sub-int v8, p0, v8

    int-to-double v8, v8

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    .line 203
    .local v3, max:D
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, p0, :cond_21

    .line 204
    int-to-double v8, v2

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double v5, v8, v3

    .line 205
    const-wide/high16 v8, 0x4059

    mul-double/2addr v8, v5

    double-to-int v8, v8

    aput v8, v7, v2

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 207
    :cond_21
    return-object v7
.end method

.method private postSetVolume(I)V
    .registers 2
    .parameter "progress"

    .prologue
    .line 149
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f03003f

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->setContentView(I)V

    .line 81
    const v0, 0x7f0700dc

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->seekBar:Landroid/widget/SeekBar;

    .line 82
    const v0, 0x7f070108

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mVolumeText:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f070109

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mButton:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$2;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$2;-><init>(Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mAudioManager:Landroid/media/AudioManager;

    .line 93
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v3, v4, v1}, Landroid/media/AudioManager;->setRouting(III)V

    .line 94
    iput v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mStreamType:I

    .line 96
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->MAXLEVEL:I

    .line 97
    const-string v0, "ReceiverTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAX LEVEL is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->MAXLEVEL:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->MAXLEVEL:I

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 99
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 100
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mVolumeText:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->seekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 103
    iget v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->MAXLEVEL:I

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->createVolumeLevels(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->volumeLevelsCoarse:[I

    .line 112
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 119
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mLevel:I

    .line 121
    new-instance v0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$3;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest$3;-><init>(Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;)V

    .line 133
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 134
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 144
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 140
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->stopSample()V

    .line 141
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 147
    return-void
.end method

.method public startsample()V
    .registers 5

    .prologue
    .line 158
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->volumeLevelsCoarse:[I

    iget v3, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mLevel:I

    aget v2, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 159
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 160
    return-void
.end method

.method public stopSample()V
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/ReceiverTest;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 153
    return-void
.end method
