.class Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEventRedirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEventRedirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, address:Ljava/lang/String;
    const-string v8, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 54
    const-string v8, "android.bluetooth.intent.BLUETOOTH_STATE"

    const/16 v9, -0x3e8

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 56
    .local v7, state:I
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    invoke-static {v8}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setBluetoothStateInt(I)V

    .line 111
    .end local v7           #state:I
    :cond_23
    :goto_23
    return-void

    .line 57
    :cond_24
    const-string v8, "android.bluetooth.intent.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 58
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    invoke-static {v8}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->onScanningStateChanged(Z)V

    goto :goto_23

    .line 60
    :cond_37
    const-string v8, "android.bluetooth.intent.action.DISCOVERY_COMPLETED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 61
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    invoke-static {v8}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->onScanningStateChanged(Z)V

    goto :goto_23

    .line 63
    :cond_4a
    const-string v8, "android.bluetooth.intent.action.REMOTE_DEVICE_FOUND"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_68

    .line 64
    const-string v8, "android.bluetooth.intent.RSSI"

    const/16 v9, -0x8000

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v6

    .line 65
    .local v6, rssi:S
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    invoke-static {v8}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getLocalDeviceManager()Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    move-result-object v8

    invoke-virtual {v8, v1, v6}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->onDeviceAppeared(Ljava/lang/String;S)V

    goto :goto_23

    .line 67
    .end local v6           #rssi:S
    :cond_68
    const-string v8, "android.bluetooth.intent.action.REMOTE_DEVICE_DISAPPEARED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 68
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    invoke-static {v8}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getLocalDeviceManager()Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->onDeviceDisappeared(Ljava/lang/String;)V

    goto :goto_23

    .line 70
    :cond_7e
    const-string v8, "android.bluetooth.intent.action.REMOTE_NAME_UPDATED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_94

    .line 71
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    invoke-static {v8}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getLocalDeviceManager()Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->onDeviceNameUpdated(Ljava/lang/String;)V

    goto :goto_23

    .line 73
    :cond_94
    const-string v8, "android.bluetooth.intent.action.BOND_STATE_CHANGED_ACTION"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d3

    .line 74
    const-string v8, "android.bluetooth.intent.BOND_STATE"

    const/16 v9, -0x3e8

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 76
    .local v2, bondState:I
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    invoke-static {v8}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getLocalDeviceManager()Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->onBondingStateChanged(Ljava/lang/String;I)V

    .line 77
    if-nez v2, :cond_23

    .line 78
    const-string v8, "android.bluetooth.intent.REASON"

    const/16 v9, -0x3e8

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 79
    .local v5, reason:I
    const/4 v8, 0x1

    if-eq v5, v8, :cond_c4

    const/4 v8, 0x2

    if-eq v5, v8, :cond_c4

    const/4 v8, 0x4

    if-ne v5, v8, :cond_23

    .line 82
    :cond_c4
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    invoke-static {v8}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getLocalDeviceManager()Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    move-result-object v8

    invoke-virtual {v8, v1, v5}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->onBondingError(Ljava/lang/String;I)V

    goto/16 :goto_23

    .line 86
    .end local v2           #bondState:I
    .end local v5           #reason:I
    :cond_d3
    const-string v8, "android.bluetooth.intent.action.HEADSET_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_106

    .line 87
    const-string v8, "android.bluetooth.intent.HEADSET_STATE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 88
    .local v3, newState:I
    const-string v8, "android.bluetooth.intent.HEADSET_PREVIOUS_STATE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 89
    .local v4, oldState:I
    if-nez v3, :cond_f5

    const/4 v8, 0x1

    if-ne v4, v8, :cond_f5

    .line 91
    const-string v8, "BluetoothEventRedirector"

    const-string v9, "Failed to connect BT headset"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_f5
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    invoke-static {v8}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getLocalDeviceManager()Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    move-result-object v8

    sget-object v9, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-virtual {v8, v1, v9, v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->onProfileStateChanged(Ljava/lang/String;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;II)V

    goto/16 :goto_23

    .line 97
    .end local v3           #newState:I
    .end local v4           #oldState:I
    :cond_106
    const-string v8, "android.bluetooth.a2dp.intent.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_139

    .line 98
    const-string v8, "android.bluetooth.a2dp.intent.SINK_STATE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 99
    .restart local v3       #newState:I
    const-string v8, "android.bluetooth.a2dp.intent.SINK_PREVIOUS_STATE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 100
    .restart local v4       #oldState:I
    if-nez v3, :cond_128

    const/4 v8, 0x1

    if-ne v4, v8, :cond_128

    .line 102
    const-string v8, "BluetoothEventRedirector"

    const-string v9, "Failed to connect BT A2DP"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_128
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    invoke-static {v8}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getLocalDeviceManager()Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    move-result-object v8

    sget-object v9, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-virtual {v8, v1, v9, v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->onProfileStateChanged(Ljava/lang/String;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;II)V

    goto/16 :goto_23

    .line 107
    .end local v3           #newState:I
    .end local v4           #oldState:I
    :cond_139
    const-string v8, "android.bluetooth.intent.action.REMOTE_DEVICE_DISAPPEARED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 108
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    invoke-static {v8}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getLocalDeviceManager()Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->onBtClassChanged(Ljava/lang/String;)V

    goto/16 :goto_23
.end method
