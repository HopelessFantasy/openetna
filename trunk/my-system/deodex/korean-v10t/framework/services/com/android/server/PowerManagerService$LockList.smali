.class Lcom/android/server/PowerManagerService$LockList;
.super Ljava/util/ArrayList;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/PowerManagerService$WakeLock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 2325
    iput-object p1, p0, Lcom/android/server/PowerManagerService$LockList;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2325
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$LockList;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method addLock(Lcom/android/server/PowerManagerService$WakeLock;)V
    .registers 4
    .parameter "wl"

    .prologue
    .line 2329
    iget-object v1, p1, Lcom/android/server/PowerManagerService$WakeLock;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$LockList;->getIndex(Landroid/os/IBinder;)I

    move-result v0

    .line 2330
    .local v0, index:I
    if-gez v0, :cond_b

    .line 2331
    invoke-virtual {p0, p1}, Lcom/android/server/PowerManagerService$LockList;->add(Ljava/lang/Object;)Z

    .line 2333
    :cond_b
    return-void
.end method

.method gatherState()I
    .registers 7

    .prologue
    .line 2358
    const/4 v2, 0x0

    .line 2359
    .local v2, result:I
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 2360
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v0, :cond_22

    .line 2361
    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PowerManagerService$WakeLock;

    .line 2362
    .local v3, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget-boolean v4, v3, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    if-eqz v4, :cond_1f

    .line 2363
    iget-object v4, p0, Lcom/android/server/PowerManagerService$LockList;->this$0:Lcom/android/server/PowerManagerService;

    iget v5, v3, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$4000(Lcom/android/server/PowerManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2364
    iget v4, v3, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    or-int/2addr v2, v4

    .line 2360
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2368
    .end local v3           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_22
    return v2
.end method

.method getIndex(Landroid/os/IBinder;)I
    .registers 5
    .parameter "binder"

    .prologue
    .line 2347
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 2348
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 2349
    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PowerManagerService$WakeLock;

    iget-object v2, v2, Lcom/android/server/PowerManagerService$WakeLock;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_13

    move v2, v1

    .line 2353
    :goto_12
    return v2

    .line 2348
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2353
    :cond_16
    const/4 v2, -0x1

    goto :goto_12
.end method

.method reactivateScreenLocksLocked()I
    .registers 7

    .prologue
    .line 2373
    const/4 v2, 0x0

    .line 2374
    .local v2, result:I
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 2375
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v0, :cond_21

    .line 2376
    invoke-virtual {p0, v1}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PowerManagerService$WakeLock;

    .line 2377
    .local v3, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget-object v4, p0, Lcom/android/server/PowerManagerService$LockList;->this$0:Lcom/android/server/PowerManagerService;

    iget v5, v3, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$4000(Lcom/android/server/PowerManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2378
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    .line 2379
    iget v4, v3, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    or-int/2addr v2, v4

    .line 2375
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2382
    .end local v3           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_21
    return v2
.end method

.method removeLock(Landroid/os/IBinder;)Lcom/android/server/PowerManagerService$WakeLock;
    .registers 4
    .parameter "binder"

    .prologue
    .line 2337
    invoke-virtual {p0, p1}, Lcom/android/server/PowerManagerService$LockList;->getIndex(Landroid/os/IBinder;)I

    move-result v0

    .line 2338
    .local v0, index:I
    if-ltz v0, :cond_e

    .line 2339
    invoke-virtual {p0, v0}, Lcom/android/server/PowerManagerService$LockList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/PowerManagerService$WakeLock;

    move-object v1, p0

    .line 2341
    :goto_d
    return-object v1

    .restart local p0
    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method
