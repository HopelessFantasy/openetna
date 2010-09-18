.class public Lcom/android/settings/bluetooth/BluetoothPinRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPinRequest.java"


# static fields
.field public static final NOTIFICATION_ID:I = 0x1080080

.field public static final mPopUpDialogAlways:Z = true


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v7, "android.bluetooth.intent.action.PAIRING_REQUEST"

    const-string v6, "android.bluetooth.intent.ADDRESS"

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.bluetooth.intent.action.PAIRING_REQUEST"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 55
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    .line 57
    .local v2, localManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    const-string v5, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, address:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v4, pinIntent:Landroid/content/Intent;
    const-class v5, Lcom/android/settings/bluetooth/BluetoothPinDialog;

    invoke-virtual {v4, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 60
    const-string v5, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v5, "android.bluetooth.intent.action.PAIRING_REQUEST"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_39

    .line 66
    :cond_39
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 105
    .end local v1           #address:Ljava/lang/String;
    .end local v2           #localManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .end local v4           #pinIntent:Landroid/content/Intent;
    :cond_3c
    :goto_3c
    return-void

    .line 98
    :cond_3d
    const-string v5, "android.bluetooth.intent.action.PAIRING_CANCEL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 101
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 103
    .local v3, manager:Landroid/app/NotificationManager;
    const v5, 0x1080080

    invoke-virtual {v3, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_3c
.end method
