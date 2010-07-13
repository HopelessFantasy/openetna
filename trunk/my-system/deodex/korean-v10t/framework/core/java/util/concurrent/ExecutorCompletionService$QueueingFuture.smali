.class Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;
.super Ljava/util/concurrent/FutureTask;
.source "ExecutorCompletionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ExecutorCompletionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueingFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/ExecutorCompletionService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorCompletionService;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter "t"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;,"Ljava/util/concurrent/ExecutorCompletionService<TV;>.QueueingFuture;"
    .local p3, r:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;->this$0:Ljava/util/concurrent/ExecutorCompletionService;

    invoke-direct {p0, p2, p3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ExecutorCompletionService;Ljava/util/concurrent/Callable;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, this:Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;,"Ljava/util/concurrent/ExecutorCompletionService<TV;>.QueueingFuture;"
    .local p2, c:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TV;>;"
    iput-object p1, p0, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;->this$0:Ljava/util/concurrent/ExecutorCompletionService;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .registers 2

    .prologue
    .line 86
    .local p0, this:Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;,"Ljava/util/concurrent/ExecutorCompletionService<TV;>.QueueingFuture;"
    iget-object v0, p0, Ljava/util/concurrent/ExecutorCompletionService$QueueingFuture;->this$0:Ljava/util/concurrent/ExecutorCompletionService;

    invoke-static {v0}, Ljava/util/concurrent/ExecutorCompletionService;->access$000(Ljava/util/concurrent/ExecutorCompletionService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
