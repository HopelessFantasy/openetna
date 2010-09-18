.class Lcom/android/settings/bluetooth/BluetoothNamePreference$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothNamePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothNamePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothNamePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothNamePreference;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothNamePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.bluetooth.intent.action.NAME_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 48
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothNamePreference;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->access$000(Lcom/android/settings/bluetooth/BluetoothNamePreference;)V

    .line 54
    :cond_11
    :goto_11
    return-void

    .line 49
    :cond_12
    const-string v1, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "android.bluetooth.intent.BLUETOOTH_STATE"

    const/16 v2, -0x3e8

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 52
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothNamePreference;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->access$000(Lcom/android/settings/bluetooth/BluetoothNamePreference;)V

    goto :goto_11
.end method
