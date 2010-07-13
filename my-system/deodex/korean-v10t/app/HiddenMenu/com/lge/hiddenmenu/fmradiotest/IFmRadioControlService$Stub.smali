.class public abstract Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub;
.super Landroid/os/Binder;
.source "IFmRadioControlService.java"

# interfaces
.implements Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.hiddenmenu.fmradiotest.IFmRadioControlService"

.field static final TRANSACTION_getSystemState:I = 0xb

.field static final TRANSACTION_run:I = 0x1

.field static final TRANSACTION_runAutoScanning:I = 0x7

.field static final TRANSACTION_runBackwardScanning:I = 0x9

.field static final TRANSACTION_runCatchAutoScanning:I = 0x8

.field static final TRANSACTION_runForwardScanning:I = 0xa

.field static final TRANSACTION_stop:I = 0x2

.field static final TRANSACTION_tuneFrequency:I = 0xc

.field static final TRANSACTION_tunningLeft:I = 0x3

.field static final TRANSACTION_tunningRight:I = 0x4

.field static final TRANSACTION_tunningsLeft:I = 0x5

.field static final TRANSACTION_tunningsRight:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "com.lge.hiddenmenu.fmradiotest.IFmRadioControlService"

    invoke-virtual {p0, p0, v0}, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService;
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
    const-string v1, "com.lge.hiddenmenu.fmradiotest.IFmRadioControlService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService;

    if-eqz v1, :cond_14

    .line 36
    check-cast v0, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 38
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string v4, "com.lge.hiddenmenu.fmradiotest.IFmRadioControlService"

    .line 46
    sparse-switch p1, :sswitch_data_d2

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_b
    return v2

    .line 50
    :sswitch_c
    const-string v2, "com.lge.hiddenmenu.fmradiotest.IFmRadioControlService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 51
    goto :goto_b

    .line 55
    :sswitch_13
    const-string v2, "com.lge.hiddenmenu.fmradiotest.IFmRadioControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub;->run()Z

    move-result v1

    .line 57
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v1, :cond_27

    move v2, v3

    :goto_22
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 59
    goto :goto_b

    :cond_27
    move v2, v5

    .line 58
    goto :goto_22

    .line 63
    .end local v1           #_result:Z
    :sswitch_29
    const-string v2, "com.lge.hiddenmenu.fmradiotest.IFmRadioControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub;->stop()V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 66
    goto :goto_b

    .line 70
    :sswitch_36
    const-string v2, "com.lge.hiddenmenu.fmradiotest.IFmRadioControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub;->tunningLeft()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 73
    goto :goto_b

    .line 77
    :sswitch_43
    const-string v2, "com.lge.hiddenmenu.fmradiotest.IFmRadioControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub;->tunningRight()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 80
    goto :goto_b

    .line 84
    :sswitch_50
    const-string v2, "com.lge.hiddenmenu.fmradiotest.IFmRadioControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub;->tunningsLeft(I)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 89
    goto :goto_b

    .line 93
    .end local v0           #_arg0:I
    :sswitch_61
    const-string v2, "com.lge.hiddenmenu.fmradiotest.IFmRadioControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub;->tunningsRight(I)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 98
    goto :goto_b

    .line 102
    .end local v0           #_arg0:I
    :sswitch_72
    const-string v2, "com.lge.hiddenmenu.fmradiotest.IFmRadioControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub;->runAutoScanning()V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 105
    goto :goto_b

    .line 109
    :sswitch_7f
    const-string v2, "com.lge.hiddenmenu.fmradiotest.IFmRadioControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub;->runCatchAutoScanning()V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 112
    goto :goto_b

    .line 116
    :sswitch_8c
    const-string v2, "com.lge.hiddenmenu.fmradiotest.IFmRadioControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub;->runBackwardScanning()V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 119
    goto/16 :goto_b

    .line 123
    :sswitch_9a
    const-string v2, "com.lge.hiddenmenu.fmradiotest.IFmRadioControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub;->runForwardScanning()V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 126
    goto/16 :goto_b

    .line 130
    :sswitch_a8
    const-string v2, "com.lge.hiddenmenu.fmradiotest.IFmRadioControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub;->getSystemState()Z

    move-result v1

    .line 132
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v1, :cond_bd

    move v2, v3

    :goto_b7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 134
    goto/16 :goto_b

    :cond_bd
    move v2, v5

    .line 133
    goto :goto_b7

    .line 138
    .end local v1           #_result:Z
    :sswitch_bf
    const-string v2, "com.lge.hiddenmenu.fmradiotest.IFmRadioControlService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 141
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub;->tuneFrequency(I)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 143
    goto/16 :goto_b

    .line 46
    nop

    :sswitch_data_d2
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_29
        0x3 -> :sswitch_36
        0x4 -> :sswitch_43
        0x5 -> :sswitch_50
        0x6 -> :sswitch_61
        0x7 -> :sswitch_72
        0x8 -> :sswitch_7f
        0x9 -> :sswitch_8c
        0xa -> :sswitch_9a
        0xb -> :sswitch_a8
        0xc -> :sswitch_bf
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
