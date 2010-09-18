.class public Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothAuthorizeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothAuthorizeDialog"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mService:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private svc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 9
    .parameter "deviceName"
    .parameter "svc"

    .prologue
    const-string v5, "BluetoothAuthorizeDialog"

    .line 135
    const-string v2, "BluetoothAuthorizeDialog"

    const-string v2, "createView"

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030007

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 139
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0a001f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 140
    .local v0, messageView1:Landroid/widget/TextView;
    const v2, 0x7f0800ee

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const-string v2, "BluetoothAuthorizeDialog"

    const-string v2, "createView 2"

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-object v1
.end method

.method private isAutoReply()Z
    .registers 6

    .prologue
    .line 154
    const v2, 0x7f0a0020

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 155
    .local v0, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 156
    .local v1, isChecked:Z
    const-string v2, "BluetoothAuthorizeDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isChecked ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return v1
.end method

.method private onAuthorize()V
    .registers 9

    .prologue
    const-string v7, "BluetoothAuthorizeDialog"

    .line 161
    const-string v2, "BluetoothAuthorizeDialog"

    const-string v2, "onAuthorize"

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isAutoReply()Z

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 166
    :try_start_1b
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getLocalDeviceManager()Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->findDevice(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    move-result-object v1

    .line 168
    .local v1, localDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    if-eqz v1, :cond_46

    .line 169
    const-string v2, "BluetoothAuthorizeDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating information for local device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->fillData()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_46} :catch_47

    .line 176
    .end local v1           #localDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :cond_46
    :goto_46
    return-void

    .line 172
    :catch_47
    move-exception v2

    move-object v0, v2

    .line 173
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BluetoothAuthorizeDialog"

    const-string v2, "Error updating local device information"

    invoke-static {v7, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46
.end method

.method private onDecline()V
    .registers 6

    .prologue
    .line 179
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "onDecline"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isAutoReply()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 183
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 186
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    packed-switch p2, :pswitch_data_14

    .line 196
    :goto_a
    return-void

    .line 189
    :pswitch_b
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->onAuthorize()V

    goto :goto_a

    .line 193
    :pswitch_f
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->onDecline()V

    goto :goto_a

    .line 187
    nop

    :pswitch_data_14
    .packed-switch -0x2
        :pswitch_f
        :pswitch_b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const-string v6, "BluetoothAuthorizeDialog"

    .line 85
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const-string v2, "BluetoothAuthorizeDialog"

    const-string v2, "onCreate"

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 90
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.intent.action.AUTHORIZE_REQUEST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 92
    const-string v2, "BluetoothAuthorizeDialog"

    const-string v2, "Error: this activity may be started only with intent android.bluetooth.intent.action.AUTHORIZE_REQUEST"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->finish()V

    .line 97
    :cond_26
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 98
    const-string v2, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mAddress:Ljava/lang/String;

    .line 99
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getLocalDeviceManager()Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->name:Ljava/lang/String;

    .line 100
    const-string v2, "android.bluetooth.intent.SERVICE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    .line 101
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v3, "service_pbap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 102
    const v2, 0x7f0800ef

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    .line 116
    :goto_5d
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 117
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x10801a1

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 120
    const v2, 0x7f0800ed

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 122
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->createView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 124
    const v2, 0x7f080112

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 125
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 126
    const v2, 0x7f080113

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 127
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->setupAlert()V

    .line 131
    const-string v2, "BluetoothAuthorizeDialog"

    const-string v2, "onCreate 2"

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 103
    .end local v1           #p:Lcom/android/internal/app/AlertController$AlertParams;
    :cond_a0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v3, "service_opp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 104
    const v2, 0x7f0800f0

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto :goto_5d

    .line 105
    :cond_b4
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v3, "service_ftp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 106
    const v2, 0x7f0800f1

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto :goto_5d

    .line 107
    :cond_c8
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v3, "service_dun"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 108
    const v2, 0x7f0800f3

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto :goto_5d

    .line 109
    :cond_dc
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v3, "service_spp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 110
    const v2, 0x7f0800f2

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_5d

    .line 112
    :cond_f1
    const v2, 0x7f0800f4

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_5d
.end method
