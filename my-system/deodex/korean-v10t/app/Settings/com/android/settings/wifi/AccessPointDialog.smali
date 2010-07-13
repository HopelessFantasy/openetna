.class public Lcom/android/settings/wifi/AccessPointDialog;
.super Landroid/app/AlertDialog;
.source "AccessPointDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final INSTANCE_KEY_ACCESS_POINT_STATE:Ljava/lang/String; = "com.android.settings.wifi.AccessPointDialog:accessPointState"

.field private static final INSTANCE_KEY_AUTO_SECURITY_ALLOWED:Ljava/lang/String; = "com.android.settings.wifi.AccessPointDialog:autoSecurityAllowed"

.field private static final INSTANCE_KEY_CUSTOM_TITLE:Ljava/lang/String; = "com.android.settings.wifi.AccessPointDialog:customTitle"

.field private static final INSTANCE_KEY_MODE:Ljava/lang/String; = "com.android.settings.wifi.AccessPointDialog:mode"

.field public static final MODE_CONFIGURE:I = 0x1

.field public static final MODE_INFO:I = 0x0

.field public static final MODE_RETRY_PASSWORD:I = 0x2

.field private static final NEGATIVE_BUTTON:I = -0x2

.field private static final NEUTRAL_BUTTON:I = -0x3

.field private static final POSITIVE_BUTTON:I = -0x1

.field private static final SECURITY_AUTO:I = 0x0

.field private static final SECURITY_NONE:I = 0x1

.field private static final SECURITY_WEP:I = 0x2

.field private static final SECURITY_WPA2_PERSONAL:I = 0x4

.field private static final SECURITY_WPA_PERSONAL:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AccessPointDialog"

.field private static final WEP_TYPE_VALUES:[I


# instance fields
.field private mAutoSecurityAllowed:Z

.field private mConnectButtonPos:I

.field private mCustomTitle:Ljava/lang/CharSequence;

.field private mForgetButtonPos:I

.field private mMode:I

.field private mPasswordEdit:Landroid/widget/EditText;

.field private mPasswordText:Landroid/widget/TextView;

.field private mSaveButtonPos:I

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mShowPasswordCheckBox:Landroid/widget/CheckBox;

.field private mSsidEdit:Landroid/widget/EditText;

.field private mState:Lcom/android/settings/wifi/AccessPointState;

.field private mTable:Landroid/view/ViewGroup;

.field private mView:Landroid/view/View;

.field private mWepTypeSpinner:Landroid/widget/Spinner;

.field private mWifiLayer:Lcom/android/settings/wifi/WifiLayer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/settings/wifi/AccessPointDialog;->WEP_TYPE_VALUES:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiLayer;)V
    .registers 4
    .parameter "context"
    .parameter "wifiLayer"

    .prologue
    const v0, 0x7fffffff

    .line 114
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 87
    iput v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mConnectButtonPos:I

    .line 88
    iput v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mForgetButtonPos:I

    .line 89
    iput v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mSaveButtonPos:I

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mMode:I

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mAutoSecurityAllowed:Z

    .line 116
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointDialog;->mWifiLayer:Lcom/android/settings/wifi/WifiLayer;

    .line 117
    return-void
.end method

.method private addInfoRow(II)V
    .registers 4
    .parameter "nameResId"
    .parameter "valueResId"

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/AccessPointDialog;->addInfoRow(ILjava/lang/String;)V

    .line 364
    return-void
.end method

.method private addInfoRow(ILjava/lang/String;)V
    .registers 8
    .parameter "nameResId"
    .parameter "value"

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03003b

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointDialog;->mTable:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 357
    .local v0, rowView:Landroid/view/View;
    const v1, 0x7f0a007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 358
    const v1, 0x7f0a0079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mTable:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 360
    return-void
.end method

.method private getEnteredPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mPasswordEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private getSecurityTypeFromSpinner()I
    .registers 3

    .prologue
    .line 586
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 589
    .local v0, position:I
    iget-boolean v1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mAutoSecurityAllowed:Z

    if-eqz v1, :cond_c

    move v1, v0

    :goto_b
    return v1

    :cond_c
    add-int/lit8 v1, v0, 0x1

    goto :goto_b
.end method

.method private static getSignalResId(I)I
    .registers 2
    .parameter "signal"

    .prologue
    .line 661
    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 676
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 663
    :pswitch_a
    const v0, 0x7f08014d

    goto :goto_9

    .line 666
    :pswitch_e
    const v0, 0x7f08014c

    goto :goto_9

    .line 669
    :pswitch_12
    const v0, 0x7f08014b

    goto :goto_9

    .line 672
    :pswitch_16
    const v0, 0x7f08014a

    goto :goto_9

    .line 661
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_16
    .end packed-switch
.end method

.method private handleConnect()V
    .registers 8

    .prologue
    const/4 v6, 0x6

    const-string v5, "AccessPointDialog"

    .line 422
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointDialog;->replaceStateWithWifiLayerInstance()Z

    move-result v3

    if-nez v3, :cond_10

    .line 423
    const-string v3, "AccessPointDialog"

    const-string v3, "Assuming connecting to a new network."

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_10
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointDialog;->getEnteredPassword()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, password:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPointState;->getHumanReadableSsid()Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, ssid:Ljava/lang/String;
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KTF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_52

    .line 437
    const-string v3, "AccessPointDialog"

    const-string v3, "[yoohoo] =================== "

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v3, "QOOKnSHOW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_a1

    const-string v3, "NESPOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 439
    :cond_49
    const-string v3, "AccessPointDialog"

    const-string v3, "[yoohoo] handleConnect : Set password to dummy"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v0, "1234567890"

    .line 446
    :cond_52
    :goto_52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 452
    .local v1, passwordIsEmpty:Z
    if-eqz v1, :cond_a9

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPointState;->hasPassword()Z

    move-result v3

    if-eqz v3, :cond_65

    iget v3, p0, Lcom/android/settings/wifi/AccessPointDialog;->mMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a9

    :cond_65
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    if-eqz v3, :cond_a9

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    const-string v4, "Open"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a9

    .line 454
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080242

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08017e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 468
    :goto_a0
    return-void

    .line 442
    .end local v1           #passwordIsEmpty:Z
    :cond_a1
    const-string v3, "AccessPointDialog"

    const-string v3, "[yoohoo] handleConnect : Do not anything in setting password"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 463
    .restart local v1       #passwordIsEmpty:Z
    :cond_a9
    if-nez v1, :cond_b0

    .line 464
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v3, v0}, Lcom/android/settings/wifi/AccessPointState;->setPassword(Ljava/lang/String;)V

    .line 467
    :cond_b0
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointDialog;->mWifiLayer:Lcom/android/settings/wifi/WifiLayer;

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiLayer;->connectToNetwork(Lcom/android/settings/wifi/AccessPointState;)Z

    goto :goto_a0
.end method

.method private handleForget()V
    .registers 6

    .prologue
    .line 403
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPointState;->getHumanReadableSsid()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, ssid:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointDialog;->replaceStateWithWifiLayerInstance()Z

    move-result v3

    if-nez v3, :cond_d

    .line 419
    :goto_c
    return-void

    .line 406
    :cond_d
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KTF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4f

    .line 407
    const-string v3, "NESPOT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string v3, "QOOKnSHOW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 408
    :cond_2a
    const-string v3, "AccessPointDialog"

    const-string v4, "handleForget : Do not remove NESPOT or QOOKnSHOW"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v0, "com.netcube.wifi.msg"

    .line 410
    .local v0, _N3_WIFI_MSG:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "MSG"

    const-string v4, "CTRL-EVENT-MSG 12"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_c

    .line 415
    .end local v0           #_N3_WIFI_MSG:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_47
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointDialog;->mWifiLayer:Lcom/android/settings/wifi/WifiLayer;

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiLayer;->forgetNetwork(Lcom/android/settings/wifi/AccessPointState;)Z

    goto :goto_c

    .line 417
    :cond_4f
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointDialog;->mWifiLayer:Lcom/android/settings/wifi/WifiLayer;

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiLayer;->forgetNetwork(Lcom/android/settings/wifi/AccessPointState;)Z

    goto :goto_c
.end method

.method private handleSave()V
    .registers 13

    .prologue
    const/4 v9, 0x1

    const-string v11, "Open"

    const-string v10, "MSG"

    const-string v8, "AccessPointDialog"

    .line 471
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointDialog;->replaceStateWithWifiLayerInstance()Z

    .line 473
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointDialog;->mSsidEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 474
    .local v4, ssid:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointDialog;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, password:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 479
    const-string v5, "AccessPointDialog"

    const-string v5, "handleSave : NULL ssid. Abort"

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_2b
    :goto_2b
    return-void

    .line 486
    :cond_2c
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KTF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v9, :cond_65

    .line 487
    const-string v5, "NESPOT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    const-string v5, "QOOKnSHOW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 488
    :cond_48
    const-string v5, "AccessPointDialog"

    const-string v5, "handleSave : Do not add NESPOT or QOOKnSHOW"

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-string v0, "com.netcube.wifi.msg"

    .line 491
    .local v0, _N3_WIFI_MSG:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "MSG"

    const-string v5, "CTRL-EVENT-MSG 11"

    invoke-virtual {v1, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2b

    .line 499
    .end local v0           #_N3_WIFI_MSG:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_65
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v5, v4}, Lcom/android/settings/wifi/AccessPointState;->setSsid(Ljava/lang/String;)V

    .line 501
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointDialog;->getSecurityTypeFromSpinner()I

    move-result v3

    .line 503
    .local v3, securityType:I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_de

    .line 504
    packed-switch v3, :pswitch_data_fc

    .line 535
    :goto_77
    :pswitch_77
    if-ne v3, v9, :cond_80

    .line 536
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    const-string v6, "Open"

    invoke-virtual {v5, v11}, Lcom/android/settings/wifi/AccessPointState;->setSecurity(Ljava/lang/String;)V

    .line 541
    :cond_80
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointDialog;->mWifiLayer:Lcom/android/settings/wifi/WifiLayer;

    iget-object v6, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/WifiLayer;->checkConfiguredNetwork(Lcom/android/settings/wifi/AccessPointState;)Z

    move-result v5

    if-eqz v5, :cond_e6

    .line 542
    const-string v5, "AccessPointDialog"

    const-string v5, "handleSave : The same profile is added already"

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v0, "com.netcube.wifi.msg"

    .line 545
    .restart local v0       #_N3_WIFI_MSG:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v5, "MSG"

    const-string v5, "CTRL-EVENT-MSG 14"

    invoke-virtual {v1, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2b

    .line 507
    .end local v0           #_N3_WIFI_MSG:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_a7
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    const-string v6, "WPA"

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/AccessPointState;->setSecurity(Ljava/lang/String;)V

    .line 508
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v5, v2}, Lcom/android/settings/wifi/AccessPointState;->setPassword(Ljava/lang/String;)V

    goto :goto_77

    .line 513
    :pswitch_b4
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    const-string v6, "WPA2"

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/AccessPointState;->setSecurity(Ljava/lang/String;)V

    .line 514
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v5, v2}, Lcom/android/settings/wifi/AccessPointState;->setPassword(Ljava/lang/String;)V

    goto :goto_77

    .line 519
    :pswitch_c1
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v5, v2}, Lcom/android/settings/wifi/AccessPointState;->setPassword(Ljava/lang/String;)V

    goto :goto_77

    .line 524
    :pswitch_c7
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    const-string v6, "WEP"

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/AccessPointState;->setSecurity(Ljava/lang/String;)V

    .line 525
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    sget-object v6, Lcom/android/settings/wifi/AccessPointDialog;->WEP_TYPE_VALUES:[I

    iget-object v7, p0, Lcom/android/settings/wifi/AccessPointDialog;->mWepTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {v5, v2, v6}, Lcom/android/settings/wifi/AccessPointState;->setPassword(Ljava/lang/String;I)V

    goto :goto_77

    .line 532
    :cond_de
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    const-string v6, "Open"

    invoke-virtual {v5, v11}, Lcom/android/settings/wifi/AccessPointState;->setSecurity(Ljava/lang/String;)V

    goto :goto_77

    .line 558
    :cond_e6
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointDialog;->mWifiLayer:Lcom/android/settings/wifi/WifiLayer;

    iget-object v6, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/WifiLayer;->saveNetwork_not_create(Lcom/android/settings/wifi/AccessPointState;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 563
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointDialog;->mWifiLayer:Lcom/android/settings/wifi/WifiLayer;

    iget-object v6, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/WifiLayer;->connectToNetwork(Lcom/android/settings/wifi/AccessPointState;)Z

    move-result v5

    if-nez v5, :cond_2b

    goto/16 :goto_2b

    .line 504
    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_c1
        :pswitch_77
        :pswitch_c7
        :pswitch_a7
        :pswitch_b4
    .end packed-switch
.end method

.method private handleSecurityChange(I)V
    .registers 5
    .parameter "security"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "WPA"

    .line 626
    packed-switch p1, :pswitch_data_3a

    .line 658
    :goto_7
    return-void

    .line 629
    :pswitch_8
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointDialog;->setWepVisible(Z)V

    .line 630
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointDialog;->setGenericPasswordVisible(Z)V

    goto :goto_7

    .line 635
    :pswitch_f
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointDialog;->setGenericPasswordVisible(Z)V

    .line 636
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AccessPointDialog;->setWepVisible(Z)V

    .line 637
    const-string v0, "WEP"

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointDialog;->updatePasswordCaption(Ljava/lang/String;)V

    goto :goto_7

    .line 642
    :pswitch_1b
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointDialog;->setWepVisible(Z)V

    .line 643
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointState;->hasSecurity()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointDialog;->setGenericPasswordVisible(Z)V

    .line 645
    const-string v0, "WPA"

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointDialog;->updatePasswordCaption(Ljava/lang/String;)V

    goto :goto_7

    .line 651
    :pswitch_2d
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointDialog;->setWepVisible(Z)V

    .line 652
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AccessPointDialog;->setGenericPasswordVisible(Z)V

    .line 654
    const-string v0, "WPA"

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointDialog;->updatePasswordCaption(Ljava/lang/String;)V

    goto :goto_7

    .line 626
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_8
        :pswitch_f
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method private onFill()V
    .registers 5

    .prologue
    .line 311
    iget v1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mMode:I

    if-nez v1, :cond_7b

    .line 312
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    iget-boolean v1, v1, Lcom/android/settings/wifi/AccessPointState;->primary:Z

    if-eqz v1, :cond_33

    .line 313
    const v1, 0x7f080148

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPointState;->getSummarizedStatus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/AccessPointDialog;->addInfoRow(ILjava/lang/String;)V

    .line 314
    const v1, 0x7f080149

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    iget v3, v3, Lcom/android/settings/wifi/AccessPointState;->linkSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Mbps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/AccessPointDialog;->addInfoRow(ILjava/lang/String;)V

    .line 317
    :cond_33
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    iget-boolean v1, v1, Lcom/android/settings/wifi/AccessPointState;->seen:Z

    if-eqz v1, :cond_47

    .line 318
    const v1, 0x7f08015d

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    iget v2, v2, Lcom/android/settings/wifi/AccessPointState;->signal:I

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPointDialog;->getSignalResId(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/AccessPointDialog;->addInfoRow(II)V

    .line 321
    :cond_47
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    if-eqz v1, :cond_59

    .line 322
    const v1, 0x7f08014e

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPointState;->getHumanReadableSecurity()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/AccessPointDialog;->addInfoRow(ILjava/lang/String;)V

    .line 325
    :cond_59
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    iget-boolean v1, v1, Lcom/android/settings/wifi/AccessPointState;->primary:Z

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    iget v1, v1, Lcom/android/settings/wifi/AccessPointState;->ipAddress:I

    if-eqz v1, :cond_73

    .line 326
    const v1, 0x7f08015c

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    iget v2, v2, Lcom/android/settings/wifi/AccessPointState;->ipAddress:I

    invoke-static {v2}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/AccessPointDialog;->addInfoRow(ILjava/lang/String;)V

    .line 338
    :cond_73
    :goto_73
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AccessPointDialog;->updatePasswordCaption(Ljava/lang/String;)V

    .line 339
    return-void

    .line 329
    :cond_7b
    iget v1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_73

    .line 330
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPointState;->getHumanReadableSsid()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, ssid:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_91

    .line 332
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mSsidEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :cond_91
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mPasswordEdit:Landroid/widget/EditText;

    const v2, 0x7f08017a

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_73
.end method

.method private onLayout()V
    .registers 14

    .prologue
    const/4 v12, 0x6

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    const-string v11, "AccessPointDialog"

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 197
    .local v0, context:Landroid/content/Context;
    iget-object v6, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPointState;->getHumanReadableSsid()Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, ssid:Ljava/lang/String;
    const/4 v4, 0x0

    .line 200
    .local v4, positiveButtonResId:I
    const v2, 0x7f0800bb

    .line 201
    .local v2, negativeButtonResId:I
    const/4 v3, 0x0

    .line 203
    .local v3, neutralButtonResId:I
    iget-object v6, p0, Lcom/android/settings/wifi/AccessPointDialog;->mCustomTitle:Ljava/lang/CharSequence;

    if-nez v6, :cond_1c

    .line 206
    invoke-super {p0, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    :cond_1c
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/AccessPointDialog;->setInverseBackgroundForced(Z)V

    .line 210
    const/4 v1, 0x1

    .line 212
    .local v1, defaultPasswordVisibility:Z
    iget v6, p0, Lcom/android/settings/wifi/AccessPointDialog;->mMode:I

    if-ne v6, v8, :cond_83

    .line 213
    const v6, 0x7f030039

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/AccessPointDialog;->setLayout(I)V

    .line 215
    const v4, 0x7f080179

    .line 216
    iput v9, p0, Lcom/android/settings/wifi/AccessPointDialog;->mSaveButtonPos:I

    .line 249
    :cond_2f
    :goto_2f
    if-eqz v1, :cond_48

    .line 250
    iget-object v6, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    iget-boolean v6, v6, Lcom/android/settings/wifi/AccessPointState;->configured:Z

    if-nez v6, :cond_db

    iget-object v6, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    iget-boolean v6, v6, Lcom/android/settings/wifi/AccessPointState;->seen:Z

    if-eqz v6, :cond_db

    iget-object v6, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPointState;->hasSecurity()Z

    move-result v6

    if-eqz v6, :cond_db

    .line 251
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/AccessPointDialog;->setGenericPasswordVisible(Z)V

    .line 258
    :cond_48
    :goto_48
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KTF"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v8, :cond_7f

    .line 259
    const-string v6, "AccessPointDialog"

    const-string v6, "[yoohoo] =================== "

    invoke-static {v11, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v6, "QOOKnSHOW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_75

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v12, :cond_e0

    const-string v6, "NESPOT"

    invoke-virtual {v5, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e0

    .line 261
    :cond_75
    const-string v6, "AccessPointDialog"

    const-string v6, "[yoohoo] onLayout : disable showing password"

    invoke-static {v11, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-direct {p0, v10}, Lcom/android/settings/wifi/AccessPointDialog;->setGenericPasswordVisible(Z)V

    .line 269
    :cond_7f
    :goto_7f
    invoke-direct {p0, v4, v2, v3}, Lcom/android/settings/wifi/AccessPointDialog;->setButtons(III)V

    .line 270
    return-void

    .line 218
    :cond_83
    iget v6, p0, Lcom/android/settings/wifi/AccessPointDialog;->mMode:I

    if-nez v6, :cond_c5

    .line 219
    const v6, 0x7f03003a

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/AccessPointDialog;->setLayout(I)V

    .line 221
    iget-object v6, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPointState;->isConnectable()Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 222
    iget-object v6, p0, Lcom/android/settings/wifi/AccessPointDialog;->mCustomTitle:Ljava/lang/CharSequence;

    if-nez v6, :cond_a7

    .line 224
    const v6, 0x7f080167

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v5, v7, v10

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-super {p0, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 226
    :cond_a7
    const v4, 0x7f080166

    .line 227
    iput v9, p0, Lcom/android/settings/wifi/AccessPointDialog;->mConnectButtonPos:I

    .line 230
    :cond_ac
    iget-object v6, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPointState;->isForgetable()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 231
    if-nez v4, :cond_bd

    .line 232
    const v4, 0x7f080147

    .line 233
    iput v9, p0, Lcom/android/settings/wifi/AccessPointDialog;->mForgetButtonPos:I

    goto/16 :goto_2f

    .line 235
    :cond_bd
    const v3, 0x7f080147

    .line 236
    const/4 v6, -0x3

    iput v6, p0, Lcom/android/settings/wifi/AccessPointDialog;->mForgetButtonPos:I

    goto/16 :goto_2f

    .line 239
    :cond_c5
    iget v6, p0, Lcom/android/settings/wifi/AccessPointDialog;->mMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2f

    .line 240
    const v6, 0x7f03003c

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/AccessPointDialog;->setLayout(I)V

    .line 242
    const v4, 0x7f080166

    .line 243
    iput v9, p0, Lcom/android/settings/wifi/AccessPointDialog;->mConnectButtonPos:I

    .line 245
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/AccessPointDialog;->setGenericPasswordVisible(Z)V

    .line 246
    const/4 v1, 0x0

    goto/16 :goto_2f

    .line 253
    :cond_db
    invoke-direct {p0, v10}, Lcom/android/settings/wifi/AccessPointDialog;->setGenericPasswordVisible(Z)V

    goto/16 :goto_48

    .line 264
    :cond_e0
    const-string v6, "AccessPointDialog"

    const-string v6, "[yoohoo]onLayout : Do not anything in showing password"

    invoke-static {v11, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f
.end method

.method private onReferenceViews(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 274
    const v0, 0x7f0a00d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mPasswordText:Landroid/widget/TextView;

    .line 275
    const v0, 0x7f0a00d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mPasswordEdit:Landroid/widget/EditText;

    .line 277
    const v0, 0x7f0a00d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mShowPasswordCheckBox:Landroid/widget/CheckBox;

    .line 278
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mShowPasswordCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2a

    .line 279
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mShowPasswordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    :cond_2a
    iget v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_59

    .line 283
    const v0, 0x7f0a00d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mSsidEdit:Landroid/widget/EditText;

    .line 284
    const v0, 0x7f0a00d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 285
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 286
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointDialog;->setSecuritySpinnerAdapter()V

    .line 287
    const v0, 0x7f0a00d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mWepTypeSpinner:Landroid/widget/Spinner;

    .line 293
    :cond_58
    :goto_58
    return-void

    .line 289
    :cond_59
    iget v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mMode:I

    if-nez v0, :cond_58

    .line 290
    const v0, 0x7f0a00d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mTable:Landroid/view/ViewGroup;

    goto :goto_58
.end method

.method private replaceStateWithWifiLayerInstance()Z
    .registers 4

    .prologue
    .line 576
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mWifiLayer:Lcom/android/settings/wifi/WifiLayer;

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiLayer;->getWifiLayerApInstance(Lcom/android/settings/wifi/AccessPointState;)Lcom/android/settings/wifi/AccessPointState;

    move-result-object v0

    .line 577
    .local v0, state:Lcom/android/settings/wifi/AccessPointState;
    if-nez v0, :cond_c

    .line 578
    const/4 v1, 0x0

    .line 582
    :goto_b
    return v1

    .line 581
    :cond_c
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    .line 582
    const/4 v1, 0x1

    goto :goto_b
.end method

.method private setButtons(III)V
    .registers 6
    .parameter "positiveResId"
    .parameter "negativeResId"
    .parameter "neutralResId"

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 369
    .local v0, context:Landroid/content/Context;
    if-lez p1, :cond_d

    .line 370
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/android/settings/wifi/AccessPointDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 373
    :cond_d
    if-lez p2, :cond_16

    .line 374
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/android/settings/wifi/AccessPointDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 377
    :cond_16
    if-lez p3, :cond_1f

    .line 378
    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/android/settings/wifi/AccessPointDialog;->setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 380
    :cond_1f
    return-void
.end method

.method private setGenericPasswordVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 609
    if-eqz p1, :cond_14

    const/4 v1, 0x0

    move v0, v1

    .line 610
    .local v0, visibility:I
    :goto_4
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 611
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 612
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mShowPasswordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 613
    return-void

    .line 609
    .end local v0           #visibility:I
    :cond_14
    const/16 v1, 0x8

    move v0, v1

    goto :goto_4
.end method

.method private setLayout(I)V
    .registers 4
    .parameter "layoutResId"

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointDialog;->setView(Landroid/view/View;)V

    .line 384
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointDialog;->onReferenceViews(Landroid/view/View;)V

    .line 385
    return-void
.end method

.method private setSecuritySpinnerAdapter()V
    .registers 6

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 297
    .local v2, context:Landroid/content/Context;
    iget-boolean v3, p0, Lcom/android/settings/wifi/AccessPointDialog;->mAutoSecurityAllowed:Z

    if-eqz v3, :cond_28

    const v3, 0x7f05000a

    move v1, v3

    .line 300
    .local v1, arrayResId:I
    :goto_c
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 303
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 304
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 305
    return-void

    .line 297
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v1           #arrayResId:I
    :cond_28
    const v3, 0x7f05000b

    move v1, v3

    goto :goto_c
.end method

.method private setShowPassword(Z)V
    .registers 4
    .parameter "showPassword"

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mPasswordEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_f

    .line 688
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mPasswordEdit:Landroid/widget/EditText;

    if-eqz p1, :cond_10

    const/16 v1, 0x90

    :goto_a
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 692
    :cond_f
    return-void

    .line 688
    :cond_10
    const/16 v1, 0x80

    goto :goto_a
.end method

.method private setWepVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 600
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointDialog;->setGenericPasswordVisible(Z)V

    .line 601
    if-eqz p1, :cond_d

    const/4 v1, 0x0

    move v0, v1

    .line 602
    .local v0, visibility:I
    :goto_7
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mWepTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 603
    return-void

    .line 601
    .end local v0           #visibility:I
    :cond_d
    const/16 v1, 0x8

    move v0, v1

    goto :goto_7
.end method

.method private updatePasswordCaption(Ljava/lang/String;)V
    .registers 4
    .parameter "security"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mPasswordText:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    const-string v0, "WEP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 345
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mPasswordText:Landroid/widget/TextView;

    const v1, 0x7f080170

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 353
    :cond_16
    :goto_16
    return-void

    .line 349
    :cond_17
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mPasswordText:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    .line 351
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mPasswordText:Landroid/widget/TextView;

    const v1, 0x7f08016f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_16
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 388
    iget v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mForgetButtonPos:I

    if-ne p2, v0, :cond_8

    .line 389
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointDialog;->handleForget()V

    .line 395
    :cond_7
    :goto_7
    return-void

    .line 390
    :cond_8
    iget v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mConnectButtonPos:I

    if-ne p2, v0, :cond_10

    .line 391
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointDialog;->handleConnect()V

    goto :goto_7

    .line 392
    :cond_10
    iget v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mSaveButtonPos:I

    if-ne p2, v0, :cond_7

    .line 393
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointDialog;->handleSave()V

    goto :goto_7
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mShowPasswordCheckBox:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_d

    .line 682
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mShowPasswordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointDialog;->setShowPassword(Z)V

    .line 684
    :cond_d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointDialog;->onLayout()V

    .line 122
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointDialog;->onFill()V

    .line 124
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 125
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_b

    .line 617
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointDialog;->getSecurityTypeFromSpinner()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointDialog;->handleSecurityChange(I)V

    .line 619
    :cond_b
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter "parent"

    .prologue
    .line 622
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 132
    const-string v0, "com.android.settings.wifi.AccessPointDialog:accessPointState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPointState;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    .line 133
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPointState;->setContext(Landroid/content/Context;)V

    .line 135
    const-string v0, "com.android.settings.wifi.AccessPointDialog:mode"

    iget v1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mMode:I

    .line 136
    const-string v0, "com.android.settings.wifi.AccessPointDialog:autoSecurityAllowed"

    iget-boolean v1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mAutoSecurityAllowed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mAutoSecurityAllowed:Z

    .line 138
    const-string v0, "com.android.settings.wifi.AccessPointDialog:customTitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mCustomTitle:Ljava/lang/CharSequence;

    .line 139
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mCustomTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_43

    .line 140
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mCustomTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    :cond_43
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mShowPasswordCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_53

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDialog;->mShowPasswordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointDialog;->setShowPassword(Z)V

    .line 150
    :cond_53
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 155
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "com.android.settings.wifi.AccessPointDialog:accessPointState"

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 156
    const-string v1, "com.android.settings.wifi.AccessPointDialog:mode"

    iget v2, p0, Lcom/android/settings/wifi/AccessPointDialog;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    const-string v1, "com.android.settings.wifi.AccessPointDialog:autoSecurityAllowed"

    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPointDialog;->mAutoSecurityAllowed:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    const-string v1, "com.android.settings.wifi.AccessPointDialog:customTitle"

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointDialog;->mCustomTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 159
    return-object v0
.end method

.method public setAutoSecurityAllowed(Z)V
    .registers 2
    .parameter "autoSecurityAllowed"

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mAutoSecurityAllowed:Z

    .line 181
    return-void
.end method

.method public setMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 176
    iput p1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mMode:I

    .line 177
    return-void
.end method

.method public setState(Lcom/android/settings/wifi/AccessPointState;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mState:Lcom/android/settings/wifi/AccessPointState;

    .line 169
    return-void
.end method

.method public setTitle(I)V
    .registers 3
    .parameter "titleId"

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 192
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 186
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointDialog;->mCustomTitle:Ljava/lang/CharSequence;

    .line 187
    return-void
.end method
