.class public abstract Landroid/content/IContentService$Stub;
.super Landroid/os/Binder;
.source "IContentService.java"

# interfaces
.implements Landroid/content/IContentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IContentService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.IContentService"

.field static final TRANSACTION_addStatusChangeListener:I = 0xe

.field static final TRANSACTION_cancelSync:I = 0x5

.field static final TRANSACTION_getActiveSync:I = 0xb

.field static final TRANSACTION_getListenForNetworkTickles:I = 0x9

.field static final TRANSACTION_getStatusByAuthority:I = 0xc

.field static final TRANSACTION_getSyncProviderAutomatically:I = 0x6

.field static final TRANSACTION_isAuthorityPending:I = 0xd

.field static final TRANSACTION_isSyncActive:I = 0xa

.field static final TRANSACTION_notifyChange:I = 0x3

.field static final TRANSACTION_registerContentObserver:I = 0x1

.field static final TRANSACTION_removeStatusChangeListener:I = 0xf

.field static final TRANSACTION_setListenForNetworkTickles:I = 0x8

.field static final TRANSACTION_setSyncProviderAutomatically:I = 0x7

.field static final TRANSACTION_startSync:I = 0x4

.field static final TRANSACTION_unregisterContentObserver:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "android.content.IContentService"

    invoke-virtual {p0, p0, v0}, Landroid/content/IContentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IContentService;
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
    const-string v1, "android.content.IContentService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/IContentService;

    if-eqz v1, :cond_14

    .line 40
    check-cast v0, Landroid/content/IContentService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 42
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/content/IContentService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/IContentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v7, "android.content.IContentService"

    .line 50
    sparse-switch p1, :sswitch_data_1e6

    .line 252
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_b
    return v5

    .line 54
    :sswitch_c
    const-string v5, "android.content.IContentService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 55
    goto :goto_b

    .line 59
    :sswitch_13
    const-string v5, "android.content.IContentService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3d

    .line 62
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 68
    .local v0, _arg0:Landroid/net/Uri;
    :goto_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3f

    move v1, v6

    .line 70
    .local v1, _arg1:Z
    :goto_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v2

    .line 71
    .local v2, _arg2:Landroid/database/IContentObserver;
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/IContentService$Stub;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 73
    goto :goto_b

    .line 65
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v1           #_arg1:Z
    .end local v2           #_arg2:Landroid/database/IContentObserver;
    :cond_3d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/Uri;
    goto :goto_26

    :cond_3f
    move v1, v8

    .line 68
    goto :goto_2d

    .line 77
    .end local v0           #_arg0:Landroid/net/Uri;
    :sswitch_41
    const-string v5, "android.content.IContentService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v0

    .line 80
    .local v0, _arg0:Landroid/database/IContentObserver;
    invoke-virtual {p0, v0}, Landroid/content/IContentService$Stub;->unregisterContentObserver(Landroid/database/IContentObserver;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 82
    goto :goto_b

    .line 86
    .end local v0           #_arg0:Landroid/database/IContentObserver;
    :sswitch_56
    const-string v5, "android.content.IContentService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_87

    .line 89
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 95
    .local v0, _arg0:Landroid/net/Uri;
    :goto_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v1

    .line 97
    .local v1, _arg1:Landroid/database/IContentObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_89

    move v2, v6

    .line 99
    .local v2, _arg2:Z
    :goto_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8b

    move v3, v6

    .line 100
    .local v3, _arg3:Z
    :goto_7f
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/IContentService$Stub;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZ)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 102
    goto :goto_b

    .line 92
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v1           #_arg1:Landroid/database/IContentObserver;
    .end local v2           #_arg2:Z
    .end local v3           #_arg3:Z
    :cond_87
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/Uri;
    goto :goto_69

    .restart local v1       #_arg1:Landroid/database/IContentObserver;
    :cond_89
    move v2, v8

    .line 97
    goto :goto_78

    .restart local v2       #_arg2:Z
    :cond_8b
    move v3, v8

    .line 99
    goto :goto_7f

    .line 106
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v1           #_arg1:Landroid/database/IContentObserver;
    .end local v2           #_arg2:Z
    :sswitch_8d
    const-string v5, "android.content.IContentService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b7

    .line 109
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 115
    .restart local v0       #_arg0:Landroid/net/Uri;
    :goto_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b9

    .line 116
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 121
    .local v1, _arg1:Landroid/os/Bundle;
    :goto_ae
    invoke-virtual {p0, v0, v1}, Landroid/content/IContentService$Stub;->startSync(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 123
    goto/16 :goto_b

    .line 112
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v1           #_arg1:Landroid/os/Bundle;
    :cond_b7
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/Uri;
    goto :goto_a0

    .line 119
    :cond_b9
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/Bundle;
    goto :goto_ae

    .line 127
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v1           #_arg1:Landroid/os/Bundle;
    :sswitch_bb
    const-string v5, "android.content.IContentService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d7

    .line 130
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 135
    .restart local v0       #_arg0:Landroid/net/Uri;
    :goto_ce
    invoke-virtual {p0, v0}, Landroid/content/IContentService$Stub;->cancelSync(Landroid/net/Uri;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 137
    goto/16 :goto_b

    .line 133
    .end local v0           #_arg0:Landroid/net/Uri;
    :cond_d7
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/Uri;
    goto :goto_ce

    .line 141
    .end local v0           #_arg0:Landroid/net/Uri;
    :sswitch_d9
    const-string v5, "android.content.IContentService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/IContentService$Stub;->getSyncProviderAutomatically(Ljava/lang/String;)Z

    move-result v4

    .line 145
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v4, :cond_f2

    move v5, v6

    :goto_ec
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 147
    goto/16 :goto_b

    :cond_f2
    move v5, v8

    .line 146
    goto :goto_ec

    .line 151
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_f4
    const-string v5, "android.content.IContentService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10d

    move v1, v6

    .line 156
    .local v1, _arg1:Z
    :goto_104
    invoke-virtual {p0, v0, v1}, Landroid/content/IContentService$Stub;->setSyncProviderAutomatically(Ljava/lang/String;Z)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 158
    goto/16 :goto_b

    .end local v1           #_arg1:Z
    :cond_10d
    move v1, v8

    .line 155
    goto :goto_104

    .line 162
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_10f
    const-string v5, "android.content.IContentService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_124

    move v0, v6

    .line 165
    .local v0, _arg0:Z
    :goto_11b
    invoke-virtual {p0, v0}, Landroid/content/IContentService$Stub;->setListenForNetworkTickles(Z)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 167
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_124
    move v0, v8

    .line 164
    goto :goto_11b

    .line 171
    :sswitch_126
    const-string v5, "android.content.IContentService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Landroid/content/IContentService$Stub;->getListenForNetworkTickles()Z

    move-result v4

    .line 173
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v4, :cond_13b

    move v5, v6

    :goto_135
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 175
    goto/16 :goto_b

    :cond_13b
    move v5, v8

    .line 174
    goto :goto_135

    .line 179
    .end local v4           #_result:Z
    :sswitch_13d
    const-string v5, "android.content.IContentService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/IContentService$Stub;->isSyncActive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 185
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v4, :cond_15a

    move v5, v6

    :goto_154
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 187
    goto/16 :goto_b

    :cond_15a
    move v5, v8

    .line 186
    goto :goto_154

    .line 191
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_15c
    const-string v5, "android.content.IContentService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Landroid/content/IContentService$Stub;->getActiveSync()Landroid/content/ActiveSyncInfo;

    move-result-object v4

    .line 193
    .local v4, _result:Landroid/content/ActiveSyncInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v4, :cond_173

    .line 195
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    invoke-virtual {v4, p3, v6}, Landroid/content/ActiveSyncInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_170
    move v5, v6

    .line 201
    goto/16 :goto_b

    .line 199
    :cond_173
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_170

    .line 205
    .end local v4           #_result:Landroid/content/ActiveSyncInfo;
    :sswitch_177
    const-string v5, "android.content.IContentService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/content/IContentService$Stub;->getStatusByAuthority(Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v4

    .line 209
    .local v4, _result:Landroid/content/SyncStatusInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v4, :cond_192

    .line 211
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    invoke-virtual {v4, p3, v6}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_18f
    move v5, v6

    .line 217
    goto/16 :goto_b

    .line 215
    :cond_192
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18f

    .line 221
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Landroid/content/SyncStatusInfo;
    :sswitch_196
    const-string v5, "android.content.IContentService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 226
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/IContentService$Stub;->isAuthorityPending(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 227
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v4, :cond_1b3

    move v5, v6

    :goto_1ad
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 229
    goto/16 :goto_b

    :cond_1b3
    move v5, v8

    .line 228
    goto :goto_1ad

    .line 233
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_1b5
    const-string v5, "android.content.IContentService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 237
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    move-result-object v1

    .line 238
    .local v1, _arg1:Landroid/content/ISyncStatusObserver;
    invoke-virtual {p0, v0, v1}, Landroid/content/IContentService$Stub;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 240
    goto/16 :goto_b

    .line 244
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/content/ISyncStatusObserver;
    :sswitch_1cf
    const-string v5, "android.content.IContentService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    move-result-object v0

    .line 247
    .local v0, _arg0:Landroid/content/ISyncStatusObserver;
    invoke-virtual {p0, v0}, Landroid/content/IContentService$Stub;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 249
    goto/16 :goto_b

    .line 50
    nop

    :sswitch_data_1e6
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_41
        0x3 -> :sswitch_56
        0x4 -> :sswitch_8d
        0x5 -> :sswitch_bb
        0x6 -> :sswitch_d9
        0x7 -> :sswitch_f4
        0x8 -> :sswitch_10f
        0x9 -> :sswitch_126
        0xa -> :sswitch_13d
        0xb -> :sswitch_15c
        0xc -> :sswitch_177
        0xd -> :sswitch_196
        0xe -> :sswitch_1b5
        0xf -> :sswitch_1cf
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
