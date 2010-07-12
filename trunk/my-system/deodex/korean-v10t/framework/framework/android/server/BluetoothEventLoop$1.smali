.class Landroid/server/BluetoothEventLoop$1;
.super Landroid/os/Handler;
.source "BluetoothEventLoop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothEventLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothEventLoop;


# direct methods
.method constructor <init>(Landroid/server/BluetoothEventLoop;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 79
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_20

    .line 91
    :cond_5
    :goto_5
    return-void

    .line 81
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 83
    iget-object v1, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-static {v1}, Landroid/server/BluetoothEventLoop;->access$000(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothDeviceService;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/server/BluetoothDeviceService;->createBond(Ljava/lang/String;)Z

    goto :goto_5

    .line 88
    .end local v0           #address:Ljava/lang/String;
    :pswitch_16
    iget-object v1, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-static {v1}, Landroid/server/BluetoothEventLoop;->access$000(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothDeviceService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/server/BluetoothDeviceService;->restart()V

    goto :goto_5

    .line 79
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_6
        :pswitch_16
    .end packed-switch
.end method
