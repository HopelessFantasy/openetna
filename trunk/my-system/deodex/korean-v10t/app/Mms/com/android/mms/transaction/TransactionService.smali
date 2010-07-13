.class public Lcom/android/mms/transaction/TransactionService;
.super Landroid/app/Service;
.source "TransactionService.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_ONALARM:Ljava/lang/String; = "android.intent.action.ACTION_ONALARM"

.field private static final APN_EXTENSION_WAIT:I = 0x7530

.field public static final CONTENT_URI:Ljava/lang/String; = "content_uri"

.field private static final EVENT_CONTINUE_MMS_CONNECTIVITY:I = 0x3

.field private static final EVENT_DATA_STATE_CHANGED:I = 0x2

.field private static final EVENT_HANDLE_NEXT_PENDING_TRANSACTION:I = 0x4

.field private static final EVENT_QUIT:I = 0x64

.field private static final EVENT_TRANSACTION_REQUEST:I = 0x1

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final STATE_URI:Ljava/lang/String; = "uri"

.field private static final TAG:Ljava/lang/String; = "TransactionService"

.field private static final TOAST_DOWNLOAD_LATER:I = 0x2

.field private static final TOAST_MSG_QUEUED:I = 0x1

.field private static final TOAST_NONE:I = -0x1

.field public static final TRANSACTION_COMPLETED_ACTION:Ljava/lang/String; = "android.intent.action.TRANSACTION_COMPLETED_ACTION"


# instance fields
.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mConnectivityListener:Landroid/net/NetworkConnectivityListener;

.field private mNotiPowerManager:Landroid/os/PowerManager;

.field private mNotiWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field public mToastHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Lcom/android/mms/transaction/TransactionService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService$1;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    .line 495
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/TransactionService;)Landroid/net/NetworkConnectivityListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityListener:Landroid/net/NetworkConnectivityListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    return-object v0
.end method

.method private acquireWakeLock()V
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 456
    return-void
.end method

.method private declared-synchronized createWakeLock()V
    .registers 4

    .prologue
    .line 444
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1c

    .line 445
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 446
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "MMS Connectivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 447
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 449
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_1c
    monitor-exit p0

    return-void

    .line 444
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getTransactionType(I)I
    .registers 5
    .parameter "msgType"

    .prologue
    .line 297
    sparse-switch p1, :sswitch_data_24

    .line 305
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized MESSAGE_TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v0, -0x1

    :goto_1c
    return v0

    .line 299
    :sswitch_1d
    const/4 v0, 0x1

    goto :goto_1c

    .line 301
    :sswitch_1f
    const/4 v0, 0x3

    goto :goto_1c

    .line 303
    :sswitch_21
    const/4 v0, 0x2

    goto :goto_1c

    .line 297
    nop

    :sswitch_data_24
    .sparse-switch
        0x80 -> :sswitch_21
        0x82 -> :sswitch_1d
        0x87 -> :sswitch_1f
    .end sparse-switch
.end method

.method private isNetworkAvailable()Z
    .registers 4

    .prologue
    .line 292
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 293
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    return v1
.end method

.method private static isTransientFailure(I)Z
    .registers 2
    .parameter "type"

    .prologue
    .line 288
    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    if-lez p0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V
    .registers 8
    .parameter "serviceId"
    .parameter "txnBundle"
    .parameter "noNetwork"

    .prologue
    const-string v3, "TransactionService"

    .line 311
    if-eqz p3, :cond_13

    .line 312
    const-string v1, "TransactionService"

    const-string v1, "launchTransaction: no network error!"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(II)V

    .line 324
    :goto_12
    return-void

    .line 316
    :cond_13
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 317
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 318
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 320
    const-string v1, "Mms"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 321
    const-string v1, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_3f
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_12
.end method

.method private onNetworkUnavailable(II)V
    .registers 5
    .parameter "serviceId"
    .parameter "transactionType"

    .prologue
    .line 327
    const/4 v0, -0x1

    .line 328
    .local v0, toastType:I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_11

    .line 329
    const/4 v0, 0x2

    .line 333
    :cond_5
    :goto_5
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 334
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 336
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    .line 337
    return-void

    .line 330
    :cond_11
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    .line 331
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private releaseWakeLock()V
    .registers 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 461
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 463
    :cond_11
    return-void
.end method

.method private stopSelfIfIdle(I)V
    .registers 5
    .parameter "startId"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v0

    .line 278
    :try_start_3
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 279
    const-string v1, "Mms"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 280
    const-string v1, "TransactionService"

    const-string v2, "stopSelfIfIdle: STOP!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_23
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    .line 284
    :cond_26
    monitor-exit v0

    .line 285
    return-void

    .line 284
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method


# virtual methods
.method protected beginMmsConnectivity()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->createWakeLock()V

    .line 469
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    const-string v3, "enableMMS"

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 472
    .local v0, result:I
    packed-switch v0, :pswitch_data_1c

    .line 479
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot establish MMS connectivity"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 475
    :pswitch_17
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->acquireWakeLock()V

    .line 476
    return v0

    .line 472
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method protected endMmsConnectivity()V
    .registers 4

    .prologue
    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->removeMessages(I)V

    .line 486
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_12

    .line 487
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableMMS"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_16

    .line 491
    :cond_12
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    .line 493
    return-void

    .line 491
    :catchall_16
    move-exception v0

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 359
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    const-string v2, "TransactionService"

    .line 175
    const-string v1, "Mms"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 176
    const-string v1, "TransactionService"

    const-string v1, "Creating TransactionService"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_12
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TransactionService"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 185
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    .line 186
    new-instance v1, Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;-><init>(Lcom/android/mms/transaction/TransactionService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    .line 188
    new-instance v1, Landroid/net/NetworkConnectivityListener;

    invoke-direct {v1}, Landroid/net/NetworkConnectivityListener;-><init>()V

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityListener:Landroid/net/NetworkConnectivityListener;

    .line 189
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityListener:Landroid/net/NetworkConnectivityListener;

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, v2, v3}, Landroid/net/NetworkConnectivityListener;->registerHandler(Landroid/os/Handler;I)V

    .line 190
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityListener:Landroid/net/NetworkConnectivityListener;

    invoke-virtual {v1, p0}, Landroid/net/NetworkConnectivityListener;->startListening(Landroid/content/Context;)V

    .line 191
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const-string v2, "TransactionService"

    .line 341
    const-string v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 342
    const-string v0, "TransactionService"

    const-string v0, "Destroying TransactionService"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_12
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 345
    const-string v0, "TransactionService"

    const-string v0, "TransactionService exiting with transaction still pending"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_21
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    .line 350
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityListener:Landroid/net/NetworkConnectivityListener;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v0, v1}, Landroid/net/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 351
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityListener:Landroid/net/NetworkConnectivityListener;

    invoke-virtual {v0}, Landroid/net/NetworkConnectivityListener;->stopListening()V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityListener:Landroid/net/NetworkConnectivityListener;

    .line 354
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 355
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 15
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 195
    const-string v9, "Mms"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_2f

    .line 196
    const-string v9, "TransactionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onStart: #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_2f
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 200
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->isNetworkAvailable()Z

    move-result v9

    if-nez v9, :cond_81

    const/4 v9, 0x1

    move v6, v9

    .line 202
    .local v6, noNetwork:Z
    :goto_41
    const-string v9, "android.intent.action.ACTION_ONALARM"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_53

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-nez v9, :cond_f3

    .line 204
    :cond_53
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v3

    .line 206
    .local v3, cursor:Landroid/database/Cursor;
    if-eqz v3, :cond_dc

    .line 208
    :try_start_61
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_84

    .line 209
    const-string v9, "Mms"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_77

    .line 210
    const-string v9, "TransactionService"

    const-string v10, "onStart: No pending messages. Stopping service."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_77
    invoke-static {p0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 214
    invoke-direct {p0, p2}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V
    :try_end_7d
    .catchall {:try_start_61 .. :try_end_7d} :catchall_c2

    .line 256
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 274
    .end local v3           #cursor:Landroid/database/Cursor;
    :goto_80
    return-void

    .line 200
    .end local v6           #noNetwork:Z
    :cond_81
    const/4 v9, 0x0

    move v6, v9

    goto :goto_41

    .line 218
    .restart local v3       #cursor:Landroid/database/Cursor;
    .restart local v6       #noNetwork:Z
    :cond_84
    :try_start_84
    const-string v9, "msg_id"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 220
    .local v1, columnIndexOfMsgId:I
    const-string v9, "msg_type"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 223
    .local v2, columnIndexOfMsgType:I
    :goto_90
    :pswitch_90
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_d8

    .line 224
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 225
    .local v5, msgType:I
    invoke-direct {p0, v5}, Lcom/android/mms/transaction/TransactionService;->getTransactionType(I)I

    move-result v7

    .line 226
    .local v7, transactionType:I
    if-eqz v6, :cond_a7

    .line 227
    invoke-direct {p0, p2, v7}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(II)V
    :try_end_a3
    .catchall {:try_start_84 .. :try_end_a3} :catchall_c2

    .line 256
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_80

    .line 230
    :cond_a7
    packed-switch v7, :pswitch_data_112

    .line 245
    :cond_aa
    :pswitch_aa
    :try_start_aa
    sget-object v9, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 248
    .local v8, uri:Landroid/net/Uri;
    new-instance v0, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v7, v9}, Lcom/android/mms/transaction/TransactionBundle;-><init>(ILjava/lang/String;)V

    .line 251
    .local v0, args:Lcom/android/mms/transaction/TransactionBundle;
    const/4 v9, 0x0

    invoke-direct {p0, p2, v0, v9}, Lcom/android/mms/transaction/TransactionService;->launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V
    :try_end_c1
    .catchall {:try_start_aa .. :try_end_c1} :catchall_c2

    goto :goto_90

    .line 256
    .end local v0           #args:Lcom/android/mms/transaction/TransactionBundle;
    .end local v1           #columnIndexOfMsgId:I
    .end local v2           #columnIndexOfMsgType:I
    .end local v5           #msgType:I
    .end local v7           #transactionType:I
    .end local v8           #uri:Landroid/net/Uri;
    :catchall_c2
    move-exception v9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v9

    .line 237
    .restart local v1       #columnIndexOfMsgId:I
    .restart local v2       #columnIndexOfMsgType:I
    .restart local v5       #msgType:I
    .restart local v7       #transactionType:I
    :pswitch_c7
    :try_start_c7
    const-string v9, "err_type"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 240
    .local v4, failureType:I
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->isTransientFailure(I)Z
    :try_end_d4
    .catchall {:try_start_c7 .. :try_end_d4} :catchall_c2

    move-result v9

    if-nez v9, :cond_aa

    goto :goto_90

    .line 256
    .end local v4           #failureType:I
    .end local v5           #msgType:I
    .end local v7           #transactionType:I
    :cond_d8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_80

    .line 259
    .end local v1           #columnIndexOfMsgId:I
    .end local v2           #columnIndexOfMsgType:I
    :cond_dc
    const-string v9, "Mms"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_ec

    .line 260
    const-string v9, "TransactionService"

    const-string v10, "onStart: No pending messages. Stopping service."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_ec
    invoke-static {p0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 264
    invoke-direct {p0, p2}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    goto :goto_80

    .line 267
    .end local v3           #cursor:Landroid/database/Cursor;
    :cond_f3
    const-string v9, "Mms"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_103

    .line 268
    const-string v9, "TransactionService"

    const-string v10, "onStart: launch transaction..."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_103
    new-instance v0, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/android/mms/transaction/TransactionBundle;-><init>(Landroid/os/Bundle;)V

    .line 272
    .restart local v0       #args:Lcom/android/mms/transaction/TransactionBundle;
    invoke-direct {p0, p2, v0, v6}, Lcom/android/mms/transaction/TransactionService;->launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V

    goto/16 :goto_80

    .line 230
    nop

    :pswitch_data_112
    .packed-switch -0x1
        :pswitch_90
        :pswitch_aa
        :pswitch_c7
    .end packed-switch
.end method

.method public update(Lcom/android/mms/transaction/Observable;)V
    .registers 13
    .parameter "observable"

    .prologue
    const-string v7, "TransactionService"

    const-string v7, "Mms"

    .line 366
    move-object v0, p1

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object v6, v0

    .line 367
    .local v6, transaction:Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v6}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v4

    .line 369
    .local v4, serviceId:I
    :try_start_c
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_89

    .line 370
    :try_start_f
    iget-object v8, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 371
    iget-object v8, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_82

    .line 372
    iget-object v8, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v9, 0x4

    invoke-virtual {v6}, Lcom/android/mms/transaction/Transaction;->getConnectionSettings()Lcom/android/mms/transaction/TransactionSettings;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 375
    .local v2, msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v8, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 380
    .end local v2           #msg:Landroid/os/Message;
    :goto_2c
    monitor-exit v7
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_86

    .line 382
    :try_start_2d
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.TRANSACTION_COMPLETED_ACTION"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v6}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v5

    .line 384
    .local v5, state:Lcom/android/mms/transaction/TransactionState;
    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    .line 385
    .local v3, result:I
    const-string v7, "state"

    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    const-string v7, "uri"

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 388
    packed-switch v3, :pswitch_data_114

    .line 427
    const-string v7, "Mms"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_78

    .line 428
    const-string v7, "TransactionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transaction state unknown: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_78
    :goto_78
    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/TransactionService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_7b
    .catchall {:try_start_2d .. :try_end_7b} :catchall_89

    .line 437
    invoke-virtual {v6, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 438
    invoke-virtual {p0, v4}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    .line 440
    return-void

    .line 378
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #result:I
    .end local v5           #state:Lcom/android/mms/transaction/TransactionState;
    :cond_82
    :try_start_82
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    goto :goto_2c

    .line 380
    :catchall_86
    move-exception v8

    monitor-exit v7
    :try_end_88
    .catchall {:try_start_82 .. :try_end_88} :catchall_86

    :try_start_88
    throw v8
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_89

    .line 437
    :catchall_89
    move-exception v7

    invoke-virtual {v6, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 438
    invoke-virtual {p0, v4}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    throw v7

    .line 390
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #result:I
    .restart local v5       #state:Lcom/android/mms/transaction/TransactionState;
    :pswitch_91
    :try_start_91
    const-string v7, "Mms"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_b2

    .line 391
    const-string v7, "TransactionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transaction complete: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_b2
    invoke-virtual {v6}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_11c

    goto :goto_78

    .line 400
    :pswitch_ba
    const/4 v7, 0x1

    invoke-static {p0, v7}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;Z)V

    .line 401
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 403
    const-string v7, "power"

    invoke-virtual {p0, v7}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    iput-object v7, p0, Lcom/android/mms/transaction/TransactionService;->mNotiPowerManager:Landroid/os/PowerManager;

    .line 404
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService;->mNotiWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v7, :cond_dc

    .line 405
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService;->mNotiPowerManager:Landroid/os/PowerManager;

    const v8, 0x3000001a

    const-string v9, "MMS Noti"

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/TransactionService;->mNotiWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 412
    :cond_dc
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService;->mNotiWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v7, :cond_78

    .line 413
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService;->mNotiWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v8, 0x2710

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_78

    .line 417
    :pswitch_e8
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/util/RateController;->update()V

    goto :goto_78

    .line 422
    :pswitch_f0
    const-string v7, "Mms"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_78

    .line 423
    const-string v7, "TransactionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transaction failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catchall {:try_start_91 .. :try_end_111} :catchall_89

    goto/16 :goto_78

    .line 388
    nop

    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_91
        :pswitch_f0
    .end packed-switch

    .line 397
    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_ba
        :pswitch_ba
        :pswitch_e8
    .end packed-switch
.end method
