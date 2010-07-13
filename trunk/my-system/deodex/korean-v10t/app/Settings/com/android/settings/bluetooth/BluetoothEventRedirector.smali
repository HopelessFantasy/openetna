.class public Lcom/android/settings/bluetooth/BluetoothEventRedirector;
.super Ljava/lang/Object;
.source "BluetoothEventRedirector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothEventRedirector"

.field private static final V:Z


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V
    .registers 3
    .parameter "localBluetoothManager"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEventRedirector$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothEventRedirector;)Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    return-object v0
.end method


# virtual methods
.method public start()V
    .registers 4

    .prologue
    const-string v2, "android.bluetooth.intent.action.REMOTE_DEVICE_DISAPPEARED"

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v1, "android.bluetooth.intent.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v1, "android.bluetooth.intent.action.DISCOVERY_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "android.bluetooth.intent.action.REMOTE_DEVICE_DISAPPEARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "android.bluetooth.intent.action.REMOTE_DEVICE_FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v1, "android.bluetooth.intent.action.REMOTE_NAME_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "android.bluetooth.intent.action.BOND_STATE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "android.bluetooth.a2dp.intent.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "android.bluetooth.intent.action.HEADSET_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "android.bluetooth.intent.action.REMOTE_DEVICE_DISAPPEARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 144
    return-void
.end method
