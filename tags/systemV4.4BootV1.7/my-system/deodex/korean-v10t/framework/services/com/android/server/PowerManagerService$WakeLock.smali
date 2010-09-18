.class Lcom/android/server/PowerManagerService$WakeLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeLock"
.end annotation


# instance fields
.field activated:Z

.field final binder:Landroid/os/IBinder;

.field final flags:I

.field minState:I

.field final monitorType:I

.field final tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/PowerManagerService;

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 11
    .parameter
    .parameter "f"
    .parameter "b"
    .parameter "t"
    .parameter "u"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 507
    iput-object p1, p0, Lcom/android/server/PowerManagerService$WakeLock;->this$0:Lcom/android/server/PowerManagerService;

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    .line 509
    iput p2, p0, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    .line 510
    iput-object p3, p0, Lcom/android/server/PowerManagerService$WakeLock;->binder:Landroid/os/IBinder;

    .line 511
    iput-object p4, p0, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    .line 512
    invoke-static {p1}, Lcom/android/server/PowerManagerService;->access$300(Lcom/android/server/PowerManagerService;)I

    move-result v1

    if-ne p5, v1, :cond_3f

    const/16 v1, 0x3e8

    :goto_17
    iput v1, p0, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    .line 513
    invoke-static {p1}, Lcom/android/server/PowerManagerService;->access$300(Lcom/android/server/PowerManagerService;)I

    move-result v1

    if-ne p5, v1, :cond_33

    const-string v1, "KEEP_SCREEN_ON_FLAG"

    iget-object v2, p0, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    const-string v1, "KeyInputQueue"

    iget-object v2, p0, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 516
    :cond_33
    and-int/lit8 v1, p2, 0x1f

    if-ne v1, v3, :cond_41

    move v1, v4

    :goto_38
    iput v1, p0, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    .line 523
    :goto_3a
    const/4 v1, 0x0

    :try_start_3b
    invoke-interface {p3, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3e} :catch_47

    .line 527
    :goto_3e
    return-void

    :cond_3f
    move v1, p5

    .line 512
    goto :goto_17

    :cond_41
    move v1, v3

    .line 516
    goto :goto_38

    .line 520
    :cond_43
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    goto :goto_3a

    .line 524
    :catch_47
    move-exception v0

    .line 525
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$WakeLock;->binderDied()V

    goto :goto_3e
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/server/PowerManagerService$WakeLock;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v0

    monitor-enter v0

    .line 530
    :try_start_7
    iget-object v1, p0, Lcom/android/server/PowerManagerService$WakeLock;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v2, p0, Lcom/android/server/PowerManagerService$WakeLock;->binder:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/PowerManagerService;->access$400(Lcom/android/server/PowerManagerService;Landroid/os/IBinder;Z)V

    .line 531
    monitor-exit v0

    .line 532
    return-void

    .line 531
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v1
.end method
