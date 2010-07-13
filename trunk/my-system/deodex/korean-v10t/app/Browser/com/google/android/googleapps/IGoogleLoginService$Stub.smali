.class public abstract Lcom/google/android/googleapps/IGoogleLoginService$Stub;
.super Landroid/os/Binder;
.source "IGoogleLoginService.java"

# interfaces
.implements Lcom/google/android/googleapps/IGoogleLoginService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googleapps/IGoogleLoginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googleapps/IGoogleLoginService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.googleapps.IGoogleLoginService"

.field static final TRANSACTION_blockingGetCredentials:I = 0x5

.field static final TRANSACTION_deleteAllAccounts:I = 0xf

.field static final TRANSACTION_deleteOneAccount:I = 0xe

.field static final TRANSACTION_getAccount:I = 0x3

.field static final TRANSACTION_getAccounts:I = 0x1

.field static final TRANSACTION_getAndroidId:I = 0x7

.field static final TRANSACTION_getPrimaryAccount:I = 0x2

.field static final TRANSACTION_invalidateAuthToken:I = 0x6

.field static final TRANSACTION_peekCredentials:I = 0x4

.field static final TRANSACTION_saveAuthToken:I = 0xa

.field static final TRANSACTION_saveNewAccount:I = 0x9

.field static final TRANSACTION_saveUsernameAndPassword:I = 0xd

.field static final TRANSACTION_tryNewAccount:I = 0x8

.field static final TRANSACTION_updatePassword:I = 0xb

.field static final TRANSACTION_verifyStoredPassword:I = 0xc

.field static final TRANSACTION_waitForAndroidId:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.google.android.googleapps.IGoogleLoginService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/googleapps/IGoogleLoginService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/googleapps/IGoogleLoginService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 38
    if-nez p0, :cond_4

    .line 39
    const/4 v1, 0x0

    .line 45
    :goto_3
    return-object v1

    .line 41
    :cond_4
    const-string v1, "com.google.android.googleapps.IGoogleLoginService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/googleapps/IGoogleLoginService;

    if-eqz v1, :cond_14

    .line 43
    check-cast v0, Lcom/google/android/googleapps/IGoogleLoginService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 45
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/google/android/googleapps/IGoogleLoginService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/googleapps/IGoogleLoginService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 49
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

    const-string v7, "com.google.android.googleapps.IGoogleLoginService"

    .line 53
    sparse-switch p1, :sswitch_data_1b0

    .line 254
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_b
    return v5

    .line 57
    :sswitch_c
    const-string v5, "com.google.android.googleapps.IGoogleLoginService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 58
    goto :goto_b

    .line 62
    :sswitch_13
    const-string v5, "com.google.android.googleapps.IGoogleLoginService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/googleapps/IGoogleLoginService$Stub;->getAccounts()[Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v5, v6

    .line 66
    goto :goto_b

    .line 70
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_24
    const-string v5, "com.google.android.googleapps.IGoogleLoginService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/googleapps/IGoogleLoginService$Stub;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 74
    goto :goto_b

    .line 78
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_35
    const-string v5, "com.google.android.googleapps.IGoogleLoginService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4d

    move v0, v6

    .line 81
    .local v0, _arg0:Z
    :goto_41
    invoke-virtual {p0, v0}, Lcom/google/android/googleapps/IGoogleLoginService$Stub;->getAccount(Z)Ljava/lang/String;

    move-result-object v3

    .line 82
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 84
    goto :goto_b

    .end local v0           #_arg0:Z
    .end local v3           #_result:Ljava/lang/String;
    :cond_4d
    move v0, v8

    .line 80
    goto :goto_41

    .line 88
    :sswitch_4f
    const-string v5, "com.google.android.googleapps.IGoogleLoginService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/google/android/googleapps/IGoogleLoginService$Stub;->peekCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 96
    goto :goto_b

    .line 100
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_68
    const-string v5, "com.google.android.googleapps.IGoogleLoginService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8e

    move v2, v6

    .line 107
    .local v2, _arg2:Z
    :goto_7c
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/googleapps/IGoogleLoginService$Stub;->blockingGetCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    move-result-object v3

    .line 108
    .local v3, _result:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v3, :cond_90

    .line 110
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v3, p3, v6}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8b
    move v5, v6

    .line 116
    goto/16 :goto_b

    .end local v2           #_arg2:Z
    .end local v3           #_result:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    :cond_8e
    move v2, v8

    .line 106
    goto :goto_7c

    .line 114
    .restart local v2       #_arg2:Z
    .restart local v3       #_result:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    :cond_90
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8b

    .line 120
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Z
    .end local v3           #_result:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    :sswitch_94
    const-string v5, "com.google.android.googleapps.IGoogleLoginService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/googleapps/IGoogleLoginService$Stub;->invalidateAuthToken(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 125
    goto/16 :goto_b

    .line 129
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_a6
    const-string v5, "com.google.android.googleapps.IGoogleLoginService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/googleapps/IGoogleLoginService$Stub;->getAndroidId()J

    move-result-wide v3

    .line 131
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 133
    goto/16 :goto_b

    .line 137
    .end local v3           #_result:J
    :sswitch_b8
    const-string v5, "com.google.android.googleapps.IGoogleLoginService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_dc

    .line 140
    sget-object v5, Lcom/google/android/googleapps/LoginData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googleapps/LoginData;

    .line 145
    .local v0, _arg0:Lcom/google/android/googleapps/LoginData;
    :goto_cb
    invoke-virtual {p0, v0}, Lcom/google/android/googleapps/IGoogleLoginService$Stub;->tryNewAccount(Lcom/google/android/googleapps/LoginData;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v0, :cond_de

    .line 148
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    invoke-virtual {v0, p3, v6}, Lcom/google/android/googleapps/LoginData;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_d9
    move v5, v6

    .line 154
    goto/16 :goto_b

    .line 143
    .end local v0           #_arg0:Lcom/google/android/googleapps/LoginData;
    :cond_dc
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/googleapps/LoginData;
    goto :goto_cb

    .line 152
    :cond_de
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d9

    .line 158
    .end local v0           #_arg0:Lcom/google/android/googleapps/LoginData;
    :sswitch_e2
    const-string v5, "com.google.android.googleapps.IGoogleLoginService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_fe

    .line 161
    sget-object v5, Lcom/google/android/googleapps/LoginData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googleapps/LoginData;

    .line 166
    .restart local v0       #_arg0:Lcom/google/android/googleapps/LoginData;
    :goto_f5
    invoke-virtual {p0, v0}, Lcom/google/android/googleapps/IGoogleLoginService$Stub;->saveNewAccount(Lcom/google/android/googleapps/LoginData;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 168
    goto/16 :goto_b

    .line 164
    .end local v0           #_arg0:Lcom/google/android/googleapps/LoginData;
    :cond_fe
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/googleapps/LoginData;
    goto :goto_f5

    .line 172
    .end local v0           #_arg0:Lcom/google/android/googleapps/LoginData;
    :sswitch_100
    const-string v5, "com.google.android.googleapps.IGoogleLoginService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/googleapps/IGoogleLoginService$Stub;->saveAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 181
    goto/16 :goto_b

    .line 185
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    :sswitch_11a
    const-string v5, "com.google.android.googleapps.IGoogleLoginService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13e

    .line 188
    sget-object v5, Lcom/google/android/googleapps/LoginData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googleapps/LoginData;

    .line 193
    .local v0, _arg0:Lcom/google/android/googleapps/LoginData;
    :goto_12d
    invoke-virtual {p0, v0}, Lcom/google/android/googleapps/IGoogleLoginService$Stub;->updatePassword(Lcom/google/android/googleapps/LoginData;)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    if-eqz v0, :cond_140

    .line 196
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {v0, p3, v6}, Lcom/google/android/googleapps/LoginData;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_13b
    move v5, v6

    .line 202
    goto/16 :goto_b

    .line 191
    .end local v0           #_arg0:Lcom/google/android/googleapps/LoginData;
    :cond_13e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/googleapps/LoginData;
    goto :goto_12d

    .line 200
    :cond_140
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13b

    .line 206
    .end local v0           #_arg0:Lcom/google/android/googleapps/LoginData;
    :sswitch_144
    const-string v5, "com.google.android.googleapps.IGoogleLoginService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 211
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/google/android/googleapps/IGoogleLoginService$Stub;->verifyStoredPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 212
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    if-eqz v3, :cond_161

    move v5, v6

    :goto_15b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 214
    goto/16 :goto_b

    :cond_161
    move v5, v8

    .line 213
    goto :goto_15b

    .line 218
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_163
    const-string v5, "com.google.android.googleapps.IGoogleLoginService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 224
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 225
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/googleapps/IGoogleLoginService$Stub;->saveUsernameAndPassword(Ljava/lang/String;Ljava/lang/String;I)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 227
    goto/16 :goto_b

    .line 231
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    :sswitch_17d
    const-string v5, "com.google.android.googleapps.IGoogleLoginService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/googleapps/IGoogleLoginService$Stub;->deleteOneAccount(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 236
    goto/16 :goto_b

    .line 240
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_18f
    const-string v5, "com.google.android.googleapps.IGoogleLoginService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/google/android/googleapps/IGoogleLoginService$Stub;->deleteAllAccounts()V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 243
    goto/16 :goto_b

    .line 247
    :sswitch_19d
    const-string v5, "com.google.android.googleapps.IGoogleLoginService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/google/android/googleapps/IGoogleLoginService$Stub;->waitForAndroidId()I

    move-result v3

    .line 249
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 251
    goto/16 :goto_b

    .line 53
    nop

    :sswitch_data_1b0
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_35
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_68
        0x6 -> :sswitch_94
        0x7 -> :sswitch_a6
        0x8 -> :sswitch_b8
        0x9 -> :sswitch_e2
        0xa -> :sswitch_100
        0xb -> :sswitch_11a
        0xc -> :sswitch_144
        0xd -> :sswitch_163
        0xe -> :sswitch_17d
        0xf -> :sswitch_18f
        0x10 -> :sswitch_19d
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
