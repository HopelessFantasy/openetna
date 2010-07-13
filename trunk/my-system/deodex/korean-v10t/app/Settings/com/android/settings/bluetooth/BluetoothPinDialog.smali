.class public Lcom/android/settings/bluetooth/BluetoothPinDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPinDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final INSTANCE_KEY_PAIRING_CANCELED:Ljava/lang/String; = "received_pairing_canceled"

.field private static final TAG:Ljava/lang/String; = "BluetoothPinDialog"


# instance fields
.field private final BLUETOOTH_PIN_MAX_LENGTH:I

.field private mAddress:Ljava/lang/String;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mName:Ljava/lang/String;

.field private mOkButton:Landroid/widget/Button;

.field private mPinView:Landroid/widget/EditText;

.field private mReceivedPairingCanceled:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 49
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->BLUETOOTH_PIN_MAX_LENGTH:I

    .line 59
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPinDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPinDialog$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPinDialog;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothPinDialog;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothPinDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPinDialog;->onReceivedPairingCanceled()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPinDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 137
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getLocalDeviceManager()Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mName:Ljava/lang/String;

    .line 139
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 140
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mName:Ljava/lang/String;

    .line 142
    :cond_34
    const v2, 0x7f0a002e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    .local v0, messageView:Landroid/widget/TextView;
    const v2, 0x7f0800e3

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPinDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const v2, 0x7f0a002f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mPinView:Landroid/widget/EditText;

    .line 146
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mPinView:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 148
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mPinView:Landroid/widget/EditText;

    new-array v3, v5, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 150
    return-object v1
.end method

.method private onCancel()V
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess(Ljava/lang/String;)Z

    .line 186
    return-void
.end method

.method private onPair(Ljava/lang/String;)V
    .registers 5
    .parameter "pin"

    .prologue
    .line 175
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 177
    .local v0, pinBytes:[B
    if-nez v0, :cond_7

    .line 182
    :goto_6
    return-void

    .line 181
    :cond_7
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/bluetooth/BluetoothDevice;->setPin(Ljava/lang/String;[B)Z

    goto :goto_6
.end method

.method private onReceivedPairingCanceled()V
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 160
    iput-boolean v5, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mReceivedPairingCanceled:Z

    .line 162
    const v1, 0x7f0a002e

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPinDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 163
    .local v0, messageView:Landroid/widget/TextView;
    const v1, 0x7f08010b

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothPinDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mPinView:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mPinView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 168
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mPinView:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 171
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 154
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 155
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mOkButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 157
    :cond_c
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 202
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 189
    packed-switch p2, :pswitch_data_16

    .line 198
    :goto_3
    return-void

    .line 191
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mPinView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPinDialog;->onPair(Ljava/lang/String;)V

    goto :goto_3

    .line 195
    :pswitch_12
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPinDialog;->onCancel()V

    goto :goto_3

    .line 189
    :pswitch_data_16
    .packed-switch -0x2
        :pswitch_12
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPinDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.intent.action.PAIRING_REQUEST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 80
    const-string v2, "BluetoothPinDialog"

    const-string v3, "Error: this activity may be started only with intent android.bluetooth.intent.action.PAIRING_REQUEST"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPinDialog;->finish()V

    .line 86
    :cond_1d
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 87
    const-string v2, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mAddress:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 91
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x108009b

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 92
    const v2, 0x7f0800e1

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPinDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 93
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPinDialog;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 94
    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPinDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 95
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 96
    const/high16 v2, 0x104

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPinDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 97
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPinDialog;->setupAlert()V

    .line 100
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mOkButton:Landroid/widget/Button;

    .line 101
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mOkButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.intent.action.PAIRING_CANCEL"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPinDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 129
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 131
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPinDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 114
    const-string v0, "received_pairing_canceled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mReceivedPairingCanceled:Z

    .line 115
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mReceivedPairingCanceled:Z

    if-eqz v0, :cond_12

    .line 116
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPinDialog;->onReceivedPairingCanceled()V

    .line 118
    :cond_12
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 124
    const-string v0, "received_pairing_canceled"

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog;->mReceivedPairingCanceled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 206
    return-void
.end method
