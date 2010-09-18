.class Landroid/app/IInstrumentationWatcher$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInstrumentationWatcher.java"

# interfaces
.implements Landroid/app/IInstrumentationWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IInstrumentationWatcher$Stub;
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
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Landroid/app/IInstrumentationWatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 107
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Landroid/app/IInstrumentationWatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    const-string v0, "android.app.IInstrumentationWatcher"

    return-object v0
.end method

.method public instrumentationFinished(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .registers 9
    .parameter "name"
    .parameter "resultCode"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 146
    .local v0, _data:Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.app.IInstrumentationWatcher"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 147
    if-eqz p1, :cond_2c

    .line 148
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 154
    :goto_13
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    if-eqz p3, :cond_36

    .line 156
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 162
    :goto_20
    iget-object v1, p0, Landroid/app/IInstrumentationWatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_31

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    return-void

    .line 152
    :cond_2c
    const/4 v1, 0x0

    :try_start_2d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_13

    .line 165
    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    .line 160
    :cond_36
    const/4 v1, 0x0

    :try_start_37
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_31

    goto :goto_20
.end method

.method public instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .registers 9
    .parameter "name"
    .parameter "resultCode"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 120
    .local v0, _data:Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.app.IInstrumentationWatcher"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 121
    if-eqz p1, :cond_2c

    .line 122
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 128
    :goto_13
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    if-eqz p3, :cond_36

    .line 130
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 136
    :goto_20
    iget-object v1, p0, Landroid/app/IInstrumentationWatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_31

    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 141
    return-void

    .line 126
    :cond_2c
    const/4 v1, 0x0

    :try_start_2d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_13

    .line 139
    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    .line 134
    :cond_36
    const/4 v1, 0x0

    :try_start_37
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_31

    goto :goto_20
.end method
