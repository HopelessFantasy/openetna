.class public abstract Landroid/location/IGeocodeProvider$Stub;
.super Landroid/os/Binder;
.source "IGeocodeProvider.java"

# interfaces
.implements Landroid/location/IGeocodeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGeocodeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGeocodeProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.IGeocodeProvider"

.field static final TRANSACTION_getFromLocation:I = 0x1

.field static final TRANSACTION_getFromLocationName:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "android.location.IGeocodeProvider"

    invoke-virtual {p0, p0, v0}, Landroid/location/IGeocodeProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;
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
    const-string v1, "android.location.IGeocodeProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/IGeocodeProvider;

    if-eqz v1, :cond_14

    .line 40
    check-cast v0, Landroid/location/IGeocodeProvider;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 42
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/location/IGeocodeProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/IGeocodeProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 35
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
    .line 50
    sparse-switch p1, :sswitch_data_a8

    .line 114
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_7
    return v2

    .line 54
    :sswitch_8
    const-string v2, "android.location.IGeocodeProvider"

    move-object/from16 v0, p3

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    const/4 v2, 0x1

    goto :goto_7

    .line 59
    :sswitch_12
    const-string v2, "android.location.IGeocodeProvider"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 63
    .local v3, _arg0:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 65
    .local v5, _arg1:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 67
    .local v7, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 71
    .local v9, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 73
    .local v10, _arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 75
    .local v11, _arg6:Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .local v12, _arg7:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v2, p0

    .line 76
    invoke-virtual/range {v2 .. v12}, Landroid/location/IGeocodeProvider$Stub;->getFromLocation(DDILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v29

    .line 77
    .local v29, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    move-object/from16 v0, p3

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 80
    const/4 v2, 0x1

    goto :goto_7

    .line 84
    .end local v3           #_arg0:D
    .end local v5           #_arg1:D
    .end local v7           #_arg2:I
    .end local v8           #_arg3:Ljava/lang/String;
    .end local v9           #_arg4:Ljava/lang/String;
    .end local v10           #_arg5:Ljava/lang/String;
    .end local v11           #_arg6:Ljava/lang/String;
    .end local v12           #_arg7:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v29           #_result:Ljava/lang/String;
    :sswitch_53
    const-string v2, "android.location.IGeocodeProvider"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 90
    .restart local v5       #_arg1:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v17

    .line 92
    .local v17, _arg2:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v19

    .line 94
    .local v19, _arg3:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v21

    .line 96
    .local v21, _arg4:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 98
    .local v10, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 100
    .restart local v11       #_arg6:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 102
    .local v25, _arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 104
    .local v26, _arg8:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 106
    .local v27, _arg9:Ljava/lang/String;
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .local v28, _arg10:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v13, p0

    move-object v14, v3

    move-wide v15, v5

    move/from16 v23, v10

    move-object/from16 v24, v11

    .line 107
    invoke-virtual/range {v13 .. v28}, Landroid/location/IGeocodeProvider$Stub;->getFromLocationName(Ljava/lang/String;DDDDILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v29

    .line 108
    .restart local v29       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 111
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 50
    :sswitch_data_a8
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_53
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
