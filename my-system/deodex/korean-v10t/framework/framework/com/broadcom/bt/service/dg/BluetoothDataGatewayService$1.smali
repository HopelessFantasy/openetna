.class Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDataGatewayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v4, "BluetoothDataGatewayService"

    .line 183
    const-string v2, "BluetoothDataGatewayService"

    const-string v2, "#### DataGateway Service Received message  ####"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 186
    const-string v2, "android.bluetooth.intent.BLUETOOTH_STATE"

    const/16 v3, -0x3e8

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 187
    .local v1, state:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2c

    .line 188
    const-string v2, "BluetoothDataGatewayService"

    const-string v2, "#### Enable Data Gateway Server ####"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v2, p0, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService$1;->this$0:Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->dataGatewayEnable()V

    .line 193
    .end local v1           #state:I
    :cond_2c
    return-void
.end method
