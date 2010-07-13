.class public Lcom/android/settings/bluetooth/LocalBluetoothManager;
.super Ljava/lang/Object;
.source "LocalBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;
    }
.end annotation


# static fields
.field static final D:Z = false

.field private static INSTANCE:Lcom/android/settings/bluetooth/LocalBluetoothManager; = null

.field private static INSTANCE_LOCK:Ljava/lang/Object; = null

.field private static final SCAN_EXPIRATION_MS:I = 0x493e0

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "bluetooth_settings"

.field private static final TAG:Ljava/lang/String; = "LocalBluetoothManager"

.field static final V:Z


# instance fields
.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mEventRedirector:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

.field private mForegroundActivity:Landroid/app/Activity;

.field private mInitialized:Z

.field private mLastScan:J

.field private mLocalDeviceManager:Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

.field private mManager:Landroid/bluetooth/BluetoothDevice;

.field private mState:I

.field private mStayAwake:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mErrorDialog:Landroid/app/AlertDialog;

    .line 68
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mState:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    .line 76
    iput-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 305
    return-void
.end method

.method private dispatchScanningStateChanged(Z)V
    .registers 6
    .parameter "started"

    .prologue
    .line 263
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    monitor-enter v2

    .line 264
    :try_start_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;

    .line 265
    .local v0, callback:Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;
    invoke-interface {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;->onScanningStateChanged(Z)V

    goto :goto_9

    .line 267
    .end local v0           #callback:Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_19
    move-exception v3

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 268
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 81
    sget-object v0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_3
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothManager;->INSTANCE:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_e

    .line 83
    new-instance v1, Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;-><init>()V

    sput-object v1, Lcom/android/settings/bluetooth/LocalBluetoothManager;->INSTANCE:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 86
    :cond_e
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothManager;->INSTANCE:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->init(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 87
    const/4 v1, 0x0

    monitor-exit v0

    move-object v0, v1

    .line 90
    :goto_19
    return-object v0

    :cond_1a
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothManager;->INSTANCE:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    monitor-exit v0

    move-object v0, v1

    goto :goto_19

    .line 91
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private init(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 95
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mInitialized:Z

    if-eqz v0, :cond_7

    move v0, v1

    .line 113
    :goto_6
    return v0

    .line 96
    :cond_7
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mInitialized:Z

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    .line 101
    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mManager:Landroid/bluetooth/BluetoothDevice;

    .line 102
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mManager:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_1f

    .line 103
    const/4 v0, 0x0

    goto :goto_6

    .line 106
    :cond_1f
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mLocalDeviceManager:Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    .line 108
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mEventRedirector:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    .line 109
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mEventRedirector:Lcom/android/settings/bluetooth/BluetoothEventRedirector;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEventRedirector;->start()V

    .line 111
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    invoke-direct {v0, p1}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move v0, v1

    .line 113
    goto :goto_6
.end method

.method private stayAwake(Z)V
    .registers 3
    .parameter "awake"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_13

    .line 294
    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_16

    .line 295
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 300
    :cond_13
    :goto_13
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mStayAwake:Z

    .line 302
    return-void

    .line 296
    :cond_16
    if-nez p1, :cond_13

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 297
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_13
.end method

.method private syncBluetoothState()V
    .registers 3

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mManager:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_15

    .line 218
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mManager:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x2

    move v0, v1

    .line 225
    .local v0, bluetoothState:I
    :goto_e
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setBluetoothStateInt(I)V

    .line 226
    return-void

    .line 218
    .end local v0           #bluetoothState:I
    :cond_12
    const/4 v1, 0x0

    move v0, v1

    goto :goto_e

    .line 222
    :cond_15
    const/16 v0, -0x3e8

    .restart local v0       #bluetoothState:I
    goto :goto_e
.end method


# virtual methods
.method public getBluetoothManager()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mManager:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getBluetoothState()I
    .registers 3

    .prologue
    .line 199
    iget v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mState:I

    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_9

    .line 200
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->syncBluetoothState()V

    .line 203
    :cond_9
    iget v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mState:I

    return v0
.end method

.method getCallbacks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getForegroundActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getLocalDeviceManager()Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mLocalDeviceManager:Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method onScanningStateChanged(Z)V
    .registers 3
    .parameter "started"

    .prologue
    .line 254
    if-nez p1, :cond_6

    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->stayAwake(Z)V

    .line 258
    :cond_6
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mLocalDeviceManager:Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->onScanningStateChanged(Z)V

    .line 259
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->dispatchScanningStateChanged(Z)V

    .line 260
    return-void
.end method

.method public registerCallback(Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 150
    :try_start_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public setBluetoothEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 229
    if-eqz p1, :cond_12

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mManager:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->enable()Z

    move-result v1

    move v0, v1

    .line 233
    .local v0, wasSetStateSuccessful:Z
    :goto_9
    if-eqz v0, :cond_1c

    .line 234
    if-eqz p1, :cond_1a

    const/4 v1, 0x1

    :goto_e
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setBluetoothStateInt(I)V

    .line 246
    :goto_11
    return-void

    .line 229
    .end local v0           #wasSetStateSuccessful:Z
    :cond_12
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mManager:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->disable()Z

    move-result v1

    move v0, v1

    goto :goto_9

    .line 234
    .restart local v0       #wasSetStateSuccessful:Z
    :cond_1a
    const/4 v1, 0x3

    goto :goto_e

    .line 244
    :cond_1c
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->syncBluetoothState()V

    goto :goto_11
.end method

.method setBluetoothStateInt(I)V
    .registers 4
    .parameter "state"

    .prologue
    const/4 v1, 0x2

    .line 207
    iput p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mState:I

    .line 208
    if-eq p1, v1, :cond_7

    if-nez p1, :cond_f

    .line 210
    :cond_7
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mLocalDeviceManager:Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    if-ne p1, v1, :cond_10

    const/4 v1, 0x1

    :goto_c
    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->onBluetoothStateChanged(Z)V

    .line 212
    :cond_f
    return-void

    .line 210
    :cond_10
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public setForegroundActivity(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mErrorDialog:Landroid/app/AlertDialog;

    .line 133
    :cond_c
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/app/Activity;

    .line 134
    return-void
.end method

.method public showError(Ljava/lang/String;II)V
    .registers 10
    .parameter "address"
    .parameter "titleResId"
    .parameter "messageResId"

    .prologue
    const/4 v5, 0x0

    .line 271
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mLocalDeviceManager:Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    invoke-virtual {v3, p1}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->findDevice(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    move-result-object v0

    .line 272
    .local v0, device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    if-nez v0, :cond_a

    .line 289
    :goto_9
    return-void

    .line 274
    :cond_a
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-virtual {v3, p3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, message:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/app/Activity;

    if-eqz v3, :cond_42

    .line 279
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mErrorDialog:Landroid/app/AlertDialog;

    goto :goto_9

    .line 287
    :cond_42
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_9
.end method

.method public startScanning(Z)V
    .registers 10
    .parameter "force"

    .prologue
    const/4 v7, 0x1

    .line 161
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mManager:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->isDiscovering()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 168
    invoke-direct {p0, v7}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->dispatchScanningStateChanged(Z)V

    .line 195
    :cond_c
    :goto_c
    return-void

    .line 170
    :cond_d
    if-nez p1, :cond_3f

    .line 173
    iget-wide v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mLastScan:J

    const-wide/32 v5, 0x493e0

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_c

    .line 178
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothA2dp;->listConnectedSinks()Ljava/util/List;

    move-result-object v2

    .line 179
    .local v2, sinks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_3f

    .line 180
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    .local v0, address:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothA2dp;->getSinkState(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_29

    goto :goto_c

    .line 188
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #sinks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3f
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mManager:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v7}, Landroid/bluetooth/BluetoothDevice;->startDiscovery(Z)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 190
    invoke-direct {p0, v7}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->stayAwake(Z)V

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mLastScan:J

    goto :goto_c
.end method

.method public unregisterCallback(Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 156
    :try_start_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 157
    monitor-exit v0

    .line 158
    return-void

    .line 157
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
