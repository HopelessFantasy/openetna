.class Lcom/android/server/PowerManagerService$TimeoutTask;
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
    name = "TimeoutTask"
.end annotation


# instance fields
.field nextState:I

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 957
    iput-object p1, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 957
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$TimeoutTask;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 962
    iget-object v2, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v2

    monitor-enter v2

    .line 964
    :try_start_7
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user activity timeout timed out nextState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_28

    .line 968
    monitor-exit v2

    .line 988
    :goto_27
    return-void

    .line 971
    :cond_28
    iget-object v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget v4, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$1702(Lcom/android/server/PowerManagerService;I)I

    .line 972
    iget-object v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget v4, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    iget-object v5, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$1800(Lcom/android/server/PowerManagerService;)I

    move-result v5

    or-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$1900(Lcom/android/server/PowerManagerService;I)V

    .line 974
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 976
    .local v0, now:J
    iget v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    packed-switch v3, :pswitch_data_62

    .line 987
    :goto_46
    :pswitch_46
    monitor-exit v2

    goto :goto_27

    .end local v0           #now:J
    :catchall_48
    move-exception v3

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_48

    throw v3

    .line 979
    .restart local v0       #now:J
    :pswitch_4b
    :try_start_4b
    iget-object v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)I

    move-result v3

    if-ltz v3, :cond_5a

    .line 980
    iget-object v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x1

    invoke-static {v3, v0, v1, v4}, Lcom/android/server/PowerManagerService;->access$2100(Lcom/android/server/PowerManagerService;JI)V

    goto :goto_46

    .line 984
    :cond_5a
    :pswitch_5a
    iget-object v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    invoke-static {v3, v0, v1, v4}, Lcom/android/server/PowerManagerService;->access$2100(Lcom/android/server/PowerManagerService;JI)V
    :try_end_60
    .catchall {:try_start_4b .. :try_end_60} :catchall_48

    goto :goto_46

    .line 976
    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_46
        :pswitch_4b
    .end packed-switch
.end method
