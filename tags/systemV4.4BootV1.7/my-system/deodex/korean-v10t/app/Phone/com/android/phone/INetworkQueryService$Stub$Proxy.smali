.class Lcom/android/phone/INetworkQueryService$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkQueryService.java"

# interfaces
.implements Lcom/android/phone/INetworkQueryService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/INetworkQueryService$Stub;
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
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/phone/INetworkQueryService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 82
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/phone/INetworkQueryService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    const-string v0, "com.android.phone.INetworkQueryService"

    return-object v0
.end method

.method public startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    .registers 7
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 102
    .local v0, _data:Landroid/os/Parcel;
    :try_start_5
    const-string v1, "com.android.phone.INetworkQueryService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 103
    if-eqz p1, :cond_1f

    invoke-interface {p1}, Lcom/android/phone/INetworkQueryServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 104
    iget-object v1, p0, Lcom/android/phone/INetworkQueryService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_21

    .line 107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 109
    return-void

    :cond_1f
    move-object v1, v2

    .line 103
    goto :goto_10

    .line 107
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    .registers 7
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 120
    .local v0, _data:Landroid/os/Parcel;
    :try_start_5
    const-string v1, "com.android.phone.INetworkQueryService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 121
    if-eqz p1, :cond_1f

    invoke-interface {p1}, Lcom/android/phone/INetworkQueryServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 122
    iget-object v1, p0, Lcom/android/phone/INetworkQueryService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_21

    .line 125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 127
    return-void

    :cond_1f
    move-object v1, v2

    .line 121
    goto :goto_10

    .line 125
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
