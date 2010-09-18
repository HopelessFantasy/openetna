.class public abstract Landroid/content/pm/IPackageManager$Stub;
.super Landroid/os/Binder;
.source "IPackageManager.java"

# interfaces
.implements Landroid/content/pm/IPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageManager"

.field static final TRANSACTION_addPackageToPreferred:I = 0x26

.field static final TRANSACTION_addPermission:I = 0xe

.field static final TRANSACTION_addPreferredActivity:I = 0x29

.field static final TRANSACTION_checkPermission:I = 0xc

.field static final TRANSACTION_checkSignatures:I = 0x11

.field static final TRANSACTION_checkUidPermission:I = 0xd

.field static final TRANSACTION_clearApplicationUserData:I = 0x34

.field static final TRANSACTION_clearPackagePreferredActivities:I = 0x2b

.field static final TRANSACTION_deleteApplicationCacheFiles:I = 0x33

.field static final TRANSACTION_deletePackage:I = 0x24

.field static final TRANSACTION_enterSafeMode:I = 0x37

.field static final TRANSACTION_freeStorage:I = 0x32

.field static final TRANSACTION_freeStorageAndNotify:I = 0x31

.field static final TRANSACTION_getActivityInfo:I = 0x9

.field static final TRANSACTION_getAllPermissionGroups:I = 0x7

.field static final TRANSACTION_getApplicationEnabledSetting:I = 0x30

.field static final TRANSACTION_getApplicationInfo:I = 0x8

.field static final TRANSACTION_getComponentEnabledSetting:I = 0x2e

.field static final TRANSACTION_getInstalledApplications:I = 0x1c

.field static final TRANSACTION_getInstalledPackages:I = 0x1b

.field static final TRANSACTION_getInstallerPackageName:I = 0x25

.field static final TRANSACTION_getInstrumentationInfo:I = 0x21

.field static final TRANSACTION_getNameForUid:I = 0x13

.field static final TRANSACTION_getPackageGids:I = 0x3

.field static final TRANSACTION_getPackageInfo:I = 0x1

.field static final TRANSACTION_getPackageSizeInfo:I = 0x35

.field static final TRANSACTION_getPackageUid:I = 0x2

.field static final TRANSACTION_getPackagesForUid:I = 0x12

.field static final TRANSACTION_getPermissionGroupInfo:I = 0x6

.field static final TRANSACTION_getPermissionInfo:I = 0x4

.field static final TRANSACTION_getPersistentApplications:I = 0x1d

.field static final TRANSACTION_getPreferredActivities:I = 0x2c

.field static final TRANSACTION_getPreferredPackages:I = 0x28

.field static final TRANSACTION_getReceiverInfo:I = 0xa

.field static final TRANSACTION_getServiceInfo:I = 0xb

.field static final TRANSACTION_getSystemSharedLibraryNames:I = 0x36

.field static final TRANSACTION_getUidForSharedUser:I = 0x14

.field static final TRANSACTION_hasSystemUidErrors:I = 0x3a

.field static final TRANSACTION_installPackage:I = 0x23

.field static final TRANSACTION_isProtectedBroadcast:I = 0x10

.field static final TRANSACTION_isSafeMode:I = 0x38

.field static final TRANSACTION_performDexOpt:I = 0x3b

.field static final TRANSACTION_queryContentProviders:I = 0x20

.field static final TRANSACTION_queryInstrumentation:I = 0x22

.field static final TRANSACTION_queryIntentActivities:I = 0x16

.field static final TRANSACTION_queryIntentActivityOptions:I = 0x17

.field static final TRANSACTION_queryIntentReceivers:I = 0x18

.field static final TRANSACTION_queryIntentServices:I = 0x1a

.field static final TRANSACTION_queryPermissionsByGroup:I = 0x5

.field static final TRANSACTION_querySyncProviders:I = 0x1f

.field static final TRANSACTION_removePackageFromPreferred:I = 0x27

.field static final TRANSACTION_removePermission:I = 0xf

.field static final TRANSACTION_replacePreferredActivity:I = 0x2a

.field static final TRANSACTION_resolveContentProvider:I = 0x1e

.field static final TRANSACTION_resolveIntent:I = 0x15

.field static final TRANSACTION_resolveService:I = 0x19

.field static final TRANSACTION_setApplicationEnabledSetting:I = 0x2f

.field static final TRANSACTION_setComponentEnabledSetting:I = 0x2d

.field static final TRANSACTION_systemReady:I = 0x39


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "android.content.pm.IPackageManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 v1, 0x0

    .line 57
    :goto_3
    return-object v1

    .line 53
    :cond_4
    const-string v1, "android.content.pm.IPackageManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_14

    .line 55
    check-cast v0, Landroid/content/pm/IPackageManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 57
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/content/pm/IPackageManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 61
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 31
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
    .line 65
    sparse-switch p1, :sswitch_data_a26

    .line 913
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_7
    return v5

    .line 69
    :sswitch_8
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    const/4 v5, 0x1

    goto :goto_7

    .line 74
    :sswitch_12
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 79
    .local v7, _arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    .line 80
    .local v18, _result:Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v18, :cond_41

    .line 82
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    :goto_3f
    const/4 v5, 0x1

    goto :goto_7

    .line 86
    :cond_41
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3f

    .line 92
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/PackageInfo;
    :sswitch_49
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 95
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackageUid(Ljava/lang/String;)I

    move-result v18

    .line 96
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v5, 0x1

    goto :goto_7

    .line 102
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:I
    :sswitch_68
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 105
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackageGids(Ljava/lang/String;)[I

    move-result-object v18

    .line 106
    .local v18, _result:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 108
    const/4 v5, 0x1

    goto :goto_7

    .line 112
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:[I
    :sswitch_87
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 116
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 117
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v18

    .line 118
    .local v18, _result:Landroid/content/pm/PermissionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v18, :cond_b7

    .line 120
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PermissionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 126
    :goto_b4
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 124
    :cond_b7
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b4

    .line 130
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/PermissionInfo;
    :sswitch_bf
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 134
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 135
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v23

    .line 136
    .local v23, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 138
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 142
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v23           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :sswitch_e4
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 146
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 147
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v18

    .line 148
    .local v18, _result:Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v18, :cond_114

    .line 150
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PermissionGroupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 156
    :goto_111
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 154
    :cond_114
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_111

    .line 160
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/PermissionGroupInfo;
    :sswitch_11c
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 163
    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v22

    .line 164
    .local v22, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 166
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 170
    .end local v6           #_arg0:I
    .end local v22           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :sswitch_13c
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 174
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 175
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v18

    .line 176
    .local v18, _result:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v18, :cond_16c

    .line 178
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 184
    :goto_169
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 182
    :cond_16c
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_169

    .line 188
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ApplicationInfo;
    :sswitch_174
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b1

    .line 191
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 197
    .local v6, _arg0:Landroid/content/ComponentName;
    :goto_18d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 198
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v18

    .line 199
    .local v18, _result:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v18, :cond_1b3

    .line 201
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 207
    :goto_1ae
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 194
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ActivityInfo;
    :cond_1b1
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;
    goto :goto_18d

    .line 205
    .restart local v7       #_arg1:I
    .restart local v18       #_result:Landroid/content/pm/ActivityInfo;
    :cond_1b3
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1ae

    .line 211
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ActivityInfo;
    :sswitch_1bb
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f8

    .line 214
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 220
    .restart local v6       #_arg0:Landroid/content/ComponentName;
    :goto_1d4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 221
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v18

    .line 222
    .restart local v18       #_result:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    if-eqz v18, :cond_1fa

    .line 224
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 230
    :goto_1f5
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 217
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ActivityInfo;
    :cond_1f8
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;
    goto :goto_1d4

    .line 228
    .restart local v7       #_arg1:I
    .restart local v18       #_result:Landroid/content/pm/ActivityInfo;
    :cond_1fa
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f5

    .line 234
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ActivityInfo;
    :sswitch_202
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23f

    .line 237
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 243
    .restart local v6       #_arg0:Landroid/content/ComponentName;
    :goto_21b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 244
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v18

    .line 245
    .local v18, _result:Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    if-eqz v18, :cond_241

    .line 247
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 253
    :goto_23c
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 240
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ServiceInfo;
    :cond_23f
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;
    goto :goto_21b

    .line 251
    .restart local v7       #_arg1:I
    .restart local v18       #_result:Landroid/content/pm/ServiceInfo;
    :cond_241
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23c

    .line 257
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ServiceInfo;
    :sswitch_249
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 262
    .local v7, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 263
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 269
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v18           #_result:I
    :sswitch_26e
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 273
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 274
    .local v7, _arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkUidPermission(Ljava/lang/String;I)I

    move-result v18

    .line 275
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 281
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v18           #_result:I
    :sswitch_293
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c2

    .line 284
    sget-object v5, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PermissionInfo;

    .line 289
    .local v6, _arg0:Landroid/content/pm/PermissionInfo;
    :goto_2ac
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v18

    .line 290
    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    if-eqz v18, :cond_2c4

    const/4 v5, 0x1

    :goto_2b9
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 287
    .end local v6           #_arg0:Landroid/content/pm/PermissionInfo;
    .end local v18           #_result:Z
    :cond_2c2
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/pm/PermissionInfo;
    goto :goto_2ac

    .line 291
    .restart local v18       #_result:Z
    :cond_2c4
    const/4 v5, 0x0

    goto :goto_2b9

    .line 296
    .end local v6           #_arg0:Landroid/content/pm/PermissionInfo;
    .end local v18           #_result:Z
    :sswitch_2c6
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 299
    .local v6, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->removePermission(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 305
    .end local v6           #_arg0:Ljava/lang/String;
    :sswitch_2de
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 308
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v18

    .line 309
    .restart local v18       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    if-eqz v18, :cond_300

    const/4 v5, 0x1

    :goto_2f7
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 310
    :cond_300
    const/4 v5, 0x0

    goto :goto_2f7

    .line 315
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:Z
    :sswitch_302
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 319
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 320
    .local v7, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 321
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 327
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v18           #_result:I
    :sswitch_327
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 330
    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v18

    .line 331
    .local v18, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 333
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 337
    .end local v6           #_arg0:I
    .end local v18           #_result:[Ljava/lang/String;
    :sswitch_347
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 340
    .restart local v6       #_arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getNameForUid(I)Ljava/lang/String;

    move-result-object v18

    .line 341
    .local v18, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 347
    .end local v6           #_arg0:I
    .end local v18           #_result:Ljava/lang/String;
    :sswitch_367
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 350
    .local v6, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v18

    .line 351
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 357
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:I
    :sswitch_387
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3c9

    .line 360
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 366
    .local v6, _arg0:Landroid/content/Intent;
    :goto_3a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 368
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 369
    .local v8, _arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v18

    .line 370
    .local v18, _result:Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    if-eqz v18, :cond_3cb

    .line 372
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 378
    :goto_3c6
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 363
    .end local v6           #_arg0:Landroid/content/Intent;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v18           #_result:Landroid/content/pm/ResolveInfo;
    :cond_3c9
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/Intent;
    goto :goto_3a0

    .line 376
    .restart local v7       #_arg1:Ljava/lang/String;
    .restart local v8       #_arg2:I
    .restart local v18       #_result:Landroid/content/pm/ResolveInfo;
    :cond_3cb
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3c6

    .line 382
    .end local v6           #_arg0:Landroid/content/Intent;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v18           #_result:Landroid/content/pm/ResolveInfo;
    :sswitch_3d3
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_40a

    .line 385
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 391
    .restart local v6       #_arg0:Landroid/content/Intent;
    :goto_3ec
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 393
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 394
    .restart local v8       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v25

    .line 395
    .local v25, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 397
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 388
    .end local v6           #_arg0:Landroid/content/Intent;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v25           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_40a
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/Intent;
    goto :goto_3ec

    .line 401
    .end local v6           #_arg0:Landroid/content/Intent;
    :sswitch_40c
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_460

    .line 404
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 410
    .local v6, _arg0:Landroid/content/ComponentName;
    :goto_425
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/Intent;

    .line 412
    .local v7, _arg1:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 414
    .local v8, _arg2:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_462

    .line 415
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 421
    .local v9, _arg3:Landroid/content/Intent;
    :goto_445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 423
    .local v10, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, _arg5:I
    move-object/from16 v5, p0

    .line 424
    invoke-virtual/range {v5 .. v11}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v25

    .line 425
    .restart local v25       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 427
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 407
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:[Landroid/content/Intent;
    .end local v8           #_arg2:[Ljava/lang/String;
    .end local v9           #_arg3:Landroid/content/Intent;
    .end local v10           #_arg4:Ljava/lang/String;
    .end local v11           #_arg5:I
    .end local v25           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_460
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;
    goto :goto_425

    .line 418
    .restart local v7       #_arg1:[Landroid/content/Intent;
    .restart local v8       #_arg2:[Ljava/lang/String;
    :cond_462
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/content/Intent;
    goto :goto_445

    .line 431
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:[Landroid/content/Intent;
    .end local v8           #_arg2:[Ljava/lang/String;
    .end local v9           #_arg3:Landroid/content/Intent;
    :sswitch_464
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_49b

    .line 434
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 440
    .local v6, _arg0:Landroid/content/Intent;
    :goto_47d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 442
    .local v7, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 443
    .local v8, _arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v25

    .line 444
    .restart local v25       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 446
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 437
    .end local v6           #_arg0:Landroid/content/Intent;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v25           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_49b
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/Intent;
    goto :goto_47d

    .line 450
    .end local v6           #_arg0:Landroid/content/Intent;
    :sswitch_49d
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4df

    .line 453
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 459
    .restart local v6       #_arg0:Landroid/content/Intent;
    :goto_4b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 461
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 462
    .restart local v8       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v18

    .line 463
    .restart local v18       #_result:Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    if-eqz v18, :cond_4e1

    .line 465
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 471
    :goto_4dc
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 456
    .end local v6           #_arg0:Landroid/content/Intent;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v18           #_result:Landroid/content/pm/ResolveInfo;
    :cond_4df
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/Intent;
    goto :goto_4b6

    .line 469
    .restart local v7       #_arg1:Ljava/lang/String;
    .restart local v8       #_arg2:I
    .restart local v18       #_result:Landroid/content/pm/ResolveInfo;
    :cond_4e1
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4dc

    .line 475
    .end local v6           #_arg0:Landroid/content/Intent;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v18           #_result:Landroid/content/pm/ResolveInfo;
    :sswitch_4e9
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_520

    .line 478
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 484
    .restart local v6       #_arg0:Landroid/content/Intent;
    :goto_502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 486
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 487
    .restart local v8       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v25

    .line 488
    .restart local v25       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 490
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 481
    .end local v6           #_arg0:Landroid/content/Intent;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v25           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_520
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/Intent;
    goto :goto_502

    .line 494
    .end local v6           #_arg0:Landroid/content/Intent;
    :sswitch_522
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 497
    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v21

    .line 498
    .local v21, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 500
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 504
    .end local v6           #_arg0:I
    .end local v21           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_542
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 507
    .restart local v6       #_arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v19

    .line 508
    .local v19, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 510
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 514
    .end local v6           #_arg0:I
    .end local v19           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_562
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 517
    .restart local v6       #_arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPersistentApplications(I)Ljava/util/List;

    move-result-object v19

    .line 518
    .restart local v19       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 520
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 524
    .end local v6           #_arg0:I
    .end local v19           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_582
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 528
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 529
    .local v7, _arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v18

    .line 530
    .local v18, _result:Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    if-eqz v18, :cond_5b2

    .line 532
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 538
    :goto_5af
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 536
    :cond_5b2
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5af

    .line 542
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ProviderInfo;
    :sswitch_5ba
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 546
    .local v15, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 547
    .local v17, _arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->querySyncProviders(Ljava/util/List;Ljava/util/List;)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    move-object/from16 v0, p3

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 550
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 551
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 555
    .end local v15           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #_arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_5ea
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 559
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 561
    .restart local v7       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 562
    .restart local v8       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v24

    .line 563
    .local v24, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 565
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 569
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:I
    .end local v24           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_614
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_651

    .line 572
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 578
    .local v6, _arg0:Landroid/content/ComponentName;
    :goto_62d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 579
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v18

    .line 580
    .local v18, _result:Landroid/content/pm/InstrumentationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    if-eqz v18, :cond_653

    .line 582
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/InstrumentationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 588
    :goto_64e
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 575
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/InstrumentationInfo;
    :cond_651
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;
    goto :goto_62d

    .line 586
    .restart local v7       #_arg1:I
    .restart local v18       #_result:Landroid/content/pm/InstrumentationInfo;
    :cond_653
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_64e

    .line 592
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/InstrumentationInfo;
    :sswitch_65b
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 596
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 597
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v20

    .line 598
    .local v20, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 600
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 604
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v20           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    :sswitch_680
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6b8

    .line 607
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 613
    .local v6, _arg0:Landroid/net/Uri;
    :goto_699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageInstallObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver;

    move-result-object v7

    .line 615
    .local v7, _arg1:Landroid/content/pm/IPackageInstallObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 617
    .restart local v8       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 618
    .local v9, _arg3:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 610
    .end local v6           #_arg0:Landroid/net/Uri;
    .end local v7           #_arg1:Landroid/content/pm/IPackageInstallObserver;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:Ljava/lang/String;
    :cond_6b8
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/net/Uri;
    goto :goto_699

    .line 624
    .end local v6           #_arg0:Landroid/net/Uri;
    :sswitch_6ba
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 628
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    move-result-object v7

    .line 630
    .local v7, _arg1:Landroid/content/pm/IPackageDeleteObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 631
    .restart local v8       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 637
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Landroid/content/pm/IPackageDeleteObserver;
    .end local v8           #_arg2:I
    :sswitch_6e0
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 640
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 641
    .local v18, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 643
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 647
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:Ljava/lang/String;
    :sswitch_700
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 650
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPackageToPreferred(Ljava/lang/String;)V

    .line 651
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 656
    .end local v6           #_arg0:Ljava/lang/String;
    :sswitch_718
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 659
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->removePackageFromPreferred(Ljava/lang/String;)V

    .line 660
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 665
    .end local v6           #_arg0:Ljava/lang/String;
    :sswitch_730
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 668
    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPreferredPackages(I)Ljava/util/List;

    move-result-object v21

    .line 669
    .restart local v21       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 671
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 675
    .end local v6           #_arg0:I
    .end local v21           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_750
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_798

    .line 678
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter;

    .line 684
    .local v6, _arg0:Landroid/content/IntentFilter;
    :goto_769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 686
    .local v7, _arg1:I
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/ComponentName;

    .line 688
    .local v8, _arg2:[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_79a

    .line 689
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 694
    .local v9, _arg3:Landroid/content/ComponentName;
    :goto_789
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 695
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 681
    .end local v6           #_arg0:Landroid/content/IntentFilter;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:[Landroid/content/ComponentName;
    .end local v9           #_arg3:Landroid/content/ComponentName;
    :cond_798
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/IntentFilter;
    goto :goto_769

    .line 692
    .restart local v7       #_arg1:I
    .restart local v8       #_arg2:[Landroid/content/ComponentName;
    :cond_79a
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/content/ComponentName;
    goto :goto_789

    .line 700
    .end local v6           #_arg0:Landroid/content/IntentFilter;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:[Landroid/content/ComponentName;
    .end local v9           #_arg3:Landroid/content/ComponentName;
    :sswitch_79c
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7e4

    .line 703
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter;

    .line 709
    .restart local v6       #_arg0:Landroid/content/IntentFilter;
    :goto_7b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 711
    .restart local v7       #_arg1:I
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/ComponentName;

    .line 713
    .restart local v8       #_arg2:[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7e6

    .line 714
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 719
    .restart local v9       #_arg3:Landroid/content/ComponentName;
    :goto_7d5
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 720
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 706
    .end local v6           #_arg0:Landroid/content/IntentFilter;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:[Landroid/content/ComponentName;
    .end local v9           #_arg3:Landroid/content/ComponentName;
    :cond_7e4
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/IntentFilter;
    goto :goto_7b5

    .line 717
    .restart local v7       #_arg1:I
    .restart local v8       #_arg2:[Landroid/content/ComponentName;
    :cond_7e6
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/content/ComponentName;
    goto :goto_7d5

    .line 725
    .end local v6           #_arg0:Landroid/content/IntentFilter;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:[Landroid/content/ComponentName;
    .end local v9           #_arg3:Landroid/content/ComponentName;
    :sswitch_7e8
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 728
    .local v6, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 729
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 734
    .end local v6           #_arg0:Ljava/lang/String;
    :sswitch_800
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .local v14, _arg0:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .local v16, _arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 741
    .local v8, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v16

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v18

    .line 742
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    move-object/from16 v0, p3

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 745
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 746
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 750
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v14           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v16           #_arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v18           #_result:I
    :sswitch_83a
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_869

    .line 753
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 759
    .local v6, _arg0:Landroid/content/ComponentName;
    :goto_853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 761
    .restart local v7       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 762
    .local v8, _arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 763
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 756
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:I
    :cond_869
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;
    goto :goto_853

    .line 768
    .end local v6           #_arg0:Landroid/content/ComponentName;
    :sswitch_86b
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_898

    .line 771
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 776
    .restart local v6       #_arg0:Landroid/content/ComponentName;
    :goto_884
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v18

    .line 777
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 774
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v18           #_result:I
    :cond_898
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;
    goto :goto_884

    .line 783
    .end local v6           #_arg0:Landroid/content/ComponentName;
    :sswitch_89a
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 787
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 789
    .restart local v7       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 790
    .restart local v8       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 791
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 796
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:I
    :sswitch_8bc
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 798
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 799
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v18

    .line 800
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 806
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:I
    :sswitch_8dc
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 810
    .local v12, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v7

    .line 811
    .local v7, _arg1:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-wide v1, v12

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V

    .line 812
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 817
    .end local v7           #_arg1:Landroid/content/pm/IPackageDataObserver;
    .end local v12           #_arg0:J
    :sswitch_8fd
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 821
    .restart local v12       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_927

    .line 822
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/IntentSender;

    .line 827
    .local v7, _arg1:Landroid/content/IntentSender;
    :goto_91a
    move-object/from16 v0, p0

    move-wide v1, v12

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->freeStorage(JLandroid/content/IntentSender;)V

    .line 828
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 825
    .end local v7           #_arg1:Landroid/content/IntentSender;
    :cond_927
    const/4 v7, 0x0

    .restart local v7       #_arg1:Landroid/content/IntentSender;
    goto :goto_91a

    .line 833
    .end local v7           #_arg1:Landroid/content/IntentSender;
    .end local v12           #_arg0:J
    :sswitch_929
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 837
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v7

    .line 838
    .local v7, _arg1:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 839
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 844
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Landroid/content/pm/IPackageDataObserver;
    :sswitch_94a
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 848
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v7

    .line 849
    .restart local v7       #_arg1:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 855
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Landroid/content/pm/IPackageDataObserver;
    :sswitch_96b
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 859
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageStatsObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageStatsObserver;

    move-result-object v7

    .line 860
    .local v7, _arg1:Landroid/content/pm/IPackageStatsObserver;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 861
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 866
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Landroid/content/pm/IPackageStatsObserver;
    :sswitch_98c
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v18

    .line 868
    .local v18, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 870
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 874
    .end local v18           #_result:[Ljava/lang/String;
    :sswitch_9a5
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->enterSafeMode()V

    .line 876
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 881
    :sswitch_9b6
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isSafeMode()Z

    move-result v18

    .line 883
    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    if-eqz v18, :cond_9d1

    const/4 v5, 0x1

    :goto_9c8
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 884
    :cond_9d1
    const/4 v5, 0x0

    goto :goto_9c8

    .line 889
    .end local v18           #_result:Z
    :sswitch_9d3
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->systemReady()V

    .line 891
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 896
    :sswitch_9e4
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->hasSystemUidErrors()Z

    move-result v18

    .line 898
    .restart local v18       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    if-eqz v18, :cond_9ff

    const/4 v5, 0x1

    :goto_9f6
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 900
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 899
    :cond_9ff
    const/4 v5, 0x0

    goto :goto_9f6

    .line 904
    .end local v18           #_result:Z
    :sswitch_a01
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 907
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->performDexOpt(Ljava/lang/String;)Z

    move-result v18

    .line 908
    .restart local v18       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    if-eqz v18, :cond_a23

    const/4 v5, 0x1

    :goto_a1a
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 909
    :cond_a23
    const/4 v5, 0x0

    goto :goto_a1a

    .line 65
    nop

    :sswitch_data_a26
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_49
        0x3 -> :sswitch_68
        0x4 -> :sswitch_87
        0x5 -> :sswitch_bf
        0x6 -> :sswitch_e4
        0x7 -> :sswitch_11c
        0x8 -> :sswitch_13c
        0x9 -> :sswitch_174
        0xa -> :sswitch_1bb
        0xb -> :sswitch_202
        0xc -> :sswitch_249
        0xd -> :sswitch_26e
        0xe -> :sswitch_293
        0xf -> :sswitch_2c6
        0x10 -> :sswitch_2de
        0x11 -> :sswitch_302
        0x12 -> :sswitch_327
        0x13 -> :sswitch_347
        0x14 -> :sswitch_367
        0x15 -> :sswitch_387
        0x16 -> :sswitch_3d3
        0x17 -> :sswitch_40c
        0x18 -> :sswitch_464
        0x19 -> :sswitch_49d
        0x1a -> :sswitch_4e9
        0x1b -> :sswitch_522
        0x1c -> :sswitch_542
        0x1d -> :sswitch_562
        0x1e -> :sswitch_582
        0x1f -> :sswitch_5ba
        0x20 -> :sswitch_5ea
        0x21 -> :sswitch_614
        0x22 -> :sswitch_65b
        0x23 -> :sswitch_680
        0x24 -> :sswitch_6ba
        0x25 -> :sswitch_6e0
        0x26 -> :sswitch_700
        0x27 -> :sswitch_718
        0x28 -> :sswitch_730
        0x29 -> :sswitch_750
        0x2a -> :sswitch_79c
        0x2b -> :sswitch_7e8
        0x2c -> :sswitch_800
        0x2d -> :sswitch_83a
        0x2e -> :sswitch_86b
        0x2f -> :sswitch_89a
        0x30 -> :sswitch_8bc
        0x31 -> :sswitch_8dc
        0x32 -> :sswitch_8fd
        0x33 -> :sswitch_929
        0x34 -> :sswitch_94a
        0x35 -> :sswitch_96b
        0x36 -> :sswitch_98c
        0x37 -> :sswitch_9a5
        0x38 -> :sswitch_9b6
        0x39 -> :sswitch_9d3
        0x3a -> :sswitch_9e4
        0x3b -> :sswitch_a01
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
