.class Lcom/android/settings/bluetooth/LocalBluetoothDevice$1;
.super Ljava/lang/Object;
.source "LocalBluetoothDevice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/LocalBluetoothDevice;->askDisconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/LocalBluetoothDevice;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V
    .registers 2
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$1;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$1;->this$0:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->disconnect()V

    .line 407
    return-void
.end method
