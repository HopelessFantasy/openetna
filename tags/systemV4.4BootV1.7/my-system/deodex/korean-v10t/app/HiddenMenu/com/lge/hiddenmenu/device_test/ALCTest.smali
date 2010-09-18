.class public Lcom/lge/hiddenmenu/device_test/ALCTest;
.super Landroid/app/Activity;
.source "ALCTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/device_test/ALCTest$1;,
        Lcom/lge/hiddenmenu/device_test/ALCTest$ApplicationsIntentReceiver;
    }
.end annotation


# instance fields
.field bAutoAllTest:Ljava/lang/Integer;

.field private finish_next:I

.field private final mALCStatusTestReceiver:Landroid/content/BroadcastReceiver;

.field mALCValue:Ljava/lang/Integer;

.field mCallbackText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/ALCTest;->finish_next:I

    .line 62
    new-instance v0, Lcom/lge/hiddenmenu/device_test/ALCTest$ApplicationsIntentReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/hiddenmenu/device_test/ALCTest$ApplicationsIntentReceiver;-><init>(Lcom/lge/hiddenmenu/device_test/ALCTest;Lcom/lge/hiddenmenu/device_test/ALCTest$1;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCTest;->mALCStatusTestReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/ALCTest;->setContentView(I)V

    .line 74
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/ALCTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 78
    :try_start_10
    const-string v2, "hardware"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v1

    .line 79
    .local v1, hardware:Landroid/os/IHardwareService;
    if-eqz v1, :cond_20

    .line 80
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/os/IHardwareService;->setALCMode(Z)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_20} :catch_3a

    .line 89
    .end local v1           #hardware:Landroid/os/IHardwareService;
    :cond_20
    :goto_20
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lge/hiddenmenu/device_test/ALCTestService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/ALCTest;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "ALC_STATUS_TEST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/ALCTest;->mALCStatusTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/lge/hiddenmenu/device_test/ALCTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    return-void

    .line 83
    .end local v0           #filter:Landroid/content/IntentFilter;
    :catch_3a
    move-exception v2

    goto :goto_20
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 206
    :try_start_0
    const-string v1, "hardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v0

    .line 207
    .local v0, hardware:Landroid/os/IHardwareService;
    if-eqz v0, :cond_10

    .line 208
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IHardwareService;->setALCMode(Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_23

    .line 214
    .end local v0           #hardware:Landroid/os/IHardwareService;
    :cond_10
    :goto_10
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/ALCTest;->mALCStatusTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/ALCTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 215
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lge/hiddenmenu/device_test/ALCTestService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/ALCTest;->stopService(Landroid/content/Intent;)Z

    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 218
    return-void

    .line 211
    :catch_23
    move-exception v1

    goto :goto_10
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 117
    sparse-switch p1, :sswitch_data_36

    .line 167
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_8
    return v1

    .line 119
    :sswitch_9
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/ALCTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 135
    const-string v1, "Auto All Test is canceled!"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 136
    .local v0, mToast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 137
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/ALCTest;->finish()V

    move v1, v2

    .line 138
    goto :goto_8

    .line 143
    .end local v0           #mToast:Landroid/widget/Toast;
    :sswitch_1f
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/ALCTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 159
    const-string v1, "Auto All Test is Finished!"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 160
    .restart local v0       #mToast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 161
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/ALCTest;->finish()V

    move v1, v2

    .line 162
    goto :goto_8

    .line 117
    nop

    :sswitch_data_36
    .sparse-switch
        0x4 -> :sswitch_9
        0x52 -> :sswitch_1f
    .end sparse-switch
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 105
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/ALCTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 106
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "AutoAllTest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/ALCTest;->bAutoAllTest:Ljava/lang/Integer;

    .line 109
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 189
    :try_start_0
    const-string v1, "hardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v0

    .line 190
    .local v0, hardware:Landroid/os/IHardwareService;
    if-eqz v0, :cond_10

    .line 191
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IHardwareService;->setALCMode(Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_1e

    .line 197
    .end local v0           #hardware:Landroid/os/IHardwareService;
    :cond_10
    :goto_10
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lge/hiddenmenu/device_test/ALCTestService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/ALCTest;->stopService(Landroid/content/Intent;)Z

    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 200
    return-void

    .line 194
    :catch_1e
    move-exception v1

    goto :goto_10
.end method
