.class public Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothPrinter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PRINT_FORMAT;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$SERVICE_MASK;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATUS;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$JOB_STATE;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATE_REASON;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPrinter"


# instance fields
.field private mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;Landroid/content/ServiceConnection;)V
    .registers 4
    .parameter "ctx"
    .parameter "service"
    .parameter "appServiceConn"

    .prologue
    .line 86
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 87
    iput-object p2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    .line 102
    return-void
.end method

.method public static doesClassMatch(I)Z
    .registers 3
    .parameter "btClass"

    .prologue
    .line 113
    const/high16 v0, 0x4

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothClass$Service;->hasService(II)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/high16 v0, 0x10

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothClass$Service;->hasService(II)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0}, Landroid/bluetooth/BluetoothClass$Device$Major;->getDeviceMajor(I)I

    move-result v0

    const/16 v1, 0x600

    if-ne v0, v1, :cond_1a

    .line 118
    const/4 v0, 0x1

    .line 120
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public declared-synchronized abortPrinting()V
    .registers 4

    .prologue
    const-string v1, "BluetoothPrinter"

    .line 321
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.abort()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->abort()V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_11

    .line 327
    :goto_f
    monitor-exit p0

    return-void

    .line 324
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 325
    .local v0, e:Ljava/lang/Exception;
    :try_start_13
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.abort() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_f

    .line 321
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized cancelAllPrintTasks()V
    .registers 4

    .prologue
    const-string v1, "BluetoothPrinter"

    .line 349
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.cancelAll()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->cancelAll()V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_11

    .line 355
    :goto_f
    monitor-exit p0

    return-void

    .line 352
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 353
    .local v0, e:Ljava/lang/Exception;
    :try_start_13
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.cancelAll() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_f

    .line 349
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized cancelBppStatusReporting()V
    .registers 4

    .prologue
    const-string v1, "BluetoothPrinter"

    .line 335
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.cancelBppStatus()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->cancelBppStatus()V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_11

    .line 341
    :goto_f
    monitor-exit p0

    return-void

    .line 338
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 339
    .local v0, e:Ljava/lang/Exception;
    :try_start_13
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.cancelBppStatus() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_f

    .line 335
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized cancelPrintTask(I)V
    .registers 5
    .parameter "task"

    .prologue
    const-string v1, "BluetoothPrinter"

    .line 367
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.cancelTask()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->cancelTask(I)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_11

    .line 373
    :goto_f
    monitor-exit p0

    return-void

    .line 370
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 371
    .local v0, e:Ljava/lang/Exception;
    :try_start_13
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.cancelTask() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_f

    .line 367
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 706
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 707
    return-void
.end method

.method getAllPrintJobHistory()[Lcom/broadcom/bt/service/bpp/PrintJob;
    .registers 5

    .prologue
    const-string v3, "BluetoothPrinter"

    .line 400
    :try_start_2
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.getAllPrintJobHistory()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->getAllPrintJobHistory()[Lcom/broadcom/bt/service/bpp/PrintJob;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_10

    move-result-object v1

    .line 409
    :goto_f
    return-object v1

    .line 402
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 403
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothPrinter"

    const-string v1, "BluetoothPrinterService.getPrintJobHistory() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    const/4 v1, 0x0

    goto :goto_f
.end method

.method getPrintJobHistory(J)Lcom/broadcom/bt/service/bpp/PrintJob;
    .registers 7
    .parameter "jobId"

    .prologue
    const-string v3, "BluetoothPrinter"

    .line 382
    :try_start_2
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.getPrintJobHistory()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->getPrintJobHistory(J)Lcom/broadcom/bt/service/bpp/PrintJob;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_10

    move-result-object v1

    .line 391
    :goto_f
    return-object v1

    .line 384
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 385
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothPrinter"

    const-string v1, "BluetoothPrinterService.getPrintJobHistory() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public declared-synchronized getPrinterCapabilities(Ljava/lang/String;I)V
    .registers 6
    .parameter "bluetoothAddress"
    .parameter "serviceMask"

    .prologue
    const-string v1, "BluetoothPrinter"

    .line 177
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.getCapabilities()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->getCapabilities(Ljava/lang/String;I)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_11

    .line 184
    :goto_f
    monitor-exit p0

    return-void

    .line 181
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 182
    .local v0, e:Ljava/lang/Exception;
    :try_start_13
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.getCapabilities() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_f

    .line 177
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized obexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "password"
    .parameter "userId"

    .prologue
    const-string v1, "BluetoothPrinter"

    .line 200
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.obexAuthenticationResponse()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->obexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_11

    .line 213
    :goto_f
    monitor-exit p0

    return-void

    .line 206
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 207
    .local v0, e:Ljava/lang/Exception;
    :try_start_13
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.obexAuthenticationResponse() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_f

    .line 200
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized printObject(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J
    .registers 23
    .parameter "bluetoothAddress"
    .parameter "serviceMask"
    .parameter "fileFormat"
    .parameter "header"
    .parameter "name"
    .parameter "handle"
    .parameter "bipParams"
    .parameter "bppParams"
    .parameter "bppObjectResolver"
    .parameter "cb"

    .prologue
    .line 263
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothPrinter"

    const-string v1, "Call BluetoothPrinterService.print()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->print(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_21

    move-result-wide v0

    .line 272
    :goto_1f
    monitor-exit p0

    return-wide v0

    .line 268
    :catch_21
    move-exception v0

    move-object v11, v0

    .line 269
    .local v11, e:Ljava/lang/Exception;
    :try_start_23
    const-string v0, "BluetoothPrinter"

    const-string v1, "BluetoothPrinterService.print() failed"

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2d

    .line 272
    const-wide/16 v0, -0x1

    goto :goto_1f

    .line 263
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerPrinterEventHandler(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z
    .registers 5
    .parameter "cb"

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->registerClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_9

    move-result v1

    .line 141
    :goto_7
    monitor-exit p0

    return v1

    .line 136
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 137
    .local v0, e:Landroid/os/RemoteException;
    :try_start_b
    const-string v1, "BluetoothPrinter"

    const-string v2, "Failed to initialize/register callbacks with server."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_14

    .line 141
    const/4 v1, 0x0

    goto :goto_7

    .line 135
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method removeAllPrintJobHistory()V
    .registers 1

    .prologue
    .line 433
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->removeAllJobHistory()V

    .line 434
    return-void
.end method

.method removePrintJobHistory(J)V
    .registers 7
    .parameter "jobId"

    .prologue
    const-string v3, "BluetoothPrinter"

    .line 418
    :try_start_2
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.removeJobHistory()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->removePrintJobHistory(J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    .line 427
    :goto_e
    return-void

    .line 420
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 421
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothPrinter"

    const-string v1, "BluetoothPrinterService.getPrintJobHistory() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public declared-synchronized sendPartialImageResponse(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    const-string v1, "BluetoothPrinter"

    .line 286
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.partialImageResponse()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->partialImageResponse(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_11

    .line 293
    :goto_f
    monitor-exit p0

    return-void

    .line 289
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 290
    .local v0, e:Ljava/lang/Exception;
    :try_start_13
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.partialImageResponse() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_f

    .line 286
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sendReferenceObjectResponse(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    const-string v1, "BluetoothPrinter"

    .line 305
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.refObjectResponse()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->refObjectResponse(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_11

    .line 311
    :goto_f
    monitor-exit p0

    return-void

    .line 308
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 309
    .local v0, e:Ljava/lang/Exception;
    :try_start_13
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.refObjectResponse() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_f

    .line 305
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unregisterPrinterEventHandler(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z
    .registers 5
    .parameter "cb"

    .prologue
    .line 156
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mBluetoothPrinterService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->unregisterClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_9

    move-result v1

    .line 162
    :goto_7
    monitor-exit p0

    return v1

    .line 157
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 158
    .local v0, e:Landroid/os/RemoteException;
    :try_start_b
    const-string v1, "BluetoothPrinter"

    const-string v2, "Failed to initialize/register callbacks with server."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_14

    .line 162
    const/4 v1, 0x0

    goto :goto_7

    .line 156
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method
