.class public Lcom/android/settings/bluetooth/BluetoothRequestService;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothRequestService.java"


# static fields
.field private static final DBG:Z = false

.field public static final NOTIFICATION_ID:I = 0x1080080

.field private static final TAG:Ljava/lang/String; = "BluetoothServiceRequest"


# instance fields
.field private mInForground:Z

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mNotificationMsg:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mInForground:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    const v11, 0x1080080

    const/4 v10, 0x0

    const-string v12, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    const-string v9, "BluetoothServiceRequest"

    .line 95
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "onReceive"

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, action:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mResources:Landroid/content/res/Resources;

    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 107
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v7, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v6

    .line 109
    .local v6, requestedServiceID:I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_43

    .line 110
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "Received access request for OPP Push server. Ignoring the request from Settings app"

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v6           #requestedServiceID:I
    :goto_42
    return-void

    .line 114
    .restart local v6       #requestedServiceID:I
    :cond_43
    const-class v7, Lcom/android/settings/bluetooth/BluetoothRequestServiceDialog;

    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 116
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f08005e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mNotificationMsg:Ljava/lang/String;

    .line 118
    const-string v7, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {p2, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const/high16 v7, 0x1000

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 158
    .end local v6           #requestedServiceID:I
    :goto_5d
    const-string v7, "service.brcm.bt.secure_mode"

    const-string v8, "property not found"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, mSecureModeProperty:Ljava/lang/String;
    if-eqz v1, :cond_6f

    const-string v7, "true"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10a

    .line 162
    :cond_6f
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_42

    .line 122
    .end local v1           #mSecureModeProperty:Ljava/lang/String;
    :cond_73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "broadcom.android.bluetooth.intent.action.BT_FTPS_AUTHEN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 124
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_FTPS_AUTHEN"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 126
    :cond_87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "broadcom.android.bluetooth.intent.action.BT_FTPS_OPENTED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9b

    .line 128
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_FTPS_OPENTED"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 130
    :cond_9b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "broadcom.android.bluetooth.intent.action.BT_FTPS_CLOSED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_af

    .line 132
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_FTPS_CLOSED"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 134
    :cond_af
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "broadcom.android.bluetooth.intent.action.BT_FILE_TRSF_IN_PRGS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c3

    .line 136
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_FILE_TRSF_IN_PRGS"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 138
    :cond_c3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "broadcom.android.bluetooth.intent.action.BT_FTPS_GET_CMPL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 140
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_FTPS_GET_CMPL"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 142
    :cond_d7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "broadcom.android.bluetooth.intent.action.BT_FTPS_PUT_CMPL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ec

    .line 144
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_FTPS_PUT_CMPL"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5d

    .line 146
    :cond_ec
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "broadcom.android.bluetooth.intent.action.BT_FTPS_DEL_CMPL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_101

    .line 148
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "Get Action Intent broadcom.android.bluetooth.intent.action.BT_FTPS_DEL_CMPL"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5d

    .line 152
    :cond_101
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "Unknown Intent "

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5d

    .line 163
    .restart local v1       #mSecureModeProperty:Ljava/lang/String;
    :cond_10a
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_11e

    .line 166
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "Launch service dialog immediately"

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_42

    .line 170
    :cond_11e
    const-string v7, "BluetoothServiceRequest"

    const-string v7, "Service notify..."

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v4, Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f08005c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v4, v11, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 176
    .local v4, notification:Landroid/app/Notification;
    const/high16 v7, 0x4000

    invoke-static {p1, v10, p2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 178
    .local v5, pending:Landroid/app/PendingIntent;
    const-string v7, "broadcom.android.bluetooth.intent.RMT_DEV_NAME"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_159

    .line 181
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getLocalDeviceManager()Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    move-result-object v7

    const-string v8, "broadcom.android.bluetooth.intent.RMT_DEV_ADDR"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    :cond_159
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f08005d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothRequestService;->mNotificationMsg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, p1, v7, v8, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 187
    iget v7, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v4, Landroid/app/Notification;->flags:I

    .line 189
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 191
    .local v2, manager:Landroid/app/NotificationManager;
    invoke-virtual {v2, v11, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_42
.end method
