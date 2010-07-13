.class Lcom/android/globalsearch/PerTagExecutor$Limiter$1;
.super Ljava/lang/Object;
.source "PerTagExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/globalsearch/PerTagExecutor$Limiter;->run(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/globalsearch/PerTagExecutor$Limiter;

.field final synthetic val$command:Ljava/lang/Runnable;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lcom/android/globalsearch/PerTagExecutor$Limiter;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter$1;->this$0:Lcom/android/globalsearch/PerTagExecutor$Limiter;

    iput-object p2, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter$1;->val$command:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter$1;->val$command:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_d

    .line 108
    iget-object v0, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter$1;->this$0:Lcom/android/globalsearch/PerTagExecutor$Limiter;

    iget-object v1, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lcom/android/globalsearch/PerTagExecutor$Limiter;->access$000(Lcom/android/globalsearch/PerTagExecutor$Limiter;Ljava/util/concurrent/Executor;)V

    .line 110
    return-void

    .line 108
    :catchall_d
    move-exception v0

    iget-object v1, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter$1;->this$0:Lcom/android/globalsearch/PerTagExecutor$Limiter;

    iget-object v2, p0, Lcom/android/globalsearch/PerTagExecutor$Limiter$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2}, Lcom/android/globalsearch/PerTagExecutor$Limiter;->access$000(Lcom/android/globalsearch/PerTagExecutor$Limiter;Ljava/util/concurrent/Executor;)V

    throw v0
.end method
