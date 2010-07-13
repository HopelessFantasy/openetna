.class public Lcom/android/settings/RingerVolumePreference;
.super Landroid/preference/VolumePreference;
.source "RingerVolumePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RingerVolumePreference"


# instance fields
.field private mNotificationSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

.field private mNotificationVolumeTitle:Landroid/widget/TextView;

.field private mNotificationsUseRingVolumeCheckbox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/RingerVolumePreference;->setStreamType(I)V

    .line 49
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/android/settings/RingerVolumePreference;->setDialogLayoutResource(I)V

    .line 50
    return-void
.end method

.method private cleanup()V
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_c

    .line 124
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stop()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    .line 127
    :cond_c
    return-void
.end method

.method private setNotificationVolumeVisibility(Z)V
    .registers 6
    .parameter "visible"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_1b

    .line 116
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz p1, :cond_1c

    move v1, v2

    :goto_10
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationVolumeTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_1e

    move v1, v2

    :goto_18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :cond_1b
    return-void

    :cond_1c
    move v1, v3

    .line 116
    goto :goto_10

    :cond_1e
    move v1, v3

    .line 118
    goto :goto_18
.end method


# virtual methods
.method public onActivityStop()V
    .registers 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/preference/VolumePreference;->onActivityStop()V

    .line 86
    invoke-direct {p0}, Lcom/android/settings/RingerVolumePreference;->cleanup()V

    .line 87
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 54
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onBindDialogView(Landroid/view/View;)V

    .line 56
    const v1, 0x7f0a0082

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationsUseRingVolumeCheckbox:Landroid/widget/CheckBox;

    .line 58
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationsUseRingVolumeCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 59
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationsUseRingVolumeCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notifications_use_ring_volume"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_58

    move v2, v4

    :goto_28
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 63
    const v1, 0x7f0a0084

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 64
    .local v0, seekBar:Landroid/widget/SeekBar;
    new-instance v1, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, p0, v2, v0, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v1, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    .line 67
    const v1, 0x7f0a0083

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationVolumeTitle:Landroid/widget/TextView;

    .line 69
    iget-object v1, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationsUseRingVolumeCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5a

    move v1, v4

    :goto_54
    invoke-direct {p0, v1}, Lcom/android/settings/RingerVolumePreference;->setNotificationVolumeVisibility(Z)V

    .line 70
    return-void

    .end local v0           #seekBar:Landroid/widget/SeekBar;
    :cond_58
    move v2, v5

    .line 59
    goto :goto_28

    .restart local v0       #seekBar:Landroid/widget/SeekBar;
    :cond_5a
    move v1, v5

    .line 69
    goto :goto_54
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 8
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 90
    if-nez p2, :cond_2f

    move v1, v3

    :goto_5
    invoke-direct {p0, v1}, Lcom/android/settings/RingerVolumePreference;->setNotificationVolumeVisibility(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notifications_use_ring_volume"

    if-eqz p2, :cond_31

    :goto_14
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 95
    if-eqz p2, :cond_2e

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 100
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x5

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 103
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_2e
    return-void

    :cond_2f
    move v1, v4

    .line 90
    goto :goto_5

    :cond_31
    move v3, v4

    .line 92
    goto :goto_14
.end method

.method protected onDialogClosed(Z)V
    .registers 3
    .parameter "positiveResult"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onDialogClosed(Z)V

    .line 76
    if-nez p1, :cond_e

    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_e

    .line 77
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 80
    :cond_e
    invoke-direct {p0}, Lcom/android/settings/RingerVolumePreference;->cleanup()V

    .line 81
    return-void
.end method

.method protected onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .registers 3
    .parameter "volumizer"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eq p1, v0, :cond_10

    .line 110
    iget-object v0, p0, Lcom/android/settings/RingerVolumePreference;->mNotificationSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 112
    :cond_10
    return-void
.end method
