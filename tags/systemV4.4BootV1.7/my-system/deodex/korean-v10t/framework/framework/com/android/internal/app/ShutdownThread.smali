.class public final Lcom/android/internal/app/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x10

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final sInstance:Lcom/android/internal/app/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mBroadcastDone:Z

.field private final mBroadcastDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 52
    new-instance v0, Lcom/android/internal/app/ShutdownThread;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mBroadcastDoneSync:Ljava/lang/Object;

    .line 60
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 102
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    const/4 v1, 0x1

    :try_start_4
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 104
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1a

    .line 124
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object p0, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 125
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v1, Lcom/android/internal/app/ShutdownThread$2;

    invoke-direct {v1}, Lcom/android/internal/app/ShutdownThread$2;-><init>()V

    iput-object v1, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 127
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v0}, Lcom/android/internal/app/ShutdownThread;->start()V

    .line 128
    return-void

    .line 104
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .registers 6
    .parameter "context"
    .parameter "confirm"

    .prologue
    const-string v3, "ShutdownThread"

    .line 72
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_5
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v2, :cond_12

    .line 74
    const-string v2, "ShutdownThread"

    const-string v3, "Request to shutdown already running, returning."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    monitor-exit v1

    .line 99
    :goto_11
    return-void

    .line 77
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_63

    .line 79
    const-string v1, "ShutdownThread"

    const-string v1, "Notifying thread to start radio shutdown"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-eqz p1, :cond_66

    .line 82
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104007b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104007d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/android/internal/app/ShutdownThread$1;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 93
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 94
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 95
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_11

    .line 77
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :catchall_63
    move-exception v2

    :try_start_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v2

    .line 97
    :cond_66
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto :goto_11
.end method


# virtual methods
.method broadcastDone()V
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mBroadcastDoneSync:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/internal/app/ShutdownThread;->mBroadcastDone:Z

    .line 133
    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mBroadcastDoneSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 134
    monitor-exit v0

    .line 135
    return-void

    .line 134
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public run()V
    .registers 24

    .prologue
    .line 144
    const/16 v22, 0x0

    .line 145
    .local v22, rilPowerOffRequested:Z
    new-instance v6, Lcom/android/internal/app/ShutdownThread$3;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$3;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 152
    .local v6, br:Landroid/content/BroadcastReceiver;
    const-string v3, "ShutdownThread"

    const-string v4, "Sending shutdown broadcast..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ShutdownThread;->mBroadcastDone:Z

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    move-object v3, v0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long v16, v3, v5

    .line 160
    .local v16, endTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mBroadcastDoneSync:Ljava/lang/Object;

    move-object v3, v0

    monitor-enter v3

    .line 161
    :goto_3d
    :try_start_3d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ShutdownThread;->mBroadcastDone:Z

    move v4, v0

    if-nez v4, :cond_57

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v14, v16, v4

    .line 163
    .local v14, delay:J
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-gtz v4, :cond_e9

    .line 164
    const-string v4, "ShutdownThread"

    const-string v5, "Shutdown broadcast timed out"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v14           #delay:J
    :cond_57
    monitor-exit v3
    :try_end_58
    .catchall {:try_start_3d .. :try_end_58} :catchall_f6

    .line 174
    const-string v3, "ShutdownThread"

    const-string v4, "Shutting down activity manager..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v3, "activity"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 178
    .local v11, am:Landroid/app/IActivityManager;
    if-eqz v11, :cond_70

    .line 180
    const/16 v3, 0x2710

    :try_start_6d
    invoke-interface {v11, v3}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_70} :catch_125

    .line 185
    :cond_70
    :goto_70
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v21

    .line 187
    .local v21, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v3, "bluetooth"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetoothDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothDevice;

    move-result-object v12

    .line 192
    .local v12, bluetooth:Landroid/bluetooth/IBluetoothDevice;
    if-eqz v12, :cond_8c

    :try_start_86
    invoke-interface {v12}, Landroid/bluetooth/IBluetoothDevice;->getBluetoothState()I

    move-result v3

    if-nez v3, :cond_f9

    :cond_8c
    const/4 v3, 0x1

    move v13, v3

    .line 194
    .local v13, bluetoothOff:Z
    :goto_8e
    if-nez v13, :cond_9b

    .line 195
    const-string v3, "ShutdownThread"

    const-string v4, "Disabling Bluetooth..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/bluetooth/IBluetoothDevice;->disable(Z)Z
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_9b} :catch_fc

    .line 220
    :cond_9b
    :goto_9b
    const-string v3, "ShutdownThread"

    const-string v4, "Waiting for Bluetooth and Radio..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/16 v19, 0x0

    .local v19, i:I
    :goto_a4
    const/16 v3, 0x10

    move/from16 v0, v19

    move v1, v3

    if-ge v0, v1, :cond_be

    .line 224
    if-nez v13, :cond_b5

    .line 226
    :try_start_ad
    invoke-interface {v12}, Landroid/bluetooth/IBluetoothDevice;->getBluetoothState()I
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_ad .. :try_end_b0} :catch_10f

    move-result v3

    if-nez v3, :cond_10c

    const/4 v3, 0x1

    move v13, v3

    .line 248
    :cond_b5
    :goto_b5
    if-eqz v13, :cond_11d

    .line 249
    const-string v3, "ShutdownThread"

    const-string v4, "Radio and Bluetooth shutdown complete."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_be
    const-string v3, "ShutdownThread"

    const-string v4, "Performing low-level shutdown..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 277
    .local v20, intent:Landroid/content/Intent;
    const-string v3, "com.lge.large.poweroff"

    const-string v4, "com.lge.large.poweroff.PowerOff"

    move-object/from16 v0, v20

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const/high16 v3, 0x1000

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 288
    return-void

    .line 168
    .end local v11           #am:Landroid/app/IActivityManager;
    .end local v12           #bluetooth:Landroid/bluetooth/IBluetoothDevice;
    .end local v13           #bluetoothOff:Z
    .end local v19           #i:I
    .end local v20           #intent:Landroid/content/Intent;
    .end local v21           #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v14       #delay:J
    :cond_e9
    :try_start_e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ShutdownThread;->mBroadcastDoneSync:Ljava/lang/Object;

    move-object v4, v0

    invoke-virtual {v4, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_f1
    .catchall {:try_start_e9 .. :try_end_f1} :catchall_f6
    .catch Ljava/lang/InterruptedException; {:try_start_e9 .. :try_end_f1} :catch_f3

    goto/16 :goto_3d

    .line 169
    :catch_f3
    move-exception v4

    goto/16 :goto_3d

    .line 172
    .end local v14           #delay:J
    :catchall_f6
    move-exception v4

    :try_start_f7
    monitor-exit v3
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    throw v4

    .line 192
    .restart local v11       #am:Landroid/app/IActivityManager;
    .restart local v12       #bluetooth:Landroid/bluetooth/IBluetoothDevice;
    .restart local v21       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_f9
    const/4 v3, 0x0

    move v13, v3

    goto :goto_8e

    .line 198
    :catch_fc
    move-exception v3

    move-object/from16 v18, v3

    .line 199
    .local v18, ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during bluetooth shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    const/4 v13, 0x1

    .restart local v13       #bluetoothOff:Z
    goto :goto_9b

    .line 226
    .end local v18           #ex:Landroid/os/RemoteException;
    .restart local v19       #i:I
    :cond_10c
    const/4 v3, 0x0

    move v13, v3

    goto :goto_b5

    .line 228
    :catch_10f
    move-exception v18

    .line 229
    .restart local v18       #ex:Landroid/os/RemoteException;
    const-string v3, "ShutdownThread"

    const-string v4, "RemoteException during bluetooth shutdown"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    const/4 v13, 0x1

    goto :goto_b5

    .line 269
    .end local v18           #ex:Landroid/os/RemoteException;
    :cond_11d
    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 223
    add-int/lit8 v19, v19, 0x1

    goto :goto_a4

    .line 181
    .end local v12           #bluetooth:Landroid/bluetooth/IBluetoothDevice;
    .end local v13           #bluetoothOff:Z
    .end local v19           #i:I
    .end local v21           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_125
    move-exception v3

    goto/16 :goto_70
.end method
