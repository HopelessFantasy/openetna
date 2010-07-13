.class Lcom/broadcom/bt/server/BrcmBtServiceLoader$1;
.super Landroid/content/BroadcastReceiver;
.source "BrcmBtServiceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/server/BrcmBtServiceLoader;->loadRequiredSystemResources(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v4, "BrcmBtServiceLoader"

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 115
    const-string v2, "android.bluetooth.intent.BLUETOOTH_STATE"

    const/16 v3, -0x3e8

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 118
    .local v1, state:I
    packed-switch v1, :pswitch_data_38

    .line 128
    const-string v2, "BrcmBtServiceLoader"

    const-string v2, "***Received Bluetooth UNKNOWN_STATE_CHANGE Event****"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v1           #state:I
    :cond_20
    :goto_20
    return-void

    .line 120
    .restart local v1       #state:I
    :pswitch_21
    const-string v2, "BrcmBtServiceLoader"

    const-string v2, "***Received Bluetooth turning OFF Event****"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->onBluetoothDisabled()V

    goto :goto_20

    .line 124
    :pswitch_2c
    const-string v2, "BrcmBtServiceLoader"

    const-string v2, "***Received Bluetooth ON Event****"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->onBluetoothEnabled()V

    goto :goto_20

    .line 118
    nop

    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_2c
        :pswitch_21
    .end packed-switch
.end method
