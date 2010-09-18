.class public abstract Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.super Landroid/os/Binder;
.source "IPhoneStateListener.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneStateListener"

.field static final TRANSACTION_onCallForwardingIndicatorChanged:I = 0x5

.field static final TRANSACTION_onCallStateChanged:I = 0x7

.field static final TRANSACTION_onCellLocationChanged:I = 0x6

.field static final TRANSACTION_onDataActivity:I = 0x9

.field static final TRANSACTION_onDataConnectionStateChanged:I = 0x8

.field static final TRANSACTION_onMessageWaitingIndicatorChanged:I = 0x3

.field static final TRANSACTION_onMessageWaitingIndicatorCphsChanged:I = 0x4

.field static final TRANSACTION_onServiceStateChanged:I = 0x1

.field static final TRANSACTION_onSignalStrengthChanged:I = 0x2

.field static final TRANSACTION_onSignalStrengthsChanged:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;
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
    const-string v1, "com.android.internal.telephony.IPhoneStateListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v1, :cond_14

    .line 37
    check-cast v0, Lcom/android/internal/telephony/IPhoneStateListener;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 39
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v4, "com.android.internal.telephony.IPhoneStateListener"

    .line 47
    sparse-switch p1, :sswitch_data_d6

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_b
    return v2

    .line 51
    :sswitch_c
    const-string v2, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 52
    goto :goto_b

    .line 56
    :sswitch_13
    const-string v2, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2b

    .line 59
    sget-object v2, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ServiceState;

    .line 64
    .local v0, _arg0:Landroid/telephony/ServiceState;
    :goto_26
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    move v2, v3

    .line 65
    goto :goto_b

    .line 62
    .end local v0           #_arg0:Landroid/telephony/ServiceState;
    :cond_2b
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/telephony/ServiceState;
    goto :goto_26

    .line 69
    .end local v0           #_arg0:Landroid/telephony/ServiceState;
    :sswitch_2d
    const-string v2, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSignalStrengthChanged(I)V

    move v2, v3

    .line 73
    goto :goto_b

    .line 77
    .end local v0           #_arg0:I
    :sswitch_3b
    const-string v2, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4c

    move v0, v3

    .line 80
    .local v0, _arg0:Z
    :goto_47
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onMessageWaitingIndicatorChanged(Z)V

    move v2, v3

    .line 81
    goto :goto_b

    .end local v0           #_arg0:Z
    :cond_4c
    move v0, v5

    .line 79
    goto :goto_47

    .line 85
    :sswitch_4e
    const-string v2, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onMessageWaitingIndicatorCphsChanged(I)V

    move v2, v3

    .line 89
    goto :goto_b

    .line 93
    .end local v0           #_arg0:I
    :sswitch_5c
    const-string v2, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6d

    move v0, v3

    .line 96
    .local v0, _arg0:Z
    :goto_68
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallForwardingIndicatorChanged(Z)V

    move v2, v3

    .line 97
    goto :goto_b

    .end local v0           #_arg0:Z
    :cond_6d
    move v0, v5

    .line 95
    goto :goto_68

    .line 101
    :sswitch_6f
    const-string v2, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_87

    .line 104
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 109
    .local v0, _arg0:Landroid/os/Bundle;
    :goto_82
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellLocationChanged(Landroid/os/Bundle;)V

    move v2, v3

    .line 110
    goto :goto_b

    .line 107
    .end local v0           #_arg0:Landroid/os/Bundle;
    :cond_87
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/Bundle;
    goto :goto_82

    .line 114
    .end local v0           #_arg0:Landroid/os/Bundle;
    :sswitch_89
    const-string v2, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 118
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallStateChanged(ILjava/lang/String;)V

    move v2, v3

    .line 120
    goto/16 :goto_b

    .line 124
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_9c
    const-string v2, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 127
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataConnectionStateChanged(I)V

    move v2, v3

    .line 128
    goto/16 :goto_b

    .line 132
    .end local v0           #_arg0:I
    :sswitch_ab
    const-string v2, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataActivity(I)V

    move v2, v3

    .line 136
    goto/16 :goto_b

    .line 140
    .end local v0           #_arg0:I
    :sswitch_ba
    const-string v2, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d3

    .line 143
    sget-object v2, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalStrength;

    .line 148
    .local v0, _arg0:Landroid/telephony/SignalStrength;
    :goto_cd
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    move v2, v3

    .line 149
    goto/16 :goto_b

    .line 146
    .end local v0           #_arg0:Landroid/telephony/SignalStrength;
    :cond_d3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/telephony/SignalStrength;
    goto :goto_cd

    .line 47
    nop

    :sswitch_data_d6
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_3b
        0x4 -> :sswitch_4e
        0x5 -> :sswitch_5c
        0x6 -> :sswitch_6f
        0x7 -> :sswitch_89
        0x8 -> :sswitch_9c
        0x9 -> :sswitch_ab
        0xa -> :sswitch_ba
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
