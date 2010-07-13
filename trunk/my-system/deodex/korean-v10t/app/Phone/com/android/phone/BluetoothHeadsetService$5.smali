.class Lcom/android/phone/BluetoothHeadsetService$5;
.super Landroid/bluetooth/IBluetoothDeviceCallback$Stub;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHeadsetService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHeadsetService;)V
    .registers 2
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$5;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothDeviceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateBondingResult(Ljava/lang/String;I)V
    .registers 3
    .parameter "address"
    .parameter "result"

    .prologue
    .line 446
    return-void
.end method

.method public onEnableResult(I)V
    .registers 2
    .parameter "result"

    .prologue
    .line 447
    return-void
.end method

.method public onGetRemoteServiceChannelResult(Ljava/lang/String;I)V
    .registers 6
    .parameter "address"
    .parameter "channel"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$5;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$900(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 445
    return-void
.end method
