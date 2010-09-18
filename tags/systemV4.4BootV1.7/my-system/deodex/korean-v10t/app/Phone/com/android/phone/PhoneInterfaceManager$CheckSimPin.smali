.class Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckSimPin"
.end annotation


# static fields
.field private static final SUPPLY_PIN_COMPLETE:I = 0x64


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:Z

.field private final mSimCard:Lcom/android/internal/telephony/IccCard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .registers 3
    .parameter "simCard"

    .prologue
    const/4 v0, 0x0

    .line 521
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 512
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mDone:Z

    .line 513
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mResult:Z

    .line 522
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mSimCard:Lcom/android/internal/telephony/IccCard;

    .line 523
    return-void
.end method

.method static synthetic access$502(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 508
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mResult:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 508
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mDone:Z

    return p1
.end method


# virtual methods
.method declared-synchronized checkPin(Ljava/lang/String;)Z
    .registers 6
    .parameter "pin"

    .prologue
    const-string v2, "PhoneInterfaceManager"

    .line 552
    monitor-enter p0

    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mHandler:Landroid/os/Handler;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_14

    if-nez v2, :cond_17

    .line 554
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_14
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_3

    .line 555
    :catch_b
    move-exception v1

    .line 556
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_3

    .line 552
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2

    .line 559
    :cond_17
    :try_start_17
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 561
    .local v0, callback:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v2, p1, v0}, Lcom/android/internal/telephony/IccCard;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 563
    :goto_24
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mDone:Z
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_14

    if-nez v2, :cond_3d

    .line 565
    :try_start_28
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_14
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_32} :catch_33

    goto :goto_24

    .line 567
    :catch_33
    move-exception v2

    move-object v1, v2

    .line 569
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_24

    .line 572
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_3d
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mResult:Z
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_14

    monitor-exit p0

    return v2
.end method

.method public run()V
    .registers 2

    .prologue
    .line 527
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 528
    monitor-enter p0

    .line 529
    :try_start_4
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mHandler:Landroid/os/Handler;

    .line 545
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 546
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 547
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 548
    return-void

    .line 546
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method
