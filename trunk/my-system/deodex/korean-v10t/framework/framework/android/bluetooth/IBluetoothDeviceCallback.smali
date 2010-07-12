.class public interface abstract Landroid/bluetooth/IBluetoothDeviceCallback;
.super Ljava/lang/Object;
.source "IBluetoothDeviceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothDeviceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGetRemoteServiceChannelResult(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
