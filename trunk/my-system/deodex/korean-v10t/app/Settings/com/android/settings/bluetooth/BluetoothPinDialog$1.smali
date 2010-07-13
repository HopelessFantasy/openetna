.class Lcom/android/settings/bluetooth/BluetoothPinDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPinDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothPinDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothPinDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothPinDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPinDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 62
    const-string v1, "android.bluetooth.intent.action.PAIRING_CANCEL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 70
    :cond_c
    :goto_c
    return-void

    .line 66
    :cond_d
    const-string v1, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPinDialog;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothPinDialog;->access$000(Lcom/android/settings/bluetooth/BluetoothPinDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 68
    :cond_21
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPinDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPinDialog;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothPinDialog;->access$100(Lcom/android/settings/bluetooth/BluetoothPinDialog;)V

    goto :goto_c
.end method
