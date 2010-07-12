.class public abstract Landroid/view/IWindowSession$Stub;
.super Landroid/os/Binder;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSession"

.field static final TRANSACTION_add:I = 0x1

.field static final TRANSACTION_finishDrawing:I = 0x7

.field static final TRANSACTION_finishKey:I = 0x8

.field static final TRANSACTION_getDisplayFrame:I = 0x6

.field static final TRANSACTION_getInTouchMode:I = 0xc

.field static final TRANSACTION_getPendingPointerMove:I = 0x9

.field static final TRANSACTION_getPendingTrackballMove:I = 0xa

.field static final TRANSACTION_performHapticFeedback:I = 0xd

.field static final TRANSACTION_relayout:I = 0x3

.field static final TRANSACTION_remove:I = 0x2

.field static final TRANSACTION_setInTouchMode:I = 0xb

.field static final TRANSACTION_setInsets:I = 0x5

.field static final TRANSACTION_setTransparentRegion:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
    .registers 3
    .parameter "obj"

    .prologue
    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v1, 0x0

    .line 43
    :goto_3
    return-object v1

    .line 39
    :cond_4
    const-string v1, "android.view.IWindowSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IWindowSession;

    if-eqz v1, :cond_14

    .line 41
    check-cast v0, Landroid/view/IWindowSession;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 43
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/view/IWindowSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 47
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 17
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
    .line 51
    sparse-switch p1, :sswitch_data_258

    .line 297
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 55
    :sswitch_8
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x1

    goto :goto_7

    .line 60
    :sswitch_f
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 64
    .local v1, _arg0:Landroid/view/IWindow;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_49

    .line 65
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 71
    .local v2, _arg1:Landroid/view/WindowManager$LayoutParams;
    :goto_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 73
    .local v3, _arg2:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 74
    .local v4, _arg3:Landroid/graphics/Rect;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/IWindowSession$Stub;->add(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I

    move-result v11

    .line 75
    .local v11, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    if-eqz v4, :cond_4b

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {v4, p3, v0}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 84
    :goto_47
    const/4 v0, 0x1

    goto :goto_7

    .line 68
    .end local v2           #_arg1:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Landroid/graphics/Rect;
    .end local v11           #_result:I
    :cond_49
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/view/WindowManager$LayoutParams;
    goto :goto_2a

    .line 82
    .restart local v3       #_arg2:I
    .restart local v4       #_arg3:Landroid/graphics/Rect;
    .restart local v11       #_result:I
    :cond_4b
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_47

    .line 88
    .end local v1           #_arg0:Landroid/view/IWindow;
    .end local v2           #_arg1:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Landroid/graphics/Rect;
    .end local v11           #_result:I
    :sswitch_50
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 91
    .restart local v1       #_arg0:Landroid/view/IWindow;
    invoke-virtual {p0, v1}, Landroid/view/IWindowSession$Stub;->remove(Landroid/view/IWindow;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    const/4 v0, 0x1

    goto :goto_7

    .line 97
    .end local v1           #_arg0:Landroid/view/IWindow;
    :sswitch_65
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 101
    .restart local v1       #_arg0:Landroid/view/IWindow;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_de

    .line 102
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 108
    .restart local v2       #_arg1:Landroid/view/WindowManager$LayoutParams;
    :goto_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 110
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 112
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 114
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e0

    const/4 v0, 0x1

    move v6, v0

    .line 116
    .local v6, _arg5:Z
    :goto_94
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 118
    .local v7, _arg6:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 120
    .local v8, _arg7:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 122
    .local v9, _arg8:Landroid/graphics/Rect;
    new-instance v10, Landroid/view/Surface;

    invoke-direct {v10}, Landroid/view/Surface;-><init>()V

    .local v10, _arg9:Landroid/view/Surface;
    move-object v0, p0

    .line 123
    invoke-virtual/range {v0 .. v10}, Landroid/view/IWindowSession$Stub;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/Surface;)I

    move-result v11

    .line 124
    .restart local v11       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    if-eqz v7, :cond_e3

    .line 127
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 133
    :goto_bd
    if-eqz v8, :cond_e8

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 140
    :goto_c7
    if-eqz v9, :cond_ed

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    const/4 v0, 0x1

    invoke-virtual {v9, p3, v0}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 147
    :goto_d1
    if-eqz v10, :cond_f2

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 154
    :goto_db
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 105
    .end local v2           #_arg1:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:Z
    .end local v7           #_arg6:Landroid/graphics/Rect;
    .end local v8           #_arg7:Landroid/graphics/Rect;
    .end local v9           #_arg8:Landroid/graphics/Rect;
    .end local v10           #_arg9:Landroid/view/Surface;
    .end local v11           #_result:I
    :cond_de
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/view/WindowManager$LayoutParams;
    goto :goto_80

    .line 114
    .restart local v3       #_arg2:I
    .restart local v4       #_arg3:I
    .restart local v5       #_arg4:I
    :cond_e0
    const/4 v0, 0x0

    move v6, v0

    goto :goto_94

    .line 131
    .restart local v6       #_arg5:Z
    .restart local v7       #_arg6:Landroid/graphics/Rect;
    .restart local v8       #_arg7:Landroid/graphics/Rect;
    .restart local v9       #_arg8:Landroid/graphics/Rect;
    .restart local v10       #_arg9:Landroid/view/Surface;
    .restart local v11       #_result:I
    :cond_e3
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_bd

    .line 138
    :cond_e8
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c7

    .line 145
    :cond_ed
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d1

    .line 152
    :cond_f2
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_db

    .line 158
    .end local v1           #_arg0:Landroid/view/IWindow;
    .end local v2           #_arg1:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:Z
    .end local v7           #_arg6:Landroid/graphics/Rect;
    .end local v8           #_arg7:Landroid/graphics/Rect;
    .end local v9           #_arg8:Landroid/graphics/Rect;
    .end local v10           #_arg9:Landroid/view/Surface;
    .end local v11           #_result:I
    :sswitch_f7
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 162
    .restart local v1       #_arg0:Landroid/view/IWindow;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11b

    .line 163
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Region;

    .line 168
    .local v2, _arg1:Landroid/graphics/Region;
    :goto_112
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowSession$Stub;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 166
    .end local v2           #_arg1:Landroid/graphics/Region;
    :cond_11b
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/graphics/Region;
    goto :goto_112

    .line 174
    .end local v1           #_arg0:Landroid/view/IWindow;
    .end local v2           #_arg1:Landroid/graphics/Region;
    :sswitch_11d
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 178
    .restart local v1       #_arg0:Landroid/view/IWindow;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 180
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_153

    .line 181
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 187
    .local v3, _arg2:Landroid/graphics/Rect;
    :goto_13c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_155

    .line 188
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 193
    .local v4, _arg3:Landroid/graphics/Rect;
    :goto_14a
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/IWindowSession$Stub;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 184
    .end local v3           #_arg2:Landroid/graphics/Rect;
    .end local v4           #_arg3:Landroid/graphics/Rect;
    :cond_153
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/graphics/Rect;
    goto :goto_13c

    .line 191
    :cond_155
    const/4 v4, 0x0

    .restart local v4       #_arg3:Landroid/graphics/Rect;
    goto :goto_14a

    .line 199
    .end local v1           #_arg0:Landroid/view/IWindow;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/graphics/Rect;
    .end local v4           #_arg3:Landroid/graphics/Rect;
    :sswitch_157
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 203
    .restart local v1       #_arg0:Landroid/view/IWindow;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 204
    .local v2, _arg1:Landroid/graphics/Rect;
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowSession$Stub;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v2, :cond_17c

    .line 207
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    const/4 v0, 0x1

    invoke-virtual {v2, p3, v0}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 213
    :goto_179
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 211
    :cond_17c
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_179

    .line 217
    .end local v1           #_arg0:Landroid/view/IWindow;
    .end local v2           #_arg1:Landroid/graphics/Rect;
    :sswitch_181
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 220
    .restart local v1       #_arg0:Landroid/view/IWindow;
    invoke-virtual {p0, v1}, Landroid/view/IWindowSession$Stub;->finishDrawing(Landroid/view/IWindow;)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 226
    .end local v1           #_arg0:Landroid/view/IWindow;
    :sswitch_197
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 229
    .restart local v1       #_arg0:Landroid/view/IWindow;
    invoke-virtual {p0, v1}, Landroid/view/IWindowSession$Stub;->finishKey(Landroid/view/IWindow;)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 235
    .end local v1           #_arg0:Landroid/view/IWindow;
    :sswitch_1ad
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 238
    .restart local v1       #_arg0:Landroid/view/IWindow;
    invoke-virtual {p0, v1}, Landroid/view/IWindowSession$Stub;->getPendingPointerMove(Landroid/view/IWindow;)Landroid/view/MotionEvent;

    move-result-object v11

    .line 239
    .local v11, _result:Landroid/view/MotionEvent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v11, :cond_1ce

    .line 241
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    const/4 v0, 0x1

    invoke-virtual {v11, p3, v0}, Landroid/view/MotionEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 247
    :goto_1cb
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 245
    :cond_1ce
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1cb

    .line 251
    .end local v1           #_arg0:Landroid/view/IWindow;
    .end local v11           #_result:Landroid/view/MotionEvent;
    :sswitch_1d3
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 254
    .restart local v1       #_arg0:Landroid/view/IWindow;
    invoke-virtual {p0, v1}, Landroid/view/IWindowSession$Stub;->getPendingTrackballMove(Landroid/view/IWindow;)Landroid/view/MotionEvent;

    move-result-object v11

    .line 255
    .restart local v11       #_result:Landroid/view/MotionEvent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    if-eqz v11, :cond_1f4

    .line 257
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    const/4 v0, 0x1

    invoke-virtual {v11, p3, v0}, Landroid/view/MotionEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 263
    :goto_1f1
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 261
    :cond_1f4
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f1

    .line 267
    .end local v1           #_arg0:Landroid/view/IWindow;
    .end local v11           #_result:Landroid/view/MotionEvent;
    :sswitch_1f9
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20f

    const/4 v0, 0x1

    move v1, v0

    .line 270
    .local v1, _arg0:Z
    :goto_206
    invoke-virtual {p0, v1}, Landroid/view/IWindowSession$Stub;->setInTouchMode(Z)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 269
    .end local v1           #_arg0:Z
    :cond_20f
    const/4 v0, 0x0

    move v1, v0

    goto :goto_206

    .line 276
    :sswitch_212
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Landroid/view/IWindowSession$Stub;->getInTouchMode()Z

    move-result v11

    .line 278
    .local v11, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    if-eqz v11, :cond_227

    const/4 v0, 0x1

    :goto_221
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 279
    :cond_227
    const/4 v0, 0x0

    goto :goto_221

    .line 284
    .end local v11           #_result:Z
    :sswitch_229
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v1

    .line 288
    .local v1, _arg0:Landroid/view/IWindow;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 290
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_252

    const/4 v0, 0x1

    move v3, v0

    .line 291
    .local v3, _arg2:Z
    :goto_242
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->performHapticFeedback(Landroid/view/IWindow;IZ)Z

    move-result v11

    .line 292
    .restart local v11       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    if-eqz v11, :cond_255

    const/4 v0, 0x1

    :goto_24c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 290
    .end local v3           #_arg2:Z
    .end local v11           #_result:Z
    :cond_252
    const/4 v0, 0x0

    move v3, v0

    goto :goto_242

    .line 293
    .restart local v3       #_arg2:Z
    .restart local v11       #_result:Z
    :cond_255
    const/4 v0, 0x0

    goto :goto_24c

    .line 51
    nop

    :sswitch_data_258
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_50
        0x3 -> :sswitch_65
        0x4 -> :sswitch_f7
        0x5 -> :sswitch_11d
        0x6 -> :sswitch_157
        0x7 -> :sswitch_181
        0x8 -> :sswitch_197
        0x9 -> :sswitch_1ad
        0xa -> :sswitch_1d3
        0xb -> :sswitch_1f9
        0xc -> :sswitch_212
        0xd -> :sswitch_229
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
