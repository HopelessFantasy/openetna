.class Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$7;
.super Ljava/lang/Object;
.source "BrcmBtDeviceChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 421
    iput-object p1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$7;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 422
    iget-object v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$7;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->access$000(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 423
    .local v0, manager:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 424
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelDiscovery()V

    .line 428
    :goto_13
    return-void

    .line 426
    :cond_14
    iget-object v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$7;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->finish()V

    goto :goto_13
.end method
