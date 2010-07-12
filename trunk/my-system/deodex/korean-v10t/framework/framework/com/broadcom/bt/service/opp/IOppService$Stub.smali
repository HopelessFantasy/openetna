.class public abstract Lcom/broadcom/bt/service/opp/IOppService$Stub;
.super Landroid/os/Binder;
.source "IOppService.java"

# interfaces
.implements Lcom/broadcom/bt/service/opp/IOppService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/opp/IOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/opp/IOppService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.opp.IOppService"

.field static final TRANSACTION_closeOpcSession:I = 0x4

.field static final TRANSACTION_closeOpsSession:I = 0x5

.field static final TRANSACTION_createVcard:I = 0xc

.field static final TRANSACTION_enableOpcSession:I = 0x3

.field static final TRANSACTION_exchangeVcard:I = 0x8

.field static final TRANSACTION_grantAccess:I = 0x9

.field static final TRANSACTION_pullVcard:I = 0x7

.field static final TRANSACTION_pushObject:I = 0x6

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_setExchangeFolder:I = 0xb

.field static final TRANSACTION_setOwnerVcard:I = 0xa

.field static final TRANSACTION_storeVcard:I = 0xd

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/opp/IOppService;
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
    const-string v1, "com.broadcom.bt.service.opp.IOppService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/broadcom/bt/service/opp/IOppService;

    if-eqz v1, :cond_14

    .line 38
    check-cast v0, Lcom/broadcom/bt/service/opp/IOppService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 40
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/broadcom/bt/service/opp/IOppService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/opp/IOppService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v5, "com.broadcom.bt.service.opp.IOppService"

    .line 48
    sparse-switch p1, :sswitch_data_106

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_a
    return v3

    .line 52
    :sswitch_b
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 53
    goto :goto_a

    .line 57
    :sswitch_12
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/opp/IOppCallback;

    move-result-object v0

    .line 60
    .local v0, _arg0:Lcom/broadcom/bt/service/opp/IOppCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->registerCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 62
    goto :goto_a

    .line 66
    .end local v0           #_arg0:Lcom/broadcom/bt/service/opp/IOppCallback;
    :sswitch_27
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/broadcom/bt/service/opp/IOppCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/opp/IOppCallback;

    move-result-object v0

    .line 69
    .restart local v0       #_arg0:Lcom/broadcom/bt/service/opp/IOppCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 71
    goto :goto_a

    .line 75
    .end local v0           #_arg0:Lcom/broadcom/bt/service/opp/IOppCallback;
    :sswitch_3c
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->enableOpcSession()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 78
    goto :goto_a

    .line 82
    :sswitch_49
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->closeOpcSession()V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 85
    goto :goto_a

    .line 89
    :sswitch_56
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->closeOpsSession()V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 92
    goto :goto_a

    .line 96
    :sswitch_63
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->pushObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 103
    goto :goto_a

    .line 107
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_78
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->pullVcard(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 112
    goto :goto_a

    .line 116
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_89
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->exchangeVcard(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 121
    goto/16 :goto_a

    .line 125
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_9b
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 129
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 131
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->grantAccess(IILjava/lang/String;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 134
    goto/16 :goto_a

    .line 138
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    :sswitch_b5
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->setOwnerVcard(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 143
    goto/16 :goto_a

    .line 147
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_c7
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->setExchangeFolder(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 152
    goto/16 :goto_a

    .line 156
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_d9
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->createVcard(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 163
    goto/16 :goto_a

    .line 167
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_ef
    const-string v3, "com.broadcom.bt.service.opp.IOppService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 172
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->storeVcard(Ljava/lang/String;I)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 174
    goto/16 :goto_a

    .line 48
    nop

    :sswitch_data_106
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_27
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_49
        0x5 -> :sswitch_56
        0x6 -> :sswitch_63
        0x7 -> :sswitch_78
        0x8 -> :sswitch_89
        0x9 -> :sswitch_9b
        0xa -> :sswitch_b5
        0xb -> :sswitch_c7
        0xc -> :sswitch_d9
        0xd -> :sswitch_ef
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
