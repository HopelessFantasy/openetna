.class Lcom/android/server/WifiService$LockList;
.super Ljava/lang/Object;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockList"
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WifiService$WifiLock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method private constructor <init>(Lcom/android/server/WifiService;)V
    .registers 3
    .parameter

    .prologue
    .line 2517
    iput-object p1, p0, Lcom/android/server/WifiService$LockList;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    .line 2519
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/WifiService;Lcom/android/server/WifiService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2514
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;-><init>(Lcom/android/server/WifiService;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/WifiService$LockList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 2514
    invoke-direct {p0}, Lcom/android/server/WifiService$LockList;->hasLocks()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/WifiService$LockList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2514
    invoke-direct {p0}, Lcom/android/server/WifiService$LockList;->getStrongestLockMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/WifiService$LockList;Ljava/io/PrintWriter;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2514
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/WifiService$LockList;Lcom/android/server/WifiService$WifiLock;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2514
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;->addLock(Lcom/android/server/WifiService$WifiLock;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2514
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;

    move-result-object v0

    return-object v0
.end method

.method private addLock(Lcom/android/server/WifiService$WifiLock;)V
    .registers 3
    .parameter "lock"

    .prologue
    .line 2538
    iget-object v0, p1, Lcom/android/server/WifiService$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    if-gez v0, :cond_d

    .line 2539
    iget-object v0, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2541
    :cond_d
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 5
    .parameter "pw"

    .prologue
    .line 2563
    iget-object v2, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$WifiLock;

    .line 2564
    .local v1, l:Lcom/android/server/WifiService$WifiLock;
    const-string v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2565
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6

    .line 2567
    .end local v1           #l:Lcom/android/server/WifiService$WifiLock;
    :cond_1b
    return-void
.end method

.method private findLockByBinder(Landroid/os/IBinder;)I
    .registers 5
    .parameter "binder"

    .prologue
    .line 2555
    iget-object v2, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 2556
    .local v1, size:I
    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_1c

    .line 2557
    iget-object v2, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WifiService$WifiLock;

    iget-object v2, v2, Lcom/android/server/WifiService$WifiLock;->mBinder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_19

    move v2, v0

    .line 2559
    :goto_18
    return v2

    .line 2556
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 2559
    :cond_1c
    const/4 v2, -0x1

    goto :goto_18
.end method

.method private declared-synchronized getStrongestLockMode()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2526
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_27

    move-result v2

    if-eqz v2, :cond_d

    move v2, v3

    .line 2534
    :goto_b
    monitor-exit p0

    return v2

    .line 2529
    :cond_d
    :try_start_d
    iget-object v2, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$WifiLock;

    .line 2530
    .local v1, l:Lcom/android/server/WifiService$WifiLock;
    iget v2, v1, Lcom/android/server/WifiService$WifiLock;->mMode:I
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_27

    if-ne v2, v3, :cond_13

    move v2, v3

    .line 2531
    goto :goto_b

    .line 2534
    .end local v1           #l:Lcom/android/server/WifiService$WifiLock;
    :cond_25
    const/4 v2, 0x2

    goto :goto_b

    .line 2526
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_27
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized hasLocks()Z
    .registers 2

    .prologue
    .line 2522
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeLock(Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;
    .registers 5
    .parameter "binder"

    .prologue
    .line 2544
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    .line 2545
    .local v0, index:I
    if-ltz v0, :cond_13

    .line 2546
    iget-object v2, p0, Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$WifiLock;

    .line 2547
    .local v1, ret:Lcom/android/server/WifiService$WifiLock;
    invoke-virtual {v1}, Lcom/android/server/WifiService$WifiLock;->unlinkDeathRecipient()V

    move-object v2, v1

    .line 2550
    .end local v1           #ret:Lcom/android/server/WifiService$WifiLock;
    :goto_12
    return-object v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_12
.end method
