.class public abstract Landroid/os/INetStatService$Stub;
.super Landroid/os/Binder;
.source "INetStatService.java"

# interfaces
.implements Landroid/os/INetStatService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetStatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetStatService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.INetStatService"

.field static final TRANSACTION_getMobileRxBytes:I = 0x4

.field static final TRANSACTION_getMobileRxPackets:I = 0x2

.field static final TRANSACTION_getMobileTxBytes:I = 0x3

.field static final TRANSACTION_getMobileTxPackets:I = 0x1

.field static final TRANSACTION_getTotalRxBytes:I = 0x8

.field static final TRANSACTION_getTotalRxPackets:I = 0x6

.field static final TRANSACTION_getTotalTxBytes:I = 0x7

.field static final TRANSACTION_getTotalTxPackets:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "android.os.INetStatService"

    invoke-virtual {p0, p0, v0}, Landroid/os/INetStatService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/INetStatService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 31
    if-nez p0, :cond_4

    .line 32
    const/4 v1, 0x0

    .line 38
    :goto_3
    return-object v1

    .line 34
    :cond_4
    const-string v1, "android.os.INetStatService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/INetStatService;

    if-eqz v1, :cond_14

    .line 36
    check-cast v0, Landroid/os/INetStatService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 38
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/os/INetStatService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/INetStatService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 42
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const-string v4, "android.os.INetStatService"

    .line 46
    sparse-switch p1, :sswitch_data_9c

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_a
    return v2

    .line 50
    :sswitch_b
    const-string v2, "android.os.INetStatService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 51
    goto :goto_a

    .line 55
    :sswitch_12
    const-string v2, "android.os.INetStatService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getMobileTxPackets()J

    move-result-wide v0

    .line 57
    .local v0, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v2, v3

    .line 59
    goto :goto_a

    .line 63
    .end local v0           #_result:J
    :sswitch_23
    const-string v2, "android.os.INetStatService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getMobileRxPackets()J

    move-result-wide v0

    .line 65
    .restart local v0       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v2, v3

    .line 67
    goto :goto_a

    .line 71
    .end local v0           #_result:J
    :sswitch_34
    const-string v2, "android.os.INetStatService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getMobileTxBytes()J

    move-result-wide v0

    .line 73
    .restart local v0       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v2, v3

    .line 75
    goto :goto_a

    .line 79
    .end local v0           #_result:J
    :sswitch_45
    const-string v2, "android.os.INetStatService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getMobileRxBytes()J

    move-result-wide v0

    .line 81
    .restart local v0       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v2, v3

    .line 83
    goto :goto_a

    .line 87
    .end local v0           #_result:J
    :sswitch_56
    const-string v2, "android.os.INetStatService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getTotalTxPackets()J

    move-result-wide v0

    .line 89
    .restart local v0       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v2, v3

    .line 91
    goto :goto_a

    .line 95
    .end local v0           #_result:J
    :sswitch_67
    const-string v2, "android.os.INetStatService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getTotalRxPackets()J

    move-result-wide v0

    .line 97
    .restart local v0       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v2, v3

    .line 99
    goto :goto_a

    .line 103
    .end local v0           #_result:J
    :sswitch_78
    const-string v2, "android.os.INetStatService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getTotalTxBytes()J

    move-result-wide v0

    .line 105
    .restart local v0       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v2, v3

    .line 107
    goto :goto_a

    .line 111
    .end local v0           #_result:J
    :sswitch_89
    const-string v2, "android.os.INetStatService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/os/INetStatService$Stub;->getTotalRxBytes()J

    move-result-wide v0

    .line 113
    .restart local v0       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v2, v3

    .line 115
    goto/16 :goto_a

    .line 46
    nop

    :sswitch_data_9c
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_23
        0x3 -> :sswitch_34
        0x4 -> :sswitch_45
        0x5 -> :sswitch_56
        0x6 -> :sswitch_67
        0x7 -> :sswitch_78
        0x8 -> :sswitch_89
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
