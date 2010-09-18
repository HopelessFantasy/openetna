.class public abstract Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;
.super Landroid/os/Binder;
.source "IBluetoothPrinterService.java"

# interfaces
.implements Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

.field static final TRANSACTION_abort:I = 0x8

.field static final TRANSACTION_cancelAll:I = 0xa

.field static final TRANSACTION_cancelBppStatus:I = 0xb

.field static final TRANSACTION_cancelTask:I = 0x9

.field static final TRANSACTION_getAllPrintJobHistory:I = 0xd

.field static final TRANSACTION_getCapabilities:I = 0x3

.field static final TRANSACTION_getPrintJobHistory:I = 0xc

.field static final TRANSACTION_obexAuthenticationResponse:I = 0x4

.field static final TRANSACTION_partialImageResponse:I = 0x6

.field static final TRANSACTION_print:I = 0x5

.field static final TRANSACTION_refObjectResponse:I = 0x7

.field static final TRANSACTION_registerClientCallback:I = 0x1

.field static final TRANSACTION_removeAllPrintJobHistory:I = 0xf

.field static final TRANSACTION_removePrintJobHistory:I = 0xe

.field static final TRANSACTION_unregisterClientCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 32
    if-nez p0, :cond_4

    .line 33
    const/4 v1, 0x0

    .line 39
    :goto_3
    return-object v1

    .line 35
    :cond_4
    const-string v1, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    if-eqz v1, :cond_14

    .line 37
    check-cast v0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 39
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 43
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
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
    .line 47
    sparse-switch p1, :sswitch_data_200

    .line 228
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_7
    return v3

    .line 51
    :sswitch_8
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    const/4 v3, 0x1

    goto :goto_7

    .line 56
    :sswitch_12
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;

    move-result-object v4

    .line 59
    .local v4, _arg0:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->registerClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z

    move-result v16

    .line 60
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v16, :cond_37

    const/4 v3, 0x1

    :goto_2f
    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    const/4 v3, 0x1

    goto :goto_7

    .line 61
    :cond_37
    const/4 v3, 0x0

    goto :goto_2f

    .line 66
    .end local v4           #_arg0:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;
    .end local v16           #_result:Z
    :sswitch_39
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;

    move-result-object v4

    .line 69
    .restart local v4       #_arg0:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->unregisterClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z

    move-result v16

    .line 70
    .restart local v16       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v16, :cond_5e

    const/4 v3, 0x1

    :goto_56
    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    const/4 v3, 0x1

    goto :goto_7

    .line 71
    :cond_5e
    const/4 v3, 0x0

    goto :goto_56

    .line 76
    .end local v4           #_arg0:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;
    .end local v16           #_result:Z
    :sswitch_60
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 81
    .local v5, _arg1:I
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->getCapabilities(Ljava/lang/String;I)V

    .line 82
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    const/4 v3, 0x1

    goto :goto_7

    .line 87
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:I
    :sswitch_7c
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 91
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->obexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 98
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_99
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 102
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 104
    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 106
    .local v6, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 108
    .local v7, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 112
    .local v9, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_107

    .line 113
    sget-object v3, Lcom/broadcom/bt/service/bpp/BipParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/broadcom/bt/service/bpp/BipParameters;

    .line 119
    .local v10, _arg6:Lcom/broadcom/bt/service/bpp/BipParameters;
    :goto_ca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_109

    .line 120
    sget-object v3, Lcom/broadcom/bt/service/bpp/BppParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/broadcom/bt/service/bpp/BppParameters;

    .line 126
    .local v11, _arg7:Lcom/broadcom/bt/service/bpp/BppParameters;
    :goto_db
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10b

    .line 127
    sget-object v3, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/broadcom/bt/service/bpp/BppObjectResolver;

    .line 133
    .local v12, _arg8:Lcom/broadcom/bt/service/bpp/BppObjectResolver;
    :goto_ec
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    move-result-object v13

    .local v13, _arg9:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;
    move-object/from16 v3, p0

    .line 134
    invoke-virtual/range {v3 .. v13}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->print(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J

    move-result-wide v16

    .line 135
    .local v16, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 137
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 116
    .end local v10           #_arg6:Lcom/broadcom/bt/service/bpp/BipParameters;
    .end local v11           #_arg7:Lcom/broadcom/bt/service/bpp/BppParameters;
    .end local v12           #_arg8:Lcom/broadcom/bt/service/bpp/BppObjectResolver;
    .end local v13           #_arg9:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;
    .end local v16           #_result:J
    :cond_107
    const/4 v10, 0x0

    .restart local v10       #_arg6:Lcom/broadcom/bt/service/bpp/BipParameters;
    goto :goto_ca

    .line 123
    :cond_109
    const/4 v11, 0x0

    .restart local v11       #_arg7:Lcom/broadcom/bt/service/bpp/BppParameters;
    goto :goto_db

    .line 130
    :cond_10b
    const/4 v12, 0x0

    .restart local v12       #_arg8:Lcom/broadcom/bt/service/bpp/BppObjectResolver;
    goto :goto_ec

    .line 141
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v8           #_arg4:Ljava/lang/String;
    .end local v9           #_arg5:I
    .end local v10           #_arg6:Lcom/broadcom/bt/service/bpp/BipParameters;
    .end local v11           #_arg7:Lcom/broadcom/bt/service/bpp/BppParameters;
    .end local v12           #_arg8:Lcom/broadcom/bt/service/bpp/BppObjectResolver;
    :sswitch_10d
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 144
    .restart local v4       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->partialImageResponse(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 150
    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_125
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 153
    .restart local v4       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->refObjectResponse(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 159
    .end local v4           #_arg0:Ljava/lang/String;
    :sswitch_13d
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->abort()V

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 166
    :sswitch_14e
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 169
    .local v4, _arg0:I
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->cancelTask(I)V

    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 175
    .end local v4           #_arg0:I
    :sswitch_166
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->cancelAll()V

    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 182
    :sswitch_177
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->cancelBppStatus()V

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 189
    :sswitch_188
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 192
    .local v14, _arg0:J
    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->getPrintJobHistory(J)Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v16

    .line 193
    .local v16, _result:Lcom/broadcom/bt/service/bpp/PrintJob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v16, :cond_1b3

    .line 195
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    const/4 v3, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/bpp/PrintJob;->writeToParcel(Landroid/os/Parcel;I)V

    .line 201
    :goto_1b0
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 199
    :cond_1b3
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b0

    .line 205
    .end local v14           #_arg0:J
    .end local v16           #_result:Lcom/broadcom/bt/service/bpp/PrintJob;
    :sswitch_1bb
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->getAllPrintJobHistory()[Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v16

    .line 207
    .local v16, _result:[Lcom/broadcom/bt/service/bpp/PrintJob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 209
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 213
    .end local v16           #_result:[Lcom/broadcom/bt/service/bpp/PrintJob;
    :sswitch_1d6
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 216
    .restart local v14       #_arg0:J
    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->removePrintJobHistory(J)V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 222
    .end local v14           #_arg0:J
    :sswitch_1ee
    const-string v3, "com.broadcom.bt.service.bpp.IBluetoothPrinterService"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->removeAllPrintJobHistory()V

    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 47
    nop

    :sswitch_data_200
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_39
        0x3 -> :sswitch_60
        0x4 -> :sswitch_7c
        0x5 -> :sswitch_99
        0x6 -> :sswitch_10d
        0x7 -> :sswitch_125
        0x8 -> :sswitch_13d
        0x9 -> :sswitch_14e
        0xa -> :sswitch_166
        0xb -> :sswitch_177
        0xc -> :sswitch_188
        0xd -> :sswitch_1bb
        0xe -> :sswitch_1d6
        0xf -> :sswitch_1ee
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
