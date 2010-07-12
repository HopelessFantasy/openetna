.class public Lcom/broadcom/bt/service/test/BluetoothTestModeService;
.super Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;
.source "BluetoothTestModeService.java"


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = true

.field public static final DISABLE_RX_TEST_MODE:I = 0x3

.field public static final DISABLE_TESTMODE:I = 0x0

.field public static final DISABLE_TX_TEST_MODE:I = 0x0

.field public static final ENABLE_RX_TEST_MODE:I = 0x2

.field public static final ENABLE_TESTMODE:I = 0x1

.field public static final ENABLE_TX_TEST_MODE:I = 0x1

.field public static final GET_TESTMODE:I = -0x1

.field public static final SET_DUT:I = 0x11

.field public static final SET_RX_TEST:I = 0x41

.field public static final SET_TRACE_LEVEL:I = -0x10000

.field public static final SET_TX_CARRIER_FREQ:I = 0x21

.field public static final SET_TX_TEST:I = 0x31

.field private static final TAG:Ljava/lang/String; = "BluetoothTestModeService"


# instance fields
.field private mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

.field private final mContext:Landroid/content/Context;

.field private mNativeData:I

.field private mTxRxParams:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 107
    invoke-static {}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->classInitNative()Z

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mContext:Landroid/content/Context;

    .line 161
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    .line 163
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 164
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_1c

    .line 165
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Platform does not support Bluetooth"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_1c
    return-void
.end method

.method private native Set_TestNative(Ljava/lang/Object;)V
.end method

.method private static native classInitNative()Z
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native createTestModeNative()V
.end method

.method private native enterDUTModeNative()V
.end method

.method private native exitDUTModeNative()V
.end method

.method private native initializeNativeDataNative()Z
.end method

.method private declared-synchronized registerBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I
    .registers 4
    .parameter "callback"

    .prologue
    const-string v0, "BluetoothTestModeService"

    .line 118
    monitor-enter p0

    if-eqz p1, :cond_1e

    .line 119
    :try_start_5
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    if-eqz v0, :cond_13

    .line 120
    const-string v0, "BluetoothTestModeService"

    const-string v1, "Call back is already registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_27

    .line 121
    const/4 v0, 0x0

    .line 129
    :goto_11
    monitor-exit p0

    return v0

    .line 123
    :cond_13
    :try_start_13
    iput-object p1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    .line 124
    const-string v0, "BluetoothTestModeService"

    const-string v1, "#### Registered callback ####"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x1

    goto :goto_11

    .line 128
    :cond_1e
    const-string v0, "BluetoothTestModeService"

    const-string v1, "#### Call Back is NULL ####"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_27

    .line 129
    const/4 v0, -0x1

    goto :goto_11

    .line 118
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native setTestModeNative(I)V
.end method


# virtual methods
.method public Set_Tx_Rx_Test(Lcom/broadcom/bt/service/test/TxRxTestParams;)I
    .registers 6
    .parameter "txRxTestParam"

    .prologue
    const-string v3, "BluetoothTestModeService"

    .line 290
    :try_start_2
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Set_TX_Test() call Set_TX_TestNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iput-object p1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mTxRxParams:Ljava/lang/Object;

    .line 292
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mTxRxParams:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->Set_TestNative(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_12

    .line 297
    const/4 v1, 0x1

    :goto_11
    return v1

    .line 293
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 294
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Call Set_TX_TestNative Failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    const/4 v1, -0x1

    goto :goto_11
.end method

.method public declared-synchronized createTestMode(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I
    .registers 6
    .parameter "callback"

    .prologue
    const-string v2, "BluetoothTestModeService"

    .line 175
    monitor-enter p0

    :try_start_3
    const-string v2, "BluetoothTestModeService"

    const-string v3, "createTestMode() calls createTestModeNative()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->registerBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I

    move-result v1

    .line 177
    .local v1, ret_val:I
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->createTestModeNative()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_13

    .line 182
    :goto_11
    monitor-exit p0

    return v1

    .line 178
    .end local v1           #ret_val:I
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 179
    .local v0, e:Ljava/lang/Exception;
    :try_start_15
    const-string v2, "BluetoothTestModeService"

    const-string v3, "Call createTestModeNative Failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1e

    .line 180
    const/4 v1, -0x1

    .restart local v1       #ret_val:I
    goto :goto_11

    .line 175
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ret_val:I
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public enterDUTMode()I
    .registers 5

    .prologue
    const-string v3, "BluetoothTestModeService"

    .line 264
    :try_start_2
    const-string v1, "BluetoothTestModeService"

    const-string v2, "enterDUTMode() call enterDUTModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->enterDUTModeNative()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_e

    .line 270
    const/4 v1, 0x1

    :goto_d
    return v1

    .line 266
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 267
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Call enterDUTModeNative Failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    const/4 v1, -0x1

    goto :goto_d
.end method

.method public declared-synchronized enterTestMode()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    const-string v1, "BluetoothTestModeService"

    .line 192
    monitor-enter p0

    :try_start_4
    const-string v1, "BluetoothTestModeService"

    const-string v2, "enterTestMode() call enterTestModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_12

    move v1, v3

    .line 198
    :goto_10
    monitor-exit p0

    return v1

    .line 194
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 195
    .local v0, e:Ljava/lang/Exception;
    :try_start_14
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call enterTestModeNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1d

    .line 196
    const/4 v1, -0x1

    goto :goto_10

    .line 192
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized exitCurrentTestMode()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    const-string v1, "BluetoothTestModeService"

    .line 251
    monitor-enter p0

    :try_start_4
    const-string v1, "BluetoothTestModeService"

    const-string v2, "exitCurrentTestMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_12

    move v1, v3

    .line 257
    :goto_10
    monitor-exit p0

    return v1

    .line 253
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 254
    .local v0, e:Ljava/lang/Exception;
    :try_start_14
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call exitCurrentTestMode() Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1d

    .line 255
    const/4 v1, -0x1

    goto :goto_10

    .line 251
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public exitDUTMode()I
    .registers 5

    .prologue
    const-string v3, "BluetoothTestModeService"

    .line 277
    :try_start_2
    const-string v1, "BluetoothTestModeService"

    const-string v2, "exitDUTMode() call exitDUTModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->exitDUTModeNative()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_e

    .line 283
    const/4 v1, 0x1

    :goto_d
    return v1

    .line 279
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 280
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Call exitDUTModeNative Failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    const/4 v1, -0x1

    goto :goto_d
.end method

.method public declared-synchronized exitTestMode()I
    .registers 4

    .prologue
    const-string v1, "BluetoothTestModeService"

    .line 206
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothTestModeService"

    const-string v2, "exitTestMode() call exitTestModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_11

    .line 212
    const/4 v1, 0x1

    :goto_f
    monitor-exit p0

    return v1

    .line 208
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 209
    .local v0, e:Ljava/lang/Exception;
    :try_start_13
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call exitTestModeNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1c

    .line 210
    const/4 v1, -0x1

    goto :goto_f

    .line 206
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    .line 151
    :try_start_3
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->cleanupNativeDataNative()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 153
    invoke-super {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->finalize()V

    .line 155
    return-void

    .line 153
    :catchall_a
    move-exception v0

    invoke-super {p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->finalize()V

    throw v0
.end method

.method public declared-synchronized getTestMode()I
    .registers 5

    .prologue
    const/4 v3, -0x1

    const-string v1, "BluetoothTestModeService"

    .line 217
    monitor-enter p0

    :try_start_4
    const-string v1, "BluetoothTestModeService"

    const-string v2, "getTestMode() call setTestModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_12

    .line 223
    const/4 v1, 0x1

    :goto_10
    monitor-exit p0

    return v1

    .line 219
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 220
    .local v0, e:Ljava/lang/Exception;
    :try_start_14
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call setTestModeNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1d

    move v1, v3

    .line 221
    goto :goto_10

    .line 217
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized init()V
    .registers 3

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->initializeNativeDataNative()Z

    move-result v0

    if-nez v0, :cond_e

    .line 141
    const-string v0, "BluetoothTestModeService"

    const-string v1, "initializeNativeDataNative() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 143
    :cond_e
    monitor-exit p0

    return-void

    .line 140
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onEnterDUTMode(I)V
    .registers 6
    .parameter "status"

    .prologue
    const-string v3, "BluetoothTestModeService"

    .line 341
    const-string v1, "BluetoothTestModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnterDUTMode(status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :try_start_24
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onEnterDUTMode(I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_2a

    .line 347
    :goto_29
    return-void

    .line 344
    :catch_2a
    move-exception v1

    move-object v0, v1

    .line 345
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "onEnterDUTMode() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29
.end method

.method onEnterTestMode(I)V
    .registers 6
    .parameter "mode"

    .prologue
    const-string v3, "BluetoothTestModeService"

    .line 323
    const-string v1, "BluetoothTestModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnterTestMode(mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :try_start_24
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onEnterTestMode(I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_2a

    .line 329
    :goto_29
    return-void

    .line 326
    :catch_2a
    move-exception v1

    move-object v0, v1

    .line 327
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "onEnterTestMode failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29
.end method

.method onExitDUTMode(I)V
    .registers 6
    .parameter "status"

    .prologue
    const-string v3, "BluetoothTestModeService"

    .line 350
    const-string v1, "BluetoothTestModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExitDUTMode(status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :try_start_24
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onExitDUTMode(I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_2a

    .line 356
    :goto_29
    return-void

    .line 353
    :catch_2a
    move-exception v1

    move-object v0, v1

    .line 354
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "onExitDUTMode() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29
.end method

.method onExitTestMode(I)V
    .registers 6
    .parameter "mode"

    .prologue
    const-string v3, "BluetoothTestModeService"

    .line 332
    const-string v1, "BluetoothTestModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExitTestMode(mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :try_start_24
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onExitTestMode(I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_2a

    .line 338
    :goto_29
    return-void

    .line 335
    :catch_2a
    move-exception v1

    move-object v0, v1

    .line 336
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "onExitTestMode failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29
.end method

.method onGetTestMode(I)V
    .registers 6
    .parameter "mode"

    .prologue
    const-string v3, "BluetoothTestModeService"

    .line 314
    const-string v1, "BluetoothTestModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetTestMode(mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :try_start_24
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onGetTestMode(I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_2a

    .line 320
    :goto_29
    return-void

    .line 317
    :catch_2a
    move-exception v1

    move-object v0, v1

    .line 318
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "onGetTestMode failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29
.end method

.method onSetTestMode(I)V
    .registers 6
    .parameter "mode"

    .prologue
    const-string v3, "BluetoothTestModeService"

    .line 304
    const-string v1, "BluetoothTestModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetTestMode(mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :try_start_24
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onSetTestMode(I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_2a

    .line 310
    :goto_29
    return-void

    .line 307
    :catch_2a
    move-exception v1

    move-object v0, v1

    .line 308
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "onSetTestMode failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29
.end method

.method onTx_Rx_Test(II)V
    .registers 7
    .parameter "mode"
    .parameter "status"

    .prologue
    const-string v3, "BluetoothTestModeService"

    .line 359
    const-string v1, "BluetoothTestModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTX_Test(mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :try_start_32
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onTx_Rx_Test(II)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_37} :catch_38

    .line 365
    :goto_37
    return-void

    .line 362
    :catch_38
    move-exception v1

    move-object v0, v1

    .line 363
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "onTX_Test() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37
.end method

.method public declared-synchronized setTraceLevel(BB)I
    .registers 8
    .parameter "layer_id"
    .parameter "level"

    .prologue
    const-string v2, "BluetoothTestModeService"

    .line 234
    monitor-enter p0

    const/high16 v2, -0x1

    shl-int/lit8 v3, p1, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    and-int/lit16 v3, p2, 0xff

    or-int v1, v2, v3

    .line 235
    .local v1, set_level:I
    :try_start_10
    const-string v2, "BluetoothTestModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTraceLevel( set_level"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) call setTestModeNative()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_43
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_35} :catch_38

    .line 241
    const/4 v2, 0x1

    :goto_36
    monitor-exit p0

    return v2

    .line 237
    :catch_38
    move-exception v2

    move-object v0, v2

    .line 238
    .local v0, e:Ljava/lang/Exception;
    :try_start_3a
    const-string v2, "BluetoothTestModeService"

    const-string v3, "Call setTestModeNative Failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_43

    .line 239
    const/4 v2, -0x1

    goto :goto_36

    .line 234
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_43
    move-exception v2

    monitor-exit p0

    throw v2
.end method
