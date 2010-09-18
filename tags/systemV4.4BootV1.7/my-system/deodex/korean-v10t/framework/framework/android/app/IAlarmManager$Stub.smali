.class public abstract Landroid/app/IAlarmManager$Stub;
.super Landroid/os/Binder;
.source "IAlarmManager.java"

# interfaces
.implements Landroid/app/IAlarmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAlarmManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IAlarmManager"

.field static final TRANSACTION_remove:I = 0x5

.field static final TRANSACTION_set:I = 0x1

.field static final TRANSACTION_setInexactRepeating:I = 0x3

.field static final TRANSACTION_setRepeating:I = 0x2

.field static final TRANSACTION_setTimeZone:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IAlarmManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 34
    if-nez p0, :cond_4

    .line 35
    const/4 v1, 0x0

    .line 41
    :goto_3
    return-object v1

    .line 37
    :cond_4
    const-string v1, "android.app.IAlarmManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IAlarmManager;

    if-eqz v1, :cond_14

    .line 39
    check-cast v0, Landroid/app/IAlarmManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 41
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/app/IAlarmManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IAlarmManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 45
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
    const/4 v7, 0x1

    const-string v8, "android.app.IAlarmManager"

    .line 49
    sparse-switch p1, :sswitch_data_bc

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    .line 53
    :sswitch_b
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 54
    goto :goto_a

    .line 58
    :sswitch_12
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 64
    .local v2, _arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35

    .line 65
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 70
    .local v4, _arg2:Landroid/app/PendingIntent;
    :goto_2d
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/IAlarmManager$Stub;->set(IJLandroid/app/PendingIntent;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 72
    goto :goto_a

    .line 68
    .end local v4           #_arg2:Landroid/app/PendingIntent;
    :cond_35
    const/4 v4, 0x0

    .restart local v4       #_arg2:Landroid/app/PendingIntent;
    goto :goto_2d

    .line 76
    .end local v1           #_arg0:I
    .end local v2           #_arg1:J
    .end local v4           #_arg2:Landroid/app/PendingIntent;
    :sswitch_37
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 80
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 82
    .restart local v2       #_arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 84
    .local v4, _arg2:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5f

    .line 85
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .local v6, _arg3:Landroid/app/PendingIntent;
    :goto_56
    move-object v0, p0

    .line 90
    invoke-virtual/range {v0 .. v6}, Landroid/app/IAlarmManager$Stub;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 92
    goto :goto_a

    .line 88
    .end local v6           #_arg3:Landroid/app/PendingIntent;
    :cond_5f
    const/4 v6, 0x0

    .restart local v6       #_arg3:Landroid/app/PendingIntent;
    goto :goto_56

    .line 96
    .end local v1           #_arg0:I
    .end local v2           #_arg1:J
    .end local v4           #_arg2:J
    .end local v6           #_arg3:Landroid/app/PendingIntent;
    :sswitch_61
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 100
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 102
    .restart local v2       #_arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 104
    .restart local v4       #_arg2:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_89

    .line 105
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .restart local v6       #_arg3:Landroid/app/PendingIntent;
    :goto_80
    move-object v0, p0

    .line 110
    invoke-virtual/range {v0 .. v6}, Landroid/app/IAlarmManager$Stub;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 112
    goto :goto_a

    .line 108
    .end local v6           #_arg3:Landroid/app/PendingIntent;
    :cond_89
    const/4 v6, 0x0

    .restart local v6       #_arg3:Landroid/app/PendingIntent;
    goto :goto_80

    .line 116
    .end local v1           #_arg0:I
    .end local v2           #_arg1:J
    .end local v4           #_arg2:J
    .end local v6           #_arg3:Landroid/app/PendingIntent;
    :sswitch_8b
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IAlarmManager$Stub;->setTimeZone(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 121
    goto/16 :goto_a

    .line 125
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_9d
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b9

    .line 128
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 133
    .local v1, _arg0:Landroid/app/PendingIntent;
    :goto_b0
    invoke-virtual {p0, v1}, Landroid/app/IAlarmManager$Stub;->remove(Landroid/app/PendingIntent;)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 135
    goto/16 :goto_a

    .line 131
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    :cond_b9
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    goto :goto_b0

    .line 49
    nop

    :sswitch_data_bc
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_37
        0x3 -> :sswitch_61
        0x4 -> :sswitch_8b
        0x5 -> :sswitch_9d
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
