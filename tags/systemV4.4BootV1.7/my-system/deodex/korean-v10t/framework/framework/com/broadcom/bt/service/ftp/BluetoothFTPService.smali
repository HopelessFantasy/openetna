.class public Lcom/broadcom/bt/service/ftp/BluetoothFTPService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothFTPService.java"


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = false

.field private static final FTP_DISABLE_FTPS:I = 0x0

.field private static final FTP_ENABLE_FTPS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothFTPService"


# instance fields
.field private mFtpNativeData:I

.field private mIsFinish:Z

.field private mMediaScanner:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 97
    invoke-static {}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->classInitNative()V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 150
    new-instance v0, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    invoke-direct {v0, p1}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    .line 151
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupFtpNativeDataNative()V
.end method

.method private native disableFtpServerNative()V
.end method

.method private native enableDefaultFtpServerNative()V
.end method

.method private native enableFtpServerNative(ILjava/lang/String;Ljava/lang/String;ZB[BB)V
.end method

.method private native ftpServerAccessRspNative(BZLjava/lang/String;)V
.end method

.method private native ftpServerAuthenRspNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native initFtpNativeDataNative()V
.end method


# virtual methods
.method public declared-synchronized disableFtpServer()V
    .registers 4

    .prologue
    .line 180
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->disableFtpServerNative()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 184
    :goto_4
    monitor-exit p0

    return-void

    .line 181
    :catch_6
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothFTPService"

    const-string v2, "disableFtpServerNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 180
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enableDefaultFtpServer()V
    .registers 4

    .prologue
    .line 194
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->enableDefaultFtpServerNative()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 198
    :goto_4
    monitor-exit p0

    return-void

    .line 195
    :catch_6
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothFTPService"

    const-string v2, "enableDefaultFtpServerNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 194
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enableFtpServer(ILjava/lang/String;Ljava/lang/String;ZB[BB)V
    .registers 11
    .parameter "security_mask"
    .parameter "service_name"
    .parameter "root_path"
    .parameter "enable_authen"
    .parameter "realm_len"
    .parameter "realm"
    .parameter "app_id"

    .prologue
    .line 165
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p7}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->enableFtpServerNative(ILjava/lang/String;Ljava/lang/String;ZB[BB)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 169
    :goto_4
    monitor-exit p0

    return-void

    .line 166
    :catch_6
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothFTPService"

    const-string v2, "enableFtpServerNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 165
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->finish()V

    .line 131
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 132
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 4

    .prologue
    .line 118
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mIsFinish:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez v1, :cond_b

    .line 120
    :try_start_5
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->cleanupFtpNativeDataNative()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_16
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_d

    .line 124
    :goto_8
    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mIsFinish:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_16

    .line 126
    :cond_b
    monitor-exit p0

    return-void

    .line 121
    :catch_d
    move-exception v0

    .line 122
    .local v0, t:Ljava/lang/Throwable;
    :try_start_e
    const-string v1, "BluetoothFTPService"

    const-string v2, "Unable to cleanup ftp service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_8

    .line 118
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized ftpServerAccessRsp(BZLjava/lang/String;)V
    .registers 7
    .parameter "op_code"
    .parameter "access"
    .parameter "filename"

    .prologue
    .line 224
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRspNative(BZLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 228
    :goto_4
    monitor-exit p0

    return-void

    .line 225
    :catch_6
    move-exception v0

    .line 226
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothFTPService"

    const-string v2, "ftpServerAccessRspNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 224
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "password"
    .parameter "userId"

    .prologue
    .line 207
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAuthenRspNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 211
    :goto_4
    monitor-exit p0

    return-void

    .line 208
    :catch_6
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothFTPService"

    const-string v2, "ftpServerAuthRspNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 207
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    const-string v0, "bluetooth_ftp"

    return-object v0
.end method

.method public declared-synchronized init()V
    .registers 2

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->initFtpNativeDataNative()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mIsFinish:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 112
    monitor-exit p0

    return-void

    .line 110
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onFtpServerAccessRequested(Ljava/lang/String;ILjava/lang/String;BLjava/lang/String;)V
    .registers 10
    .parameter "fileName"
    .parameter "fileSize"
    .parameter "remoteDeviceName"
    .parameter "opCode"
    .parameter "remoteAddress"

    .prologue
    .line 267
    const-string v2, "service.brcm.bt.secure_mode"

    const-string v3, "property not found"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, mSecureModeProperty:Ljava/lang/String;
    if-eqz v1, :cond_12

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 271
    :cond_12
    const-string v2, "BluetoothFTPService"

    const-string v3, "#######Access request disabled...Allowing all FTP requests...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v2, 0x1

    invoke-virtual {p0, p4, v2, p1}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V

    .line 288
    :goto_1d
    return-void

    .line 276
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-string v2, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, accessReqIntent:Landroid/content/Intent;
    const-string v2, "broadcom.android.bluetooth.intent.FILE_NAME"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v2, "broadcom.android.bluetooth.intent.RMT_DEV_NAME"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v2, "broadcom.android.bluetooth.intent.RMT_DEV_ADDR"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v2, "broadcom.android.bluetooth.intent.FILE_SIZE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const-string v2, "broadcom.android.bluetooth.intent.SERVICE_OPER_CODE"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 285
    const-string v2, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 286
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method onFtpServerAuthen(Ljava/lang/String;BZ)V
    .registers 4
    .parameter "user_id"
    .parameter "userid_length"
    .parameter "userid_required"

    .prologue
    .line 264
    return-void
.end method

.method onFtpServerClosed()V
    .registers 4

    .prologue
    .line 253
    const-string v1, "BluetoothFTPService"

    const-string v2, "onFtpServerClosed() called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, i:Landroid/content/Intent;
    const-string v1, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 256
    const-string v1, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method onFtpServerDelCompleted(Ljava/lang/String;B)V
    .registers 8
    .parameter "file_name"
    .parameter "status"

    .prologue
    const-string v4, "BluetoothFTPService"

    .line 317
    const-string v2, "BluetoothFTPService"

    const/4 v2, 0x4

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 318
    const-string v2, "BluetoothFTPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFtpServerDelCompleted(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_2d
    :try_start_2d
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 323
    .local v0, mFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->scanFiles(Ljava/util/ArrayList;Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_3c} :catch_3d

    .line 329
    .end local v0           #mFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3c
    return-void

    .line 325
    :catch_3d
    move-exception v2

    move-object v1, v2

    .line 326
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothFTPService"

    const-string v2, "Unable to run media scanner"

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c
.end method

.method onFtpServerDisabled()V
    .registers 3

    .prologue
    .line 239
    const-string v0, "BluetoothFTPService"

    const-string v1, "onFtpServerDisabled() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->onStateChangeEvent(Z)V

    .line 241
    return-void
.end method

.method onFtpServerEnabled()V
    .registers 3

    .prologue
    .line 234
    const-string v0, "BluetoothFTPService"

    const-string v1, "onFtpServerEnabled() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->onStateChangeEvent(Z)V

    .line 236
    return-void
.end method

.method onFtpServerFileTransferInProgress(II)V
    .registers 6
    .parameter "file_size"
    .parameter "num_of_byte_since_last_reported"

    .prologue
    const-string v2, "BluetoothFTPService"

    .line 291
    const-string v0, "BluetoothFTPService"

    const/4 v0, 0x4

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 292
    const-string v0, "BluetoothFTPService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transferring file via FTP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_2d
    return-void
.end method

.method onFtpServerGetCompleted(Ljava/lang/String;B)V
    .registers 6
    .parameter "file_name"
    .parameter "status"

    .prologue
    const-string v2, "BluetoothFTPService"

    .line 311
    const-string v0, "BluetoothFTPService"

    const/4 v0, 0x4

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 312
    const-string v0, "BluetoothFTPService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFtpServerGetCompleted(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_2d
    return-void
.end method

.method onFtpServerOpened()V
    .registers 4

    .prologue
    .line 244
    const-string v1, "BluetoothFTPService"

    const-string v2, "onFtpServerOpened() called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, i:Landroid/content/Intent;
    const-string v1, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 247
    const-string v1, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method onFtpServerPutCompleted(Ljava/lang/String;B)V
    .registers 8
    .parameter "file_name"
    .parameter "status"

    .prologue
    const-string v4, "BluetoothFTPService"

    .line 297
    const-string v2, "BluetoothFTPService"

    const/4 v2, 0x4

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 298
    const-string v2, "BluetoothFTPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFtpServerPutCompleted(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_2d
    :try_start_2d
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 303
    .local v0, mFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/broadcom/bt/service/mediascanner/MediaScannerEngine;->scanFiles(Ljava/util/ArrayList;Lcom/broadcom/bt/service/mediascanner/IMediaScannerCallback;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_3c} :catch_3d

    .line 308
    .end local v0           #mFiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3c
    return-void

    .line 305
    :catch_3d
    move-exception v2

    move-object v1, v2

    .line 306
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothFTPService"

    const-string v2, "Unable to run media scanner"

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c
.end method

.method public start()V
    .registers 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->enableDefaultFtpServer()V

    .line 333
    return-void
.end method

.method public stop()V
    .registers 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->disableFtpServer()V

    .line 337
    return-void
.end method
