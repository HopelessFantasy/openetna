.class public abstract Lcom/android/internal/backup/IBackupTransport$Stub;
.super Landroid/os/Binder;
.source "IBackupTransport.java"

# interfaces
.implements Lcom/android/internal/backup/IBackupTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/IBackupTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.backup.IBackupTransport"

.field static final TRANSACTION_clearBackupData:I = 0x4

.field static final TRANSACTION_finishBackup:I = 0x5

.field static final TRANSACTION_finishRestore:I = 0xa

.field static final TRANSACTION_getAvailableRestoreSets:I = 0x6

.field static final TRANSACTION_getRestoreData:I = 0x9

.field static final TRANSACTION_nextRestorePackage:I = 0x8

.field static final TRANSACTION_performBackup:I = 0x3

.field static final TRANSACTION_requestBackupTime:I = 0x2

.field static final TRANSACTION_startRestore:I = 0x7

.field static final TRANSACTION_transportDirName:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/backup/IBackupTransport$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;
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
    const-string v1, "com.android.internal.backup.IBackupTransport"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/backup/IBackupTransport;

    if-eqz v1, :cond_14

    .line 38
    check-cast v0, Lcom/android/internal/backup/IBackupTransport;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 40
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 14
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
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "com.android.internal.backup.IBackupTransport"

    .line 48
    sparse-switch p1, :sswitch_data_126

    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_b
    return v5

    .line 52
    :sswitch_c
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 53
    goto :goto_b

    .line 57
    :sswitch_13
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->transportDirName()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 61
    goto :goto_b

    .line 65
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_24
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestBackupTime()J

    move-result-wide v3

    .line 67
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 69
    goto :goto_b

    .line 73
    .end local v3           #_result:J
    :sswitch_35
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_65

    .line 76
    sget-object v5, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 82
    .local v0, _arg0:Landroid/content/pm/PackageInfo;
    :goto_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_67

    .line 83
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 88
    .local v2, _arg1:Landroid/os/ParcelFileDescriptor;
    :goto_56
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)Z

    move-result v3

    .line 89
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v3, :cond_69

    move v5, v6

    :goto_60
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 91
    goto :goto_b

    .line 79
    .end local v0           #_arg0:Landroid/content/pm/PackageInfo;
    .end local v2           #_arg1:Landroid/os/ParcelFileDescriptor;
    .end local v3           #_result:Z
    :cond_65
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/pm/PackageInfo;
    goto :goto_48

    .line 86
    :cond_67
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/ParcelFileDescriptor;
    goto :goto_56

    .restart local v3       #_result:Z
    :cond_69
    move v5, v8

    .line 90
    goto :goto_60

    .line 95
    .end local v0           #_arg0:Landroid/content/pm/PackageInfo;
    .end local v2           #_arg1:Landroid/os/ParcelFileDescriptor;
    .end local v3           #_result:Z
    :sswitch_6b
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8e

    .line 98
    sget-object v5, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 103
    .restart local v0       #_arg0:Landroid/content/pm/PackageInfo;
    :goto_7e
    invoke-virtual {p0, v0}, Lcom/android/internal/backup/IBackupTransport$Stub;->clearBackupData(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    .line 104
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v3, :cond_90

    move v5, v6

    :goto_88
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 106
    goto/16 :goto_b

    .line 101
    .end local v0           #_arg0:Landroid/content/pm/PackageInfo;
    .end local v3           #_result:Z
    :cond_8e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/pm/PackageInfo;
    goto :goto_7e

    .restart local v3       #_result:Z
    :cond_90
    move v5, v8

    .line 105
    goto :goto_88

    .line 110
    .end local v0           #_arg0:Landroid/content/pm/PackageInfo;
    .end local v3           #_result:Z
    :sswitch_92
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishBackup()Z

    move-result v3

    .line 112
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v3, :cond_a7

    move v5, v6

    :goto_a1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 114
    goto/16 :goto_b

    :cond_a7
    move v5, v8

    .line 113
    goto :goto_a1

    .line 118
    .end local v3           #_result:Z
    :sswitch_a9
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->getAvailableRestoreSets()[Landroid/backup/RestoreSet;

    move-result-object v3

    .line 120
    .local v3, _result:[Landroid/backup/RestoreSet;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v3, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v5, v6

    .line 122
    goto/16 :goto_b

    .line 126
    .end local v3           #_result:[Landroid/backup/RestoreSet;
    :sswitch_bb
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 130
    .local v0, _arg0:J
    sget-object v5, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/PackageInfo;

    .line 131
    .local v2, _arg1:[Landroid/content/pm/PackageInfo;
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/backup/IBackupTransport$Stub;->startRestore(J[Landroid/content/pm/PackageInfo;)Z

    move-result v3

    .line 132
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v3, :cond_dc

    move v5, v6

    :goto_d6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 134
    goto/16 :goto_b

    :cond_dc
    move v5, v8

    .line 133
    goto :goto_d6

    .line 138
    .end local v0           #_arg0:J
    .end local v2           #_arg1:[Landroid/content/pm/PackageInfo;
    .end local v3           #_result:Z
    :sswitch_de
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->nextRestorePackage()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 142
    goto/16 :goto_b

    .line 146
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_f0
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_113

    .line 149
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 154
    .local v0, _arg0:Landroid/os/ParcelFileDescriptor;
    :goto_103
    invoke-virtual {p0, v0}, Lcom/android/internal/backup/IBackupTransport$Stub;->getRestoreData(Landroid/os/ParcelFileDescriptor;)Z

    move-result v3

    .line 155
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v3, :cond_115

    move v5, v6

    :goto_10d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 157
    goto/16 :goto_b

    .line 152
    .end local v0           #_arg0:Landroid/os/ParcelFileDescriptor;
    .end local v3           #_result:Z
    :cond_113
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/ParcelFileDescriptor;
    goto :goto_103

    .restart local v3       #_result:Z
    :cond_115
    move v5, v8

    .line 156
    goto :goto_10d

    .line 161
    .end local v0           #_arg0:Landroid/os/ParcelFileDescriptor;
    .end local v3           #_result:Z
    :sswitch_117
    const-string v5, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishRestore()V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 164
    goto/16 :goto_b

    .line 48
    nop

    :sswitch_data_126
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_35
        0x4 -> :sswitch_6b
        0x5 -> :sswitch_92
        0x6 -> :sswitch_a9
        0x7 -> :sswitch_bb
        0x8 -> :sswitch_de
        0x9 -> :sswitch_f0
        0xa -> :sswitch_117
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
