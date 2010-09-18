.class public Lcom/broadcom/bt/service/dun/BluetoothDUN;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothDUN.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothDUN"


# instance fields
.field private final mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/broadcom/bt/service/dun/IBluetoothDUN;Landroid/content/ServiceConnection;)V
    .registers 4
    .parameter "ctx"
    .parameter "service"
    .parameter "appServiceConn"

    .prologue
    .line 65
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 66
    iput-object p2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/dun/IBluetoothDUN;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    .line 78
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 89
    return-void
.end method

.method public registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    if-eqz v0, :cond_9

    .line 95
    :try_start_4
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/dun/IBluetoothDUN;->registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 100
    :cond_9
    :goto_9
    return-void

    .line 96
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public requiresAccessProcessing()Z
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    if-eqz v0, :cond_9

    .line 105
    :try_start_4
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUN;->mService:Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/dun/IBluetoothDUN;->unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 110
    :cond_9
    :goto_9
    return-void

    .line 106
    :catch_a
    move-exception v0

    goto :goto_9
.end method
