.class public Lcom/android/settings/bluetooth/BluetoothNamePreference;
.super Landroid/preference/EditTextPreference;
.source "BluetoothNamePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothNamePreference"


# instance fields
.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothNamePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference$1;-><init>(Lcom/android/settings/bluetooth/BluetoothNamePreference;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 62
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->setSummaryToName()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothNamePreference;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->setSummaryToName()V

    return-void
.end method

.method private setSummaryToName()V
    .registers 3

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 78
    .local v0, manager:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 79
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->setText(Ljava/lang/String;)V

    .line 84
    :cond_1a
    return-void
.end method


# virtual methods
.method public pause()V
    .registers 3

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 74
    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .registers 4
    .parameter "value"

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 90
    .local v0, manager:Landroid/bluetooth/BluetoothDevice;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 91
    const/4 v1, 0x0

    .line 96
    :goto_d
    return v1

    .line 93
    :cond_e
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setName(Ljava/lang/String;)Z

    .line 96
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public resume()V
    .registers 4

    .prologue
    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v1, "android.bluetooth.intent.action.NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    return-void
.end method
