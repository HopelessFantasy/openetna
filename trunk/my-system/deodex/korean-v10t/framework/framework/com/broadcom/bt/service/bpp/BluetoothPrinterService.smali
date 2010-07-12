.class public Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;
.super Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;
.source "BluetoothPrinterService.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IBtService;
.implements Lcom/broadcom/bt/service/bpp/IBluetoothPrinterServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;
    }
.end annotation


# static fields
.field private static final MAX_PRINT_TIMEOUT_MS:I = 0x7530

.field public static final PR_BIP_SERVICE_MASK:I = 0x2000

.field public static final PR_BPP_SERVICE_MASK:I = 0x1000

.field public static final PR_OPP_SERVICE_MASK:I = 0x80

.field private static final TAG:Ljava/lang/String; = "BluetoothPrinterService"

.field private static final USE_PRINT_QUEUE:Z = false

.field private static final WAIT_TIME_PENDING_MS:I = 0x1388


# instance fields
.field public PRINT_LOCK:Ljava/lang/String;

.field mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

.field mContext:Landroid/content/Context;

.field mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

.field mCurrentJobId:J

.field protected mIsStarted:Z

.field protected mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

.field mPrintThread:Ljava/lang/Thread;

.field mPrintWorker:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;

.field final mPrinterCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;",
            ">;"
        }
    .end annotation
.end field

.field mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .parameter "context"
    .parameter "isAppService"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;-><init>()V

    .line 78
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    .line 826
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->PRINT_LOCK:Ljava/lang/String;

    .line 828
    new-instance v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;-><init>(Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrintWorker:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;

    .line 942
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z

    .line 155
    const-string v0, "BluetoothPrinterService"

    const-string v1, "Initialize Bluetooth Printer Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    .line 157
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_InitBluetoothPrinter()V

    .line 158
    return-void
.end method

.method private native Native_BluetoothPrinterAbort()V
.end method

.method private native Native_BluetoothPrinterCancelBppStatus()V
.end method

.method private native Native_BluetoothPrinterDisable()V
.end method

.method private native Native_BluetoothPrinterEnable()V
.end method

.method private native Native_BluetoothPrinterGetCapabilities(Ljava/lang/String;I)V
.end method

.method private native Native_BluetoothPrinterObexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native Native_BluetoothPrinterPartialImageResponse(Ljava/lang/String;)V
.end method

.method private native Native_BluetoothPrinterPrint(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
.end method

.method private native Native_BluetoothPrinterRefObjectResponse(Ljava/lang/String;)V
.end method

.method private native Native_InitBluetoothPrinter()V
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->getCurrentJobStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;Lcom/broadcom/bt/service/bpp/PrintJob;)J
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->executePrint(Lcom/broadcom/bt/service/bpp/PrintJob;)J

    move-result-wide v0

    return-wide v0
.end method

.method private executePrint(Lcom/broadcom/bt/service/bpp/PrintJob;)J
    .registers 12
    .parameter "job"

    .prologue
    const-string v0, ","

    .line 352
    :try_start_2
    invoke-virtual {p1}, Lcom/broadcom/bt/service/bpp/PrintJob;->setStartState()V

    .line 353
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    .line 354
    iget-object v0, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    .line 355
    iget-wide v0, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    iput-wide v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJobId:J

    .line 357
    const-string v0, "BluetoothPrinterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executePrint("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mServiceMask:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mFileFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mHeader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mBipParams:Lcom/broadcom/bt/service/bpp/BipParameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mBppParams:Lcom/broadcom/bt/service/bpp/BppParameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->enable()V

    .line 364
    iget-object v1, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    iget v2, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mServiceMask:I

    iget v3, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mFileFormat:I

    iget-object v4, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mHeader:Ljava/lang/String;

    iget-object v5, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    iget v6, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mHandle:I

    iget-object v7, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mBipParams:Lcom/broadcom/bt/service/bpp/BipParameters;

    iget-object v8, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mBppParams:Lcom/broadcom/bt/service/bpp/BppParameters;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterPrint(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_aa} :catch_ad

    .line 370
    :goto_aa
    iget-wide v0, p1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    return-wide v0

    .line 367
    :catch_ad
    move-exception v0

    move-object v9, v0

    .line 368
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_aa
.end method

.method private getCurrentJobStatus()I
    .registers 7

    .prologue
    const/4 v4, 0x3

    .line 811
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    if-nez v2, :cond_7

    move v2, v4

    .line 822
    :goto_6
    return v2

    .line 813
    :cond_7
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iget v2, v2, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_14

    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iget v2, v2, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I

    if-eq v2, v4, :cond_45

    .line 816
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iget-wide v4, v4, Lcom/broadcom/bt/service/bpp/PrintJob;->mLastStatusUpdateTime:J

    sub-long v0, v2, v4

    .line 817
    .local v0, timeoutMs:J
    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    if-lez v2, :cond_45

    .line 818
    const-string v2, "BluetoothPrinterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Print Job not responding for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "msecs!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/16 v2, -0x64

    goto :goto_6

    .line 822
    .end local v0           #timeoutMs:J
    :cond_45
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iget v2, v2, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrinterStatus:I

    goto :goto_6
.end method

.method private startPrintQueue()V
    .registers 4

    .prologue
    .line 796
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrintThread:Ljava/lang/Thread;

    if-nez v0, :cond_19

    .line 797
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrintWorker:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->reset()V

    .line 798
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrintWorker:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;

    const-string v2, "BppPrintThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrintThread:Ljava/lang/Thread;

    .line 799
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrintThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 801
    :cond_19
    return-void
.end method

.method private stopPrintQueue()V
    .registers 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrintThread:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    .line 805
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrintWorker:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService$PrintWorker;->interrupt()V

    .line 806
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrintThread:Ljava/lang/Thread;

    .line 808
    :cond_c
    return-void
.end method


# virtual methods
.method public abort()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 385
    const-string v1, "BluetoothPrinterService"

    const-string v2, "abort"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :try_start_7
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterAbort()V

    .line 389
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    const/4 v2, 0x4

    iput v2, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I

    .line 390
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->PRINT_LOCK:Ljava/lang/String;

    monitor-enter v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_1c

    .line 391
    :try_start_12
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->PRINT_LOCK:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 392
    monitor-exit v1

    .line 396
    :goto_18
    return-void

    .line 392
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1c} :catch_1c

    .line 393
    :catch_1c
    move-exception v1

    move-object v0, v1

    .line 394
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public cancelAll()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 431
    const-string v0, "BluetoothPrinterService"

    const-string v1, "cancelAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void
.end method

.method public cancelBppStatus()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 440
    const-string v1, "BluetoothPrinterService"

    const-string v2, "cancelBppStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :try_start_7
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterCancelBppStatus()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    .line 447
    :goto_a
    return-void

    .line 444
    :catch_b
    move-exception v0

    .line 445
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public cancelTask(I)V
    .registers 4
    .parameter "task"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 453
    const-string v0, "BluetoothPrinterService"

    const-string v1, "cancelTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void
.end method

.method public declared-synchronized disable()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 230
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterDisable()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 235
    :goto_4
    monitor-exit p0

    return-void

    .line 231
    :catch_6
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    goto :goto_4

    .line 230
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enable()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterEnable()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 215
    :goto_4
    monitor-exit p0

    return-void

    .line 212
    :catch_6
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    goto :goto_4

    .line 211
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public finish()V
    .registers 1

    .prologue
    .line 968
    return-void
.end method

.method public getAllPrintJobHistory()[Lcom/broadcom/bt/service/bpp/PrintJob;
    .registers 3

    .prologue
    .line 926
    sget-object v1, Lcom/broadcom/bt/service/bpp/PrintManager;->mJobHistory:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-array v0, v1, [Lcom/broadcom/bt/service/bpp/PrintJob;

    .line 927
    .local v0, jobs:[Lcom/broadcom/bt/service/bpp/PrintJob;
    sget-object v1, Lcom/broadcom/bt/service/bpp/PrintManager;->mJobHistory:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 928
    return-object v0
.end method

.method public getCapabilities(Ljava/lang/String;I)V
    .registers 7
    .parameter "bluetoothAddress"
    .parameter "serviceMask"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 254
    :try_start_0
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetCapabilities("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->enable()V

    .line 257
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterGetCapabilities(Ljava/lang/String;I)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    .line 262
    :goto_32
    return-void

    .line 259
    :catch_33
    move-exception v1

    move-object v0, v1

    .line 260
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    const-string v0, "bluetooth_bpp_service"

    return-object v0
.end method

.method public getPrintJobHistory(J)Lcom/broadcom/bt/service/bpp/PrintJob;
    .registers 4
    .parameter "jobId"

    .prologue
    .line 922
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/bpp/PrintManager;->getJobHistory(J)Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .registers 1

    .prologue
    .line 965
    return-void
.end method

.method public obexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "password"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 413
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "obexAuthenticationResponse("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :try_start_22
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterObexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    .line 421
    :goto_25
    return-void

    .line 418
    :catch_26
    move-exception v0

    .line 419
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method public onAuthorizeEvent(IIIZ)V
    .registers 12
    .parameter "realmIndex"
    .parameter "realmLength"
    .parameter "realmCharSet"
    .parameter "required"

    .prologue
    const-string v6, ", "

    .line 514
    const-string v3, "BluetoothPrinterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAuthorizeEvent("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p4, :cond_59

    const-string v5, "TRUE"

    :goto_31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 519
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_49
    if-ge v2, v0, :cond_62

    .line 521
    :try_start_4b
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;->onAuthorizePrinter(IIIZ)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_56} :catch_5c

    .line 519
    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 514
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_59
    const-string v5, "FALSE"

    goto :goto_31

    .line 523
    .restart local v0       #N:I
    .restart local v2       #i:I
    :catch_5c
    move-exception v3

    move-object v1, v3

    .line 524
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_56

    .line 527
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_62
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 529
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    if-eqz v3, :cond_70

    .line 530
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/bpp/PrintJob;->refreshLastUpdateTime()V

    .line 532
    :cond_70
    return-void
.end method

.method public onBppDocCompleteEvent(I)V
    .registers 8
    .parameter "status"

    .prologue
    const-string v5, "BluetoothPrinterService"

    .line 542
    const-string v2, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBppDocCompleteEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    if-eqz v2, :cond_2b

    .line 546
    :try_start_24
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    iget-wide v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJobId:J

    invoke-interface {v2, v3, v4, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;->onPrinterBppDocComplete(JI)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2b} :catch_4c

    .line 554
    :cond_2b
    :goto_2b
    :try_start_2b
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterCancelBppStatus()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2e} :catch_52

    .line 559
    :goto_2e
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->PRINT_LOCK:Ljava/lang/String;

    monitor-enter v2

    .line 560
    :try_start_31
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    if-eqz v3, :cond_4a

    .line 561
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iput p1, v3, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrinterStatus:I

    .line 562
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iget v3, v3, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5b

    .line 564
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/bpp/PrintJob;->setEndState()V

    .line 565
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->PRINT_LOCK:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 570
    :cond_4a
    :goto_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_31 .. :try_end_4b} :catchall_61

    .line 571
    return-void

    .line 547
    :catch_4c
    move-exception v2

    move-object v0, v2

    .line 548
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2b

    .line 555
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_52
    move-exception v1

    .line 556
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothPrinterService"

    const-string v2, "Unable to cancel job status reporting"

    invoke-static {v5, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    .line 567
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_5b
    :try_start_5b
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/bpp/PrintJob;->refreshLastUpdateTime()V

    goto :goto_4a

    .line 570
    :catchall_61
    move-exception v3

    monitor-exit v2
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_61

    throw v3
.end method

.method public onCloseEvent(I)V
    .registers 6
    .parameter "status"

    .prologue
    .line 582
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCloseEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    if-eqz v1, :cond_29

    .line 586
    :try_start_22
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    iget-wide v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJobId:J

    invoke-interface {v1, v2, v3, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;->onPrinterTaskClosed(JI)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_29} :catch_47

    .line 592
    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->PRINT_LOCK:Ljava/lang/String;

    monitor-enter v1

    .line 593
    :try_start_2c
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    if-eqz v2, :cond_45

    .line 594
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iput p1, v2, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrinterStatus:I

    .line 596
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iget v2, v2, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4d

    .line 598
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/bpp/PrintJob;->setEndState()V

    .line 599
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->PRINT_LOCK:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 604
    :cond_45
    :goto_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_2c .. :try_end_46} :catchall_53

    .line 605
    return-void

    .line 587
    :catch_47
    move-exception v1

    move-object v0, v1

    .line 588
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_29

    .line 601
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4d
    :try_start_4d
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/bpp/PrintJob;->refreshLastUpdateTime()V

    goto :goto_45

    .line 604
    :catchall_53
    move-exception v2

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_53

    throw v2
.end method

.method public onEnableEvent()V
    .registers 3

    .prologue
    .line 612
    const-string v0, "BluetoothPrinterService"

    const-string v1, "onEnableEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return-void
.end method

.method public onGetCapabilitiesEvent(IIIILcom/broadcom/bt/service/bpp/BipCapabilities;Lcom/broadcom/bt/service/bpp/BppAttributes;)V
    .registers 17
    .parameter "services"
    .parameter "bppFeatures"
    .parameter "oppFeatures"
    .parameter "bipFeatures"
    .parameter "bc"
    .parameter "ba"

    .prologue
    .line 636
    const-string v0, "BluetoothPrinterService"

    const-string v1, "*** Printer Capabilities ***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v0, "BluetoothPrinterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Printer Services: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const-string v0, "BluetoothPrinterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPP Features: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v0, "BluetoothPrinterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BIP Features: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const-string v0, "BluetoothPrinterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BPP Features: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v7

    .line 643
    .local v7, N:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_7e
    if-ge v9, v7, :cond_9b

    .line 645
    :try_start_80
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;->onGetPrinterCapabilities(IIIILcom/broadcom/bt/service/bpp/BipCapabilities;Lcom/broadcom/bt/service/bpp/BppAttributes;)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_92} :catch_95

    .line 643
    :goto_92
    add-int/lit8 v9, v9, 0x1

    goto :goto_7e

    .line 648
    :catch_95
    move-exception v0

    move-object v8, v0

    .line 649
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_92

    .line 652
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_9b
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 653
    return-void
.end method

.method public onGetObjectEvent(Ljava/lang/String;)V
    .registers 8
    .parameter "name"

    .prologue
    const-string v5, "BluetoothPrinterService"

    .line 660
    const-string v3, "BluetoothPrinterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetObjectEvent("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v1, 0x0

    .line 664
    .local v1, filePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iget-object v2, v3, Lcom/broadcom/bt/service/bpp/PrintJob;->mObjectResolver:Lcom/broadcom/bt/service/bpp/BppObjectResolver;

    .line 665
    .local v2, objectResolver:Lcom/broadcom/bt/service/bpp/BppObjectResolver;
    if-eqz v2, :cond_2b

    .line 666
    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->getMappedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 668
    :cond_2b
    if-eqz v1, :cond_4e

    .line 669
    const-string v3, "BluetoothPrinterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetObjectEvent: BppObjectResolver provided file path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Calling Native_BluetoothPrinterRefObjectResponse"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterRefObjectResponse(Ljava/lang/String;)V

    .line 677
    :cond_4e
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    if-eqz v3, :cond_59

    .line 679
    :try_start_52
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    iget-wide v4, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJobId:J

    invoke-interface {v3, v4, v5, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;->onPrinterGetObject(JLjava/lang/String;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_59} :catch_63

    .line 685
    :cond_59
    :goto_59
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    if-eqz v3, :cond_62

    .line 686
    iget-object v3, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/bpp/PrintJob;->refreshLastUpdateTime()V

    .line 688
    :cond_62
    return-void

    .line 680
    :catch_63
    move-exception v3

    move-object v0, v3

    .line 681
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_59
.end method

.method public onJobStatusEvent(Lcom/broadcom/bt/service/bpp/JobStatus;)V
    .registers 6
    .parameter "status"

    .prologue
    .line 698
    const-string v1, "BluetoothPrinterService"

    const-string v2, "onJobStatusEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    if-eqz v1, :cond_12

    .line 702
    :try_start_b
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    iget-wide v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJobId:J

    invoke-interface {v1, v2, v3, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;->onPrinterJobStatus(JLcom/broadcom/bt/service/bpp/JobStatus;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_20

    .line 708
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    if-eqz v1, :cond_1f

    .line 709
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iput-object p1, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobStatus:Lcom/broadcom/bt/service/bpp/JobStatus;

    .line 710
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/bpp/PrintJob;->refreshLastUpdateTime()V

    .line 712
    :cond_1f
    return-void

    .line 703
    :catch_20
    move-exception v1

    move-object v0, v1

    .line 704
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_12
.end method

.method public onOpenEvent(I)V
    .registers 6
    .parameter "serviceId"

    .prologue
    .line 722
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOpenEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    if-eqz v1, :cond_29

    .line 726
    :try_start_22
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    iget-wide v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJobId:J

    invoke-interface {v1, v2, v3, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;->onPrinterTaskOpen(JI)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_29} :catch_2a

    .line 731
    :cond_29
    :goto_29
    return-void

    .line 727
    :catch_2a
    move-exception v1

    move-object v0, v1

    .line 728
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_29
.end method

.method public onPartialImageEvent(Ljava/lang/String;)V
    .registers 6
    .parameter "name"

    .prologue
    .line 738
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPartialImageEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    if-eqz v1, :cond_29

    .line 742
    :try_start_22
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    iget-wide v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJobId:J

    invoke-interface {v1, v2, v3, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;->onPrinterPartialImage(JLjava/lang/String;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_29} :catch_2a

    .line 747
    :cond_29
    :goto_29
    return-void

    .line 743
    :catch_2a
    move-exception v1

    move-object v0, v1

    .line 744
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_29
.end method

.method public onProgressEvent(II)V
    .registers 7
    .parameter "totalBytes"
    .parameter "processedBytes"

    .prologue
    .line 759
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProgressEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    if-eqz v1, :cond_2d

    .line 763
    :try_start_26
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    iget-wide v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJobId:J

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;->onPrinterProgress(JII)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2d} :catch_3f

    .line 771
    :cond_2d
    :goto_2d
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    if-eqz v1, :cond_3e

    .line 772
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iput p1, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mTotalBytes:I

    .line 773
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iput p2, v1, Lcom/broadcom/bt/service/bpp/PrintJob;->mProcessedBytes:I

    .line 774
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/bpp/PrintJob;->refreshLastUpdateTime()V

    .line 776
    :cond_3e
    return-void

    .line 766
    :catch_3f
    move-exception v1

    move-object v0, v1

    .line 767
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2d
.end method

.method public declared-synchronized onStateChangeEvent(Z)V
    .registers 3
    .parameter "started"

    .prologue
    .line 956
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z

    if-eqz v0, :cond_c

    .line 957
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStart()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    .line 961
    :goto_a
    monitor-exit p0

    return-void

    .line 959
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStop()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_a

    .line 956
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onThumbnailEvent()V
    .registers 5

    .prologue
    .line 784
    const-string v1, "BluetoothPrinterService"

    const-string v2, "onThumbnailEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    if-eqz v1, :cond_12

    .line 788
    :try_start_b
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCb:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    iget-wide v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mCurrentJobId:J

    invoke-interface {v1, v2, v3}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;->onPrinterThumbnail(J)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_13

    .line 793
    :cond_12
    :goto_12
    return-void

    .line 789
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 790
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_12
.end method

.method public partialImageResponse(Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 466
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "partialImageResponse("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :try_start_1e
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterPartialImageResponse(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    .line 473
    :goto_21
    return-void

    .line 470
    :catch_22
    move-exception v0

    .line 471
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method public print(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J
    .registers 16
    .parameter "bluetoothAddress"
    .parameter "serviceMask"
    .parameter "fileFormat"
    .parameter "header"
    .parameter "name"
    .parameter "handle"
    .parameter "bipParams"
    .parameter "bppParams"
    .parameter "objectResolver"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 308
    const-string v1, "BluetoothPrinterService"

    const-string v2, "print"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static/range {p1 .. p10}, Lcom/broadcom/bt/service/bpp/PrintManager;->createJob(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v0

    .line 315
    .local v0, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Printing Immediately ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mServiceMask:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mFileFormat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mHeader:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBipParams:Lcom/broadcom/bt/service/bpp/BipParameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBppParams:Lcom/broadcom/bt/service/bpp/BppParameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-static {v0}, Lcom/broadcom/bt/service/bpp/PrintManager;->addJobHistory(Lcom/broadcom/bt/service/bpp/PrintJob;)V

    .line 322
    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->executePrint(Lcom/broadcom/bt/service/bpp/PrintJob;)J

    move-result-wide v1

    return-wide v1
.end method

.method public refObjectResponse(Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 487
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refObjectResponse("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :try_start_1e
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterRefObjectResponse(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    .line 494
    :goto_21
    return-void

    .line 491
    :catch_22
    move-exception v0

    .line 492
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method public registerClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z
    .registers 4
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    const-string v0, "BluetoothPrinterService"

    const-string v1, "Register Printer Callbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public removeAllPrintJobHistory()V
    .registers 1

    .prologue
    .line 936
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->removeAllJobHistory()V

    .line 937
    return-void
.end method

.method public removePrintJobHistory(J)V
    .registers 3
    .parameter "jobId"

    .prologue
    .line 932
    invoke-static {p1, p2}, Lcom/broadcom/bt/service/bpp/PrintManager;->removeJobHistory(J)Lcom/broadcom/bt/service/bpp/PrintJob;

    .line 933
    return-void
.end method

.method public declared-synchronized removeStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 951
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 952
    monitor-exit p0

    return-void

    .line 951
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 946
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 947
    monitor-exit p0

    return-void

    .line 946
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    const-string v0, "BluetoothPrinterService"

    .line 87
    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z

    if-eqz v0, :cond_10

    .line 88
    const-string v0, "BluetoothPrinterService"

    const-string v1, "start() called. Bpp Service already enabled. Returning..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_38

    .line 113
    :goto_e
    monitor-exit p0

    return-void

    .line 91
    :cond_10
    :try_start_10
    const-string v0, "BluetoothPrinterService"

    const-string v1, "Enabling Bpp Service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    if-nez v0, :cond_30

    .line 94
    const-string v0, "BluetoothPrinterService"

    const-string v1, "Starting BluetoothPrinterEventLoop..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;-><init>(Landroid/content/Context;Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    .line 96
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->start()V

    .line 111
    :cond_30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->onStateChangeEvent(Z)V
    :try_end_37
    .catchall {:try_start_10 .. :try_end_37} :catchall_38

    goto :goto_e

    .line 87
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 3

    .prologue
    const-string v0, "BluetoothPrinterService"

    .line 116
    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z

    if-nez v0, :cond_10

    .line 117
    const-string v0, "BluetoothPrinterService"

    const-string v1, "disable() called. Bpp Service already disabled. Returning..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_32

    .line 141
    :goto_e
    monitor-exit p0

    return-void

    .line 120
    :cond_10
    :try_start_10
    const-string v0, "BluetoothPrinterService"

    const-string v1, "Disabling Bpp Service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    if-eqz v0, :cond_2a

    .line 135
    const-string v0, "BluetoothPrinterService"

    const-string v1, "Stopping BluetoothPrinterEventLoop..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->interrupt()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    .line 139
    :cond_2a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->onStateChangeEvent(Z)V
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_32

    goto :goto_e

    .line 116
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z
    .registers 4
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    const-string v0, "BluetoothPrinterService"

    const-string v1, "Unregister Printer Callbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mPrinterCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method
