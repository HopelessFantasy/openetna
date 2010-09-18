.class public Lcom/android/settings/TSCalibration;
.super Landroid/app/Activity;
.source "TSCalibration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TSCalibration$MyView;
    }
.end annotation


# instance fields
.field myView:Lcom/android/settings/TSCalibration$MyView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 115
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 111
    const v0, 0x7f080453

    invoke-virtual {p0, v0}, Lcom/android/settings/TSCalibration;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 113
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    const/16 v1, 0x400

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/TSCalibration;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 77
    new-instance v0, Lcom/android/settings/TSCalibration$MyView;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/TSCalibration$MyView;-><init>(Lcom/android/settings/TSCalibration;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/TSCalibration;->myView:Lcom/android/settings/TSCalibration$MyView;

    .line 78
    iget-object v0, p0, Lcom/android/settings/TSCalibration;->myView:Lcom/android/settings/TSCalibration$MyView;

    invoke-virtual {p0, v0}, Lcom/android/settings/TSCalibration;->setContentView(Landroid/view/View;)V

    .line 79
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 85
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 93
    iget-object v0, p0, Lcom/android/settings/TSCalibration;->myView:Lcom/android/settings/TSCalibration$MyView;

    iget-boolean v0, v0, Lcom/android/settings/TSCalibration$MyView;->mCalComplete:Z

    if-nez v0, :cond_36

    .line 95
    iget-object v0, p0, Lcom/android/settings/TSCalibration;->myView:Lcom/android/settings/TSCalibration$MyView;

    iget-object v1, p0, Lcom/android/settings/TSCalibration;->myView:Lcom/android/settings/TSCalibration$MyView;

    iget v1, v1, Lcom/android/settings/TSCalibration$MyView;->xscaleOrig:I

    iput v1, v0, Lcom/android/settings/TSCalibration$MyView;->xscale:I

    .line 96
    iget-object v0, p0, Lcom/android/settings/TSCalibration;->myView:Lcom/android/settings/TSCalibration$MyView;

    iget-object v1, p0, Lcom/android/settings/TSCalibration;->myView:Lcom/android/settings/TSCalibration$MyView;

    iget v1, v1, Lcom/android/settings/TSCalibration$MyView;->xtransOrig:I

    iput v1, v0, Lcom/android/settings/TSCalibration$MyView;->xtrans:I

    .line 97
    iget-object v0, p0, Lcom/android/settings/TSCalibration;->myView:Lcom/android/settings/TSCalibration$MyView;

    iget-object v1, p0, Lcom/android/settings/TSCalibration;->myView:Lcom/android/settings/TSCalibration$MyView;

    iget v1, v1, Lcom/android/settings/TSCalibration$MyView;->yscaleOrig:I

    iput v1, v0, Lcom/android/settings/TSCalibration$MyView;->yscale:I

    .line 98
    iget-object v0, p0, Lcom/android/settings/TSCalibration;->myView:Lcom/android/settings/TSCalibration$MyView;

    iget-object v1, p0, Lcom/android/settings/TSCalibration;->myView:Lcom/android/settings/TSCalibration$MyView;

    iget v1, v1, Lcom/android/settings/TSCalibration$MyView;->ytransOrig:I

    iput v1, v0, Lcom/android/settings/TSCalibration$MyView;->ytrans:I

    .line 99
    iget-object v0, p0, Lcom/android/settings/TSCalibration;->myView:Lcom/android/settings/TSCalibration$MyView;

    iget-object v1, p0, Lcom/android/settings/TSCalibration;->myView:Lcom/android/settings/TSCalibration$MyView;

    iget v1, v1, Lcom/android/settings/TSCalibration$MyView;->scale_factorOrig:I

    iput v1, v0, Lcom/android/settings/TSCalibration$MyView;->scale_factor:I

    .line 100
    iget-object v0, p0, Lcom/android/settings/TSCalibration;->myView:Lcom/android/settings/TSCalibration$MyView;

    invoke-virtual {v0}, Lcom/android/settings/TSCalibration$MyView;->save()V

    .line 102
    :cond_36
    return-void
.end method
