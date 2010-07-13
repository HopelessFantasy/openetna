.class public Lcom/android/internal/policy/impl/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# static fields
.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x10

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static lastShutdownTime:J

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mContext:Landroid/content/Context;

.field private static mWM:Landroid/view/IWindowManager;

.field private static final sBluetooth:Landroid/bluetooth/IBluetoothDevice;

.field private static sGuardCheck:Z

.field private static final sInstance:Lcom/android/internal/policy/impl/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;

.field private static final sPhone:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 56
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/ShutdownThread;->sPhone:Lcom/android/internal/telephony/ITelephony;

    .line 58
    const-string v0, "bluetooth"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothDevice;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/ShutdownThread;->sBluetooth:Landroid/bluetooth/IBluetoothDevice;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 64
    sput-boolean v2, Lcom/android/internal/policy/impl/ShutdownThread;->sIsStarted:Z

    .line 65
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/policy/impl/ShutdownThread;->lastShutdownTime:J

    .line 66
    sput-boolean v2, Lcom/android/internal/policy/impl/ShutdownThread;->sGuardCheck:Z

    .line 70
    new-instance v0, Lcom/android/internal/policy/impl/ShutdownThread;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/ShutdownThread;->sInstance:Lcom/android/internal/policy/impl/ShutdownThread;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 80
    sput-boolean v0, Lcom/android/internal/policy/impl/ShutdownThread;->sGuardCheck:Z

    .line 81
    sput-boolean v0, Lcom/android/internal/policy/impl/ShutdownThread;->sIsStarted:Z

    .line 82
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-static {p0}, Lcom/android/internal/policy/impl/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 149
    sget-object v0, Lcom/android/internal/policy/impl/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    const/4 v1, 0x1

    :try_start_4
    sput-boolean v1, Lcom/android/internal/policy/impl/ShutdownThread;->sIsStarted:Z

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/android/internal/policy/impl/ShutdownThread;->lastShutdownTime:J

    .line 153
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_19

    .line 155
    sput-object p0, Lcom/android/internal/policy/impl/ShutdownThread;->mContext:Landroid/content/Context;

    .line 172
    sget-boolean v0, Lcom/android/internal/policy/impl/ShutdownThread;->sGuardCheck:Z

    if-eqz v0, :cond_1c

    .line 173
    sget-object v0, Lcom/android/internal/policy/impl/ShutdownThread;->sInstance:Lcom/android/internal/policy/impl/ShutdownThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ShutdownThread;->run()V

    .line 176
    :goto_18
    return-void

    .line 153
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1

    .line 175
    :cond_1c
    sget-object v0, Lcom/android/internal/policy/impl/ShutdownThread;->sInstance:Lcom/android/internal/policy/impl/ShutdownThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ShutdownThread;->start()V

    goto :goto_18
.end method

.method public static shutdownAfterDisablingRadio(Landroid/content/Context;Z)V
    .registers 9
    .parameter "context"
    .parameter "confirm"

    .prologue
    const-string v6, "ShutdownThread"

    .line 90
    const-string v1, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutdownAfterDisablingRadio confirm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/ShutdownThread;->mWM:Landroid/view/IWindowManager;

    .line 100
    sget-object v1, Lcom/android/internal/policy/impl/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_29
    sget-boolean v2, Lcom/android/internal/policy/impl/ShutdownThread;->sIsStarted:Z

    if-eqz v2, :cond_5d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/android/internal/policy/impl/ShutdownThread;->lastShutdownTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_5d

    .line 103
    const-string v2, "ShutdownThread"

    const-string v3, "Twice PowerOff Start."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v2, Lcom/android/internal/policy/impl/ShutdownThread;->sInstance:Lcom/android/internal/policy/impl/ShutdownThread;

    if-eqz v2, :cond_4a

    .line 106
    sget-object v2, Lcom/android/internal/policy/impl/ShutdownThread;->sInstance:Lcom/android/internal/policy/impl/ShutdownThread;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/ShutdownThread;->stop()V

    .line 110
    :cond_4a
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/policy/impl/ShutdownThread;->sGuardCheck:Z

    .line 111
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/policy/impl/ShutdownThread;->sIsStarted:Z

    .line 118
    :goto_50
    sget-boolean v2, Lcom/android/internal/policy/impl/ShutdownThread;->sIsStarted:Z

    if-eqz v2, :cond_64

    .line 119
    const-string v2, "ShutdownThread"

    const-string v3, "Request to shutdown already running, returning."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    monitor-exit v1

    .line 146
    :goto_5c
    return-void

    .line 115
    :cond_5d
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/policy/impl/ShutdownThread;->sGuardCheck:Z

    goto :goto_50

    .line 122
    :catchall_61
    move-exception v2

    monitor-exit v1
    :try_end_63
    .catchall {:try_start_29 .. :try_end_63} :catchall_61

    throw v2

    :cond_64
    :try_start_64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_61

    .line 124
    const-string v1, "ShutdownThread"

    const-string v1, "Notifying thread to start radio shutdown"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-eqz p1, :cond_bc

    .line 127
    const-string v1, "ShutdownThread"

    const-string v1, "Showing the shutdown dialog"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
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

    new-instance v3, Lcom/android/internal/policy/impl/ShutdownThread$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 139
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 140
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 141
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_5c

    .line 143
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_bc
    const-string v1, "ShutdownThread"

    const-string v1, "begining shutdown process!!!!"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {p0}, Lcom/android/internal/policy/impl/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto :goto_5c
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v9, "RemoteException during bluetooth shutdown"

    const-string v7, "ShutdownThread"

    .line 186
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/ShutdownThread;->setKeyBlocking(Z)V

    .line 188
    sget-object v4, Lcom/android/internal/policy/impl/ShutdownThread;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_19

    .line 189
    sget-object v4, Lcom/android/internal/policy/impl/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    sput-object p0, Lcom/android/internal/policy/impl/ShutdownThread;->mAudioManager:Landroid/media/AudioManager;

    .line 191
    :cond_19
    sget-object v4, Lcom/android/internal/policy/impl/ShutdownThread;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_32

    .line 192
    sget-object v4, Lcom/android/internal/policy/impl/ShutdownThread;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v4

    if-nez v4, :cond_2f

    sget-object v4, Lcom/android/internal/policy/impl/ShutdownThread;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v4

    const/16 v5, 0x400

    if-ne v4, v5, :cond_32

    .line 194
    :cond_2f
    invoke-static {}, Landroid/media/AudioSystem;->setPowerOff()I

    .line 200
    :cond_32
    :try_start_32
    sget-object v4, Lcom/android/internal/policy/impl/ShutdownThread;->sBluetooth:Landroid/bluetooth/IBluetoothDevice;

    if-eqz v4, :cond_3e

    sget-object v4, Lcom/android/internal/policy/impl/ShutdownThread;->sBluetooth:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v4}, Landroid/bluetooth/IBluetoothDevice;->getBluetoothState()I

    move-result v4

    if-nez v4, :cond_7e

    :cond_3e
    move v0, v8

    .line 202
    .local v0, bluetoothOff:Z
    :goto_3f
    if-nez v0, :cond_47

    .line 203
    sget-object v4, Lcom/android/internal/policy/impl/ShutdownThread;->sBluetooth:Landroid/bluetooth/IBluetoothDevice;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/bluetooth/IBluetoothDevice;->disable(Z)Z
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_47} :catch_80

    .line 225
    :cond_47
    :goto_47
    const/4 v2, 0x0

    .local v2, i:I
    :goto_48
    const/16 v4, 0x10

    if-ge v2, v4, :cond_60

    .line 226
    if-nez v0, :cond_57

    .line 228
    :try_start_4e
    sget-object v4, Lcom/android/internal/policy/impl/ShutdownThread;->sBluetooth:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v4}, Landroid/bluetooth/IBluetoothDevice;->getBluetoothState()I
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_53} :catch_8d

    move-result v4

    if-nez v4, :cond_8b

    move v0, v8

    .line 249
    :cond_57
    :goto_57
    if-eqz v0, :cond_98

    .line 250
    const-string v4, "ShutdownThread"

    const-string v4, "Radio and Bluetooth shutdown complete."

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_60
    const-string v4, "ShutdownThread"

    const-string v4, "Shutting down power."

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 260
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "com.lge.large.poweroff"

    const-string v5, "com.lge.large.poweroff.PowerOff"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 262
    sget-object v4, Lcom/android/internal/policy/impl/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 264
    return-void

    .end local v0           #bluetoothOff:Z
    .end local v2           #i:I
    .end local v3           #intent:Landroid/content/Intent;
    :cond_7e
    move v0, v6

    .line 200
    goto :goto_3f

    .line 205
    :catch_80
    move-exception v4

    move-object v1, v4

    .line 206
    .local v1, ex:Landroid/os/RemoteException;
    const-string v4, "ShutdownThread"

    const-string v4, "RemoteException during bluetooth shutdown"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    const/4 v0, 0x1

    .restart local v0       #bluetoothOff:Z
    goto :goto_47

    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v2       #i:I
    :cond_8b
    move v0, v6

    .line 228
    goto :goto_57

    .line 230
    :catch_8d
    move-exception v4

    move-object v1, v4

    .line 231
    .restart local v1       #ex:Landroid/os/RemoteException;
    const-string v4, "ShutdownThread"

    const-string v4, "RemoteException during bluetooth shutdown"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    const/4 v0, 0x1

    goto :goto_57

    .line 253
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_98
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_48
.end method

.method public setKeyBlocking(Z)V
    .registers 3
    .parameter "lock"

    .prologue
    .line 271
    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/ShutdownThread;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setKeyBlocking(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 274
    :goto_5
    return-void

    .line 272
    :catch_6
    move-exception v0

    goto :goto_5
.end method
