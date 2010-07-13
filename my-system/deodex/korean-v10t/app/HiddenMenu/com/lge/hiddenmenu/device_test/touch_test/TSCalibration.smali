.class public Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;
.super Landroid/app/Activity;
.source "TSCalibration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;
    }
.end annotation


# instance fields
.field bAutoAllTest:Ljava/lang/Integer;

.field myView:Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 165
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 162
    const-string v0, "Re-start Calibration"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 163
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    const/16 v1, 0x400

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->bAutoAllTest:Ljava/lang/Integer;

    .line 76
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 78
    new-instance v0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;

    invoke-direct {v0, p0, p0}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;-><init>(Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->myView:Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;

    .line 79
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->myView:Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->setContentView(Landroid/view/View;)V

    .line 80
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 116
    sparse-switch p1, :sswitch_data_68

    .line 156
    :cond_4
    :goto_4
    const/4 v6, 0x0

    :goto_5
    return v6

    .line 118
    :sswitch_6
    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v7, :cond_4

    .line 120
    const-string v4, "com.lge.hiddenmenu"

    .line 121
    .local v4, packageName:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v3, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 123
    .local v2, className:Ljava/lang/String;
    const/4 v5, 0x0

    .line 124
    .local v5, packageName2:Ljava/lang/String;
    const-string v1, "AutoAllTest"

    .line 125
    .local v1, ExtraName:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 127
    .local v0, AutoAllTest:Ljava/lang/Integer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".device_test.sound_test"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 128
    const-string v2, "Loopback_Auto"

    .line 130
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->finish()V

    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 137
    .end local v0           #AutoAllTest:Ljava/lang/Integer;
    .end local v1           #ExtraName:Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #packageName2:Ljava/lang/String;
    :sswitch_56
    iget-object v6, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v7, :cond_63

    .line 145
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->finish()V

    move v6, v7

    .line 149
    goto :goto_5

    .line 152
    :cond_63
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    goto :goto_5

    .line 116
    :sswitch_data_68
    .sparse-switch
        0x4 -> :sswitch_56
        0x52 -> :sswitch_6
    .end sparse-switch
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 91
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 92
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "AutoAllTest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->bAutoAllTest:Ljava/lang/Integer;

    .line 94
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 100
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->myView:Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;

    iget-boolean v0, v0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->mCalComplete:Z

    if-nez v0, :cond_36

    .line 101
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->myView:Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->myView:Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;

    iget v1, v1, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->xscaleOrig:I

    iput v1, v0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->xscale:I

    .line 102
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->myView:Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->myView:Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;

    iget v1, v1, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->xtransOrig:I

    iput v1, v0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->xtrans:I

    .line 103
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->myView:Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->myView:Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;

    iget v1, v1, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->yscaleOrig:I

    iput v1, v0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->yscale:I

    .line 104
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->myView:Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->myView:Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;

    iget v1, v1, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ytransOrig:I

    iput v1, v0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->ytrans:I

    .line 105
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->myView:Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->myView:Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;

    iget v1, v1, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->scale_factorOrig:I

    iput v1, v0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->scale_factor:I

    .line 106
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration;->myView:Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/device_test/touch_test/TSCalibration$MyView;->save()V

    .line 108
    :cond_36
    return-void
.end method
