.class public Lcom/lge/hiddenmenu/device_test/sound_test/RingTest;
.super Landroid/app/Activity;
.source "RingTest.java"


# instance fields
.field private MAXLEVEL:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mRingtone:Landroid/media/Ringtone;

.field private mStreamType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest;->setContentView(I)V

    .line 60
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest;->mAudioManager:Landroid/media/AudioManager;

    .line 62
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v3, v2, v1}, Landroid/media/AudioManager;->setRouting(III)V

    .line 64
    iput v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest;->mStreamType:I

    .line 66
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest;->MAXLEVEL:I

    .line 68
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest;->mRingtone:Landroid/media/Ringtone;

    .line 69
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 70
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest;->mStreamType:I

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest;->MAXLEVEL:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 71
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_48

    .line 72
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 74
    :cond_48
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 78
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest;->stopSample()V

    .line 79
    return-void
.end method

.method protected stopSample()V
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_9

    .line 83
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 85
    :cond_9
    return-void
.end method
