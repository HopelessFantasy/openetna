.class final Lcom/google/masf/MobileServiceMux$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/masf/MobileServiceMux;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/masf/MobileServiceMux;


# direct methods
.method constructor <init>(Lcom/google/masf/MobileServiceMux;)V
    .registers 2

    iput-object p1, p0, Lcom/google/masf/MobileServiceMux$1;->this$0:Lcom/google/masf/MobileServiceMux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux$1;->this$0:Lcom/google/masf/MobileServiceMux;

    iget-object v0, v0, Lcom/google/masf/MobileServiceMux;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/masf/MobileServiceMux$1;->this$0:Lcom/google/masf/MobileServiceMux;

    iget-wide v3, v3, Lcom/google/masf/MobileServiceMux;->nextFlush:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_25

    iget-object v1, p0, Lcom/google/masf/MobileServiceMux$1;->this$0:Lcom/google/masf/MobileServiceMux;

    iget-object v1, v1, Lcom/google/masf/MobileServiceMux;->flushTask:Lcom/google/common/task/TimerTask;

    iget-object v2, p0, Lcom/google/masf/MobileServiceMux$1;->this$0:Lcom/google/masf/MobileServiceMux;

    iget-wide v2, v2, Lcom/google/masf/MobileServiceMux;->nextFlush:J

    invoke-virtual {v1, v2, v3}, Lcom/google/common/task/TimerTask;->setDeadline(J)V

    iget-object v1, p0, Lcom/google/masf/MobileServiceMux$1;->this$0:Lcom/google/masf/MobileServiceMux;

    iget-object v1, v1, Lcom/google/masf/MobileServiceMux;->flushTask:Lcom/google/common/task/TimerTask;

    invoke-virtual {v1}, Lcom/google/common/task/TimerTask;->schedule()V

    monitor-exit v0

    :goto_24
    return-void

    :cond_25
    iget-object v1, p0, Lcom/google/masf/MobileServiceMux$1;->this$0:Lcom/google/masf/MobileServiceMux;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/google/masf/MobileServiceMux;->nextFlush:J

    iget-object v1, p0, Lcom/google/masf/MobileServiceMux$1;->this$0:Lcom/google/masf/MobileServiceMux;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/google/masf/MobileServiceMux;->hardDeadline:J

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_38

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux$1;->this$0:Lcom/google/masf/MobileServiceMux;

    invoke-static {v0}, Lcom/google/masf/MobileServiceMux;->access$000(Lcom/google/masf/MobileServiceMux;)V

    goto :goto_24

    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method