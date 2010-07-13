.class Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$5;
.super Landroid/content/BroadcastReceiver;
.source "BrcmBtDeviceChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;)V
    .registers 2
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$5;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v8, -0x3e8

    const/4 v7, 0x0

    .line 337
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, address:Ljava/lang/String;
    const-string v6, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 341
    iget-object v6, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$5;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$5;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    invoke-static {v7}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->access$000(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->access$200(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;I)V

    .line 376
    :cond_24
    :goto_24
    return-void

    .line 343
    :cond_25
    const-string v6, "android.bluetooth.intent.action.REMOTE_NAME_UPDATED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 345
    iget-object v6, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$5;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    invoke-virtual {v6, v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->onDeviceNameUpdated(Ljava/lang/String;)V

    goto :goto_24

    .line 347
    :cond_33
    const-string v6, "android.bluetooth.intent.action.BOND_STATE_CHANGED_ACTION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 349
    const-string v6, "android.bluetooth.intent.BOND_STATE"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 350
    .local v2, bondState:I
    iget-object v6, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$5;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    invoke-virtual {v6, v1, v2}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->onBondingStateChanged(Ljava/lang/String;I)V

    .line 351
    if-nez v2, :cond_24

    .line 353
    const-string v6, "android.bluetooth.intent.REASON"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 354
    .local v5, reason:I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_24

    const/4 v6, 0x2

    if-eq v5, v6, :cond_24

    const/4 v6, 0x4

    if-ne v5, v6, :cond_24

    goto :goto_24

    .line 363
    .end local v2           #bondState:I
    .end local v5           #reason:I
    :cond_58
    const-string v6, "android.bluetooth.intent.action.HEADSET_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 364
    const-string v6, "android.bluetooth.intent.HEADSET_STATE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 365
    .local v3, newState:I
    const-string v6, "android.bluetooth.intent.HEADSET_PREVIOUS_STATE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 366
    .local v4, oldState:I
    iget-object v6, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$5;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    sget-object v7, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-virtual {v6, v7, v1, v3, v4}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;Ljava/lang/String;II)V

    goto :goto_24

    .line 368
    .end local v3           #newState:I
    .end local v4           #oldState:I
    :cond_74
    const-string v6, "android.bluetooth.a2dp.intent.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_90

    .line 369
    const-string v6, "android.bluetooth.a2dp.intent.SINK_STATE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 370
    .restart local v3       #newState:I
    const-string v6, "android.bluetooth.a2dp.intent.SINK_PREVIOUS_STATE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 371
    .restart local v4       #oldState:I
    iget-object v6, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$5;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    sget-object v7, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-virtual {v6, v7, v1, v3, v4}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;Ljava/lang/String;II)V

    goto :goto_24

    .line 373
    .end local v3           #newState:I
    .end local v4           #oldState:I
    :cond_90
    const-string v6, "android.bluetooth.intent.action.REMOTE_DEVICE_DISAPPEARED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 374
    iget-object v6, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$5;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    invoke-virtual {v6, v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->onBtClassChanged(Ljava/lang/String;)V

    goto :goto_24
.end method
