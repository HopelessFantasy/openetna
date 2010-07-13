.class public Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;
.super Landroid/app/Activity;
.source "Loopback_Auto.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final OFF:I

.field private final ON:I

.field bAutoAllTest:Ljava/lang/Integer;

.field public getVolumeValue:I

.field private mBackButton:Landroid/widget/Button;

.field mButton:Landroid/widget/CompoundButton;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->ON:I

    .line 57
    iput v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->OFF:I

    .line 58
    iput v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->getVolumeValue:I

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .parameter "mButton"
    .parameter "isChecked"

    .prologue
    .line 188
    if-eqz p2, :cond_e

    .line 190
    check-cast p1, Landroid/widget/ToggleButton;

    .end local p1
    const-string v0, "LoopBack ON!"

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 191
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/AudioSystem;->setLoopbackMode(I)I

    .line 200
    :goto_d
    return-void

    .line 195
    .restart local p1
    :cond_e
    check-cast p1, Landroid/widget/ToggleButton;

    .end local p1
    const-string v0, "LoopBack OFF!"

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 196
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/media/AudioSystem;->setLoopbackMode(I)I

    goto :goto_d
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->setContentView(I)V

    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->bAutoAllTest:Ljava/lang/Integer;

    .line 79
    const v0, 0x7f070085

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->mBackButton:Landroid/widget/Button;

    .line 80
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->mBackButton:Landroid/widget/Button;

    new-instance v1, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto$1;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto$1;-><init>(Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v0, 0x7f070086

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->mButton:Landroid/widget/CompoundButton;

    .line 88
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->mButton:Landroid/widget/CompoundButton;

    const-string v1, "LoopBack OFF!"

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->mButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 120
    sparse-switch p1, :sswitch_data_3a

    .line 184
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_8
    return v2

    .line 122
    :sswitch_9
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_20

    .line 125
    const-string v2, "Back Key doesn\'t work in Auto All Test"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 126
    .local v1, mToast1:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .end local v1           #mToast1:Landroid/widget/Toast;
    :goto_1e
    move v2, v3

    .line 132
    goto :goto_8

    .line 130
    :cond_20
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->finish()V

    goto :goto_1e

    .line 154
    :sswitch_24
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 172
    const-string v2, "Auto All Test is Finished!"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 173
    .local v0, mToast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 174
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->finish()V

    move v2, v3

    .line 175
    goto :goto_8

    .line 120
    :sswitch_data_3a
    .sparse-switch
        0x4 -> :sswitch_9
        0x52 -> :sswitch_24
    .end sparse-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 112
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 100
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 101
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "AutoAllTest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->bAutoAllTest:Ljava/lang/Integer;

    .line 102
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_29

    .line 103
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback_Auto;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 106
    :cond_29
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/media/AudioSystem;->setLoopbackMode(I)I

    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 204
    return-void
.end method
