.class public Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothJustWorksDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothJustWorksPairingDialog"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "BluetoothJustWorksPairingDialog"

    .line 109
    const-string v4, "BluetoothJustWorksPairingDialog"

    const-string v4, "createView"

    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03000a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 112
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getLocalDeviceManager()Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;->mAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, name:Ljava/lang/String;
    const v4, 0x7f0a001f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    .local v0, messageView1:Landroid/widget/TextView;
    const v4, 0x7f0800e9

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const v4, 0x7f0a002b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 116
    .local v1, messageView2:Landroid/widget/TextView;
    const v4, 0x7f0800ea

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const-string v4, "BluetoothJustWorksPairingDialog"

    const-string v4, "createView 2"

    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-object v3
.end method

.method private onCancel()V
    .registers 4

    .prologue
    .line 130
    const-string v0, "BluetoothJustWorksPairingDialog"

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;->mAddress:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->authorizeSsp(Ljava/lang/String;Z)Z

    .line 133
    return-void
.end method

.method private onPair()V
    .registers 4

    .prologue
    .line 124
    const-string v0, "BluetoothJustWorksPairingDialog"

    const-string v1, "onPair"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;->mAddress:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->authorizeSsp(Ljava/lang/String;Z)Z

    .line 127
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 136
    const-string v0, "BluetoothJustWorksPairingDialog"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    packed-switch p2, :pswitch_data_14

    .line 146
    :goto_a
    return-void

    .line 139
    :pswitch_b
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;->onPair()V

    goto :goto_a

    .line 143
    :pswitch_f
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;->onCancel()V

    goto :goto_a

    .line 137
    nop

    :pswitch_data_14
    .packed-switch -0x2
        :pswitch_f
        :pswitch_b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const-string v4, "BluetoothJustWorksPairingDialog"

    .line 76
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const-string v2, "BluetoothJustWorksPairingDialog"

    const-string v2, "onCreate"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 81
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.intent.action.SIMPLE_PAIRING_REQUEST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 83
    const-string v2, "BluetoothJustWorksPairingDialog"

    const-string v2, "Error: this activity may be started only with intent android.bluetooth.intent.action.SIMPLE_PAIRING_REQUEST"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;->finish()V

    .line 89
    :cond_26
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 90
    const-string v2, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;->mAddress:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 94
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x108009b

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 95
    const v2, 0x7f0800e8

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 96
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 99
    const v2, 0x7f080112

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 100
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 101
    const v2, 0x7f080113

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 102
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;->setupAlert()V

    .line 105
    const-string v2, "BluetoothJustWorksPairingDialog"

    const-string v2, "onCreate 2"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method
