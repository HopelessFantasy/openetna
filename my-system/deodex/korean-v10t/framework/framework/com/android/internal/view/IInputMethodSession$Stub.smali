.class public abstract Lcom/android/internal/view/IInputMethodSession$Stub;
.super Landroid/os/Binder;
.source "IInputMethodSession.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodSession"

.field static final TRANSACTION_appPrivateCommand:I = 0x8

.field static final TRANSACTION_dispatchKeyEvent:I = 0x6

.field static final TRANSACTION_dispatchTrackballEvent:I = 0x7

.field static final TRANSACTION_displayCompletions:I = 0x5

.field static final TRANSACTION_finishInput:I = 0x1

.field static final TRANSACTION_toggleSoftInput:I = 0x9

.field static final TRANSACTION_updateCursor:I = 0x4

.field static final TRANSACTION_updateExtractedText:I = 0x2

.field static final TRANSACTION_updateSelection:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;
    .registers 3
    .parameter "obj"

    .prologue
    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v1, 0x0

    .line 46
    :goto_3
    return-object v1

    .line 42
    :cond_4
    const-string v1, "com.android.internal.view.IInputMethodSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_14

    .line 44
    check-cast v0, Lcom/android/internal/view/IInputMethodSession;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 46
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/android/internal/view/IInputMethodSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 50
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

    const-string v8, "com.android.internal.view.IInputMethodSession"

    .line 54
    sparse-switch p1, :sswitch_data_10a

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    .line 58
    :sswitch_b
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 59
    goto :goto_a

    .line 63
    :sswitch_12
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodSession$Stub;->finishInput()V

    move v0, v7

    .line 65
    goto :goto_a

    .line 69
    :sswitch_1c
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 73
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    .line 74
    sget-object v0, Landroid/view/inputmethod/ExtractedText;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/ExtractedText;

    .line 79
    .local v2, _arg1:Landroid/view/inputmethod/ExtractedText;
    :goto_33
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/IInputMethodSession$Stub;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    move v0, v7

    .line 80
    goto :goto_a

    .line 77
    .end local v2           #_arg1:Landroid/view/inputmethod/ExtractedText;
    :cond_38
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/view/inputmethod/ExtractedText;
    goto :goto_33

    .line 84
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/view/inputmethod/ExtractedText;
    :sswitch_3a
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 88
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 90
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 92
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 94
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 96
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg5:I
    move-object v0, p0

    .line 97
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodSession$Stub;->updateSelection(IIIIII)V

    move v0, v7

    .line 98
    goto :goto_a

    .line 102
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    :sswitch_5d
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_75

    .line 105
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 110
    .local v1, _arg0:Landroid/graphics/Rect;
    :goto_70
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodSession$Stub;->updateCursor(Landroid/graphics/Rect;)V

    move v0, v7

    .line 111
    goto :goto_a

    .line 108
    .end local v1           #_arg0:Landroid/graphics/Rect;
    :cond_75
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/graphics/Rect;
    goto :goto_70

    .line 115
    .end local v1           #_arg0:Landroid/graphics/Rect;
    :sswitch_77
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    sget-object v0, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/inputmethod/CompletionInfo;

    .line 118
    .local v1, _arg0:[Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual {p0, v1}, Lcom/android/internal/view/IInputMethodSession$Stub;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    move v0, v7

    .line 119
    goto :goto_a

    .line 123
    .end local v1           #_arg0:[Landroid/view/inputmethod/CompletionInfo;
    :sswitch_89
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 127
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ae

    .line 128
    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 134
    .local v2, _arg1:Landroid/view/KeyEvent;
    :goto_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodCallback;

    move-result-object v3

    .line 135
    .local v3, _arg2:Lcom/android/internal/view/IInputMethodCallback;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodSession$Stub;->dispatchKeyEvent(ILandroid/view/KeyEvent;Lcom/android/internal/view/IInputMethodCallback;)V

    move v0, v7

    .line 136
    goto/16 :goto_a

    .line 131
    .end local v2           #_arg1:Landroid/view/KeyEvent;
    .end local v3           #_arg2:Lcom/android/internal/view/IInputMethodCallback;
    :cond_ae
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/view/KeyEvent;
    goto :goto_a0

    .line 140
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/view/KeyEvent;
    :sswitch_b0
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 144
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d5

    .line 145
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    .line 151
    .local v2, _arg1:Landroid/view/MotionEvent;
    :goto_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodCallback;

    move-result-object v3

    .line 152
    .restart local v3       #_arg2:Lcom/android/internal/view/IInputMethodCallback;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/view/IInputMethodSession$Stub;->dispatchTrackballEvent(ILandroid/view/MotionEvent;Lcom/android/internal/view/IInputMethodCallback;)V

    move v0, v7

    .line 153
    goto/16 :goto_a

    .line 148
    .end local v2           #_arg1:Landroid/view/MotionEvent;
    .end local v3           #_arg2:Lcom/android/internal/view/IInputMethodCallback;
    :cond_d5
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/view/MotionEvent;
    goto :goto_c7

    .line 157
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/view/MotionEvent;
    :sswitch_d7
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f4

    .line 162
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 167
    .local v2, _arg1:Landroid/os/Bundle;
    :goto_ee
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/IInputMethodSession$Stub;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    move v0, v7

    .line 168
    goto/16 :goto_a

    .line 165
    .end local v2           #_arg1:Landroid/os/Bundle;
    :cond_f4
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Bundle;
    goto :goto_ee

    .line 172
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/Bundle;
    :sswitch_f6
    const-string v0, "com.android.internal.view.IInputMethodSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 176
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 177
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/IInputMethodSession$Stub;->toggleSoftInput(II)V

    move v0, v7

    .line 178
    goto/16 :goto_a

    .line 54
    nop

    :sswitch_data_10a
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_5d
        0x5 -> :sswitch_77
        0x6 -> :sswitch_89
        0x7 -> :sswitch_b0
        0x8 -> :sswitch_d7
        0x9 -> :sswitch_f6
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
