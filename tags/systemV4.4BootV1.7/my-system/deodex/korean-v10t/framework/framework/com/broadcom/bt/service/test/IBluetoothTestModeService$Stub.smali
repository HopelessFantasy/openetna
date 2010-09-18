.class public abstract Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;
.super Landroid/os/Binder;
.source "IBluetoothTestModeService.java"

# interfaces
.implements Lcom/broadcom/bt/service/test/IBluetoothTestModeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/test/IBluetoothTestModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.test.IBluetoothTestModeService"

.field static final TRANSACTION_Set_Tx_Rx_Test:I = 0x9

.field static final TRANSACTION_createTestMode:I = 0x1

.field static final TRANSACTION_enterDUTMode:I = 0x7

.field static final TRANSACTION_enterTestMode:I = 0x2

.field static final TRANSACTION_exitCurrentTestMode:I = 0x6

.field static final TRANSACTION_exitDUTMode:I = 0x8

.field static final TRANSACTION_exitTestMode:I = 0x3

.field static final TRANSACTION_getTestMode:I = 0x4

.field static final TRANSACTION_setTraceLevel:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/test/IBluetoothTestModeService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 33
    if-nez p0, :cond_4

    .line 34
    const/4 v1, 0x0

    .line 40
    :goto_3
    return-object v1

    .line 36
    :cond_4
    const-string v1, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    if-eqz v1, :cond_14

    .line 38
    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 40
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
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
    const/4 v4, 0x1

    const-string v5, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    .line 48
    sparse-switch p1, :sswitch_data_ce

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_a
    return v3

    .line 52
    :sswitch_b
    const-string v3, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 53
    goto :goto_a

    .line 57
    :sswitch_12
    const-string v3, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    move-result-object v0

    .line 60
    .local v0, _arg0:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->createTestMode(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I

    move-result v2

    .line 61
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 63
    goto :goto_a

    .line 67
    .end local v0           #_arg0:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;
    .end local v2           #_result:I
    :sswitch_2b
    const-string v3, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->enterTestMode()I

    move-result v2

    .line 69
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 71
    goto :goto_a

    .line 75
    .end local v2           #_result:I
    :sswitch_3c
    const-string v3, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->exitTestMode()I

    move-result v2

    .line 77
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 79
    goto :goto_a

    .line 83
    .end local v2           #_result:I
    :sswitch_4d
    const-string v3, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->getTestMode()I

    move-result v2

    .line 85
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 87
    goto :goto_a

    .line 91
    .end local v2           #_result:I
    :sswitch_5e
    const-string v3, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 95
    .local v0, _arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 96
    .local v1, _arg1:B
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->setTraceLevel(BB)I

    move-result v2

    .line 97
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 99
    goto :goto_a

    .line 103
    .end local v0           #_arg0:B
    .end local v1           #_arg1:B
    .end local v2           #_result:I
    :sswitch_77
    const-string v3, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->exitCurrentTestMode()I

    move-result v2

    .line 105
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 107
    goto :goto_a

    .line 111
    .end local v2           #_result:I
    :sswitch_88
    const-string v3, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->enterDUTMode()I

    move-result v2

    .line 113
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 115
    goto/16 :goto_a

    .line 119
    .end local v2           #_result:I
    :sswitch_9a
    const-string v3, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->exitDUTMode()I

    move-result v2

    .line 121
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 123
    goto/16 :goto_a

    .line 127
    .end local v2           #_result:I
    :sswitch_ac
    const-string v3, "com.broadcom.bt.service.test.IBluetoothTestModeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_cc

    .line 130
    sget-object v3, Lcom/broadcom/bt/service/test/TxRxTestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/test/TxRxTestParams;

    .line 135
    .local v0, _arg0:Lcom/broadcom/bt/service/test/TxRxTestParams;
    :goto_bf
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->Set_Tx_Rx_Test(Lcom/broadcom/bt/service/test/TxRxTestParams;)I

    move-result v2

    .line 136
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 138
    goto/16 :goto_a

    .line 133
    .end local v0           #_arg0:Lcom/broadcom/bt/service/test/TxRxTestParams;
    .end local v2           #_result:I
    :cond_cc
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/broadcom/bt/service/test/TxRxTestParams;
    goto :goto_bf

    .line 48
    :sswitch_data_ce
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_4d
        0x5 -> :sswitch_5e
        0x6 -> :sswitch_77
        0x7 -> :sswitch_88
        0x8 -> :sswitch_9a
        0x9 -> :sswitch_ac
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
