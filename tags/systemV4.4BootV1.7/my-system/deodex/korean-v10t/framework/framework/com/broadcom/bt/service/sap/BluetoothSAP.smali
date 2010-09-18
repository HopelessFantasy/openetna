.class public Lcom/broadcom/bt/service/sap/BluetoothSAP;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothSAP.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothSAP"


# instance fields
.field private final mService:Lcom/broadcom/bt/service/sap/IBluetoothSAP;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/broadcom/bt/service/sap/IBluetoothSAP;Landroid/content/ServiceConnection;)V
    .registers 4
    .parameter "ctx"
    .parameter "service"
    .parameter "appServiceConn"

    .prologue
    .line 66
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 67
    iput-object p2, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mService:Lcom/broadcom/bt/service/sap/IBluetoothSAP;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/sap/IBluetoothSAP;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mService:Lcom/broadcom/bt/service/sap/IBluetoothSAP;

    .line 81
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 103
    return-void
.end method

.method public registerCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mService:Lcom/broadcom/bt/service/sap/IBluetoothSAP;

    if-eqz v0, :cond_9

    .line 109
    :try_start_4
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mService:Lcom/broadcom/bt/service/sap/IBluetoothSAP;

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/sap/IBluetoothSAP;->registerCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 114
    :cond_9
    :goto_9
    return-void

    .line 110
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public requiresAccessProcessing()Z
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public setAccess(IZLjava/lang/Object;)V
    .registers 4
    .parameter "opCode"
    .parameter "allow"
    .parameter "name"

    .prologue
    .line 99
    return-void
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mService:Lcom/broadcom/bt/service/sap/IBluetoothSAP;

    if-eqz v0, :cond_9

    .line 119
    :try_start_4
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mService:Lcom/broadcom/bt/service/sap/IBluetoothSAP;

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/sap/IBluetoothSAP;->unregisterCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 124
    :cond_9
    :goto_9
    return-void

    .line 120
    :catch_a
    move-exception v0

    goto :goto_9
.end method
