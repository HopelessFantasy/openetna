.class public abstract Landroid/app/ISearchManager$Stub;
.super Landroid/os/Binder;
.source "ISearchManager.java"

# interfaces
.implements Landroid/app/ISearchManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ISearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ISearchManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.ISearchManager"

.field static final TRANSACTION_getDefaultSearchableForWebSearch:I = 0x4

.field static final TRANSACTION_getSearchableInfo:I = 0x1

.field static final TRANSACTION_getSearchablesForWebSearch:I = 0x3

.field static final TRANSACTION_getSearchablesInGlobalSearch:I = 0x2

.field static final TRANSACTION_isVisible:I = 0x8

.field static final TRANSACTION_setDefaultWebSearch:I = 0x5

.field static final TRANSACTION_startSearch:I = 0x6

.field static final TRANSACTION_stopSearch:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "android.app.ISearchManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ISearchManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/ISearchManager;
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
    const-string v1, "android.app.ISearchManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/ISearchManager;

    if-eqz v1, :cond_14

    .line 39
    check-cast v0, Landroid/app/ISearchManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 41
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/app/ISearchManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/ISearchManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 15
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
    .line 49
    sparse-switch p1, :sswitch_data_11e

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 53
    :sswitch_8
    const-string v0, "android.app.ISearchManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x1

    goto :goto_7

    .line 58
    :sswitch_f
    const-string v0, "android.app.ISearchManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d

    .line 61
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 67
    .local v1, _arg0:Landroid/content/ComponentName;
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x1

    move v2, v0

    .line 68
    .local v2, _arg1:Z
    :goto_2a
    invoke-virtual {p0, v1, v2}, Landroid/app/ISearchManager$Stub;->getSearchableInfo(Landroid/content/ComponentName;Z)Landroid/server/search/SearchableInfo;

    move-result-object v8

    .line 69
    .local v8, _result:Landroid/server/search/SearchableInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v8, :cond_42

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/server/search/SearchableInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 77
    :goto_3b
    const/4 v0, 0x1

    goto :goto_7

    .line 64
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    .end local v8           #_result:Landroid/server/search/SearchableInfo;
    :cond_3d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_22

    .line 67
    :cond_3f
    const/4 v0, 0x0

    move v2, v0

    goto :goto_2a

    .line 75
    .restart local v2       #_arg1:Z
    .restart local v8       #_result:Landroid/server/search/SearchableInfo;
    :cond_42
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3b

    .line 81
    .end local v1           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Z
    .end local v8           #_result:Landroid/server/search/SearchableInfo;
    :sswitch_47
    const-string v0, "android.app.ISearchManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getSearchablesInGlobalSearch()Ljava/util/List;

    move-result-object v9

    .line 83
    .local v9, _result:Ljava/util/List;,"Ljava/util/List<Landroid/server/search/SearchableInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 85
    const/4 v0, 0x1

    goto :goto_7

    .line 89
    .end local v9           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/server/search/SearchableInfo;>;"
    :sswitch_58
    const-string v0, "android.app.ISearchManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getSearchablesForWebSearch()Ljava/util/List;

    move-result-object v9

    .line 91
    .restart local v9       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/server/search/SearchableInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 93
    const/4 v0, 0x1

    goto :goto_7

    .line 97
    .end local v9           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/server/search/SearchableInfo;>;"
    :sswitch_69
    const-string v0, "android.app.ISearchManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->getDefaultSearchableForWebSearch()Landroid/server/search/SearchableInfo;

    move-result-object v8

    .line 99
    .restart local v8       #_result:Landroid/server/search/SearchableInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v8, :cond_81

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/server/search/SearchableInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 107
    :goto_7f
    const/4 v0, 0x1

    goto :goto_7

    .line 105
    :cond_81
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7f

    .line 111
    .end local v8           #_result:Landroid/server/search/SearchableInfo;
    :sswitch_86
    const-string v0, "android.app.ISearchManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a2

    .line 114
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 119
    .restart local v1       #_arg0:Landroid/content/ComponentName;
    :goto_99
    invoke-virtual {p0, v1}, Landroid/app/ISearchManager$Stub;->setDefaultWebSearch(Landroid/content/ComponentName;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 117
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :cond_a2
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/ComponentName;
    goto :goto_99

    .line 125
    .end local v1           #_arg0:Landroid/content/ComponentName;
    :sswitch_a4
    const-string v0, "android.app.ISearchManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ef

    const/4 v0, 0x1

    move v2, v0

    .line 131
    .restart local v2       #_arg1:Z
    :goto_b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f2

    .line 132
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 138
    .local v3, _arg2:Landroid/content/ComponentName;
    :goto_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f4

    .line 139
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 145
    .local v4, _arg3:Landroid/os/Bundle;
    :goto_d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f6

    const/4 v0, 0x1

    move v5, v0

    .line 147
    .local v5, _arg4:Z
    :goto_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ISearchManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ISearchManagerCallback;

    move-result-object v6

    .line 149
    .local v6, _arg5:Landroid/app/ISearchManagerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, _arg6:I
    move-object v0, p0

    .line 150
    invoke-virtual/range {v0 .. v7}, Landroid/app/ISearchManager$Stub;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;ZLandroid/app/ISearchManagerCallback;I)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 129
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Landroid/content/ComponentName;
    .end local v4           #_arg3:Landroid/os/Bundle;
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:Landroid/app/ISearchManagerCallback;
    .end local v7           #_arg6:I
    :cond_ef
    const/4 v0, 0x0

    move v2, v0

    goto :goto_b5

    .line 135
    .restart local v2       #_arg1:Z
    :cond_f2
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/content/ComponentName;
    goto :goto_c3

    .line 142
    :cond_f4
    const/4 v4, 0x0

    .restart local v4       #_arg3:Landroid/os/Bundle;
    goto :goto_d1

    .line 145
    :cond_f6
    const/4 v0, 0x0

    move v5, v0

    goto :goto_d9

    .line 156
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Landroid/content/ComponentName;
    .end local v4           #_arg3:Landroid/os/Bundle;
    :sswitch_f9
    const-string v0, "android.app.ISearchManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->stopSearch()V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 163
    :sswitch_107
    const-string v0, "android.app.ISearchManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Landroid/app/ISearchManager$Stub;->isVisible()Z

    move-result v8

    .line 165
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-eqz v8, :cond_11c

    const/4 v0, 0x1

    :goto_116
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 166
    :cond_11c
    const/4 v0, 0x0

    goto :goto_116

    .line 49
    :sswitch_data_11e
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_47
        0x3 -> :sswitch_58
        0x4 -> :sswitch_69
        0x5 -> :sswitch_86
        0x6 -> :sswitch_a4
        0x7 -> :sswitch_f9
        0x8 -> :sswitch_107
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
