.class Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$6$1;
.super Ljava/lang/Object;
.source "BrcmBtDeviceChooser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$6;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$6;)V
    .registers 2
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$6$1;->this$1:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$6$1;->this$1:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$6;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$6;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->access$000(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->startScanning(Z)V

    .line 385
    return-void
.end method
