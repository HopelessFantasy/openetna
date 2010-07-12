.class public abstract Landroid/app/IWallpaperService$Stub;
.super Landroid/os/Binder;
.source "IWallpaperService.java"

# interfaces
.implements Landroid/app/IWallpaperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWallpaperService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IWallpaperService"

.field static final TRANSACTION_clearWallpaper:I = 0x6

.field static final TRANSACTION_getDefaultWallpaper:I = 0x5

.field static final TRANSACTION_getDrmWallpaper:I = 0x4

.field static final TRANSACTION_getHeightHint:I = 0x9

.field static final TRANSACTION_getWallpaper:I = 0x3

.field static final TRANSACTION_getWidthHint:I = 0x8

.field static final TRANSACTION_setDefaultWallpaper:I = 0x2

.field static final TRANSACTION_setDimensionHints:I = 0x7

.field static final TRANSACTION_setWallpaper:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "android.app.IWallpaperService"

    invoke-virtual {p0, p0, v0}, Landroid/app/IWallpaperService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 31
    if-nez p0, :cond_4

    .line 32
    const/4 v1, 0x0

    .line 38
    :goto_3
    return-object v1

    .line 34
    :cond_4
    const-string v1, "android.app.IWallpaperService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IWallpaperService;

    if-eqz v1, :cond_14

    .line 36
    check-cast v0, Landroid/app/IWallpaperService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 38
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/app/IWallpaperService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IWallpaperService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 42
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

    const-string v5, "android.app.IWallpaperService"

    .line 46
    sparse-switch p1, :sswitch_data_ee

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_b
    return v3

    .line 50
    :sswitch_c
    const-string v3, "android.app.IWallpaperService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 51
    goto :goto_b

    .line 55
    :sswitch_13
    const-string v3, "android.app.IWallpaperService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/app/IWallpaperService$Stub;->setWallpaper()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 57
    .local v2, _result:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v2, :cond_29

    .line 59
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {v2, p3, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_27
    move v3, v4

    .line 65
    goto :goto_b

    .line 63
    :cond_29
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_27

    .line 69
    .end local v2           #_result:Landroid/os/ParcelFileDescriptor;
    :sswitch_2d
    const-string v3, "android.app.IWallpaperService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Landroid/app/IWallpaperService$Stub;->setDefaultWallpaper()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 71
    .restart local v2       #_result:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v2, :cond_43

    .line 73
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {v2, p3, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_41
    move v3, v4

    .line 79
    goto :goto_b

    .line 77
    :cond_43
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_41

    .line 83
    .end local v2           #_result:Landroid/os/ParcelFileDescriptor;
    :sswitch_47
    const-string v3, "android.app.IWallpaperService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IWallpaperServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperServiceCallback;

    move-result-object v0

    .line 86
    .local v0, _arg0:Landroid/app/IWallpaperServiceCallback;
    invoke-virtual {p0, v0}, Landroid/app/IWallpaperService$Stub;->getWallpaper(Landroid/app/IWallpaperServiceCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 87
    .restart local v2       #_result:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v2, :cond_65

    .line 89
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {v2, p3, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_63
    move v3, v4

    .line 95
    goto :goto_b

    .line 93
    :cond_65
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_63

    .line 99
    .end local v0           #_arg0:Landroid/app/IWallpaperServiceCallback;
    .end local v2           #_result:Landroid/os/ParcelFileDescriptor;
    :sswitch_69
    const-string v3, "android.app.IWallpaperService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IWallpaperServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperServiceCallback;

    move-result-object v0

    .line 102
    .restart local v0       #_arg0:Landroid/app/IWallpaperServiceCallback;
    invoke-virtual {p0, v0}, Landroid/app/IWallpaperService$Stub;->getDrmWallpaper(Landroid/app/IWallpaperServiceCallback;)[B

    move-result-object v2

    .line 103
    .local v2, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    move v3, v4

    .line 105
    goto :goto_b

    .line 109
    .end local v0           #_arg0:Landroid/app/IWallpaperServiceCallback;
    .end local v2           #_result:[B
    :sswitch_82
    const-string v3, "android.app.IWallpaperService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IWallpaperServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperServiceCallback;

    move-result-object v0

    .line 112
    .restart local v0       #_arg0:Landroid/app/IWallpaperServiceCallback;
    invoke-virtual {p0, v0}, Landroid/app/IWallpaperService$Stub;->getDefaultWallpaper(Landroid/app/IWallpaperServiceCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 113
    .local v2, _result:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v2, :cond_a1

    .line 115
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {v2, p3, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9e
    move v3, v4

    .line 121
    goto/16 :goto_b

    .line 119
    :cond_a1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9e

    .line 125
    .end local v0           #_arg0:Landroid/app/IWallpaperServiceCallback;
    .end local v2           #_result:Landroid/os/ParcelFileDescriptor;
    :sswitch_a5
    const-string v3, "android.app.IWallpaperService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Landroid/app/IWallpaperService$Stub;->clearWallpaper()V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 128
    goto/16 :goto_b

    .line 132
    :sswitch_b3
    const-string v3, "android.app.IWallpaperService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 136
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 137
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/IWallpaperService$Stub;->setDimensionHints(II)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 139
    goto/16 :goto_b

    .line 143
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_c9
    const-string v3, "android.app.IWallpaperService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Landroid/app/IWallpaperService$Stub;->getWidthHint()I

    move-result v2

    .line 145
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 147
    goto/16 :goto_b

    .line 151
    .end local v2           #_result:I
    :sswitch_db
    const-string v3, "android.app.IWallpaperService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Landroid/app/IWallpaperService$Stub;->getHeightHint()I

    move-result v2

    .line 153
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 155
    goto/16 :goto_b

    .line 46
    nop

    :sswitch_data_ee
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_47
        0x4 -> :sswitch_69
        0x5 -> :sswitch_82
        0x6 -> :sswitch_a5
        0x7 -> :sswitch_b3
        0x8 -> :sswitch_c9
        0x9 -> :sswitch_db
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
