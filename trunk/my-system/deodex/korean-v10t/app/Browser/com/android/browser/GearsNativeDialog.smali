.class public Lcom/android/browser/GearsNativeDialog;
.super Landroid/app/Activity;
.source "GearsNativeDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GearsNativeDialog"


# instance fields
.field private final LOCATION_DIALOG:I

.field private final LOCATION_DIALOG_STRING:Ljava/lang/String;

.field private final PERMISSION_DIALOG:I

.field private final PERMISSION_DIALOG_STRING:Ljava/lang/String;

.field private final SETTINGS_DIALOG:I

.field private final SETTINGS_DIALOG_STRING:Ljava/lang/String;

.field private final VERSION_STRING:Ljava/lang/String;

.field dialog:Lcom/android/browser/GearsBaseDialog;

.field private mDebug:Z

.field private mDialogArguments:Ljava/lang/String;

.field private mDialogDismissed:Z

.field private mDialogType:I

.field private mGearsVersion:Ljava/lang/String;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/GearsNativeDialog;->mGearsVersion:Ljava/lang/String;

    .line 53
    iput-boolean v1, p0, Lcom/android/browser/GearsNativeDialog;->mDebug:Z

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/GearsNativeDialog;->SETTINGS_DIALOG:I

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/browser/GearsNativeDialog;->PERMISSION_DIALOG:I

    .line 58
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/browser/GearsNativeDialog;->LOCATION_DIALOG:I

    .line 60
    const-string v0, "version"

    iput-object v0, p0, Lcom/android/browser/GearsNativeDialog;->VERSION_STRING:Ljava/lang/String;

    .line 61
    const-string v0, "settings_dialog"

    iput-object v0, p0, Lcom/android/browser/GearsNativeDialog;->SETTINGS_DIALOG_STRING:Ljava/lang/String;

    .line 62
    const-string v0, "permissions_dialog"

    iput-object v0, p0, Lcom/android/browser/GearsNativeDialog;->PERMISSION_DIALOG_STRING:Ljava/lang/String;

    .line 63
    const-string v0, "locations_dialog"

    iput-object v0, p0, Lcom/android/browser/GearsNativeDialog;->LOCATION_DIALOG_STRING:Ljava/lang/String;

    .line 65
    iput-boolean v1, p0, Lcom/android/browser/GearsNativeDialog;->mDialogDismissed:Z

    .line 70
    new-instance v0, Lcom/android/browser/GearsNativeDialog$1;

    invoke-direct {v0, p0}, Lcom/android/browser/GearsNativeDialog$1;-><init>(Lcom/android/browser/GearsNativeDialog;)V

    iput-object v0, p0, Lcom/android/browser/GearsNativeDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/GearsNativeDialog;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/browser/GearsNativeDialog;->closeDialog(I)V

    return-void
.end method

.method private closeDialog(I)V
    .registers 9
    .parameter "closingType"

    .prologue
    const/4 v6, 0x0

    .line 208
    iget-object v3, p0, Lcom/android/browser/GearsNativeDialog;->dialog:Lcom/android/browser/GearsBaseDialog;

    invoke-virtual {v3, p1}, Lcom/android/browser/GearsBaseDialog;->closeDialog(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, ret:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/browser/GearsNativeDialog;->mDebug:Z

    if-eqz v3, :cond_23

    .line 211
    const-string v3, "GearsNativeDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closeDialog ret value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_23
    invoke-static {v1}, Landroid/webkit/gears/NativeDialog;->closeDialog(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/android/browser/GearsNativeDialog;->notifyEndOfDialog()V

    .line 216
    invoke-virtual {p0}, Lcom/android/browser/GearsNativeDialog;->finish()V

    .line 219
    iget-object v3, p0, Lcom/android/browser/GearsNativeDialog;->dialog:Lcom/android/browser/GearsBaseDialog;

    invoke-virtual {v3}, Lcom/android/browser/GearsBaseDialog;->notification()I

    move-result v0

    .line 220
    .local v0, notification:I
    if-eqz v0, :cond_41

    .line 221
    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 222
    .local v2, toast:Landroid/widget/Toast;
    const/16 v3, 0x50

    invoke-virtual {v2, v3, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 223
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 225
    .end local v2           #toast:Landroid/widget/Toast;
    :cond_41
    return-void
.end method

.method private getArguments()V
    .registers 4

    .prologue
    .line 126
    iget-boolean v2, p0, Lcom/android/browser/GearsNativeDialog;->mDebug:Z

    if-eqz v2, :cond_b

    .line 127
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/browser/GearsNativeDialog;->mDialogType:I

    .line 128
    invoke-direct {p0}, Lcom/android/browser/GearsNativeDialog;->mockArguments()V

    .line 152
    :cond_a
    :goto_a
    return-void

    .line 133
    :cond_b
    invoke-virtual {p0}, Lcom/android/browser/GearsNativeDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 134
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "dialogArguments"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/GearsNativeDialog;->mDialogArguments:Ljava/lang/String;

    .line 135
    const-string v2, "dialogType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, dialogTypeString:Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 144
    const-string v2, "settings_dialog"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 145
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/browser/GearsNativeDialog;->mDialogType:I

    .line 146
    const-string v2, "version"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/GearsNativeDialog;->mGearsVersion:Ljava/lang/String;

    goto :goto_a

    .line 147
    :cond_33
    const-string v2, "permissions_dialog"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 148
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/browser/GearsNativeDialog;->mDialogType:I

    goto :goto_a

    .line 149
    :cond_3f
    const-string v2, "locations_dialog"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 150
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/browser/GearsNativeDialog;->mDialogType:I

    goto :goto_a
.end method

.method private mockArguments()V
    .registers 6

    .prologue
    .line 161
    const-string v1, "{ locale: \"en-US\", origin: \"http://www.google.com\", dialogType: \"localData\",customIcon: \"http://google-gears.googlecode.com/svn/trunk/gears/test/manual/shortcuts/32.png\",customName: \"My Application\",customMessage: \"Press the button to enable my application to run offline!\" };"

    .line 169
    .local v1, argumentsPermissions:Ljava/lang/String;
    const-string v2, "{ locale: \"en-US\", origin: \"http://www.google.com\", dialogType: \"localData\" };"

    .line 172
    .local v2, argumentsPermissions2:Ljava/lang/String;
    const-string v0, "{ locale: \"en-US\", origin: \"http://www.google.com\", dialogType: \"locationData\",customIcon: \"http://google-gears.googlecode.com/svn/trunk/gears/test/manual/shortcuts/32.png\",customName: \"My Application\",customMessage: \"Press the button to enable my application to run offline!\" };"

    .line 180
    .local v0, argumentsLocation:Ljava/lang/String;
    const-string v3, "{ locale: \"en-US\", permissions: [ { name: \"http://www.google.com\", localStorage: { permissionState: 0 }, locationData: { permissionState: 1 } }, { name: \"http://www.aaronboodman.com\", localStorage: { permissionState: 1 }, locationData: { permissionState: 2 } }, { name: \"http://www.evil.org\", localStorage: { permissionState: 2 }, locationData: { permissionState: 2 } } ] }"

    .line 191
    .local v3, argumentsSettings:Ljava/lang/String;
    iget v4, p0, Lcom/android/browser/GearsNativeDialog;->mDialogType:I

    packed-switch v4, :pswitch_data_18

    .line 202
    :goto_d
    return-void

    .line 193
    :pswitch_e
    iput-object v1, p0, Lcom/android/browser/GearsNativeDialog;->mDialogArguments:Ljava/lang/String;

    goto :goto_d

    .line 196
    :pswitch_11
    iput-object v0, p0, Lcom/android/browser/GearsNativeDialog;->mDialogArguments:Ljava/lang/String;

    goto :goto_d

    .line 199
    :pswitch_14
    iput-object v3, p0, Lcom/android/browser/GearsNativeDialog;->mDialogArguments:Ljava/lang/String;

    goto :goto_d

    .line 191
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method private notifyEndOfDialog()V
    .registers 2

    .prologue
    .line 249
    invoke-static {}, Landroid/webkit/gears/NativeDialog;->signalFinishedDialog()V

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/GearsNativeDialog;->mDialogDismissed:Z

    .line 251
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1b

    .line 260
    iget-object v0, p0, Lcom/android/browser/GearsNativeDialog;->dialog:Lcom/android/browser/GearsBaseDialog;

    invoke-virtual {v0}, Lcom/android/browser/GearsBaseDialog;->handleBackButton()Z

    move-result v0

    if-nez v0, :cond_19

    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/browser/GearsNativeDialog;->closeDialog(I)V

    .line 264
    :cond_19
    const/4 v0, 0x1

    .line 266
    :goto_1a
    return v0

    :cond_1b
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-direct {p0}, Lcom/android/browser/GearsNativeDialog;->getArguments()V

    .line 91
    iget v0, p0, Lcom/android/browser/GearsNativeDialog;->mDialogType:I

    if-ne v0, v1, :cond_e

    .line 92
    const v0, 0x1030005

    invoke-virtual {p0, v0}, Lcom/android/browser/GearsNativeDialog;->setTheme(I)V

    .line 94
    :cond_e
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    iget v0, p0, Lcom/android/browser/GearsNativeDialog;->mDialogType:I

    if-eq v0, v1, :cond_1e

    .line 96
    invoke-virtual {p0, v1}, Lcom/android/browser/GearsNativeDialog;->requestWindowFeature(I)Z

    .line 97
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/android/browser/GearsNativeDialog;->setContentView(I)V

    .line 100
    :cond_1e
    iget v0, p0, Lcom/android/browser/GearsNativeDialog;->mDialogType:I

    packed-switch v0, :pswitch_data_66

    .line 112
    new-instance v0, Lcom/android/browser/GearsBaseDialog;

    iget-object v1, p0, Lcom/android/browser/GearsNativeDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/browser/GearsNativeDialog;->mDialogArguments:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/browser/GearsBaseDialog;-><init>(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/browser/GearsNativeDialog;->dialog:Lcom/android/browser/GearsBaseDialog;

    .line 114
    :goto_2e
    iget-object v0, p0, Lcom/android/browser/GearsNativeDialog;->dialog:Lcom/android/browser/GearsBaseDialog;

    iget-boolean v1, p0, Lcom/android/browser/GearsNativeDialog;->mDebug:Z

    invoke-virtual {v0, v1}, Lcom/android/browser/GearsBaseDialog;->setDebug(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/browser/GearsNativeDialog;->dialog:Lcom/android/browser/GearsBaseDialog;

    invoke-virtual {v0}, Lcom/android/browser/GearsBaseDialog;->setup()V

    .line 116
    return-void

    .line 102
    :pswitch_3b
    new-instance v0, Lcom/android/browser/GearsSettingsDialog;

    iget-object v1, p0, Lcom/android/browser/GearsNativeDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/browser/GearsNativeDialog;->mDialogArguments:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/browser/GearsSettingsDialog;-><init>(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/browser/GearsNativeDialog;->dialog:Lcom/android/browser/GearsBaseDialog;

    .line 103
    iget-object v0, p0, Lcom/android/browser/GearsNativeDialog;->dialog:Lcom/android/browser/GearsBaseDialog;

    iget-object v1, p0, Lcom/android/browser/GearsNativeDialog;->mGearsVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/browser/GearsBaseDialog;->setGearsVersion(Ljava/lang/String;)V

    goto :goto_2e

    .line 106
    :pswitch_4e
    new-instance v0, Lcom/android/browser/GearsPermissionsDialog;

    iget-object v1, p0, Lcom/android/browser/GearsNativeDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/browser/GearsNativeDialog;->mDialogArguments:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/browser/GearsPermissionsDialog;-><init>(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/browser/GearsNativeDialog;->dialog:Lcom/android/browser/GearsBaseDialog;

    goto :goto_2e

    .line 109
    :pswitch_5a
    new-instance v0, Lcom/android/browser/GearsPermissionsDialog;

    iget-object v1, p0, Lcom/android/browser/GearsNativeDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/browser/GearsNativeDialog;->mDialogArguments:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/browser/GearsPermissionsDialog;-><init>(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/browser/GearsNativeDialog;->dialog:Lcom/android/browser/GearsBaseDialog;

    goto :goto_2e

    .line 100
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_4e
        :pswitch_5a
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "id"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/browser/GearsNativeDialog;->dialog:Lcom/android/browser/GearsBaseDialog;

    invoke-virtual {v0, p1}, Lcom/android/browser/GearsBaseDialog;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 232
    iget-boolean v0, p0, Lcom/android/browser/GearsNativeDialog;->mDialogDismissed:Z

    if-nez v0, :cond_a

    .line 233
    invoke-direct {p0}, Lcom/android/browser/GearsNativeDialog;->notifyEndOfDialog()V

    .line 235
    :cond_a
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 240
    iget-boolean v0, p0, Lcom/android/browser/GearsNativeDialog;->mDialogDismissed:Z

    if-nez v0, :cond_b

    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/browser/GearsNativeDialog;->closeDialog(I)V

    .line 243
    :cond_b
    return-void
.end method
