.class public abstract Landroid/view/IWindow$Stub;
.super Landroid/os/Binder;
.source "IWindow.java"

# interfaces
.implements Landroid/view/IWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindow$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindow"

.field static final TRANSACTION_dispatchAppVisibility:I = 0x6

.field static final TRANSACTION_dispatchGetNewSurface:I = 0x7

.field static final TRANSACTION_dispatchKey:I = 0x3

.field static final TRANSACTION_dispatchPointer:I = 0x4

.field static final TRANSACTION_dispatchTrackball:I = 0x5

.field static final TRANSACTION_executeCommand:I = 0x1

.field static final TRANSACTION_resized:I = 0x2

.field static final TRANSACTION_windowFocusChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "android.view.IWindow"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindow$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;
    .registers 3
    .parameter "obj"

    .prologue
    .line 37
    if-nez p0, :cond_4

    .line 38
    const/4 v1, 0x0

    .line 44
    :goto_3
    return-object v1

    .line 40
    :cond_4
    const-string v1, "android.view.IWindow"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IWindow;

    if-eqz v1, :cond_14

    .line 42
    check-cast v0, Landroid/view/IWindow;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 44
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/view/IWindow$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 48
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
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
    const/4 v10, 0x0

    const/4 v8, 0x1

    const-string v9, "android.view.IWindow"

    .line 52
    sparse-switch p1, :sswitch_data_106

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_b
    return v0

    .line 56
    :sswitch_c
    const-string v0, "android.view.IWindow"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 57
    goto :goto_b

    .line 61
    :sswitch_13
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_33

    .line 68
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 73
    .local v3, _arg2:Landroid/os/ParcelFileDescriptor;
    :goto_2e
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IWindow$Stub;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    move v0, v8

    .line 74
    goto :goto_b

    .line 71
    .end local v3           #_arg2:Landroid/os/ParcelFileDescriptor;
    :cond_33
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/ParcelFileDescriptor;
    goto :goto_2e

    .line 78
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Landroid/os/ParcelFileDescriptor;
    :sswitch_35
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 82
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 84
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6b

    .line 85
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 91
    .local v3, _arg2:Landroid/graphics/Rect;
    :goto_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6d

    .line 92
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 98
    .local v4, _arg3:Landroid/graphics/Rect;
    :goto_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6f

    move v5, v8

    .local v5, _arg4:Z
    :goto_65
    move-object v0, p0

    .line 99
    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindow$Stub;->resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    move v0, v8

    .line 100
    goto :goto_b

    .line 88
    .end local v3           #_arg2:Landroid/graphics/Rect;
    .end local v4           #_arg3:Landroid/graphics/Rect;
    .end local v5           #_arg4:Z
    :cond_6b
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/graphics/Rect;
    goto :goto_50

    .line 95
    :cond_6d
    const/4 v4, 0x0

    .restart local v4       #_arg3:Landroid/graphics/Rect;
    goto :goto_5e

    :cond_6f
    move v5, v10

    .line 98
    goto :goto_65

    .line 104
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/graphics/Rect;
    .end local v4           #_arg3:Landroid/graphics/Rect;
    :sswitch_71
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_89

    .line 107
    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 112
    .local v1, _arg0:Landroid/view/KeyEvent;
    :goto_84
    invoke-virtual {p0, v1}, Landroid/view/IWindow$Stub;->dispatchKey(Landroid/view/KeyEvent;)V

    move v0, v8

    .line 113
    goto :goto_b

    .line 110
    .end local v1           #_arg0:Landroid/view/KeyEvent;
    :cond_89
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/KeyEvent;
    goto :goto_84

    .line 117
    .end local v1           #_arg0:Landroid/view/KeyEvent;
    :sswitch_8b
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a8

    .line 120
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    .line 126
    .local v1, _arg0:Landroid/view/MotionEvent;
    :goto_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 127
    .local v6, _arg1:J
    invoke-virtual {p0, v1, v6, v7}, Landroid/view/IWindow$Stub;->dispatchPointer(Landroid/view/MotionEvent;J)V

    move v0, v8

    .line 128
    goto/16 :goto_b

    .line 123
    .end local v1           #_arg0:Landroid/view/MotionEvent;
    .end local v6           #_arg1:J
    :cond_a8
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/MotionEvent;
    goto :goto_9e

    .line 132
    .end local v1           #_arg0:Landroid/view/MotionEvent;
    :sswitch_aa
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c7

    .line 135
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    .line 141
    .restart local v1       #_arg0:Landroid/view/MotionEvent;
    :goto_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 142
    .restart local v6       #_arg1:J
    invoke-virtual {p0, v1, v6, v7}, Landroid/view/IWindow$Stub;->dispatchTrackball(Landroid/view/MotionEvent;J)V

    move v0, v8

    .line 143
    goto/16 :goto_b

    .line 138
    .end local v1           #_arg0:Landroid/view/MotionEvent;
    .end local v6           #_arg1:J
    :cond_c7
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/MotionEvent;
    goto :goto_bd

    .line 147
    .end local v1           #_arg0:Landroid/view/MotionEvent;
    :sswitch_c9
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_db

    move v1, v8

    .line 150
    .local v1, _arg0:Z
    :goto_d5
    invoke-virtual {p0, v1}, Landroid/view/IWindow$Stub;->dispatchAppVisibility(Z)V

    move v0, v8

    .line 151
    goto/16 :goto_b

    .end local v1           #_arg0:Z
    :cond_db
    move v1, v10

    .line 149
    goto :goto_d5

    .line 155
    :sswitch_dd
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Landroid/view/IWindow$Stub;->dispatchGetNewSurface()V

    move v0, v8

    .line 157
    goto/16 :goto_b

    .line 161
    :sswitch_e8
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_101

    move v1, v8

    .line 165
    .restart local v1       #_arg0:Z
    :goto_f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_103

    move v2, v8

    .line 166
    .local v2, _arg1:Z
    :goto_fb
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindow$Stub;->windowFocusChanged(ZZ)V

    move v0, v8

    .line 167
    goto/16 :goto_b

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Z
    :cond_101
    move v1, v10

    .line 163
    goto :goto_f4

    .restart local v1       #_arg0:Z
    :cond_103
    move v2, v10

    .line 165
    goto :goto_fb

    .line 52
    nop

    :sswitch_data_106
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_35
        0x3 -> :sswitch_71
        0x4 -> :sswitch_8b
        0x5 -> :sswitch_aa
        0x6 -> :sswitch_c9
        0x7 -> :sswitch_dd
        0x8 -> :sswitch_e8
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
