.class public Lcom/android/settings/bluetooth/LocalBluetoothDevice;
.super Ljava/lang/Object;
.source "LocalBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/LocalBluetoothDevice$2;,
        Lcom/android/settings/bluetooth/LocalBluetoothDevice$Callback;,
        Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;,
        Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/bluetooth/LocalBluetoothDevice;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTEXT_ITEM_CONNECT:I = 0x2

.field private static final CONTEXT_ITEM_CONNECT_ADVANCED:I = 0x5

.field private static final CONTEXT_ITEM_DISCONNECT:I = 0x3

.field private static final CONTEXT_ITEM_GET_SERVICES:I = 0x6

.field private static final CONTEXT_ITEM_UNPAIR:I = 0x4

.field private static final D:Z = false

.field private static final MAX_WAIT_TIME_FOR_FRAMEWORK:J = 0x61a8L

.field private static final TAG:Ljava/lang/String; = "LocalBluetoothDevice"

.field private static final V:Z

.field private static workQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private mBtClass:I

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothDevice$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mInitiatedPairing:Z

.field private mIsConnectingErrorPossible:Z

.field private final mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mName:Ljava/lang/String;

.field private mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;",
            ">;"
        }
    .end annotation
.end field

.field private mRssi:S

.field private mServiceMask:I

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 132
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V
    .registers 7
    .parameter "context"
    .parameter "device"

    .prologue
    const/4 v3, 0x0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/high16 v2, -0x100

    iput v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mBtClass:I

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mProfiles:Ljava/util/List;

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mCallbacks:Ljava/util/List;

    .line 327
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 328
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v2, :cond_28

    .line 329
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot use LocalBluetoothDevice without Bluetooth hardware"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 333
    :cond_28
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mVisible:Z

    .line 334
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mInitiatedPairing:Z

    .line 336
    iget-object v2, p2, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    .line 337
    iget-object v2, p2, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mName:Ljava/lang/String;

    .line 338
    iget v2, p2, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mBtClass:I

    iput v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mBtClass:I

    .line 339
    iget v2, p2, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mServiceMask:I

    iput v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mServiceMask:I

    .line 341
    iget-object v2, p2, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 342
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 345
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    :cond_54
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->dispatchAttributesChanged()V

    .line 346
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "address"

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/high16 v0, -0x100

    iput v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mBtClass:I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mProfiles:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mCallbacks:Ljava/util/List;

    .line 314
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 315
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_27

    .line 316
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use LocalBluetoothDevice without Bluetooth hardware"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_27
    iput-object p2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mInitiatedPairing:Z

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->fillData()V

    .line 324
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method private connectAndPreferAllProfiles()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 459
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->ensurePaired()Z

    move-result v4

    if-nez v4, :cond_8

    .line 471
    :cond_7
    return-void

    .line 462
    :cond_8
    iput-boolean v6, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 464
    iget-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 465
    .local v0, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 466
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    iget-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v4, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    .line 468
    .local v3, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->setPreferred(Ljava/lang/String;Z)V

    .line 469
    new-instance v4, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;

    sget-object v5, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;->CONNECT:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    invoke-direct {v4, p0, v5, p0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;Lcom/android/settings/bluetooth/LocalBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->queueCommand(Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;)V

    goto :goto_16
.end method

.method private connectInt(Lcom/android/settings/bluetooth/LocalBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z
    .registers 9
    .parameter "device"
    .parameter "profile"

    .prologue
    const/4 v4, 0x0

    const-string v5, "LocalBluetoothDevice"

    .line 480
    invoke-direct {p1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->ensurePaired()Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v4

    .line 492
    :goto_a
    return v2

    .line 482
    :cond_b
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v2, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    .line 484
    .local v0, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v2, p1, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Ljava/lang/String;)I

    move-result v1

    .line 485
    .local v1, status:I
    invoke-static {v1}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 486
    iget-object v2, p1, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->connect(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_27

    .line 487
    const/4 v2, 0x1

    goto :goto_a

    .line 489
    :cond_27
    const-string v2, "LocalBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_4f
    const-string v2, "LocalBluetoothDevice"

    const-string v2, "Not connected"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 492
    goto :goto_a
.end method

.method private disconnectInt(Lcom/android/settings/bluetooth/LocalBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z
    .registers 6
    .parameter "device"
    .parameter "profile"

    .prologue
    .line 371
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v2, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    .line 373
    .local v0, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v2, p1, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Ljava/lang/String;)I

    move-result v1

    .line 374
    .local v1, status:I
    invoke-static {v1}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 375
    iget-object v2, p1, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->disconnect(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1c

    .line 376
    const/4 v2, 0x1

    .line 379
    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method private dispatchAttributesChanged()V
    .registers 5

    .prologue
    .line 917
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mCallbacks:Ljava/util/List;

    monitor-enter v2

    .line 918
    :try_start_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$Callback;

    .line 919
    .local v0, callback:Lcom/android/settings/bluetooth/LocalBluetoothDevice$Callback;
    invoke-interface {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice$Callback;->onDeviceAttributesChanged(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V

    goto :goto_9

    .line 921
    .end local v0           #callback:Lcom/android/settings/bluetooth/LocalBluetoothDevice$Callback;
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

    .line 922
    return-void
.end method

.method private ensurePaired()Z
    .registers 2

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getBondState()I

    move-result v0

    if-nez v0, :cond_b

    .line 505
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->pair()V

    .line 506
    const/4 v0, 0x0

    .line 508
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private fetchBtClass()V
    .registers 3

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->getRemoteClass(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mBtClass:I

    .line 718
    iget v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mBtClass:I

    const/high16 v1, -0x100

    if-eq v0, v1, :cond_1b

    .line 719
    iget v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mBtClass:I

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->fill(ILjava/util/List;)V

    .line 721
    :cond_1b
    return-void
.end method

.method private fetchName()V
    .registers 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mName:Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 616
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mName:Ljava/lang/String;

    .line 618
    :cond_1a
    return-void
.end method

.method private getOneOffSummary()I
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 761
    const/4 v0, 0x0

    .line 762
    .local v0, isA2dpConnected:Z
    const/4 v2, 0x0

    .line 763
    .local v2, isHeadsetConnected:Z
    const/4 v3, 0x0

    .line 764
    .local v3, isHidConnected:Z
    const/4 v1, 0x0

    .line 766
    .local v1, isConnecting:Z
    iget-object v5, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 767
    iget-object v5, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v5, v6}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    .line 769
    .local v4, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v5, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_51

    move v1, v9

    .line 771
    :goto_22
    iget-object v5, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isConnected(Ljava/lang/String;)Z

    move-result v0

    .line 774
    .end local v4           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_28
    iget-object v5, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 775
    iget-object v5, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-static {v5, v6}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    .line 777
    .restart local v4       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v5, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_53

    move v5, v9

    :goto_43
    or-int/2addr v1, v5

    .line 779
    iget-object v5, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isConnected(Ljava/lang/String;)Z

    move-result v2

    .line 782
    .end local v4           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_4a
    if-eqz v1, :cond_55

    .line 784
    invoke-static {v8}, Lcom/android/settings/bluetooth/SettingsBtStatus;->getConnectionStatusSummary(I)I

    move-result v5

    .line 793
    :goto_50
    return v5

    .restart local v4       #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_51
    move v1, v7

    .line 769
    goto :goto_22

    :cond_53
    move v5, v7

    .line 777
    goto :goto_43

    .line 786
    .end local v4           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_55
    if-eqz v0, :cond_5d

    if-eqz v2, :cond_5d

    .line 787
    const v5, 0x7f080128

    goto :goto_50

    .line 788
    :cond_5d
    if-eqz v0, :cond_63

    .line 789
    const v5, 0x7f080126

    goto :goto_50

    .line 790
    :cond_63
    if-eqz v2, :cond_69

    .line 791
    const v5, 0x7f080127

    goto :goto_50

    :cond_69
    move v5, v7

    .line 793
    goto :goto_50
.end method

.method private processCommand(Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;)Z
    .registers 7
    .parameter "job"

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, successful:Z
    iget-wide v1, p1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->timeSent:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1e

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->timeSent:J

    .line 196
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$2;->$SwitchMap$com$android$settings$bluetooth$LocalBluetoothDevice$BluetoothCommand:[I

    iget-object v2, p1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->command:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3e

    .line 209
    :goto_1c
    if-eqz v0, :cond_1e

    .line 220
    :cond_1e
    return v0

    .line 198
    :pswitch_1f
    iget-object v1, p1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    iget-object v2, p1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->connectInt(Lcom/android/settings/bluetooth/LocalBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    move-result v0

    .line 199
    goto :goto_1c

    .line 201
    :pswitch_28
    iget-object v1, p1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    iget-object v2, p1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->disconnectInt(Lcom/android/settings/bluetooth/LocalBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Z

    move-result v0

    .line 202
    goto :goto_1c

    .line 204
    :pswitch_31
    const/4 v0, 0x1

    .line 205
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->removeBond(Ljava/lang/String;)Z

    goto :goto_1c

    .line 196
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_28
        :pswitch_31
    .end packed-switch
.end method

.method private processCommands()V
    .registers 4

    .prologue
    .line 295
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 296
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 297
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;

    .line 298
    .local v1, job:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->processCommand(Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 311
    .end local v1           #job:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;
    :cond_18
    return-void

    .line 308
    .restart local v1       #job:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6
.end method

.method private pruneQueue(Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;)Z
    .registers 13
    .parameter "job"

    .prologue
    const-wide/16 v9, 0x0

    .line 158
    const/4 v4, 0x0

    .line 159
    .local v4, removedStaleItems:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 160
    .local v2, now:J
    sget-object v5, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 161
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;>;"
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_76

    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;

    .line 165
    .local v0, existingJob:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;
    if-eqz p1, :cond_45

    iget-object v5, p1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->command:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;->DISCONNECT:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    if-ne v5, v6, :cond_45

    .line 166
    iget-wide v5, v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->timeSent:J

    cmp-long v5, v5, v9

    if-nez v5, :cond_45

    iget-object v5, v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->command:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;->CONNECT:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    if-ne v5, v6, :cond_45

    iget-object v5, v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    iget-object v5, v5, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    iget-object v6, v6, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    iget-object v5, v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    iget-object v6, p1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    if-ne v5, v6, :cond_45

    .line 173
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    .line 181
    :cond_45
    iget-wide v5, v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->timeSent:J

    cmp-long v5, v5, v9

    if-eqz v5, :cond_d

    iget-wide v5, v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->timeSent:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0x61a8

    cmp-long v5, v5, v7

    if-ltz v5, :cond_d

    .line 183
    const-string v5, "LocalBluetoothDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timeout. Removing Job:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 185
    const/4 v4, 0x1

    .line 186
    goto :goto_d

    .line 189
    .end local v0           #existingJob:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;
    :cond_76
    return v4
.end method

.method private queueCommand(Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;)V
    .registers 6
    .parameter "job"

    .prologue
    .line 138
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 139
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->pruneQueue(Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;)Z

    move-result v0

    .line 145
    .local v0, processNow:Z
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_17

    if-eqz v0, :cond_1a

    .line 152
    :cond_17
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->processCommands()V

    .line 154
    :cond_1a
    monitor-exit v1

    .line 155
    return-void

    .line 154
    .end local v0           #processNow:Z
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v2
.end method


# virtual methods
.method public askDisconnect()V
    .registers 11

    .prologue
    .line 384
    iget-object v7, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 385
    .local v3, manager:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->isDiscovering()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 386
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->cancelDiscovery()V

    .line 389
    :cond_f
    iget-object v7, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v1

    .line 390
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_1b

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->disconnect()V

    .line 416
    :goto_1a
    return-void

    .line 396
    :cond_1b
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 398
    .local v6, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .line 399
    .local v5, name:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 400
    const v7, 0x7f080054

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 402
    :cond_30
    const v7, 0x7f08004b

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 404
    .local v4, message:Ljava/lang/String;
    new-instance v2, Lcom/android/settings/bluetooth/LocalBluetoothDevice$1;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice$1;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V

    .line 410
    .local v2, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    invoke-virtual {v7, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x104

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 416
    .local v0, ad:Landroid/app/AlertDialog;
    goto :goto_1a
.end method

.method public compareTo(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)I
    .registers 7
    .parameter "another"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 947
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v3

    :goto_9
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v3

    :goto_10
    sub-int v0, v1, v2

    .line 948
    .local v0, comparison:I
    if-eqz v0, :cond_1a

    move v1, v0

    .line 964
    :goto_15
    return v1

    .end local v0           #comparison:I
    :cond_16
    move v1, v4

    .line 947
    goto :goto_9

    :cond_18
    move v2, v4

    goto :goto_10

    .line 951
    .restart local v0       #comparison:I
    :cond_1a
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v3, :cond_2e

    move v1, v3

    :goto_21
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getBondState()I

    move-result v2

    if-ne v2, v3, :cond_30

    move v2, v3

    :goto_28
    sub-int v0, v1, v2

    .line 953
    if-eqz v0, :cond_32

    move v1, v0

    goto :goto_15

    :cond_2e
    move v1, v4

    .line 951
    goto :goto_21

    :cond_30
    move v2, v4

    goto :goto_28

    .line 956
    :cond_32
    iget-boolean v1, p1, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mVisible:Z

    if-eqz v1, :cond_42

    move v1, v3

    :goto_37
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mVisible:Z

    if-eqz v2, :cond_44

    move v2, v3

    :goto_3c
    sub-int v0, v1, v2

    .line 957
    if-eqz v0, :cond_46

    move v1, v0

    goto :goto_15

    :cond_42
    move v1, v4

    .line 956
    goto :goto_37

    :cond_44
    move v2, v4

    goto :goto_3c

    .line 960
    :cond_46
    iget-short v1, p1, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mRssi:S

    iget-short v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mRssi:S

    sub-int v0, v1, v2

    .line 961
    if-eqz v0, :cond_50

    move v1, v0

    goto :goto_15

    .line 964
    :cond_50
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_15
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 49
    check-cast p1, Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->compareTo(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public connect()V
    .registers 9

    .prologue
    .line 420
    iget-object v6, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 421
    .local v3, manager:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->isDiscovering()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 422
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->cancelDiscovery()V

    .line 425
    :cond_f
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->ensurePaired()Z

    move-result v6

    if-nez v6, :cond_16

    .line 444
    :cond_15
    :goto_15
    return-void

    .line 428
    :cond_16
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 430
    iget-object v6, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 431
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 432
    .local v1, hasAtLeastOnePreferredProfile:Z
    iget-object v6, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_26
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 433
    .local v4, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    iget-object v6, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v6, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    .line 435
    .local v5, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v6, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isPreferred(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 436
    const/4 v1, 0x1

    .line 437
    new-instance v6, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;

    sget-object v7, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;->CONNECT:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    invoke-direct {v6, p0, v7, p0, v4}, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;Lcom/android/settings/bluetooth/LocalBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->queueCommand(Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;)V

    goto :goto_26

    .line 441
    .end local v4           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .end local v5           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_4c
    if-nez v1, :cond_15

    .line 442
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->connectAndPreferAllProfiles()V

    goto :goto_15
.end method

.method public connect(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V
    .registers 4
    .parameter "profile"

    .prologue
    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 476
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;

    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;->CONNECT:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    invoke-direct {v0, p0, v1, p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;Lcom/android/settings/bluetooth/LocalBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->queueCommand(Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;)V

    .line 477
    return-void
.end method

.method public disconnect()V
    .registers 4

    .prologue
    .line 361
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 362
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->disconnect(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    goto :goto_6

    .line 364
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    :cond_16
    return-void
.end method

.method public disconnect(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V
    .registers 4
    .parameter "profile"

    .prologue
    .line 367
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;

    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;->DISCONNECT:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    invoke-direct {v0, p0, v1, p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;Lcom/android/settings/bluetooth/LocalBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->queueCommand(Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;)V

    .line 368
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 931
    if-eqz p1, :cond_6

    instance-of v0, p1, Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    if-nez v0, :cond_c

    .line 932
    :cond_6
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 935
    :cond_c
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    check-cast p1, Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    .end local p1
    iget-object v1, p1, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fillData()V
    .registers 3

    .prologue
    .line 586
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 588
    .local v0, manager:Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->fetchName()V

    .line 589
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->fetchBtClass()V

    .line 591
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->getLevel2Services(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mServiceMask:I

    .line 594
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mVisible:Z

    .line 596
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->dispatchAttributesChanged()V

    .line 597
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBondState()I
    .registers 3

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->getBondState(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getBtClass()I
    .registers 2

    .prologue
    .line 976
    iget v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mBtClass:I

    return v0
.end method

.method public getBtClassDrawable()I
    .registers 3

    .prologue
    .line 690
    iget v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mBtClass:I

    invoke-static {v0}, Landroid/bluetooth/BluetoothClass$Device$Major;->getDeviceMajor(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_30

    .line 709
    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0

    .line 692
    :sswitch_b
    const v0, 0x7f020015

    goto :goto_a

    .line 695
    :sswitch_f
    const v0, 0x7f02000f

    goto :goto_a

    .line 700
    :sswitch_13
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->A2DP:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 701
    const v0, 0x7f020011

    goto :goto_a

    .line 702
    :cond_21
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mProfiles:Ljava/util/List;

    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 703
    const v0, 0x7f020012

    goto :goto_a

    .line 690
    nop

    :sswitch_data_30
    .sparse-switch
        0x100 -> :sswitch_b
        0x200 -> :sswitch_f
        0x400 -> :sswitch_13
    .end sparse-switch
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfiles()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 798
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSummary()I
    .registers 7

    .prologue
    .line 734
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getOneOffSummary()I

    move-result v2

    .line 735
    .local v2, oneOffSummary:I
    if-eqz v2, :cond_8

    move v5, v2

    .line 751
    :goto_7
    return v5

    .line 739
    :cond_8
    iget-object v5, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 740
    .local v3, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    iget-object v5, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v5, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    .line 742
    .local v4, profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    iget-object v5, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Ljava/lang/String;)I

    move-result v0

    .line 744
    .local v0, connectionStatus:I
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v5

    if-nez v5, :cond_32

    const/4 v5, 0x3

    if-eq v0, v5, :cond_32

    const/4 v5, 0x5

    if-ne v0, v5, :cond_e

    .line 747
    :cond_32
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->getConnectionStatusSummary(I)I

    move-result v5

    goto :goto_7

    .line 751
    .end local v0           #connectionStatus:I
    .end local v3           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .end local v4           #profileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    :cond_37
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getBondState()I

    move-result v5

    invoke-static {v5}, Lcom/android/settings/bluetooth/SettingsBtStatus;->getPairingStatusSummary(I)I

    move-result v5

    goto :goto_7
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBusy()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 664
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 665
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v3, v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Ljava/lang/String;)I

    move-result v2

    .line 667
    .local v2, status:I
    invoke-static {v2}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusBusy(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v5

    .line 676
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .end local v2           #status:I
    :goto_26
    return v3

    .line 672
    :cond_27
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getBondState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_30

    move v3, v5

    .line 673
    goto :goto_26

    .line 676
    :cond_30
    const/4 v3, 0x0

    goto :goto_26
.end method

.method public isConnected()Z
    .registers 6

    .prologue
    .line 652
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    .line 653
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v3, v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getConnectionStatus(Ljava/lang/String;)I

    move-result v2

    .line 655
    .local v2, status:I
    invoke-static {v2}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 656
    const/4 v3, 0x1

    .line 660
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;
    .end local v2           #status:I
    :goto_25
    return v3

    :cond_26
    const/4 v3, 0x0

    goto :goto_25
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 625
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mVisible:Z

    return v0
.end method

.method public onBondingStateChanged(I)V
    .registers 5
    .parameter "bondState"

    .prologue
    const/4 v2, 0x0

    .line 562
    const/4 v1, 0x1

    if-ne p1, v1, :cond_e

    .line 563
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mInitiatedPairing:Z

    if-eqz v1, :cond_d

    .line 565
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mInitiatedPairing:Z

    .line 566
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->connect()V

    .line 583
    :cond_d
    :goto_d
    return-void

    .line 569
    :cond_e
    if-nez p1, :cond_d

    .line 570
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mInitiatedPairing:Z

    .line 572
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;

    .line 573
    .local v0, job:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;
    if-eqz v0, :cond_d

    .line 576
    iget-object v1, v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->command:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;->UNPAIR:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    if-ne v1, v2, :cond_d

    .line 579
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 580
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->processCommands()V

    goto :goto_d
.end method

.method public onClicked()V
    .registers 3

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getBondState()I

    move-result v0

    .line 351
    .local v0, bondState:I
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->askDisconnect()V

    .line 358
    :cond_d
    :goto_d
    return-void

    .line 353
    :cond_e
    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->connect()V

    goto :goto_d

    .line 355
    :cond_15
    if-nez v0, :cond_d

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->pair()V

    goto :goto_d
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)V
    .registers 6
    .parameter "item"

    .prologue
    const/high16 v3, 0x1000

    .line 858
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_6a

    .line 902
    :goto_9
    return-void

    .line 860
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->disconnect()V

    goto :goto_9

    .line 864
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->connect()V

    goto :goto_9

    .line 871
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->unpair()V

    goto :goto_9

    .line 875
    :pswitch_16
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 877
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v0

    .line 878
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_2c

    .line 880
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 881
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 883
    :cond_2c
    const-class v2, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 884
    const-string v2, "address"

    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 885
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 889
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_3c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 890
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v0

    .line 891
    .restart local v0       #context:Landroid/content/Context;
    if-nez v0, :cond_52

    .line 893
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 894
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 896
    :cond_52
    const-class v2, Lcom/android/settings/bluetooth/DiscoverServicesActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 897
    const-string v2, "android.bluetooth.intent.ADDRESS"

    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    const-string v2, "android.bluetooth.intent.NAME"

    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 899
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 858
    nop

    :pswitch_data_6a
    .packed-switch 0x2
        :pswitch_e
        :pswitch_a
        :pswitch_12
        :pswitch_16
        :pswitch_3c
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 15
    .parameter "menu"

    .prologue
    const v12, 0x7f08011e

    const/4 v11, 0x5

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 803
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->isBusy()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 850
    :cond_d
    :goto_d
    return-void

    .line 809
    :cond_e
    iget-object v7, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v1

    .line 810
    .local v1, btState:I
    if-ne v1, v8, :cond_d

    .line 812
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getBondState()I

    move-result v0

    .line 813
    .local v0, bondState:I
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->isConnected()Z

    move-result v5

    .line 814
    .local v5, isConnected:Z
    iget-object v7, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4e

    move v4, v10

    .line 816
    .local v4, hasProfiles:Z
    :goto_27
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 819
    if-eqz v5, :cond_50

    .line 820
    const/4 v7, 0x3

    const v8, 0x7f08011a

    invoke-interface {p1, v9, v7, v9, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 830
    :cond_37
    :goto_37
    const v3, 0x7f080457

    .line 831
    .local v3, getServiceString:I
    const/4 v7, 0x6

    invoke-interface {p1, v9, v7, v9, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 834
    if-ne v0, v10, :cond_66

    .line 836
    if-eqz v5, :cond_61

    const v7, 0x7f08011d

    move v6, v7

    .line 839
    .local v6, unpairString:I
    :goto_46
    const/4 v7, 0x4

    invoke-interface {p1, v9, v7, v9, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 842
    invoke-interface {p1, v9, v11, v9, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_d

    .end local v3           #getServiceString:I
    .end local v4           #hasProfiles:Z
    .end local v6           #unpairString:I
    :cond_4e
    move v4, v9

    .line 814
    goto :goto_27

    .line 821
    .restart local v4       #hasProfiles:Z
    :cond_50
    if-eqz v4, :cond_37

    .line 823
    if-nez v0, :cond_5c

    const v7, 0x7f08011b

    move v2, v7

    .line 826
    .local v2, connectString:I
    :goto_58
    invoke-interface {p1, v9, v8, v9, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_37

    .line 823
    .end local v2           #connectString:I
    :cond_5c
    const v7, 0x7f080119

    move v2, v7

    goto :goto_58

    .line 836
    .restart local v3       #getServiceString:I
    :cond_61
    const v7, 0x7f08011c

    move v6, v7

    goto :goto_46

    .line 844
    :cond_66
    if-nez v0, :cond_d

    .line 846
    invoke-interface {p1, v9, v11, v9, v12}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_d
.end method

.method public onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;II)V
    .registers 12
    .parameter "profile"
    .parameter "newProfileState"
    .parameter "oldProfileState"

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x2

    const-string v6, "LocalBluetoothDevice"

    .line 228
    iget-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v4, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->convertState(I)I

    move-result v2

    .line 230
    .local v2, newState:I
    iget-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-static {v4, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->convertState(I)I

    move-result v3

    .line 233
    .local v3, oldState:I
    if-ne v2, v5, :cond_27

    .line 234
    iget-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 235
    iget-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_27
    if-eq v2, v5, :cond_2b

    if-ne v2, v7, :cond_3c

    .line 242
    :cond_2b
    sget-object v4, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;

    .line 243
    .local v1, job:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;
    if-nez v1, :cond_3d

    .line 244
    const-string v4, "LocalBluetoothDevice"

    const-string v4, "Yikes, onProfileStateChanged called but job queue is empty. (Okay for device initiated actions and BluetoothA2dpService initiated Auto-connections)"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v1           #job:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;
    :cond_3c
    :goto_3c
    return-void

    .line 248
    .restart local v1       #job:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;
    :cond_3d
    iget-object v4, v1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    iget-object v4, v4, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b5

    .line 257
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->pruneQueue(Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 266
    :goto_50
    if-ne v2, v7, :cond_bb

    const/4 v4, 0x3

    if-ne v3, v4, :cond_bb

    .line 268
    const-string v4, "LocalBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " connection failed. Remove all the pending connect commands."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v4, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 270
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;>;"
    :cond_79
    :goto_79
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 271
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #job:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;
    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;

    .line 272
    .restart local v1       #job:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;
    iget-object v4, v1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->command:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    sget-object v5, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;->CONNECT:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    if-ne v4, v5, :cond_79

    iget-object v4, v1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    iget-object v4, v4, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 274
    const-string v4, "LocalBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove connect command for profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->profile:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_79

    .line 263
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;>;"
    :cond_b5
    sget-object v4, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    goto :goto_50

    .line 280
    :cond_bb
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->processCommands()V

    goto/16 :goto_3c
.end method

.method public pair()V
    .registers 6

    .prologue
    .line 513
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 516
    .local v0, manager:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 517
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelDiscovery()V

    .line 519
    :cond_f
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createBond(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 520
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mInitiatedPairing:Z

    .line 526
    :goto_1a
    return-void

    .line 523
    :cond_1b
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    const v3, 0x7f08010a

    const v4, 0x7f08010b

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->showError(Ljava/lang/String;II)V

    goto :goto_1a
.end method

.method public refresh()V
    .registers 1

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->dispatchAttributesChanged()V

    .line 622
    return-void
.end method

.method public refreshBtClass()V
    .registers 1

    .prologue
    .line 728
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->fetchBtClass()V

    .line 729
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->dispatchAttributesChanged()V

    .line 730
    return-void
.end method

.method public refreshName()V
    .registers 1

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->fetchName()V

    .line 609
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->dispatchAttributesChanged()V

    .line 610
    return-void
.end method

.method public registerCallback(Lcom/android/settings/bluetooth/LocalBluetoothDevice$Callback;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 906
    :try_start_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    monitor-exit v0

    .line 908
    return-void

    .line 907
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method setRssi(S)V
    .registers 3
    .parameter "rssi"

    .prologue
    .line 640
    iget-short v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mRssi:S

    if-eq v0, p1, :cond_9

    .line 641
    iput-short p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mRssi:S

    .line 642
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->dispatchAttributesChanged()V

    .line 644
    :cond_9
    return-void
.end method

.method setVisible(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mVisible:Z

    if-eq v0, p1, :cond_9

    .line 630
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mVisible:Z

    .line 631
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->dispatchAttributesChanged()V

    .line 633
    :cond_9
    return-void
.end method

.method public showConnectingError()V
    .registers 5

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mIsConnectingErrorPossible:Z

    if-nez v0, :cond_5

    .line 501
    :goto_4
    return-void

    .line 497
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 499
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    const v2, 0x7f08010a

    const v3, 0x7f08010f

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->showError(Ljava/lang/String;II)V

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public unpair()V
    .registers 10

    .prologue
    .line 529
    sget-object v4, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    monitor-enter v4

    .line 531
    const/4 v3, 0x0

    .line 532
    .local v3, processNow:Z
    :try_start_4
    sget-object v5, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->workQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 533
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;>;"
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 534
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;

    .line 535
    .local v1, job:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;
    iget-object v5, v1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    iget-object v5, v5, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 536
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 537
    iget-wide v5, v1, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;->timeSent:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_a

    .line 538
    const/4 v3, 0x1

    goto :goto_a

    .line 542
    .end local v1           #job:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;
    :cond_2f
    if-eqz v3, :cond_34

    .line 543
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->processCommands()V

    .line 545
    :cond_34
    monitor-exit v4
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_43

    .line 547
    iget-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 549
    .local v2, manager:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getBondState()I

    move-result v4

    packed-switch v4, :pswitch_data_5c

    .line 559
    :goto_42
    return-void

    .line 545
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;>;"
    .end local v2           #manager:Landroid/bluetooth/BluetoothDevice;
    :catchall_43
    move-exception v5

    :try_start_44
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v5

    .line 551
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;>;"
    .restart local v2       #manager:Landroid/bluetooth/BluetoothDevice;
    :pswitch_46
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->disconnect()V

    .line 552
    new-instance v4, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;

    sget-object v5, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;->UNPAIR:Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;

    sget-object v6, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;->HEADSET:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;

    invoke-direct {v4, p0, v5, p0, v6}, Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothCommand;Lcom/android/settings/bluetooth/LocalBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;)V

    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->queueCommand(Lcom/android/settings/bluetooth/LocalBluetoothDevice$BluetoothJob;)V

    goto :goto_42

    .line 556
    :pswitch_56
    iget-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess(Ljava/lang/String;)Z

    goto :goto_42

    .line 549
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_46
        :pswitch_56
    .end packed-switch
.end method

.method public unregisterCallback(Lcom/android/settings/bluetooth/LocalBluetoothDevice$Callback;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 912
    :try_start_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 913
    monitor-exit v0

    .line 914
    return-void

    .line 913
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
