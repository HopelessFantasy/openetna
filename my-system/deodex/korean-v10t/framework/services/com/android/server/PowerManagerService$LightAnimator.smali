.class Lcom/android/server/PowerManagerService$LightAnimator;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LightAnimator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 1778
    iput-object p1, p0, Lcom/android/server/PowerManagerService$LightAnimator;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1778
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$LightAnimator;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1780
    iget-object v3, p0, Lcom/android/server/PowerManagerService$LightAnimator;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v3

    monitor-enter v3

    .line 1781
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1782
    .local v1, now:J
    iget-object v4, p0, Lcom/android/server/PowerManagerService$LightAnimator;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$3500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$BrightnessState;->stepLocked()Z

    move-result v0

    .line 1783
    .local v0, more:Z
    iget-object v4, p0, Lcom/android/server/PowerManagerService$LightAnimator;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$3600(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$BrightnessState;->stepLocked()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1784
    const/4 v0, 0x1

    .line 1786
    :cond_22
    iget-object v4, p0, Lcom/android/server/PowerManagerService$LightAnimator;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$3700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/PowerManagerService$BrightnessState;->stepLocked()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1787
    const/4 v0, 0x1

    .line 1789
    :cond_2f
    if-eqz v0, :cond_43

    .line 1790
    iget-object v4, p0, Lcom/android/server/PowerManagerService$LightAnimator;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$2800(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$LightAnimator;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$3800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LightAnimator;

    move-result-object v5

    const-wide/16 v6, 0x10

    add-long/2addr v6, v1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1792
    :cond_43
    monitor-exit v3

    .line 1793
    return-void

    .line 1792
    .end local v0           #more:Z
    .end local v1           #now:J
    :catchall_45
    move-exception v4

    monitor-exit v3
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_45

    throw v4
.end method
