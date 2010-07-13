.class public Lcom/lge/hiddenmenu/device_test/sound_test/Loopback;
.super Landroid/app/Activity;
.source "Loopback.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final OFF:I

.field private final ON:I

.field private getVolumeValue:I

.field private mBackButton:Landroid/widget/Button;

.field mButton:Landroid/widget/CompoundButton;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback;->ON:I

    .line 55
    iput v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback;->OFF:I

    .line 56
    iput v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback;->getVolumeValue:I

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .parameter "mButton"
    .parameter "isChecked"

    .prologue
    .line 86
    if-eqz p2, :cond_e

    .line 88
    check-cast p1, Landroid/widget/ToggleButton;

    .end local p1
    const-string v0, "LoopBack ON!"

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 89
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/AudioSystem;->setLoopbackMode(I)I

    .line 98
    :goto_d
    return-void

    .line 93
    .restart local p1
    :cond_e
    check-cast p1, Landroid/widget/ToggleButton;

    .end local p1
    const-string v0, "LoopBack OFF!"

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 94
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/media/AudioSystem;->setLoopbackMode(I)I

    goto :goto_d
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback;->setContentView(I)V

    .line 64
    const v0, 0x7f070085

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback;->mBackButton:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback;->mBackButton:Landroid/widget/Button;

    new-instance v1, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback$1;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback$1;-><init>(Lcom/lge/hiddenmenu/device_test/sound_test/Loopback;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v0, 0x7f070086

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback;->mButton:Landroid/widget/CompoundButton;

    .line 72
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback;->mButton:Landroid/widget/CompoundButton;

    const-string v1, "LoopBack OFF!"

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback;->mButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 74
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 79
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v3}, Landroid/media/AudioSystem;->setLoopbackMode(I)I

    .line 81
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback;->mButton:Landroid/widget/CompoundButton;

    const-string v2, "LoopBack OFF!"

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/sound_test/Loopback;->mButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 83
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 101
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/media/AudioSystem;->setLoopbackMode(I)I

    .line 102
    return-void
.end method
