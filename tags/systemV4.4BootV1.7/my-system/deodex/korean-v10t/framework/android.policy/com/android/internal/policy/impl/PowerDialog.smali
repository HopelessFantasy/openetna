.class public Lcom/android/internal/policy/impl/PowerDialog;
.super Landroid/app/Dialog;
.source "PowerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PowerDialog"

.field private static sStatusBar:Landroid/app/StatusBarManager;


# instance fields
.field private mKeyguard:Landroid/widget/Button;

.field private mPower:Landroid/widget/Button;

.field private mPowerManager:Landroid/os/LocalPowerManager;

.field private mRadioPower:Landroid/widget/Button;

.field private mSilent:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/LocalPowerManager;)V
    .registers 3
    .parameter "context"
    .parameter "powerManager"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object p2, p0, Lcom/android/internal/policy/impl/PowerDialog;->mPowerManager:Landroid/os/LocalPowerManager;

    .line 58
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 176
    const-string v0, "PowerDialog"

    const-string v1, "dismiss... reenabling expand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sget-object v0, Lcom/android/internal/policy/impl/PowerDialog;->sStatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 178
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PowerDialog;->dismiss()V

    .line 124
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerDialog;->mPower:Landroid/widget/Button;

    if-ne p1, v1, :cond_10

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PowerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 145
    :cond_f
    :goto_f
    return-void

    .line 127
    :cond_10
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerDialog;->mRadioPower:Landroid/widget/Button;

    if-ne p1, v1, :cond_26

    .line 129
    :try_start_14
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 130
    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_f

    .line 131
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOff()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_24

    goto :goto_f

    .line 133
    .end local v0           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_24
    move-exception v1

    goto :goto_f

    .line 136
    :cond_26
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerDialog;->mSilent:Landroid/widget/Button;

    if-eq p1, v1, :cond_f

    .line 138
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerDialog;->mKeyguard:Landroid/widget/Button;

    if-ne p1, v1, :cond_f

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 141
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PowerDialog;->dismiss()V

    .line 142
    iget-object v1, p0, Lcom/android/internal/policy/impl/PowerDialog;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-interface {v1, v2, v3}, Landroid/os/LocalPowerManager;->goToSleep(J)V

    goto :goto_f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/high16 v6, 0x2

    const/4 v5, 0x4

    .line 62
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PowerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    .local v0, context:Landroid/content/Context;
    sget-object v3, Lcom/android/internal/policy/impl/PowerDialog;->sStatusBar:Landroid/app/StatusBarManager;

    if-nez v3, :cond_18

    .line 67
    const-string v3, "statusbar"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    sput-object v3, Lcom/android/internal/policy/impl/PowerDialog;->sStatusBar:Landroid/app/StatusBarManager;

    .line 70
    :cond_18
    const v3, 0x109003f

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PowerDialog;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PowerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PowerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PowerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 78
    const v3, 0x1040076

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PowerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    const v3, 0x10201b9

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PowerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mKeyguard:Landroid/widget/Button;

    .line 81
    const v3, 0x10201ba

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PowerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mPower:Landroid/widget/Button;

    .line 82
    const v3, 0x10201bc

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PowerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mRadioPower:Landroid/widget/Button;

    .line 83
    const v3, 0x10201bb

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PowerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mSilent:Landroid/widget/Button;

    .line 85
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mKeyguard:Landroid/widget/Button;

    if-eqz v3, :cond_79

    .line 86
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mKeyguard:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 87
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mKeyguard:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_79
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mPower:Landroid/widget/Button;

    if-eqz v3, :cond_82

    .line 90
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mPower:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_82
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mRadioPower:Landroid/widget/Button;

    if-eqz v3, :cond_8b

    .line 93
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mRadioPower:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    :cond_8b
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mSilent:Landroid/widget/Button;

    if-eqz v3, :cond_9b

    .line 96
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mSilent:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mSilent:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    :cond_9b
    const v3, 0x104007a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 105
    .local v2, text:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mKeyguard:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mKeyguard:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->requestFocus()Z

    .line 109
    :try_start_ac
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 110
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_c6

    .line 111
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v3

    if-eqz v3, :cond_cc

    const v3, 0x1040079

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_c4} :catch_d5

    move-result-object v3

    move-object v2, v3

    .line 119
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_c6
    :goto_c6
    iget-object v3, p0, Lcom/android/internal/policy/impl/PowerDialog;->mRadioPower:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void

    .line 111
    .restart local v1       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_cc
    const v3, 0x1040078

    :try_start_cf
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_d2
    .catch Landroid/os/RemoteException; {:try_start_cf .. :try_end_d2} :catch_d5

    move-result-object v3

    move-object v2, v3

    goto :goto_c6

    .line 115
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_d5
    move-exception v3

    goto :goto_c6
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 154
    const/16 v0, 0x17

    if-ne p2, v0, :cond_b

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v5, :cond_d

    .line 157
    :cond_b
    const/4 v0, 0x0

    .line 165
    :goto_c
    return v0

    .line 161
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PowerDialog;->dismiss()V

    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/PowerDialog;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Landroid/os/LocalPowerManager;->goToSleep(J)V

    move v0, v5

    .line 165
    goto :goto_c
.end method

.method public show()V
    .registers 3

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 170
    const-string v0, "PowerDialog"

    const-string v1, "show... disabling expand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v0, Lcom/android/internal/policy/impl/PowerDialog;->sStatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 172
    return-void
.end method
