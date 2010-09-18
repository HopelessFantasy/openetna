.class public Lcom/broadcom/bt/service/framework/ServiceManagerStub;
.super Lcom/broadcom/bt/service/framework/IServiceManager$Stub;
.source "ServiceManagerStub.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "ctx"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/IServiceManager$Stub;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/ServiceManagerStub;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public disableService(Ljava/lang/String;)V
    .registers 2
    .parameter "serviceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->disableService(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public enableService(Ljava/lang/String;)V
    .registers 2
    .parameter "serviceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {p1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->enableService(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public getServiceState(Ljava/lang/String;)I
    .registers 3
    .parameter "serviceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {p1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getServiceState(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
