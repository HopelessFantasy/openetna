.class public Lcom/android/settings/bluetooth/BluetoothSimplePairingRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSimplePairingRequest.java"


# static fields
.field private static final DEFAULT_PAIRING_MODE:I = 0x2

.field private static final DEFAULT_PINCODE:I = 0x0

.field public static final NOTIFICATION_ID:I = 0x1080080

.field private static final SIMPLE_PAIRING_MODE_APPROVE:I = 0x2

.field private static final SIMPLE_PAIRING_MODE_KEYBOARD:I = 0x3

.field private static final SIMPLE_PAIRING_MODE_MATCH:I = 0x1

.field private static final SIMPLE_PAIRING_UPDATE_TYPE_ALL_DONE:I = 0x1

.field private static final SIMPLE_PAIRING_UPDATE_TYPE_KEYPRESSED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothSimplePairingRequest"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 23
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 79
    const-string v16, "BluetoothSimplePairingRequest"

    const-string v17, "onReceive"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, action:Ljava/lang/String;
    const-string v16, "android.bluetooth.intent.action.SIMPLE_PAIRING_CANCEL"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_33

    .line 85
    const-string v16, "BluetoothSimplePairingRequest"

    const-string v17, "SSP mismatch"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v16, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 90
    .local v8, manager:Landroid/app/NotificationManager;
    const v16, 0x1080080

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 162
    .end local v8           #manager:Landroid/app/NotificationManager;
    :cond_32
    :goto_32
    return-void

    .line 91
    :cond_33
    const-string v16, "android.bluetooth.intent.action.SIMPLE_PAIRING_REQUEST"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_32

    .line 93
    invoke-static/range {p1 .. p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v7

    .line 97
    .local v7, localManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    const-string v16, "android.bluetooth.intent.ADDRESS"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, address:Ljava/lang/String;
    const-string v16, "android.bluetooth.intent.PAIRING_TYPE"

    const/16 v17, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 100
    .local v11, pairingType:I
    const-string v16, "android.bluetooth.intent.PINCODE"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 103
    .local v13, pinCode:I
    const-string v16, "BluetoothSimplePairingRequest"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Selecting SSP mode "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 107
    .local v14, pinIntent:Landroid/content/Intent;
    packed-switch v11, :pswitch_data_194

    .line 120
    :goto_8b
    const-string v16, "android.bluetooth.intent.ADDRESS"

    move-object v0, v14

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v16, "android.bluetooth.intent.PINCODE"

    move-object v0, v14

    move-object/from16 v1, v16

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v16, "android.bluetooth.intent.action.SIMPLE_PAIRING_REQUEST"

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const/high16 v16, 0x1000

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 125
    invoke-virtual {v7}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v16

    if-eqz v16, :cond_e3

    .line 128
    const-string v16, "BluetoothSimplePairingRequest"

    const-string v17, "Launch SSP dialog immediately"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_32

    .line 109
    :pswitch_c2
    const-class v16, Lcom/android/settings/bluetooth/BluetoothPinMatchDialog;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_8b

    .line 112
    :pswitch_cd
    const-class v16, Lcom/android/settings/bluetooth/BluetoothJustWorksDialog;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_8b

    .line 115
    :pswitch_d8
    const-class v16, Lcom/android/settings/bluetooth/BluetoothKeyboardDialog;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_8b

    .line 132
    :cond_e3
    const-string v16, "BluetoothSimplePairingRequest"

    const-string v17, "SSP notify..."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 135
    .local v15, res:Landroid/content/res/Resources;
    new-instance v10, Landroid/app/Notification;

    const v16, 0x1080080

    const v17, 0x7f080056

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object v0, v10

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 140
    .local v10, notification:Landroid/app/Notification;
    const/16 v16, 0x0

    const/high16 v17, 0x4000

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object v2, v14

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 143
    .local v12, pending:Landroid/app/PendingIntent;
    const-string v16, "android.bluetooth.intent.NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 144
    .local v9, name:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_135

    .line 145
    invoke-virtual {v7}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getLocalDeviceManager()Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 149
    :cond_135
    const v16, 0x7f080057

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f080058

    move-object v0, v15

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 153
    move-object v0, v10

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x10

    move/from16 v0, v16

    move-object v1, v10

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 155
    const-string v16, "content://settings/system/notification_sound"

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v10

    iput-object v0, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 157
    const-string v16, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 159
    .restart local v8       #manager:Landroid/app/NotificationManager;
    const v16, 0x1080080

    move-object v0, v8

    move/from16 v1, v16

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_32

    .line 107
    :pswitch_data_194
    .packed-switch 0x1
        :pswitch_c2
        :pswitch_cd
        :pswitch_d8
    .end packed-switch
.end method
