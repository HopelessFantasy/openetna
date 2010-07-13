.class public Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPinMatchDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPinMatchDialog"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mPinCode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .registers 13

    .prologue
    const-string v11, "BluetoothPinMatchDialog"

    .line 111
    const-string v8, "BluetoothPinMatchDialog"

    const-string v8, "createView"

    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03000d

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 114
    .local v7, view:Landroid/view/View;
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getLocalDeviceManager()Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->mAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, name:Ljava/lang/String;
    const v8, 0x7f0a001f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 116
    .local v3, messageView1:Landroid/widget/TextView;
    const v8, 0x7f0800e5

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const v8, 0x7f0a002d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 119
    .local v2, mPinView:Landroid/widget/TextView;
    const-string v6, ""

    .line 120
    .local v6, temp:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_46
    const/4 v8, 0x6

    if-ge v0, v8, :cond_6b

    .line 121
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->mPinCode:I

    rem-int/lit8 v9, v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 122
    iget v8, p0, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->mPinCode:I

    div-int/lit8 v8, v8, 0xa

    iput v8, p0, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->mPinCode:I

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 124
    :cond_6b
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    const v8, 0x7f0a0030

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 126
    .local v1, mMag:Landroid/widget/ImageView;
    const v8, 0x7f0a002b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 127
    .local v4, messageView2:Landroid/widget/TextView;
    const v8, 0x7f0800e6

    invoke-virtual {p0, v8}, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const-string v8, "BluetoothPinMatchDialog"

    const-string v8, "createView 2"

    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-object v7
.end method

.method private onCancel()V
    .registers 4

    .prologue
    .line 142
    const-string v0, "BluetoothPinMatchDialog"

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->mAddress:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->authorizeSsp(Ljava/lang/String;Z)Z

    .line 145
    return-void
.end method

.method private onPair()V
    .registers 4

    .prologue
    .line 136
    const-string v0, "BluetoothPinMatchDialog"

    const-string v1, "onPair"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->mAddress:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->authorizeSsp(Ljava/lang/String;Z)Z

    .line 139
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 148
    const-string v0, "BluetoothPinMatchDialog"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    packed-switch p2, :pswitch_data_14

    .line 158
    :goto_a
    return-void

    .line 151
    :pswitch_b
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->onPair()V

    goto :goto_a

    .line 155
    :pswitch_f
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->onCancel()V

    goto :goto_a

    .line 149
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
    const-string v4, "BluetoothPinMatchDialog"

    .line 77
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const-string v2, "BluetoothPinMatchDialog"

    const-string v2, "onCreate"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.intent.action.SIMPLE_PAIRING_REQUEST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 84
    const-string v2, "BluetoothPinMatchDialog"

    const-string v2, "Error: this activity may be started only with intent android.bluetooth.intent.action.SIMPLE_PAIRING_REQUEST"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->finish()V

    .line 90
    :cond_26
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 91
    const-string v2, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->mAddress:Ljava/lang/String;

    .line 92
    const-string v2, "android.bluetooth.intent.PINCODE"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->mPinCode:I

    .line 95
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 96
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x108009b

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 97
    const v2, 0x7f0800e4

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 98
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 101
    const v2, 0x7f080110

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 102
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 103
    const v2, 0x7f080111

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 104
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;->setupAlert()V

    .line 107
    const-string v2, "BluetoothPinMatchDialog"

    const-string v2, "onCreate 2"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method
