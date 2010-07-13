.class public Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothKeyboardDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothKeyboardDialog$BluetoothUpdateReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothKeyboardDialog"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mNumKeysPressed:I

.field private mP:Lcom/android/internal/app/AlertController$AlertParams;

.field private mPinCode:I

.field private mPinCodeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;)Lcom/android/internal/app/AlertController$AlertParams;
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->mP:Lcom/android/internal/app/AlertController$AlertParams;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->mNumKeysPressed:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->mNumKeysPressed:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->mPinCode:I

    return v0
.end method

.method private createView()Landroid/view/View;
    .registers 9

    .prologue
    const/4 v6, 0x0

    const-string v7, "BluetoothKeyboardDialog"

    .line 144
    const-string v3, "BluetoothKeyboardDialog"

    const-string v3, "createView"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 147
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getLocalDeviceManager()Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, name:Ljava/lang/String;
    const v3, 0x7f0a001f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 149
    .local v0, messageView1:Landroid/widget/TextView;
    const v3, 0x7f0800ec

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const v3, 0x7f0a002d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->mPinCodeText:Landroid/widget/TextView;

    .line 151
    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->mPinCode:I

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->updatePinCode(II)V

    .line 153
    const-string v3, "BluetoothKeyboardDialog"

    const-string v3, "createView 2"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-object v2
.end method

.method private onCancel()V
    .registers 4

    .prologue
    .line 159
    const-string v0, "BluetoothKeyboardDialog"

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->mAddress:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->authorizeSsp(Ljava/lang/String;Z)Z

    .line 162
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 165
    const-string v0, "BluetoothKeyboardDialog"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    packed-switch p2, :pswitch_data_10

    .line 171
    :goto_a
    return-void

    .line 168
    :pswitch_b
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->onCancel()V

    goto :goto_a

    .line 166
    nop

    :pswitch_data_10
    .packed-switch -0x2
        :pswitch_b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const-string v4, "BluetoothKeyboardDialog"

    .line 87
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const-string v1, "BluetoothKeyboardDialog"

    const-string v1, "onCreate"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput v3, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->mNumKeysPressed:I

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 94
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.bluetooth.intent.action.SIMPLE_PAIRING_REQUEST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 96
    const-string v1, "BluetoothKeyboardDialog"

    const-string v1, "Error: this activity may be started only with intent android.bluetooth.intent.action.SIMPLE_PAIRING_REQUEST"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->finish()V

    .line 102
    :cond_29
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 103
    const-string v1, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->mAddress:Ljava/lang/String;

    .line 104
    const-string v1, "android.bluetooth.intent.PINCODE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->mPinCode:I

    .line 107
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->mP:Lcom/android/internal/app/AlertController$AlertParams;

    .line 108
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->mP:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x108009b

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 109
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->mP:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x7f0800eb

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 110
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->mP:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 113
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog$BluetoothUpdateReceiver;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog$BluetoothUpdateReceiver;-><init>(Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.intent.action.PAIRING_UPDATE_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->mP:Lcom/android/internal/app/AlertController$AlertParams;

    const/high16 v2, 0x104

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 120
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->mP:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->setupAlert()V

    .line 123
    const-string v1, "BluetoothKeyboardDialog"

    const-string v1, "onCreate 2"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public updatePinCode(II)V
    .registers 7
    .parameter "newPinCode"
    .parameter "enteredKeys"

    .prologue
    .line 131
    const-string v1, ""

    .line 132
    .local v1, temp:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    const/4 v2, 0x6

    sub-int/2addr v2, p2

    if-ge v0, v2, :cond_23

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v3, p1, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    div-int/lit8 p1, p1, 0xa

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 136
    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-ge v0, p2, :cond_3c

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 140
    :cond_3c
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;->mPinCodeText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method
