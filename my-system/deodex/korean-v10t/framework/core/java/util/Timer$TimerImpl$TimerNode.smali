.class final Ljava/util/Timer$TimerImpl$TimerNode;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Timer$TimerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimerNode"
.end annotation


# instance fields
.field left:Ljava/util/Timer$TimerImpl$TimerNode;

.field parent:Ljava/util/Timer$TimerImpl$TimerNode;

.field right:Ljava/util/Timer$TimerImpl$TimerNode;

.field task:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Ljava/util/TimerTask;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Ljava/util/Timer$TimerImpl$TimerNode;->task:Ljava/util/TimerTask;

    .line 71
    return-void
.end method


# virtual methods
.method public deleteIfCancelled(Ljava/util/Timer$TimerImpl$TimerTree;)V
    .registers 3
    .parameter "tasks"

    .prologue
    .line 79
    iget-object v0, p0, Ljava/util/Timer$TimerImpl$TimerNode;->left:Ljava/util/Timer$TimerImpl$TimerNode;

    if-eqz v0, :cond_9

    .line 80
    iget-object v0, p0, Ljava/util/Timer$TimerImpl$TimerNode;->left:Ljava/util/Timer$TimerImpl$TimerNode;

    invoke-virtual {v0, p1}, Ljava/util/Timer$TimerImpl$TimerNode;->deleteIfCancelled(Ljava/util/Timer$TimerImpl$TimerTree;)V

    .line 82
    :cond_9
    iget-object v0, p0, Ljava/util/Timer$TimerImpl$TimerNode;->right:Ljava/util/Timer$TimerImpl$TimerNode;

    if-eqz v0, :cond_12

    .line 83
    iget-object v0, p0, Ljava/util/Timer$TimerImpl$TimerNode;->right:Ljava/util/Timer$TimerImpl$TimerNode;

    invoke-virtual {v0, p1}, Ljava/util/Timer$TimerImpl$TimerNode;->deleteIfCancelled(Ljava/util/Timer$TimerImpl$TimerTree;)V

    .line 85
    :cond_12
    iget-object v0, p0, Ljava/util/Timer$TimerImpl$TimerNode;->task:Ljava/util/TimerTask;

    iget-boolean v0, v0, Ljava/util/TimerTask;->cancelled:Z

    if-eqz v0, :cond_21

    .line 86
    invoke-virtual {p1, p0}, Ljava/util/Timer$TimerImpl$TimerTree;->delete(Ljava/util/Timer$TimerImpl$TimerNode;)V

    .line 87
    iget v0, p1, Ljava/util/Timer$TimerImpl$TimerTree;->deletedCancelledNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Ljava/util/Timer$TimerImpl$TimerTree;->deletedCancelledNumber:I

    .line 89
    :cond_21
    return-void
.end method
