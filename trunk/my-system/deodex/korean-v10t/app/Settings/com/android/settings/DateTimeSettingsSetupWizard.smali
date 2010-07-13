.class public Lcom/android/settings/DateTimeSettingsSetupWizard;
.super Lcom/android/settings/DateTimeSettings;
.source "DateTimeSettingsSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mExitButton:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHomeIntent:Landroid/content/Intent;

.field private mNextButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private emailSetupDialogforWizard()V
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/DateTimeSettingsSetupWizard$1;

    invoke-direct {v1, p0}, Lcom/android/settings/DateTimeSettingsSetupWizard$1;-><init>(Lcom/android/settings/DateTimeSettingsSetupWizard;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_72

    .line 130
    :cond_7
    :goto_7
    return-void

    .line 105
    :sswitch_8
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, operatorCode:Ljava/lang/String;
    const-string v2, "DateTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oper code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 108
    const-string v2, "KTF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4c

    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v0, mThankIntent:Landroid/content/Intent;
    const-string v2, "com.android.LGSetupWizard"

    const-string v3, "com.android.LGSetupWizard.Setupthankyou"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v2, "SetupWizard"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->startActivity(Landroid/content/Intent;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->finish()V

    goto :goto_7

    .line 115
    .end local v0           #mThankIntent:Landroid/content/Intent;
    :cond_4c
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->emailSetupDialogforWizard()V

    goto :goto_7

    .line 121
    .end local v1           #operatorCode:Ljava/lang/String;
    :sswitch_50
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mHomeIntent:Landroid/content/Intent;

    .line 122
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mHomeIntent:Landroid/content/Intent;

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mHomeIntent:Landroid/content/Intent;

    const/high16 v3, 0x1400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/DateTimeSettingsSetupWizard;->startActivity(Landroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->finish()V

    goto :goto_7

    .line 100
    nop

    :sswitch_data_72
    .sparse-switch
        0x7f0a003b -> :sswitch_8
        0x7f0a004c -> :sswitch_50
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/DateTimeSettings;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->setContentView(I)V

    .line 44
    const v0, 0x7f0a003b

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mNextButton:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v0, 0x7f0a004c

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mExitButton:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mExitButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 135
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_18

    const-string v2, "SetupWizard"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 136
    .local v1, value:Ljava/lang/String;
    :goto_11
    if-eqz v1, :cond_20

    .line 138
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1b

    .line 140
    const/4 v2, 0x1

    .line 146
    :goto_17
    return v2

    .line 135
    .end local v1           #value:Ljava/lang/String;
    :cond_18
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_11

    .line 143
    .restart local v1       #value:Ljava/lang/String;
    :cond_1b
    invoke-super {p0, p1, p2}, Lcom/android/settings/DateTimeSettings;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_17

    .line 146
    :cond_20
    invoke-super {p0, p1, p2}, Lcom/android/settings/DateTimeSettings;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_17
.end method
