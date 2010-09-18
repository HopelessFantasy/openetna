.class public abstract Lcom/android/internal/view/IInputContext$Stub;
.super Landroid/os/Binder;
.source "IInputContext.java"

# interfaces
.implements Lcom/android/internal/view/IInputContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputContext$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputContext"

.field static final TRANSACTION_beginBatchEdit:I = 0xd

.field static final TRANSACTION_clearMetaKeyStates:I = 0x11

.field static final TRANSACTION_commitCompletion:I = 0x9

.field static final TRANSACTION_commitText:I = 0x8

.field static final TRANSACTION_deleteSurroundingText:I = 0x5

.field static final TRANSACTION_endBatchEdit:I = 0xe

.field static final TRANSACTION_finishComposingText:I = 0x7

.field static final TRANSACTION_getCursorCapsMode:I = 0x3

.field static final TRANSACTION_getExtractedText:I = 0x4

.field static final TRANSACTION_getTextAfterCursor:I = 0x2

.field static final TRANSACTION_getTextBeforeCursor:I = 0x1

.field static final TRANSACTION_performContextMenuAction:I = 0xc

.field static final TRANSACTION_performEditorAction:I = 0xb

.field static final TRANSACTION_performPrivateCommand:I = 0x12

.field static final TRANSACTION_reportFullscreenMode:I = 0xf

.field static final TRANSACTION_sendKeyEvent:I = 0x10

.field static final TRANSACTION_setComposingText:I = 0x6

.field static final TRANSACTION_setSelection:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.android.internal.view.IInputContext"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputContext$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;
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
    const-string v1, "com.android.internal.view.IInputContext"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/view/IInputContext;

    if-eqz v1, :cond_14

    .line 44
    check-cast v0, Lcom/android/internal/view/IInputContext;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 46
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/android/internal/view/IInputContext$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputContext$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x1

    const-string v6, "com.android.internal.view.IInputContext"

    .line 54
    sparse-switch p1, :sswitch_data_1b0

    .line 262
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_a
    return v4

    .line 58
    :sswitch_b
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 59
    goto :goto_a

    .line 63
    :sswitch_12
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 69
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 71
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v3

    .line 72
    .local v3, _arg3:Lcom/android/internal/view/IInputContextCallback;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/view/IInputContext$Stub;->getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    move v4, v5

    .line 73
    goto :goto_a

    .line 77
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v3           #_arg3:Lcom/android/internal/view/IInputContextCallback;
    :sswitch_30
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 83
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 85
    .restart local v2       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v3

    .line 86
    .restart local v3       #_arg3:Lcom/android/internal/view/IInputContextCallback;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/view/IInputContext$Stub;->getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    move v4, v5

    .line 87
    goto :goto_a

    .line 91
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v3           #_arg3:Lcom/android/internal/view/IInputContextCallback;
    :sswitch_4e
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v2

    .line 98
    .local v2, _arg2:Lcom/android/internal/view/IInputContextCallback;
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/view/IInputContext$Stub;->getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V

    move v4, v5

    .line 99
    goto :goto_a

    .line 103
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Lcom/android/internal/view/IInputContextCallback;
    :sswitch_68
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_91

    .line 106
    sget-object v4, Landroid/view/inputmethod/ExtractedTextRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/ExtractedTextRequest;

    .line 112
    .local v0, _arg0:Landroid/view/inputmethod/ExtractedTextRequest;
    :goto_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 114
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 116
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputContextCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContextCallback;

    move-result-object v3

    .line 117
    .restart local v3       #_arg3:Lcom/android/internal/view/IInputContextCallback;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/view/IInputContext$Stub;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V

    move v4, v5

    .line 118
    goto/16 :goto_a

    .line 109
    .end local v0           #_arg0:Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v3           #_arg3:Lcom/android/internal/view/IInputContextCallback;
    :cond_91
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/view/inputmethod/ExtractedTextRequest;
    goto :goto_7b

    .line 122
    .end local v0           #_arg0:Landroid/view/inputmethod/ExtractedTextRequest;
    :sswitch_93
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 127
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/IInputContext$Stub;->deleteSurroundingText(II)V

    move v4, v5

    .line 128
    goto/16 :goto_a

    .line 132
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_a6
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c3

    .line 135
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 141
    .local v0, _arg0:Ljava/lang/CharSequence;
    :goto_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/IInputContext$Stub;->setComposingText(Ljava/lang/CharSequence;I)V

    move v4, v5

    .line 143
    goto/16 :goto_a

    .line 138
    .end local v0           #_arg0:Ljava/lang/CharSequence;
    .end local v1           #_arg1:I
    :cond_c3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Ljava/lang/CharSequence;
    goto :goto_b9

    .line 147
    .end local v0           #_arg0:Ljava/lang/CharSequence;
    :sswitch_c5
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/view/IInputContext$Stub;->finishComposingText()V

    move v4, v5

    .line 149
    goto/16 :goto_a

    .line 153
    :sswitch_d0
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ed

    .line 156
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 162
    .restart local v0       #_arg0:Ljava/lang/CharSequence;
    :goto_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 163
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/IInputContext$Stub;->commitText(Ljava/lang/CharSequence;I)V

    move v4, v5

    .line 164
    goto/16 :goto_a

    .line 159
    .end local v0           #_arg0:Ljava/lang/CharSequence;
    .end local v1           #_arg1:I
    :cond_ed
    const/4 v0, 0x0

    .restart local v0       #_arg0:Ljava/lang/CharSequence;
    goto :goto_e3

    .line 168
    .end local v0           #_arg0:Ljava/lang/CharSequence;
    :sswitch_ef
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_108

    .line 171
    sget-object v4, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/CompletionInfo;

    .line 176
    .local v0, _arg0:Landroid/view/inputmethod/CompletionInfo;
    :goto_102
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputContext$Stub;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    move v4, v5

    .line 177
    goto/16 :goto_a

    .line 174
    .end local v0           #_arg0:Landroid/view/inputmethod/CompletionInfo;
    :cond_108
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/view/inputmethod/CompletionInfo;
    goto :goto_102

    .line 181
    .end local v0           #_arg0:Landroid/view/inputmethod/CompletionInfo;
    :sswitch_10a
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 185
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 186
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/IInputContext$Stub;->setSelection(II)V

    move v4, v5

    .line 187
    goto/16 :goto_a

    .line 191
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_11d
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 194
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputContext$Stub;->performEditorAction(I)V

    move v4, v5

    .line 195
    goto/16 :goto_a

    .line 199
    .end local v0           #_arg0:I
    :sswitch_12c
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 202
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputContext$Stub;->performContextMenuAction(I)V

    move v4, v5

    .line 203
    goto/16 :goto_a

    .line 207
    .end local v0           #_arg0:I
    :sswitch_13b
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/view/IInputContext$Stub;->beginBatchEdit()V

    move v4, v5

    .line 209
    goto/16 :goto_a

    .line 213
    :sswitch_146
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/view/IInputContext$Stub;->endBatchEdit()V

    move v4, v5

    .line 215
    goto/16 :goto_a

    .line 219
    :sswitch_151
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_163

    move v0, v5

    .line 222
    .local v0, _arg0:Z
    :goto_15d
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputContext$Stub;->reportFullscreenMode(Z)V

    move v4, v5

    .line 223
    goto/16 :goto_a

    .line 221
    .end local v0           #_arg0:Z
    :cond_163
    const/4 v4, 0x0

    move v0, v4

    goto :goto_15d

    .line 227
    :sswitch_166
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17f

    .line 230
    sget-object v4, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 235
    .local v0, _arg0:Landroid/view/KeyEvent;
    :goto_179
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputContext$Stub;->sendKeyEvent(Landroid/view/KeyEvent;)V

    move v4, v5

    .line 236
    goto/16 :goto_a

    .line 233
    .end local v0           #_arg0:Landroid/view/KeyEvent;
    :cond_17f
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/view/KeyEvent;
    goto :goto_179

    .line 240
    .end local v0           #_arg0:Landroid/view/KeyEvent;
    :sswitch_181
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 243
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputContext$Stub;->clearMetaKeyStates(I)V

    move v4, v5

    .line 244
    goto/16 :goto_a

    .line 248
    .end local v0           #_arg0:I
    :sswitch_190
    const-string v4, "com.android.internal.view.IInputContext"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1ad

    .line 253
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 258
    .local v1, _arg1:Landroid/os/Bundle;
    :goto_1a7
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/IInputContext$Stub;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    move v4, v5

    .line 259
    goto/16 :goto_a

    .line 256
    .end local v1           #_arg1:Landroid/os/Bundle;
    :cond_1ad
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/Bundle;
    goto :goto_1a7

    .line 54
    nop

    :sswitch_data_1b0
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_30
        0x3 -> :sswitch_4e
        0x4 -> :sswitch_68
        0x5 -> :sswitch_93
        0x6 -> :sswitch_a6
        0x7 -> :sswitch_c5
        0x8 -> :sswitch_d0
        0x9 -> :sswitch_ef
        0xa -> :sswitch_10a
        0xb -> :sswitch_11d
        0xc -> :sswitch_12c
        0xd -> :sswitch_13b
        0xe -> :sswitch_146
        0xf -> :sswitch_151
        0x10 -> :sswitch_166
        0x11 -> :sswitch_181
        0x12 -> :sswitch_190
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
