.class public abstract Landroid/backup/IRestoreSession$Stub;
.super Landroid/os/Binder;
.source "IRestoreSession.java"

# interfaces
.implements Landroid/backup/IRestoreSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/backup/IRestoreSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/backup/IRestoreSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.backup.IRestoreSession"

.field static final TRANSACTION_endRestoreSession:I = 0x3

.field static final TRANSACTION_getAvailableRestoreSets:I = 0x1

.field static final TRANSACTION_performRestore:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "android.backup.IRestoreSession"

    invoke-virtual {p0, p0, v0}, Landroid/backup/IRestoreSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/backup/IRestoreSession;
    .registers 3
    .parameter "obj"

    .prologue
    .line 35
    if-nez p0, :cond_4

    .line 36
    const/4 v1, 0x0

    .line 42
    :goto_3
    return-object v1

    .line 38
    :cond_4
    const-string v1, "android.backup.IRestoreSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/backup/IRestoreSession;

    if-eqz v1, :cond_14

    .line 40
    check-cast v0, Landroid/backup/IRestoreSession;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 42
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/backup/IRestoreSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/backup/IRestoreSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 46
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
    const/4 v5, 0x1

    const-string v6, "android.backup.IRestoreSession"

    .line 50
    sparse-switch p1, :sswitch_data_4e

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_a
    return v4

    .line 54
    :sswitch_b
    const-string v4, "android.backup.IRestoreSession"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 55
    goto :goto_a

    .line 59
    :sswitch_12
    const-string v4, "android.backup.IRestoreSession"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Landroid/backup/IRestoreSession$Stub;->getAvailableRestoreSets()[Landroid/backup/RestoreSet;

    move-result-object v3

    .line 61
    .local v3, _result:[Landroid/backup/RestoreSet;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v3, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v4, v5

    .line 63
    goto :goto_a

    .line 67
    .end local v3           #_result:[Landroid/backup/RestoreSet;
    :sswitch_23
    const-string v4, "android.backup.IRestoreSession"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 71
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/backup/IRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/backup/IRestoreObserver;

    move-result-object v2

    .line 72
    .local v2, _arg1:Landroid/backup/IRestoreObserver;
    invoke-virtual {p0, v0, v1, v2}, Landroid/backup/IRestoreSession$Stub;->performRestore(JLandroid/backup/IRestoreObserver;)I

    move-result v3

    .line 73
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 75
    goto :goto_a

    .line 79
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Landroid/backup/IRestoreObserver;
    .end local v3           #_result:I
    :sswitch_40
    const-string v4, "android.backup.IRestoreSession"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/backup/IRestoreSession$Stub;->endRestoreSession()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 82
    goto :goto_a

    .line 50
    nop

    :sswitch_data_4e
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_23
        0x3 -> :sswitch_40
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
