.class public Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;
.super Landroid/app/Activity;
.source "RingTest_Auto.java"


# instance fields
.field private MAXLEVEL:I

.field bAutoAllTest:Ljava/lang/Integer;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackButton:Landroid/widget/Button;

.field private mRingtone:Landroid/media/Ringtone;

.field private mStreamType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
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

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->setContentView(I)V

    .line 69
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->mAudioManager:Landroid/media/AudioManager;

    .line 71
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v3, v2, v1}, Landroid/media/AudioManager;->setRouting(III)V

    .line 73
    iput v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->mStreamType:I

    .line 75
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->MAXLEVEL:I

    .line 77
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->mRingtone:Landroid/media/Ringtone;

    .line 78
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 79
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->mStreamType:I

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->MAXLEVEL:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 84
    const v0, 0x7f0700c3

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->mBackButton:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->mBackButton:Landroid/widget/Button;

    new-instance v1, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto$1;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto$1;-><init>(Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->bAutoAllTest:Ljava/lang/Integer;

    .line 92
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    .line 133
    sparse-switch p1, :sswitch_data_4a

    move v7, v9

    .line 178
    :goto_5
    return v7

    .line 136
    :sswitch_6
    const-string v5, "com.lge.hiddenmenu"

    .line 137
    .local v5, packageName:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v3, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 139
    .local v2, className:Ljava/lang/String;
    const/4 v6, 0x0

    .line 140
    .local v6, packageName2:Ljava/lang/String;
    const-string v1, "AutoAllTest"

    .line 141
    .local v1, ExtraName:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 153
    .local v0, AutoAllTest:Ljava/lang/Integer;
    :try_start_15
    const-string v7, "com.lge.hiddenmenu"

    const-string v8, "com.lge.hiddenmenu.device_test.GpsPhoneTestMode"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v7, "AutoAllTest"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->startActivity(Landroid/content/Intent;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_25} :catch_48

    .line 159
    :goto_25
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->stopSample()V

    .line 160
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->finish()V

    move v7, v9

    .line 162
    goto :goto_5

    .line 164
    .end local v0           #AutoAllTest:Ljava/lang/Integer;
    .end local v1           #ExtraName:Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #packageName2:Ljava/lang/String;
    :sswitch_2d
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v7, :cond_44

    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v9, :cond_44

    .line 167
    const-string v7, "Back Key doesn\'t work in Auto All Test"

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 168
    .local v4, mToast1:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .end local v4           #mToast1:Landroid/widget/Toast;
    :goto_42
    move v7, v9

    .line 175
    goto :goto_5

    .line 173
    :cond_44
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->finish()V

    goto :goto_42

    .line 156
    .restart local v0       #AutoAllTest:Ljava/lang/Integer;
    .restart local v1       #ExtraName:Ljava/lang/String;
    .restart local v2       #className:Ljava/lang/String;
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v5       #packageName:Ljava/lang/String;
    .restart local v6       #packageName2:Ljava/lang/String;
    :catch_48
    move-exception v7

    goto :goto_25

    .line 133
    :sswitch_data_4a
    .sparse-switch
        0x4 -> :sswitch_2d
        0x52 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 117
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 118
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->stopSample()V

    .line 119
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 103
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 104
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "AutoAllTest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->bAutoAllTest:Ljava/lang/Integer;

    .line 106
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_29

    .line 107
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 109
    :cond_29
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_32

    .line 110
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 112
    :cond_32
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 124
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->stopSample()V

    .line 125
    return-void
.end method

.method protected stopSample()V
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_c

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->mAudioManager:Landroid/media/AudioManager;

    .line 185
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/RingTest_Auto;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 187
    :cond_c
    return-void
.end method
