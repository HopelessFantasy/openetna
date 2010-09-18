.class Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$1;
.super Ljava/lang/Object;
.source "ScheduledThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field private it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;)V
    .registers 3
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$1;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$1;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    invoke-static {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->access$500(Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;)Ljava/util/concurrent/DelayQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$1;->it:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 535
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$1;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 537
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$1;->next()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 536
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$1;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 537
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$1;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
