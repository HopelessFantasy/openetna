.class public Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;
.super Ljava/lang/Object;
.source "BluetoothAccessResponse.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothAccessResponse"


# instance fields
.field private mAllow:Z

.field private mFileName:Ljava/lang/String;

.field private mOpCode:B

.field private mRequestedServiceID:B


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "BluetoothAccessResponse"

    const-string v1, "BluetoothAccessResponse Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method


# virtual methods
.method public AccessRequestResponse(Landroid/content/Context;Landroid/content/Intent;Z)V
    .registers 11
    .parameter "ctx"
    .parameter "intent"
    .parameter "allow"

    .prologue
    const/4 v6, 0x0

    .line 55
    const-string v3, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v3

    iput-byte v3, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mRequestedServiceID:B

    .line 57
    const-string v3, "broadcom.android.bluetooth.intent.SERVICE_OPER_CODE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v3

    iput-byte v3, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mOpCode:B

    .line 58
    const-string v3, "broadcom.android.bluetooth.intent.FILE_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mFileName:Ljava/lang/String;

    .line 59
    iput-boolean p3, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mAllow:Z

    .line 61
    const/4 v2, 0x0

    .line 74
    .local v2, serviceName:Ljava/lang/String;
    iget-byte v3, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mRequestedServiceID:B

    packed-switch v3, :pswitch_data_60

    .line 86
    :goto_21
    invoke-static {v2}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager;->getServiceType(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3b

    const/4 v3, 0x1

    move v0, v3

    .line 90
    .local v0, isBluetoothAppService:Z
    :goto_2a
    if-eqz v2, :cond_31

    .line 91
    if-eqz v0, :cond_3d

    .line 94
    invoke-static {v2, p1, p0}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager;->getProxy(Ljava/lang/String;Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    .line 109
    :cond_31
    :goto_31
    return-void

    .line 76
    .end local v0           #isBluetoothAppService:Z
    :pswitch_32
    const-string v2, "bluetooth_opp_service"

    .line 77
    goto :goto_21

    .line 79
    :pswitch_35
    const-string v2, "bluetooth_pbs"

    .line 80
    goto :goto_21

    .line 82
    :pswitch_38
    const-string v2, "bluetooth_ftp"

    goto :goto_21

    :cond_3b
    move v0, v6

    .line 86
    goto :goto_2a

    .line 98
    .restart local v0       #isBluetoothAppService:Z
    :cond_3d
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/framework/BaseProxy;

    .line 99
    .local v1, proxy:Lcom/broadcom/bt/service/framework/BaseProxy;
    invoke-virtual {v1}, Lcom/broadcom/bt/service/framework/BaseProxy;->requiresAccessProcessing()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 100
    iget-byte v3, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mOpCode:B

    iget-boolean v4, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mAllow:Z

    iget-object v5, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lcom/broadcom/bt/service/framework/BaseProxy;->setAccess(IZLjava/lang/Object;)V

    .line 102
    :cond_52
    iput-byte v6, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mRequestedServiceID:B

    .line 103
    iput-byte v6, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mOpCode:B

    .line 104
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mFileName:Ljava/lang/String;

    .line 105
    iput-boolean v6, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mAllow:Z

    .line 106
    invoke-virtual {v1}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V

    goto :goto_31

    .line 74
    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_32
        :pswitch_35
        :pswitch_38
    .end packed-switch
.end method

.method public onProxyAvailable(Ljava/lang/Object;)V
    .registers 8
    .parameter "proxyObject"

    .prologue
    const/4 v5, 0x0

    .line 38
    move-object v0, p1

    check-cast v0, Lcom/broadcom/bt/service/framework/BaseProxy;

    move-object v1, v0

    .line 43
    .local v1, proxy:Lcom/broadcom/bt/service/framework/BaseProxy;
    invoke-virtual {v1}, Lcom/broadcom/bt/service/framework/BaseProxy;->requiresAccessProcessing()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 44
    iget-byte v2, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mOpCode:B

    iget-boolean v3, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mAllow:Z

    iget-object v4, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/broadcom/bt/service/framework/BaseProxy;->setAccess(IZLjava/lang/Object;)V

    .line 46
    :cond_14
    iput-byte v5, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mRequestedServiceID:B

    .line 47
    iput-byte v5, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mOpCode:B

    .line 48
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mFileName:Ljava/lang/String;

    .line 49
    iput-boolean v5, p0, Lcom/broadcom/android/bluetooth/BluetoothAccessResponse;->mAllow:Z

    .line 50
    invoke-virtual {v1}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V

    .line 51
    return-void
.end method
