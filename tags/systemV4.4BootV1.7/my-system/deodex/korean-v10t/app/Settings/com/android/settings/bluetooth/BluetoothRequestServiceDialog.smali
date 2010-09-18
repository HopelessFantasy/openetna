.class public Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothRequestServiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothRequestServiceDialog"


# instance fields
.field private mActionString:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mOpCode:B

.field private mRemoteAddress:Ljava/lang/String;

.field private mRemoteName:Ljava/lang/String;

.field private mRequestedServiceID:B

.field private mRequestedServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .registers 7

    .prologue
    .line 355
    const-string v2, "BluetoothRequestServiceDialog"

    const-string v3, "createView"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 358
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0a001f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 359
    .local v0, messageView:Landroid/widget/TextView;
    const v2, 0x7f0800f7

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRemoteName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    return-object v1
.end method

.method private getRemoteNameAndAddressFromIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "mIntent"

    .prologue
    .line 338
    const-string v0, "broadcom.android.bluetooth.intent.FILE_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mFileName:Ljava/lang/String;

    .line 339
    const-string v0, "broadcom.android.bluetooth.intent.RMT_DEV_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRemoteName:Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRemoteName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 342
    const-string v0, "broadcom.android.bluetooth.intent.RMT_DEV_ADDR"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRemoteAddress:Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getLocalDeviceManager()Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRemoteAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRemoteName:Ljava/lang/String;

    .line 348
    :cond_2e
    return-void
.end method

.method private onAllow(Z)V
    .registers 4
    .parameter "allow"

    .prologue
    .line 375
    const-string v0, "BluetoothRequestServiceDialog"

    const-string v1, "onAllow"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceID:B

    .line 404
    return-void
.end method

.method private setActionAndServerString()V
    .registers 3

    .prologue
    .line 260
    iget-byte v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceID:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5d

    .line 261
    iget-byte v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mOpCode:B

    packed-switch v0, :pswitch_data_c2

    .line 289
    :goto_a
    const v0, 0x7f0800fc

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceName:Ljava/lang/String;

    .line 327
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    if-nez v0, :cond_20

    .line 328
    const v0, 0x7f0800f8

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    .line 330
    :cond_20
    return-void

    .line 263
    :pswitch_21
    const v0, 0x7f0800fd

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_a

    .line 267
    :pswitch_2b
    const v0, 0x7f0800fe

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_a

    .line 271
    :pswitch_35
    const v0, 0x7f0800ff

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_a

    .line 275
    :pswitch_3f
    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_a

    .line 279
    :pswitch_49
    const v0, 0x7f080101

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_a

    .line 283
    :pswitch_53
    const v0, 0x7f080102

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_a

    .line 290
    :cond_5d
    iget-byte v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceID:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_99

    .line 292
    iget-byte v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mOpCode:B

    packed-switch v0, :pswitch_data_d2

    .line 311
    :goto_67
    const v0, 0x7f080103

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceName:Ljava/lang/String;

    goto :goto_13

    .line 294
    :pswitch_71
    const v0, 0x7f080104

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_67

    .line 298
    :pswitch_7b
    const v0, 0x7f080105

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_67

    .line 302
    :pswitch_85
    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_67

    .line 306
    :pswitch_8f
    const v0, 0x7f080107

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_67

    .line 314
    :cond_99
    iget-byte v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceID:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 316
    iget-byte v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mOpCode:B

    packed-switch v0, :pswitch_data_de

    .line 324
    :goto_a3
    const v0, 0x7f0800f9

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceName:Ljava/lang/String;

    goto/16 :goto_13

    .line 318
    :pswitch_ae
    const v0, 0x7f0800fa

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_a3

    .line 321
    :pswitch_b8
    const v0, 0x7f0800fb

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_a3

    .line 261
    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_21
        :pswitch_2b
        :pswitch_35
        :pswitch_3f
        :pswitch_49
        :pswitch_53
    .end packed-switch

    .line 292
    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_71
        :pswitch_7b
        :pswitch_85
        :pswitch_8f
    .end packed-switch

    .line 316
    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_b8
        :pswitch_ae
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 407
    const-string v0, "BluetoothRequestServiceDialog"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    packed-switch p2, :pswitch_data_16

    .line 417
    :goto_a
    return-void

    .line 410
    :pswitch_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->onAllow(Z)V

    goto :goto_a

    .line 414
    :pswitch_10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->onAllow(Z)V

    goto :goto_a

    .line 408
    nop

    :pswitch_data_16
    .packed-switch -0x2
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const-string v5, "BluetoothRequestServiceDialog"

    .line 130
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const-string v3, "BluetoothRequestServiceDialog"

    const-string v3, "onCreate"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v3, "service.brcm.bt.secure_mode"

    const-string v4, "property not found"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, mSecureModeProperty:Ljava/lang/String;
    if-eqz v1, :cond_1f

    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 140
    :cond_1f
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 143
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->finish()V

    .line 238
    .end local v0           #intent:Landroid/content/Intent;
    :goto_26
    return-void

    .line 148
    :cond_27
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 151
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 152
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x10801a1

    iput v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    .line 155
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 158
    const-string v3, "BluetoothRequestServiceDialog"

    const-string v3, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    const-string v4, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v3

    iput-byte v3, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceID:B

    .line 166
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    const-string v4, "broadcom.android.bluetooth.intent.SERVICE_OPER_CODE"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v3

    iput-byte v3, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mOpCode:B

    .line 169
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getRemoteNameAndAddressFromIntent(Landroid/content/Intent;)V

    .line 170
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->setActionAndServerString()V

    .line 172
    const-string v3, "BluetoothRequestServiceDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Oper Code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mOpCode:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const v3, 0x7f0800f6

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 227
    :goto_a6
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->createView()Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 231
    const v3, 0x7f080112

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 232
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 233
    const v3, 0x7f080113

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 234
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 236
    const-string v3, "BluetoothRequestServiceDialog"

    const-string v3, "onCreate 2"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 178
    :cond_cb
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "broadcom.android.bluetooth.intent.action.BT_FTPS_AUTHEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 181
    const-string v3, "BluetoothRequestServiceDialog"

    const-string v3, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_FTPS_AUTHEN"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    .line 184
    :cond_e1
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "broadcom.android.bluetooth.intent.action.BT_FTPS_OPENTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 187
    const-string v3, "BluetoothRequestServiceDialog"

    const-string v3, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_FTPS_OPENTED"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    .line 190
    :cond_f7
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "broadcom.android.bluetooth.intent.action.BT_FTPS_CLOSED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 193
    const-string v3, "BluetoothRequestServiceDialog"

    const-string v3, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_FTPS_CLOSED"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    .line 196
    :cond_10d
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "broadcom.android.bluetooth.intent.action.BT_FILE_TRSF_IN_PRGS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_123

    .line 199
    const-string v3, "BluetoothRequestServiceDialog"

    const-string v3, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_FILE_TRSF_IN_PRGS"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    .line 202
    :cond_123
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "broadcom.android.bluetooth.intent.action.BT_FTPS_GET_CMPL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    .line 205
    const-string v3, "BluetoothRequestServiceDialog"

    const-string v3, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_FTPS_GET_CMPL"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a6

    .line 208
    :cond_13a
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "broadcom.android.bluetooth.intent.action.BT_FTPS_PUT_CMPL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_151

    .line 211
    const-string v3, "BluetoothRequestServiceDialog"

    const-string v3, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_FTPS_PUT_CMPL"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a6

    .line 214
    :cond_151
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "broadcom.android.bluetooth.intent.action.BT_FTPS_DEL_CMPL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_168

    .line 217
    const-string v3, "BluetoothRequestServiceDialog"

    const-string v3, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_FTPS_DEL_CMPL"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a6

    .line 222
    :cond_168
    const-string v3, "BluetoothRequestServiceDialog"

    const-string v3, "Unknown Intent "

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a6
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 242
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;->setupAlert()V

    .line 246
    return-void
.end method
