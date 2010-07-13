.class Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$3;
.super Ljava/lang/Object;
.source "BrcmBtDeviceChooser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->onCreate(Landroid/os/Bundle;)V
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
    .line 183
    iput-object p1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$3;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$3;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->access$000(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setBluetoothEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$3;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->access$100(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;)V

    .line 187
    return-void
.end method
