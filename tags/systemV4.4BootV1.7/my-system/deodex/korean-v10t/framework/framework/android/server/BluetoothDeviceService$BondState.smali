.class public Landroid/server/BluetoothDeviceService$BondState;
.super Ljava/lang/Object;
.source "BluetoothDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BondState"
.end annotation


# instance fields
.field private final mAutoPairingBlacklisted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutoPairingFailures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinAttempt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/server/BluetoothDeviceService;


# direct methods
.method public constructor <init>(Landroid/server/BluetoothDeviceService;)V
    .registers 6
    .parameter

    .prologue
    .line 677
    iput-object p1, p0, Landroid/server/BluetoothDeviceService$BondState;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothDeviceService$BondState;->mState:Ljava/util/HashMap;

    .line 679
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothDeviceService$BondState;->mPinAttempt:Ljava/util/HashMap;

    .line 680
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothDeviceService$BondState;->mAutoPairingFailures:Ljava/util/ArrayList;

    .line 689
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1b

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "00:02:C7"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "00:16:FE"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "00:19:C1"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "00:1B:FB"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "00:1E:3D"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "00:21:4F"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "00:23:06"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "00:24:33"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "00:A0:79"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "00:0E:6D"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "00:13:E0"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "00:21:E8"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "00:60:57"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "00:0E:9F"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "00:12:1C"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "00:18:91"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "00:18:96"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "00:13:04"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "00:16:FD"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "00:22:A0"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "00:0B:4C"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "00:60:6F"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "00:23:3D"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "00:C0:59"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "00:0A:30"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "00:1E:AE"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "00:1C:D7"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/server/BluetoothDeviceService$BondState;->mAutoPairingBlacklisted:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Landroid/server/BluetoothDeviceService$BondState;I)[Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 677
    invoke-direct {p0, p1}, Landroid/server/BluetoothDeviceService$BondState;->listInState(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized listInState(I)[Ljava/lang/String;
    .registers 6
    .parameter "state"

    .prologue
    .line 760
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/server/BluetoothDeviceService$BondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 761
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/server/BluetoothDeviceService$BondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 762
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_16

    .line 763
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_16

    .line 760
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_36
    move-exception v3

    monitor-exit p0

    throw v3

    .line 766
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_39
    :try_start_39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_36

    monitor-exit p0

    return-object v3
.end method


# virtual methods
.method public declared-synchronized addAutoPairingFailure(Ljava/lang/String;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 770
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService$BondState;->mAutoPairingFailures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 771
    iget-object v0, p0, Landroid/server/BluetoothDeviceService$BondState;->mAutoPairingFailures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 773
    :cond_e
    monitor-exit p0

    return-void

    .line 770
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized attempt(Ljava/lang/String;)V
    .registers 6
    .parameter "address"

    .prologue
    .line 796
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothDeviceService$BondState;->mPinAttempt:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 798
    .local v0, attempt:Ljava/lang/Integer;
    if-nez v0, :cond_18

    .line 799
    const/4 v1, 0x1

    .line 803
    .local v1, newAttempt:I
    :goto_c
    iget-object v2, p0, Landroid/server/BluetoothDeviceService$BondState;->mPinAttempt:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1f

    .line 804
    monitor-exit p0

    return-void

    .line 801
    .end local v1           #newAttempt:I
    :cond_18
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1f

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .restart local v1       #newAttempt:I
    goto :goto_c

    .line 796
    .end local v0           #attempt:Ljava/lang/Integer;
    .end local v1           #newAttempt:I
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized clearPinAttempts(Ljava/lang/String;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 780
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService$BondState;->mPinAttempt:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 781
    monitor-exit p0

    return-void

    .line 780
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAttempt(Ljava/lang/String;)I
    .registers 4
    .parameter "address"

    .prologue
    .line 788
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothDeviceService$BondState;->mPinAttempt:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    .line 789
    .local v0, attempt:Ljava/lang/Integer;
    if-nez v0, :cond_e

    .line 790
    const/4 v1, 0x0

    .line 792
    :goto_c
    monitor-exit p0

    return v1

    :cond_e
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_13

    move-result v1

    goto :goto_c

    .line 788
    .end local v0           #attempt:Ljava/lang/Integer;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getBondState(Ljava/lang/String;)I
    .registers 4
    .parameter "address"

    .prologue
    .line 752
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothDeviceService$BondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    .line 753
    .local v0, state:Ljava/lang/Integer;
    if-nez v0, :cond_e

    .line 754
    const/4 v1, 0x0

    .line 756
    :goto_c
    monitor-exit p0

    return v1

    :cond_e
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_13

    move-result v1

    goto :goto_c

    .line 752
    .end local v0           #state:Ljava/lang/Integer;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized hasAutoPairingFailed(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 784
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothDeviceService$BondState;->mAutoPairingFailures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 776
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothDeviceService$BondState;->getAttempt(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAutoPairingBlacklisted(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 745
    iget-object v2, p0, Landroid/server/BluetoothDeviceService$BondState;->mAutoPairingBlacklisted:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 746
    .local v0, blacklistAddress:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    .line 748
    .end local v0           #blacklistAddress:Ljava/lang/String;
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public declared-synchronized loadBondState()V
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 699
    monitor-enter p0

    :try_start_2
    iget-object v5, p0, Landroid/server/BluetoothDeviceService$BondState;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v5}, Landroid/server/BluetoothDeviceService;->access$1800(Landroid/server/BluetoothDeviceService;)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_4e

    move-result v5

    if-eq v5, v6, :cond_c

    .line 711
    :cond_a
    monitor-exit p0

    return-void

    .line 702
    :cond_c
    :try_start_c
    iget-object v5, p0, Landroid/server/BluetoothDeviceService$BondState;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v5}, Landroid/server/BluetoothDeviceService;->access$1900(Landroid/server/BluetoothDeviceService;)[Ljava/lang/String;

    move-result-object v2

    .line 703
    .local v2, bonds:[Ljava/lang/String;
    if-eqz v2, :cond_a

    .line 706
    iget-object v5, p0, Landroid/server/BluetoothDeviceService$BondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 707
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bonded devices"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothDeviceService;->access$600(Ljava/lang/String;)V

    .line 708
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_39
    if-ge v3, v4, :cond_a

    aget-object v0, v1, v3

    .line 709
    .local v0, address:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothDeviceService$BondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catchall {:try_start_c .. :try_end_4b} :catchall_4e

    .line 708
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 699
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #bonds:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_4e
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setBondState(Ljava/lang/String;I)V
    .registers 4
    .parameter "address"
    .parameter "state"

    .prologue
    .line 714
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Landroid/server/BluetoothDeviceService$BondState;->setBondState(Ljava/lang/String;II)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 715
    monitor-exit p0

    return-void

    .line 714
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBondState(Ljava/lang/String;II)V
    .registers 8
    .parameter "address"
    .parameter "state"
    .parameter "reason"

    .prologue
    .line 719
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothDeviceService$BondState;->getBondState(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_75

    move-result v1

    .line 720
    .local v1, oldState:I
    if-ne v1, p2, :cond_9

    .line 742
    :goto_7
    monitor-exit p0

    return-void

    .line 723
    :cond_9
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bond state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothDeviceService;->access$600(Ljava/lang/String;)V

    .line 725
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.intent.action.BOND_STATE_CHANGED_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 726
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    const-string v2, "android.bluetooth.intent.BOND_STATE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 728
    const-string v2, "android.bluetooth.intent.BOND_PREVIOUS_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 729
    if-nez p2, :cond_78

    .line 730
    if-gtz p3, :cond_5f

    .line 731
    const-string v2, "BluetoothDeviceService"

    const-string v3, "setBondState() called to unbond device, but reason code is invalid. Overriding reason code with BOND_RESULT_REMOVED"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/4 p3, 0x6

    .line 735
    :cond_5f
    const-string v2, "android.bluetooth.intent.REASON"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 736
    iget-object v2, p0, Landroid/server/BluetoothDeviceService$BondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    :goto_69
    iget-object v2, p0, Landroid/server/BluetoothDeviceService$BondState;->this$0:Landroid/server/BluetoothDeviceService;

    invoke-static {v2}, Landroid/server/BluetoothDeviceService;->access$300(Landroid/server/BluetoothDeviceService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_9 .. :try_end_74} :catchall_75

    goto :goto_7

    .line 719
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #oldState:I
    :catchall_75
    move-exception v2

    monitor-exit p0

    throw v2

    .line 738
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #oldState:I
    :cond_78
    :try_start_78
    iget-object v2, p0, Landroid/server/BluetoothDeviceService$BondState;->mState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_81
    .catchall {:try_start_78 .. :try_end_81} :catchall_75

    goto :goto_69
.end method
