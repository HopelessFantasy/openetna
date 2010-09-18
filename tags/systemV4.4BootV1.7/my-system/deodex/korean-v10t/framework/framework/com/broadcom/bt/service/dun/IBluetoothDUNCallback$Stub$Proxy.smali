.class Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothDUNCallback.java"

# interfaces
.implements Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .parameter "remote"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 74
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    const-string v0, "com.broadcom.bt.service.dun.IBluetoothDUNCallback"

    return-object v0
.end method

.method public onPortStateChangeEvent(BB)V
    .registers 8
    .parameter "appId"
    .parameter "portState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 86
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 88
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.broadcom.bt.service.dun.IBluetoothDUNCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 90
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 91
    iget-object v2, p0, Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 92
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_24

    .line 95
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 96
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 98
    return-void

    .line 95
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 96
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 95
    throw v2
.end method
