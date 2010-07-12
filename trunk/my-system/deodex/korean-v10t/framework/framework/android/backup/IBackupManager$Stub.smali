.class public abstract Landroid/backup/IBackupManager$Stub;
.super Landroid/os/Binder;
.source "IBackupManager.java"

# interfaces
.implements Landroid/backup/IBackupManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/backup/IBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/backup/IBackupManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.backup.IBackupManager"

.field static final TRANSACTION_agentConnected:I = 0x3

.field static final TRANSACTION_agentDisconnected:I = 0x4

.field static final TRANSACTION_backupNow:I = 0x8

.field static final TRANSACTION_beginRestoreSession:I = 0xc

.field static final TRANSACTION_clearBackupData:I = 0x2

.field static final TRANSACTION_dataChanged:I = 0x1

.field static final TRANSACTION_getCurrentTransport:I = 0x9

.field static final TRANSACTION_isBackupEnabled:I = 0x7

.field static final TRANSACTION_listAllTransports:I = 0xa

.field static final TRANSACTION_selectBackupTransport:I = 0xb

.field static final TRANSACTION_setBackupEnabled:I = 0x5

.field static final TRANSACTION_setBackupProvisioned:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "android.backup.IBackupManager"

    invoke-virtual {p0, p0, v0}, Landroid/backup/IBackupManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/backup/IBackupManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v1, 0x0

    .line 46
    :goto_3
    return-object v1

    .line 42
    :cond_4
    const-string v1, "android.backup.IBackupManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/backup/IBackupManager;

    if-eqz v1, :cond_14

    .line 44
    check-cast v0, Landroid/backup/IBackupManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 46
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/backup/IBackupManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/backup/IBackupManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 50
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
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
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, "android.backup.IBackupManager"

    .line 54
    sparse-switch p1, :sswitch_data_104

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_b
    return v3

    .line 58
    :sswitch_c
    const-string v3, "android.backup.IBackupManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 59
    goto :goto_b

    .line 63
    :sswitch_13
    const-string v3, "android.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/backup/IBackupManager$Stub;->dataChanged(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 68
    goto :goto_b

    .line 72
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_24
    const-string v3, "android.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/backup/IBackupManager$Stub;->clearBackupData(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 77
    goto :goto_b

    .line 81
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_35
    const-string v3, "android.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 86
    .local v1, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1}, Landroid/backup/IBackupManager$Stub;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 88
    goto :goto_b

    .line 92
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Landroid/os/IBinder;
    :sswitch_4a
    const-string v3, "android.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/backup/IBackupManager$Stub;->agentDisconnected(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 97
    goto :goto_b

    .line 101
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_5b
    const-string v3, "android.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6f

    move v0, v4

    .line 104
    .local v0, _arg0:Z
    :goto_67
    invoke-virtual {p0, v0}, Landroid/backup/IBackupManager$Stub;->setBackupEnabled(Z)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 106
    goto :goto_b

    .end local v0           #_arg0:Z
    :cond_6f
    move v0, v6

    .line 103
    goto :goto_67

    .line 110
    :sswitch_71
    const-string v3, "android.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_85

    move v0, v4

    .line 113
    .restart local v0       #_arg0:Z
    :goto_7d
    invoke-virtual {p0, v0}, Landroid/backup/IBackupManager$Stub;->setBackupProvisioned(Z)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 115
    goto :goto_b

    .end local v0           #_arg0:Z
    :cond_85
    move v0, v6

    .line 112
    goto :goto_7d

    .line 119
    :sswitch_87
    const-string v3, "android.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Landroid/backup/IBackupManager$Stub;->isBackupEnabled()Z

    move-result v2

    .line 121
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v2, :cond_9c

    move v3, v4

    :goto_96
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 123
    goto/16 :goto_b

    :cond_9c
    move v3, v6

    .line 122
    goto :goto_96

    .line 127
    .end local v2           #_result:Z
    :sswitch_9e
    const-string v3, "android.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Landroid/backup/IBackupManager$Stub;->backupNow()V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 130
    goto/16 :goto_b

    .line 134
    :sswitch_ac
    const-string v3, "android.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Landroid/backup/IBackupManager$Stub;->getCurrentTransport()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 138
    goto/16 :goto_b

    .line 142
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_be
    const-string v3, "android.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/backup/IBackupManager$Stub;->listAllTransports()[Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v3, v4

    .line 146
    goto/16 :goto_b

    .line 150
    .end local v2           #_result:[Ljava/lang/String;
    :sswitch_d0
    const-string v3, "android.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/backup/IBackupManager$Stub;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 156
    goto/16 :goto_b

    .line 160
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_e6
    const-string v3, "android.backup.IBackupManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/backup/IBackupManager$Stub;->beginRestoreSession(Ljava/lang/String;)Landroid/backup/IRestoreSession;

    move-result-object v2

    .line 164
    .local v2, _result:Landroid/backup/IRestoreSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v2, :cond_102

    invoke-interface {v2}, Landroid/backup/IRestoreSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_fc
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v3, v4

    .line 166
    goto/16 :goto_b

    .line 165
    :cond_102
    const/4 v3, 0x0

    goto :goto_fc

    .line 54
    :sswitch_data_104
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_35
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_5b
        0x6 -> :sswitch_71
        0x7 -> :sswitch_87
        0x8 -> :sswitch_9e
        0x9 -> :sswitch_ac
        0xa -> :sswitch_be
        0xb -> :sswitch_d0
        0xc -> :sswitch_e6
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
