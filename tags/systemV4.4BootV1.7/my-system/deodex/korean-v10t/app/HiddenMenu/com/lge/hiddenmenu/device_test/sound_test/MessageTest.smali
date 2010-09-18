.class public Lcom/lge/hiddenmenu/device_test/sound_test/MessageTest;
.super Landroid/app/Activity;
.source "MessageTest.java"


# instance fields
.field private MAXLEVEL:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;

.field private mRingtone:Landroid/media/Ringtone;

.field private mStreamType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MessageTest;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/MessageTest;->setContentView(I)V

    .line 59
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/MessageTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MessageTest;->mAudioManager:Landroid/media/AudioManager;

    .line 61
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MessageTest;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setRouting(III)V

    .line 63
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MessageTest;->mStreamType:I

    .line 65
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MessageTest;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MessageTest;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MessageTest;->MAXLEVEL:I

    .line 67
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MessageTest;->mRingtone:Landroid/media/Ringtone;

    .line 68
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MessageTest;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MessageTest;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 69
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MessageTest;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MessageTest;->mStreamType:I

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MessageTest;->MAXLEVEL:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 71
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MessageTest;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_49

    .line 72
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MessageTest;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 74
    :cond_49
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 78
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/MessageTest;->stopSample()V

    .line 79
    return-void
.end method

.method protected stopSample()V
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MessageTest;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_9

    .line 82
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/MessageTest;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 84
    :cond_9
    return-void
.end method
