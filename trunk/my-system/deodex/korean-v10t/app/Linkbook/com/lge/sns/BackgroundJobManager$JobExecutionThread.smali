.class Lcom/lge/sns/BackgroundJobManager$JobExecutionThread;
.super Ljava/lang/Thread;
.source "BackgroundJobManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/BackgroundJobManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JobExecutionThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/BackgroundJobManager;


# direct methods
.method constructor <init>(Lcom/lge/sns/BackgroundJobManager;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lge/sns/BackgroundJobManager$JobExecutionThread;->this$0:Lcom/lge/sns/BackgroundJobManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 42
    iget-object v1, p0, Lcom/lge/sns/BackgroundJobManager$JobExecutionThread;->this$0:Lcom/lge/sns/BackgroundJobManager;

    invoke-static {v1}, Lcom/lge/sns/BackgroundJobManager;->access$000(Lcom/lge/sns/BackgroundJobManager;)V

    .line 43
    iget-object v1, p0, Lcom/lge/sns/BackgroundJobManager$JobExecutionThread;->this$0:Lcom/lge/sns/BackgroundJobManager;

    invoke-static {v1}, Lcom/lge/sns/BackgroundJobManager;->access$100(Lcom/lge/sns/BackgroundJobManager;)Ljava/lang/Runnable;

    move-result-object v0

    .line 44
    .local v0, job:Ljava/lang/Runnable;
    :goto_b
    if-eqz v0, :cond_21

    .line 45
    iget-object v1, p0, Lcom/lge/sns/BackgroundJobManager$JobExecutionThread;->this$0:Lcom/lge/sns/BackgroundJobManager;

    invoke-static {v1, v0}, Lcom/lge/sns/BackgroundJobManager;->access$200(Lcom/lge/sns/BackgroundJobManager;Ljava/lang/Runnable;)V

    .line 46
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 47
    iget-object v1, p0, Lcom/lge/sns/BackgroundJobManager$JobExecutionThread;->this$0:Lcom/lge/sns/BackgroundJobManager;

    invoke-static {v1, v0}, Lcom/lge/sns/BackgroundJobManager;->access$300(Lcom/lge/sns/BackgroundJobManager;Ljava/lang/Runnable;)V

    .line 48
    iget-object v1, p0, Lcom/lge/sns/BackgroundJobManager$JobExecutionThread;->this$0:Lcom/lge/sns/BackgroundJobManager;

    invoke-static {v1, v0}, Lcom/lge/sns/BackgroundJobManager;->access$400(Lcom/lge/sns/BackgroundJobManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    goto :goto_b

    .line 50
    :cond_21
    iget-object v1, p0, Lcom/lge/sns/BackgroundJobManager$JobExecutionThread;->this$0:Lcom/lge/sns/BackgroundJobManager;

    invoke-static {v1}, Lcom/lge/sns/BackgroundJobManager;->access$500(Lcom/lge/sns/BackgroundJobManager;)V

    .line 51
    return-void
.end method
