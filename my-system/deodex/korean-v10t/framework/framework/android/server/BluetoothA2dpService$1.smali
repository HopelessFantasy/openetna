.class Landroid/server/BluetoothA2dpService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v10, -0x3e8

    const/4 v9, 0x0

    .line 124
    const-string v6, "BluetoothA2dpService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Receive intent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, address:Ljava/lang/String;
    const-string v6, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 129
    const-string v6, "android.bluetooth.intent.BLUETOOTH_STATE"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 131
    .local v5, state:I
    packed-switch v5, :pswitch_data_84

    .line 160
    .end local v5           #state:I
    :cond_36
    :goto_36
    :pswitch_36
    return-void

    .line 133
    .restart local v5       #state:I
    :pswitch_37
    iget-object v6, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static {v6}, Landroid/server/BluetoothA2dpService;->access$000(Landroid/server/BluetoothA2dpService;)V

    goto :goto_36

    .line 136
    :pswitch_3d
    iget-object v6, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static {v6}, Landroid/server/BluetoothA2dpService;->access$100(Landroid/server/BluetoothA2dpService;)V

    goto :goto_36

    .line 139
    :pswitch_43
    iget-object v6, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static {v6}, Landroid/server/BluetoothA2dpService;->access$200(Landroid/server/BluetoothA2dpService;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->setBluetoothA2dpOn(Z)V

    goto :goto_36

    .line 142
    .end local v5           #state:I
    :cond_4d
    const-string v6, "android.bluetooth.intent.action.BOND_STATE_CHANGED_ACTION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 143
    const-string v6, "android.bluetooth.intent.BOND_STATE"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 145
    .local v2, bondState:I
    packed-switch v2, :pswitch_data_90

    goto :goto_36

    .line 156
    :pswitch_5f
    iget-object v6, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v6, v1, v9}, Landroid/server/BluetoothA2dpService;->setSinkPriority(Ljava/lang/String;I)I

    goto :goto_36

    .line 147
    :pswitch_65
    iget-object v6, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-static {v6}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/bluetooth/BluetoothDevice;->getRemoteClass(Ljava/lang/String;)I

    move-result v3

    .line 148
    .local v3, btClass:I
    and-int/lit16 v4, v3, 0x1f00

    .line 149
    .local v4, btMajor:I
    const/16 v6, 0x400

    if-ne v4, v6, :cond_7d

    .line 150
    iget-object v6, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    const/16 v7, 0x64

    invoke-virtual {v6, v1, v7}, Landroid/server/BluetoothA2dpService;->setSinkPriority(Ljava/lang/String;I)I

    goto :goto_36

    .line 152
    :cond_7d
    iget-object v6, p0, Landroid/server/BluetoothA2dpService$1;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v6, v1, v9}, Landroid/server/BluetoothA2dpService;->setSinkPriority(Ljava/lang/String;I)I

    goto :goto_36

    .line 131
    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_43
        :pswitch_36
        :pswitch_37
        :pswitch_3d
    .end packed-switch

    .line 145
    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_65
        :pswitch_5f
    .end packed-switch
.end method
