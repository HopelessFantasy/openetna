.class public abstract Lcom/android/server/KeyInputQueue;
.super Ljava/lang/Object;
.source "KeyInputQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/KeyInputQueue$QueuedEvent;,
        Lcom/android/server/KeyInputQueue$FilterCallback;
    }
.end annotation


# static fields
.field public static final FILTER_ABORT:I = -0x1

.field public static final FILTER_KEEP:I = 0x1

.field public static final FILTER_REMOVE:I = 0x0

.field static final KEY_0_MAP:[I = null

.field static final KEY_180_MAP:[I = null

.field static final KEY_270_MAP:[I = null

.field static final TAG:Ljava/lang/String; = "KeyInputQueue"


# instance fields
.field mCache:Lcom/android/server/KeyInputQueue$QueuedEvent;

.field mCacheCount:I

.field mDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field mDisplay:Landroid/view/Display;

.field final mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

.field mGlobalMetaState:I

.field mHaveGlobalMetaState:Z

.field mKeyRotationMap:[I

.field final mLast:Lcom/android/server/KeyInputQueue$QueuedEvent;

.field mOrientation:I

.field mThread:Ljava/lang/Thread;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x8

    .line 54
    new-array v0, v1, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/server/KeyInputQueue;->KEY_0_MAP:[I

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/android/server/KeyInputQueue;->KEY_180_MAP:[I

    .line 68
    new-array v0, v1, [I

    fill-array-data v0, :array_40

    sput-object v0, Lcom/android/server/KeyInputQueue;->KEY_270_MAP:[I

    return-void

    .line 54
    :array_18
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
    .end array-data

    .line 61
    :array_2c
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 68
    :array_40
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    .line 37
    iput v3, p0, Lcom/android/server/KeyInputQueue;->mGlobalMetaState:I

    .line 38
    iput-boolean v3, p0, Lcom/android/server/KeyInputQueue;->mHaveGlobalMetaState:Z

    .line 45
    iput-object v2, p0, Lcom/android/server/KeyInputQueue;->mDisplay:Landroid/view/Display;

    .line 47
    iput v3, p0, Lcom/android/server/KeyInputQueue;->mOrientation:I

    .line 48
    iput-object v2, p0, Lcom/android/server/KeyInputQueue;->mKeyRotationMap:[I

    .line 208
    new-instance v1, Lcom/android/server/KeyInputQueue$1;

    const-string v2, "InputDeviceReader"

    invoke-direct {v1, p0, v2}, Lcom/android/server/KeyInputQueue$1;-><init>(Lcom/android/server/KeyInputQueue;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mThread:Ljava/lang/Thread;

    .line 136
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 138
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "KeyInputQueue"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 140
    iget-object v1, p0, Lcom/android/server/KeyInputQueue;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 142
    new-instance v1, Lcom/android/server/KeyInputQueue$QueuedEvent;

    invoke-direct {v1}, Lcom/android/server/KeyInputQueue$QueuedEvent;-><init>()V

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 143
    new-instance v1, Lcom/android/server/KeyInputQueue$QueuedEvent;

    invoke-direct {v1}, Lcom/android/server/KeyInputQueue$QueuedEvent;-><init>()V

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mLast:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 144
    iget-object v1, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v2, p0, Lcom/android/server/KeyInputQueue;->mLast:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iput-object v2, v1, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 145
    iget-object v1, p0, Lcom/android/server/KeyInputQueue;->mLast:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v2, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iput-object v2, v1, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 147
    iget-object v1, p0, Lcom/android/server/KeyInputQueue;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 148
    return-void
.end method

.method static synthetic access$000(Landroid/view/RawInputEvent;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/android/server/KeyInputQueue;->readEvent(Landroid/view/RawInputEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/KeyInputQueue;I)Lcom/android/server/InputDevice;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/KeyInputQueue;->newInputDevice(I)Lcom/android/server/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(IZI)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/android/server/KeyInputQueue;->makeMetaState(IZI)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/KeyInputQueue;Lcom/android/server/InputDevice;JIILjava/lang/Object;)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p6}, Lcom/android/server/KeyInputQueue;->addLocked(Lcom/android/server/InputDevice;JIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/KeyInputQueue;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/KeyInputQueue;->rotateKeyCodeLocked(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/KeyInputQueue;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/KeyInputQueue;->computeGlobalMetaStateLocked()V

    return-void
.end method

.method private addLocked(Lcom/android/server/InputDevice;JIILjava/lang/Object;)V
    .registers 15
    .parameter "device"
    .parameter "when"
    .parameter "flags"
    .parameter "classType"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 639
    iget-object v3, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v3, v3, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mLast:Lcom/android/server/KeyInputQueue$QueuedEvent;

    if-ne v3, v4, :cond_21

    move v2, v7

    .line 641
    .local v2, poke:Z
    :goto_a
    invoke-direct/range {p0 .. p6}, Lcom/android/server/KeyInputQueue;->obtainLocked(Lcom/android/server/InputDevice;JIILjava/lang/Object;)Lcom/android/server/KeyInputQueue$QueuedEvent;

    move-result-object v0

    .line 642
    .local v0, ev:Lcom/android/server/KeyInputQueue$QueuedEvent;
    iget-object v3, p0, Lcom/android/server/KeyInputQueue;->mLast:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v1, v3, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 643
    .local v1, p:Lcom/android/server/KeyInputQueue$QueuedEvent;
    :goto_12
    iget-object v3, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    if-eq v1, v3, :cond_24

    iget-wide v3, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->when:J

    iget-wide v5, v1, Lcom/android/server/KeyInputQueue$QueuedEvent;->when:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_24

    .line 644
    iget-object v1, v1, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    goto :goto_12

    .line 639
    .end local v0           #ev:Lcom/android/server/KeyInputQueue$QueuedEvent;
    .end local v1           #p:Lcom/android/server/KeyInputQueue$QueuedEvent;
    .end local v2           #poke:Z
    :cond_21
    const/4 v3, 0x0

    move v2, v3

    goto :goto_a

    .line 647
    .restart local v0       #ev:Lcom/android/server/KeyInputQueue$QueuedEvent;
    .restart local v1       #p:Lcom/android/server/KeyInputQueue$QueuedEvent;
    .restart local v2       #poke:Z
    :cond_24
    iget-object v3, v1, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iput-object v3, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 648
    iput-object v1, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 649
    iput-object v0, v1, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 650
    iget-object v3, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iput-object v0, v3, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 651
    iput-boolean v7, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->inQueue:Z

    .line 653
    if-eqz v2, :cond_3e

    .line 654
    iget-object v3, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 655
    iget-object v3, p0, Lcom/android/server/KeyInputQueue;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 657
    :cond_3e
    return-void
.end method

.method private computeGlobalMetaStateLocked()V
    .registers 4

    .prologue
    .line 460
    iget-object v1, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 461
    .local v0, i:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/KeyInputQueue;->mGlobalMetaState:I

    .line 462
    :goto_9
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1d

    .line 463
    iget v2, p0, Lcom/android/server/KeyInputQueue;->mGlobalMetaState:I

    iget-object v1, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputDevice;

    iget v1, v1, Lcom/android/server/InputDevice;->mMetaKeysState:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/KeyInputQueue;->mGlobalMetaState:I

    goto :goto_9

    .line 465
    :cond_1d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/KeyInputQueue;->mHaveGlobalMetaState:Z

    .line 466
    return-void
.end method

.method public static native getAbsoluteInfo(IILcom/android/server/InputDevice$AbsoluteInfo;)Z
.end method

.method public static native getDeviceClasses(I)I
.end method

.method public static native getDeviceName(I)Ljava/lang/String;
.end method

.method private getInputDeviceLocked(I)Lcom/android/server/InputDevice;
    .registers 3
    .parameter "deviceId"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/InputDevice;

    return-object p0
.end method

.method public static native getKeycodeState(I)I
.end method

.method public static native getKeycodeState(II)I
.end method

.method public static native getScancodeState(I)I
.end method

.method public static native getScancodeState(II)I
.end method

.method public static native getSwitchState(I)I
.end method

.method public static native getSwitchState(II)I
.end method

.method public static native hasKeys([I[Z)Z
.end method

.method private loadAbsoluteInfo(IILjava/lang/String;)Lcom/android/server/InputDevice$AbsoluteInfo;
    .registers 9
    .parameter "id"
    .parameter "channel"
    .parameter "name"

    .prologue
    const-string v4, "KeyInputQueue"

    const-string v3, "  "

    .line 686
    new-instance v0, Lcom/android/server/InputDevice$AbsoluteInfo;

    invoke-direct {v0}, Lcom/android/server/InputDevice$AbsoluteInfo;-><init>()V

    .line 687
    .local v0, info:Lcom/android/server/InputDevice$AbsoluteInfo;
    invoke-static {p1, p2, v0}, Lcom/android/server/KeyInputQueue;->getAbsoluteInfo(IILcom/android/server/InputDevice$AbsoluteInfo;)Z

    move-result v1

    if-eqz v1, :cond_66

    iget v1, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->minValue:I

    iget v2, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->maxValue:I

    if-eq v1, v2, :cond_66

    .line 689
    const-string v1, "KeyInputQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": min="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->minValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->maxValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->flat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fuzz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->fuzz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget v1, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->maxValue:I

    iget v2, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->minValue:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/InputDevice$AbsoluteInfo;->range:I

    move-object v1, v0

    .line 697
    :goto_65
    return-object v1

    .line 696
    :cond_66
    const-string v1, "KeyInputQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": unknown values"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const/4 v1, 0x0

    goto :goto_65
.end method

.method private static final makeMetaState(IZI)I
    .registers 6
    .parameter "keycode"
    .parameter "down"
    .parameter "old"

    .prologue
    .line 429
    packed-switch p0, :pswitch_data_2a

    :pswitch_3
    move v2, p2

    .line 456
    :goto_4
    return v2

    .line 431
    :pswitch_5
    const/16 v0, 0x10

    .line 448
    .local v0, mask:I
    :goto_7
    if-eqz p1, :cond_26

    or-int v2, p2, v0

    :goto_b
    and-int/lit8 v1, v2, -0x4

    .line 450
    .local v1, result:I
    and-int/lit8 v2, v1, 0x30

    if-eqz v2, :cond_13

    .line 451
    or-int/lit8 v1, v1, 0x2

    .line 453
    :cond_13
    and-int/lit16 v2, v1, 0xc0

    if-eqz v2, :cond_19

    .line 454
    or-int/lit8 v1, v1, 0x1

    :cond_19
    move v2, v1

    .line 456
    goto :goto_4

    .line 434
    .end local v0           #mask:I
    .end local v1           #result:I
    :pswitch_1b
    const/16 v0, 0x20

    .line 435
    .restart local v0       #mask:I
    goto :goto_7

    .line 437
    .end local v0           #mask:I
    :pswitch_1e
    const/16 v0, 0x40

    .line 438
    .restart local v0       #mask:I
    goto :goto_7

    .line 440
    .end local v0           #mask:I
    :pswitch_21
    const/16 v0, 0x80

    .line 441
    .restart local v0       #mask:I
    goto :goto_7

    .line 443
    .end local v0           #mask:I
    :pswitch_24
    const/4 v0, 0x4

    .line 444
    .restart local v0       #mask:I
    goto :goto_7

    .line 448
    :cond_26
    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v2, p2

    goto :goto_b

    .line 429
    :pswitch_data_2a
    .packed-switch 0x39
        :pswitch_5
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_3
        :pswitch_3
        :pswitch_24
    .end packed-switch
.end method

.method private newInputDevice(I)Lcom/android/server/InputDevice;
    .registers 11
    .parameter "deviceId"

    .prologue
    .line 660
    invoke-static {p1}, Lcom/android/server/KeyInputQueue;->getDeviceClasses(I)I

    move-result v2

    .line 661
    .local v2, classes:I
    invoke-static {p1}, Lcom/android/server/KeyInputQueue;->getDeviceName(I)Ljava/lang/String;

    move-result-object v3

    .line 662
    .local v3, name:Ljava/lang/String;
    const-string v0, "KeyInputQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Device added: id=0x"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", name="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", classes="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_65

    .line 670
    const/4 v0, 0x0

    const-string v1, "X"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/KeyInputQueue;->loadAbsoluteInfo(IILjava/lang/String;)Lcom/android/server/InputDevice$AbsoluteInfo;

    move-result-object v4

    .line 671
    .local v4, absX:Lcom/android/server/InputDevice$AbsoluteInfo;
    const/4 v0, 0x1

    const-string v1, "Y"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/KeyInputQueue;->loadAbsoluteInfo(IILjava/lang/String;)Lcom/android/server/InputDevice$AbsoluteInfo;

    move-result-object v5

    .line 672
    .local v5, absY:Lcom/android/server/InputDevice$AbsoluteInfo;
    const/16 v0, 0x18

    const-string v1, "Pressure"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/KeyInputQueue;->loadAbsoluteInfo(IILjava/lang/String;)Lcom/android/server/InputDevice$AbsoluteInfo;

    move-result-object v6

    .line 673
    .local v6, absPressure:Lcom/android/server/InputDevice$AbsoluteInfo;
    const/16 v0, 0x1c

    const-string v1, "Size"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/KeyInputQueue;->loadAbsoluteInfo(IILjava/lang/String;)Lcom/android/server/InputDevice$AbsoluteInfo;

    move-result-object v7

    .line 681
    .local v7, absSize:Lcom/android/server/InputDevice$AbsoluteInfo;
    :goto_5e
    new-instance v0, Lcom/android/server/InputDevice;

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/InputDevice;-><init>(IILjava/lang/String;Lcom/android/server/InputDevice$AbsoluteInfo;Lcom/android/server/InputDevice$AbsoluteInfo;Lcom/android/server/InputDevice$AbsoluteInfo;Lcom/android/server/InputDevice$AbsoluteInfo;)V

    return-object v0

    .line 675
    .end local v4           #absX:Lcom/android/server/InputDevice$AbsoluteInfo;
    .end local v5           #absY:Lcom/android/server/InputDevice$AbsoluteInfo;
    .end local v6           #absPressure:Lcom/android/server/InputDevice$AbsoluteInfo;
    .end local v7           #absSize:Lcom/android/server/InputDevice$AbsoluteInfo;
    :cond_65
    const/4 v4, 0x0

    .line 676
    .restart local v4       #absX:Lcom/android/server/InputDevice$AbsoluteInfo;
    const/4 v5, 0x0

    .line 677
    .restart local v5       #absY:Lcom/android/server/InputDevice$AbsoluteInfo;
    const/4 v6, 0x0

    .line 678
    .restart local v6       #absPressure:Lcom/android/server/InputDevice$AbsoluteInfo;
    const/4 v7, 0x0

    .restart local v7       #absSize:Lcom/android/server/InputDevice$AbsoluteInfo;
    goto :goto_5e
.end method

.method public static newKeyEvent(Lcom/android/server/InputDevice;JJZIIII)Landroid/view/KeyEvent;
    .registers 23
    .parameter "device"
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "down"
    .parameter "keycode"
    .parameter "repeatCount"
    .parameter "scancode"
    .parameter "flags"

    .prologue
    .line 199
    new-instance v1, Landroid/view/KeyEvent;

    if-eqz p5, :cond_25

    const/16 p5, 0x0

    move/from16 v6, p5

    .end local p5
    :goto_8
    if-eqz p0, :cond_2a

    move-object v0, p0

    iget v0, v0, Lcom/android/server/InputDevice;->mMetaKeysState:I

    move/from16 p5, v0

    move/from16 v9, p5

    :goto_11
    if-eqz p0, :cond_2f

    iget p0, p0, Lcom/android/server/InputDevice;->id:I

    .end local p0
    move v10, p0

    :goto_16
    or-int/lit8 v12, p9, 0x8

    move-wide v2, p1

    move-wide/from16 v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v11, p8

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    return-object v1

    .restart local p0
    .restart local p5
    :cond_25
    const/16 p5, 0x1

    move/from16 v6, p5

    goto :goto_8

    .end local p5
    :cond_2a
    const/16 p5, 0x0

    move/from16 v9, p5

    goto :goto_11

    :cond_2f
    const/4 p0, -0x1

    move v10, p0

    goto :goto_16
.end method

.method private obtainLocked(Lcom/android/server/InputDevice;JIILjava/lang/Object;)Lcom/android/server/KeyInputQueue$QueuedEvent;
    .registers 10
    .parameter "device"
    .parameter "when"
    .parameter "flags"
    .parameter "classType"
    .parameter "event"

    .prologue
    .line 609
    iget v1, p0, Lcom/android/server/KeyInputQueue;->mCacheCount:I

    if-nez v1, :cond_14

    .line 610
    new-instance v0, Lcom/android/server/KeyInputQueue$QueuedEvent;

    invoke-direct {v0}, Lcom/android/server/KeyInputQueue$QueuedEvent;-><init>()V

    .line 617
    .local v0, ev:Lcom/android/server/KeyInputQueue$QueuedEvent;
    :goto_9
    iput-object p1, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->inputDevice:Lcom/android/server/InputDevice;

    .line 618
    iput-wide p2, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->when:J

    .line 619
    iput p4, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->flags:I

    .line 620
    iput p5, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->classType:I

    .line 621
    iput-object p6, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    .line 622
    return-object v0

    .line 612
    .end local v0           #ev:Lcom/android/server/KeyInputQueue$QueuedEvent;
    :cond_14
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mCache:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 613
    .restart local v0       #ev:Lcom/android/server/KeyInputQueue$QueuedEvent;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->inQueue:Z

    .line 614
    iget-object v1, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mCache:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 615
    iget v1, p0, Lcom/android/server/KeyInputQueue;->mCacheCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/KeyInputQueue;->mCacheCount:I

    goto :goto_9
.end method

.method private static native readEvent(Landroid/view/RawInputEvent;)Z
.end method

.method private recycleLocked(Lcom/android/server/KeyInputQueue$QueuedEvent;)V
    .registers 4
    .parameter "ev"

    .prologue
    .line 626
    iget-boolean v0, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->inQueue:Z

    if-eqz v0, :cond_c

    .line 627
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Event already in queue!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_c
    iget v0, p0, Lcom/android/server/KeyInputQueue;->mCacheCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_21

    .line 630
    iget v0, p0, Lcom/android/server/KeyInputQueue;->mCacheCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/KeyInputQueue;->mCacheCount:I

    .line 631
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mCache:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iput-object v0, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 632
    iput-object p1, p0, Lcom/android/server/KeyInputQueue;->mCache:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 633
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->inQueue:Z

    .line 635
    :cond_21
    return-void
.end method

.method private rotateKeyCodeLocked(I)I
    .registers 6
    .parameter "keyCode"

    .prologue
    .line 524
    iget-object v2, p0, Lcom/android/server/KeyInputQueue;->mKeyRotationMap:[I

    .line 525
    .local v2, map:[I
    if-eqz v2, :cond_14

    .line 526
    array-length v0, v2

    .line 527
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v0, :cond_14

    .line 528
    aget v3, v2, v1

    if-ne v3, p1, :cond_11

    .line 529
    add-int/lit8 v3, v1, 0x1

    aget v3, v2, v3

    .line 533
    .end local v0           #N:I
    .end local v1           #i:I
    :goto_10
    return v3

    .line 527
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_11
    add-int/lit8 v1, v1, 0x2

    goto :goto_6

    .end local v0           #N:I
    .end local v1           #i:I
    :cond_14
    move v3, p1

    .line 533
    goto :goto_10
.end method


# virtual methods
.method filterQueue(Lcom/android/server/KeyInputQueue$FilterCallback;)V
    .registers 6
    .parameter "cb"

    .prologue
    .line 590
    iget-object v1, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v1

    .line 591
    :try_start_3
    iget-object v2, p0, Lcom/android/server/KeyInputQueue;->mLast:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v0, v2, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 592
    .local v0, cur:Lcom/android/server/KeyInputQueue$QueuedEvent;
    :goto_7
    iget-object v2, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    if-eqz v2, :cond_27

    .line 593
    invoke-interface {p1, v0}, Lcom/android/server/KeyInputQueue$FilterCallback;->filterEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)I

    move-result v2

    packed-switch v2, :pswitch_data_2a

    .line 601
    :goto_12
    iget-object v0, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    goto :goto_7

    .line 595
    :pswitch_15
    iget-object v2, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v3, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iput-object v3, v2, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 596
    iget-object v2, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v3, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iput-object v3, v2, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    goto :goto_12

    .line 603
    .end local v0           #cur:Lcom/android/server/KeyInputQueue$QueuedEvent;
    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v2

    .line 599
    .restart local v0       #cur:Lcom/android/server/KeyInputQueue$QueuedEvent;
    :pswitch_25
    :try_start_25
    monitor-exit v1

    .line 604
    :goto_26
    return-void

    .line 603
    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    goto :goto_26

    .line 593
    nop

    :pswitch_data_2a
    .packed-switch -0x1
        :pswitch_25
        :pswitch_15
    .end packed-switch
.end method

.method getEvent(J)Lcom/android/server/KeyInputQueue$QueuedEvent;
    .registers 14
    .parameter "timeoutMS"

    .prologue
    .line 546
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 547
    .local v0, begin:J
    add-long v2, v0, p1

    .line 548
    .local v2, end:J
    move-wide v4, v0

    .line 549
    .local v4, now:J
    iget-object v7, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v7

    .line 550
    :cond_a
    :goto_a
    :try_start_a
    iget-object v8, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v8, v8, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v9, p0, Lcom/android/server/KeyInputQueue;->mLast:Lcom/android/server/KeyInputQueue$QueuedEvent;
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_50

    if-ne v8, v9, :cond_2c

    cmp-long v8, v2, v4

    if-lez v8, :cond_2c

    .line 552
    :try_start_16
    iget-object v8, p0, Lcom/android/server/KeyInputQueue;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 553
    iget-object v8, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    sub-long v9, v2, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_50
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_22} :catch_53

    .line 557
    :goto_22
    :try_start_22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 558
    cmp-long v8, v0, v4

    if-lez v8, :cond_a

    .line 559
    move-wide v0, v4

    goto :goto_a

    .line 562
    :cond_2c
    iget-object v8, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v8, v8, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v9, p0, Lcom/android/server/KeyInputQueue;->mLast:Lcom/android/server/KeyInputQueue$QueuedEvent;

    if-ne v8, v9, :cond_38

    .line 563
    const/4 v8, 0x0

    monitor-exit v7

    move-object v7, v8

    .line 569
    :goto_37
    return-object v7

    .line 565
    :cond_38
    iget-object v8, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v6, v8, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 566
    .local v6, p:Lcom/android/server/KeyInputQueue$QueuedEvent;
    iget-object v8, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v9, v6, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iput-object v9, v8, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 567
    iget-object v8, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v8, v8, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v9, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iput-object v9, v8, Lcom/android/server/KeyInputQueue$QueuedEvent;->prev:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 568
    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/android/server/KeyInputQueue$QueuedEvent;->inQueue:Z

    .line 569
    monitor-exit v7

    move-object v7, v6

    goto :goto_37

    .line 570
    .end local v6           #p:Lcom/android/server/KeyInputQueue$QueuedEvent;
    :catchall_50
    move-exception v8

    monitor-exit v7
    :try_end_52
    .catchall {:try_start_22 .. :try_end_52} :catchall_50

    throw v8

    .line 555
    :catch_53
    move-exception v8

    goto :goto_22
.end method

.method public getInputConfiguration(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter "config"

    .prologue
    .line 155
    iget-object v3, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v3

    .line 156
    const/4 v4, 0x1

    :try_start_4
    iput v4, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 157
    const/4 v4, 0x1

    iput v4, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 158
    const/4 v4, 0x1

    iput v4, p1, Landroid/content/res/Configuration;->navigation:I

    .line 160
    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 161
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_13
    if-ge v2, v0, :cond_3d

    .line 162
    iget-object v4, p0, Lcom/android/server/KeyInputQueue;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputDevice;

    .line 163
    .local v1, d:Lcom/android/server/InputDevice;
    if-eqz v1, :cond_3a

    .line 164
    iget v4, v1, Lcom/android/server/InputDevice;->classes:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_28

    .line 165
    const/4 v4, 0x3

    iput v4, p1, Landroid/content/res/Configuration;->touchscreen:I

    .line 169
    :cond_28
    iget v4, v1, Lcom/android/server/InputDevice;->classes:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_31

    .line 170
    const/4 v4, 0x2

    iput v4, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 174
    :cond_31
    iget v4, v1, Lcom/android/server/InputDevice;->classes:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3a

    .line 175
    const/4 v4, 0x3

    iput v4, p1, Landroid/content/res/Configuration;->navigation:I

    .line 161
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 181
    .end local v1           #d:Lcom/android/server/InputDevice;
    :cond_3d
    monitor-exit v3

    .line 182
    return-void

    .line 181
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_3f
    move-exception v4

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_4 .. :try_end_41} :catchall_3f

    throw v4
.end method

.method getInputDevice(I)Lcom/android/server/InputDevice;
    .registers 4
    .parameter "deviceId"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v0

    .line 477
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/KeyInputQueue;->getInputDeviceLocked(I)Lcom/android/server/InputDevice;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 478
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method hasEvents()Z
    .registers 4

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v0

    .line 538
    :try_start_3
    iget-object v1, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v1, v1, Lcom/android/server/KeyInputQueue$QueuedEvent;->next:Lcom/android/server/KeyInputQueue$QueuedEvent;

    iget-object v2, p0, Lcom/android/server/KeyInputQueue;->mLast:Lcom/android/server/KeyInputQueue$QueuedEvent;

    if-eq v1, v2, :cond_e

    const/4 v1, 0x1

    :goto_c
    monitor-exit v0

    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_c

    .line 539
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method abstract preprocessEvent(Lcom/android/server/InputDevice;Landroid/view/RawInputEvent;)Z
.end method

.method recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V
    .registers 5
    .parameter "ev"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v0

    .line 576
    :try_start_3
    iget-object v1, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    iget-object v2, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->inputDevice:Lcom/android/server/InputDevice;

    iget-object v2, v2, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    iget-object v2, v2, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    if-ne v1, v2, :cond_14

    .line 577
    iget-object v1, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->inputDevice:Lcom/android/server/InputDevice;

    iget-object v1, v1, Lcom/android/server/InputDevice;->mAbs:Lcom/android/server/InputDevice$MotionState;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    .line 579
    :cond_14
    iget-object v1, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    iget-object v2, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->inputDevice:Lcom/android/server/InputDevice;

    iget-object v2, v2, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    iget-object v2, v2, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    if-ne v1, v2, :cond_33

    .line 581
    iget-object v1, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->inputDevice:Lcom/android/server/InputDevice;

    iget-object v1, v1, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    .line 582
    iget-object v1, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->inputDevice:Lcom/android/server/InputDevice;

    iget-object v1, v1, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/InputDevice$MotionState;->x:I

    .line 583
    iget-object v1, p1, Lcom/android/server/KeyInputQueue$QueuedEvent;->inputDevice:Lcom/android/server/InputDevice;

    iget-object v1, v1, Lcom/android/server/InputDevice;->mRel:Lcom/android/server/InputDevice$MotionState;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/InputDevice$MotionState;->y:I

    .line 585
    :cond_33
    invoke-direct {p0, p1}, Lcom/android/server/KeyInputQueue;->recycleLocked(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 586
    monitor-exit v0

    .line 587
    return-void

    .line 586
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public rotateKeyCode(I)I
    .registers 4
    .parameter "keyCode"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v0

    .line 519
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/KeyInputQueue;->rotateKeyCodeLocked(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 520
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public setDisplay(Landroid/view/Display;)V
    .registers 2
    .parameter "display"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/KeyInputQueue;->mDisplay:Landroid/view/Display;

    .line 152
    return-void
.end method

.method public setOrientation(I)V
    .registers 4
    .parameter "orientation"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/server/KeyInputQueue;->mFirst:Lcom/android/server/KeyInputQueue$QueuedEvent;

    monitor-enter v0

    .line 487
    :try_start_3
    iput p1, p0, Lcom/android/server/KeyInputQueue;->mOrientation:I

    .line 488
    packed-switch p1, :pswitch_data_20

    .line 511
    :pswitch_8
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mKeyRotationMap:[I

    .line 514
    :goto_b
    monitor-exit v0

    .line 515
    return-void

    .line 492
    :pswitch_d
    sget-object v1, Lcom/android/server/KeyInputQueue;->KEY_0_MAP:[I

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mKeyRotationMap:[I

    goto :goto_b

    .line 514
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1

    .line 505
    :pswitch_15
    :try_start_15
    sget-object v1, Lcom/android/server/KeyInputQueue;->KEY_180_MAP:[I

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mKeyRotationMap:[I

    goto :goto_b

    .line 508
    :pswitch_1a
    sget-object v1, Lcom/android/server/KeyInputQueue;->KEY_270_MAP:[I

    iput-object v1, p0, Lcom/android/server/KeyInputQueue;->mKeyRotationMap:[I
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_12

    goto :goto_b

    .line 488
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_d
        :pswitch_8
        :pswitch_15
        :pswitch_1a
    .end packed-switch
.end method
