.class public Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;
.super Landroid/app/Activity;
.source "EffectSound.java"


# instance fields
.field private MAXLEVEL:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;

.field private mRingtone:Landroid/media/Ringtone;

.field mRingtoneManager:Landroid/media/RingtoneManager;

.field private mStreamType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->setContentView(I)V

    .line 63
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->mAudioManager:Landroid/media/AudioManager;

    .line 65
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setRouting(III)V

    .line 66
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 67
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0, v4}, Landroid/media/RingtoneManager;->setType(I)V

    .line 68
    iput v4, p0, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->mStreamType:I

    .line 70
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->MAXLEVEL:I

    .line 72
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->mRingtoneManager:Landroid/media/RingtoneManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->mRingtone:Landroid/media/Ringtone;

    .line 73
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 74
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->mStreamType:I

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->MAXLEVEL:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 75
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_5a

    .line 76
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 78
    :cond_5a
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 81
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->stopSample()V

    .line 82
    return-void
.end method

.method protected stopSample()V
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_9

    .line 85
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/EffectSound;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 87
    :cond_9
    return-void
.end method
