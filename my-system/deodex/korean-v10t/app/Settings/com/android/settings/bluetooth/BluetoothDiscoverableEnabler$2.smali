.class Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$2;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->access$100(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 70
    return-void
.end method