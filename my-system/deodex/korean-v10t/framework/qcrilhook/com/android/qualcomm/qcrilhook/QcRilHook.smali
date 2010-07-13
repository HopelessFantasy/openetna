.class public Lcom/android/qualcomm/qcrilhook/QcRilHook;
.super Ljava/lang/Object;
.source "QcRilHook.java"

# interfaces
.implements Lcom/android/qualcomm/qcrilhook/IQcRilHook;


# static fields
.field private static final INT_SIZE:I = 0x4

.field private static final RESPONSE_BUFFER_SIZE:I = 0x800


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mHeaderSize:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mOemIdentifier:Ljava/lang/String;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-string v2, "QUALCOMM"

    const-string v1, "QC_RIL_OEM_HOOK"

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "QC_RIL_OEM_HOOK"

    iput-object v1, p0, Lcom/android/qualcomm/qcrilhook/QcRilHook;->LOG_TAG:Ljava/lang/String;

    .line 38
    const-string v0, "QUALCOMM"

    iput-object v2, p0, Lcom/android/qualcomm/qcrilhook/QcRilHook;->mOemIdentifier:Ljava/lang/String;

    .line 46
    const-string v0, "QUALCOMM"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    .line 74
    new-instance v0, Lcom/android/qualcomm/qcrilhook/QcRilHook$1;

    invoke-direct {v0, p0}, Lcom/android/qualcomm/qcrilhook/QcRilHook$1;-><init>(Lcom/android/qualcomm/qcrilhook/QcRilHook;)V

    iput-object v0, p0, Lcom/android/qualcomm/qcrilhook/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/qualcomm/qcrilhook/QcRilHook;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 53
    iget-object v0, p0, Lcom/android/qualcomm/qcrilhook/QcRilHook;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_38

    .line 54
    const-string v0, "QC_RIL_OEM_HOOK"

    const-string v0, "QcRilOemHook Service Failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_37
    return-void

    .line 56
    :cond_38
    const-string v0, "QC_RIL_OEM_HOOK"

    const-string v0, "QcRilOemHook Service Created Successfully"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const-string v3, "QUALCOMM"

    const-string v2, "QC_RIL_OEM_HOOK"

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v1, "QC_RIL_OEM_HOOK"

    iput-object v2, p0, Lcom/android/qualcomm/qcrilhook/QcRilHook;->LOG_TAG:Ljava/lang/String;

    .line 38
    const-string v1, "QUALCOMM"

    iput-object v3, p0, Lcom/android/qualcomm/qcrilhook/QcRilHook;->mOemIdentifier:Ljava/lang/String;

    .line 46
    const-string v1, "QUALCOMM"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    .line 74
    new-instance v1, Lcom/android/qualcomm/qcrilhook/QcRilHook$1;

    invoke-direct {v1, p0}, Lcom/android/qualcomm/qcrilhook/QcRilHook$1;-><init>(Lcom/android/qualcomm/qcrilhook/QcRilHook;)V

    iput-object v1, p0, Lcom/android/qualcomm/qcrilhook/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/android/qualcomm/qcrilhook/QcRilHook;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 63
    iget-object v1, p0, Lcom/android/qualcomm/qcrilhook/QcRilHook;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_4e

    .line 64
    const-string v1, "QC_RIL_OEM_HOOK"

    const-string v1, "QcRilOemHook Service Failed"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_37
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/android/qualcomm/qcrilhook/QcRilHook;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    const-string v1, "QC_RIL_OEM_HOOK"

    const-string v1, "Registering for intent ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void

    .line 66
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_4e
    const-string v1, "QC_RIL_OEM_HOOK"

    const-string v1, "QcRilOemHook Service Created Successfully"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method static synthetic access$000(Lcom/android/qualcomm/qcrilhook/QcRilHook;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    return v0
.end method

.method private addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V
    .registers 5
    .parameter "buf"
    .parameter "requestId"
    .parameter "requestSize"

    .prologue
    .line 143
    const-string v0, "QUALCOMM"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 146
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 150
    return-void
.end method

.method public static createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "bytes"

    .prologue
    .line 126
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 127
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 128
    return-object v0
.end method

.method private sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;
    .registers 13
    .parameter "requestId"
    .parameter "request"

    .prologue
    const/4 v8, 0x0

    const-string v9, "QC_RIL_OEM_HOOK"

    .line 162
    const/16 v6, 0x800

    new-array v3, v6, [B

    .line 164
    .local v3, response:[B
    const-string v6, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendQcRilOemHookMsg: Outgoing Data is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :try_start_23
    iget-object v6, p0, Lcom/android/qualcomm/qcrilhook/QcRilHook;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v6, p2, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v4

    .line 169
    .local v4, retVal:I
    if-ltz v4, :cond_40

    .line 170
    const/4 v5, 0x0

    .line 172
    .local v5, validResponseBytes:[B
    if-lez v4, :cond_35

    .line 173
    new-array v5, v4, [B

    .line 174
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v6, v5, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    :cond_35
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v0, v6, v5, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 194
    .end local v4           #retVal:I
    .end local v5           #validResponseBytes:[B
    .local v0, ar:Landroid/os/AsyncResult;
    :goto_3f
    return-object v0

    .line 183
    .end local v0           #ar:Landroid/os/AsyncResult;
    .restart local v4       #retVal:I
    :cond_40
    mul-int/lit8 v6, v4, -0x1

    invoke-static {v6}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v2

    .line 184
    .local v2, ex:Lcom/android/internal/telephony/CommandException;
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v6, 0x0

    invoke-direct {v0, p2, v6, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_4c} :catch_4d

    .restart local v0       #ar:Landroid/os/AsyncResult;
    goto :goto_3f

    .line 186
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #ex:Lcom/android/internal/telephony/CommandException;
    .end local v4           #retVal:I
    :catch_4d
    move-exception v6

    move-object v1, v6

    .line 188
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "QC_RIL_OEM_HOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendQcRilOemHook RequestID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exception, unable to send RIL request from this application"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v0, v6, v8, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .restart local v0       #ar:Landroid/os/AsyncResult;
    goto :goto_3f
.end method


# virtual methods
.method public qcRilGoDormant(Ljava/lang/String;)Z
    .registers 7
    .parameter "interfaceName"

    .prologue
    .line 198
    const/4 v1, 0x0

    .line 199
    .local v1, retval:Z
    const v2, 0x80003

    invoke-virtual {p0, v2, p1}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(ILjava/lang/String;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 201
    .local v0, result:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_e

    .line 203
    const/4 v1, 0x1

    .line 208
    :goto_d
    return v1

    .line 205
    :cond_e
    const-string v2, "QC_RIL_OEM_HOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Go Dormant Command returned Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public registerForExtendedDbmIntl(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 255
    return-void
.end method

.method public registerForFieldTestData(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 245
    return-void
.end method

.method public sendQcRilHookMsg(II)Landroid/os/AsyncResult;
    .registers 6
    .parameter "requestId"
    .parameter "payload"

    .prologue
    .line 222
    iget v2, p0, Lcom/android/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    add-int/lit8 v2, v2, 0x4

    new-array v1, v2, [B

    .line 223
    .local v1, request:[B
    invoke-static {v1}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 225
    .local v0, reqBuffer:Ljava/nio/ByteBuffer;
    const/4 v2, 0x4

    invoke-direct {p0, v0, p1, v2}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 226
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 228
    invoke-direct {p0, p1, v1}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(ILjava/lang/String;)Landroid/os/AsyncResult;
    .registers 7
    .parameter "requestId"
    .parameter "payload"

    .prologue
    .line 232
    iget v2, p0, Lcom/android/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 233
    .local v1, request:[B
    invoke-static {v1}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 235
    .local v0, reqBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, p1, v2}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 236
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 238
    invoke-direct {p0, p1, v1}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public sendQcRilHookMsg(I[B)Landroid/os/AsyncResult;
    .registers 7
    .parameter "requestId"
    .parameter "payload"

    .prologue
    .line 212
    iget v2, p0, Lcom/android/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I

    array-length v3, p2

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 213
    .local v1, request:[B
    invoke-static {v1}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 215
    .local v0, reqBuffer:Ljava/nio/ByteBuffer;
    array-length v2, p2

    invoke-direct {p0, v0, p1, v2}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->addQcRilHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 216
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 218
    invoke-direct {p0, p1, v1}, Lcom/android/qualcomm/qcrilhook/QcRilHook;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method public unregisterForExtendedDbmIntl(Landroid/os/Handler;)V
    .registers 2
    .parameter "h"

    .prologue
    .line 260
    return-void
.end method

.method public unregisterForFieldTestData(Landroid/os/Handler;)V
    .registers 2
    .parameter "h"

    .prologue
    .line 250
    return-void
.end method
