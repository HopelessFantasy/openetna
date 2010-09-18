.class Ljava/util/Timer$1;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Timer;


# direct methods
.method constructor <init>(Ljava/util/Timer;)V
    .registers 2
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Ljava/util/Timer$1;->this$0:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 4

    .prologue
    .line 335
    iget-object v0, p0, Ljava/util/Timer$1;->this$0:Ljava/util/Timer;

    invoke-static {v0}, Ljava/util/Timer;->access$100(Ljava/util/Timer;)Ljava/util/Timer$TimerImpl;

    move-result-object v0

    monitor-enter v0

    .line 336
    :try_start_7
    iget-object v1, p0, Ljava/util/Timer$1;->this$0:Ljava/util/Timer;

    invoke-static {v1}, Ljava/util/Timer;->access$100(Ljava/util/Timer;)Ljava/util/Timer$TimerImpl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Timer$TimerImpl;->access$202(Ljava/util/Timer$TimerImpl;Z)Z

    .line 337
    iget-object v1, p0, Ljava/util/Timer$1;->this$0:Ljava/util/Timer;

    invoke-static {v1}, Ljava/util/Timer;->access$100(Ljava/util/Timer;)Ljava/util/Timer$TimerImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 338
    monitor-exit v0

    .line 339
    return-void

    .line 338
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method
