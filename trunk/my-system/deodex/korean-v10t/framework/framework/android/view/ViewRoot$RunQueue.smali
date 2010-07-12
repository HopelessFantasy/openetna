.class final Landroid/view/ViewRoot$RunQueue;
.super Ljava/lang/Object;
.source "ViewRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RunQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRoot$RunQueue$HandlerAction;
    }
.end annotation


# instance fields
.field private final mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewRoot$RunQueue$HandlerAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 3073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3074
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot$RunQueue;->mActions:Ljava/util/ArrayList;

    .line 3117
    return-void
.end method


# virtual methods
.method executeActions(Landroid/os/Handler;)V
    .registers 10
    .parameter "handler"

    .prologue
    .line 3104
    iget-object v4, p0, Landroid/view/ViewRoot$RunQueue;->mActions:Ljava/util/ArrayList;

    monitor-enter v4

    .line 3105
    :try_start_3
    iget-object v0, p0, Landroid/view/ViewRoot$RunQueue;->mActions:Ljava/util/ArrayList;

    .line 3106
    .local v0, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/ViewRoot$RunQueue$HandlerAction;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3108
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    if-ge v3, v1, :cond_1c

    .line 3109
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRoot$RunQueue$HandlerAction;

    .line 3110
    .local v2, handlerAction:Landroid/view/ViewRoot$RunQueue$HandlerAction;
    iget-object v5, v2, Landroid/view/ViewRoot$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    iget-wide v6, v2, Landroid/view/ViewRoot$RunQueue$HandlerAction;->delay:J

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3108
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 3113
    .end local v2           #handlerAction:Landroid/view/ViewRoot$RunQueue$HandlerAction;
    :cond_1c
    iget-object v5, p0, Landroid/view/ViewRoot$RunQueue;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3114
    monitor-exit v4

    .line 3115
    return-void

    .line 3114
    .end local v0           #actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/ViewRoot$RunQueue$HandlerAction;>;"
    .end local v1           #count:I
    .end local v3           #i:I
    :catchall_23
    move-exception v5

    monitor-exit v4
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v5
.end method

.method post(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 3077
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewRoot$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    .line 3078
    return-void
.end method

.method postDelayed(Ljava/lang/Runnable;J)V
    .registers 7
    .parameter "action"
    .parameter "delayMillis"

    .prologue
    .line 3081
    new-instance v0, Landroid/view/ViewRoot$RunQueue$HandlerAction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/ViewRoot$RunQueue$HandlerAction;-><init>(Landroid/view/ViewRoot$1;)V

    .line 3082
    .local v0, handlerAction:Landroid/view/ViewRoot$RunQueue$HandlerAction;
    iput-object p1, v0, Landroid/view/ViewRoot$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    .line 3083
    iput-wide p2, v0, Landroid/view/ViewRoot$RunQueue$HandlerAction;->delay:J

    .line 3085
    iget-object v1, p0, Landroid/view/ViewRoot$RunQueue;->mActions:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3086
    :try_start_d
    iget-object v2, p0, Landroid/view/ViewRoot$RunQueue;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3087
    monitor-exit v1

    .line 3088
    return-void

    .line 3087
    :catchall_14
    move-exception v2

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v2
.end method

.method removeCallbacks(Ljava/lang/Runnable;)V
    .registers 6
    .parameter "action"

    .prologue
    .line 3091
    new-instance v1, Landroid/view/ViewRoot$RunQueue$HandlerAction;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/ViewRoot$RunQueue$HandlerAction;-><init>(Landroid/view/ViewRoot$1;)V

    .line 3092
    .local v1, handlerAction:Landroid/view/ViewRoot$RunQueue$HandlerAction;
    iput-object p1, v1, Landroid/view/ViewRoot$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    .line 3094
    iget-object v2, p0, Landroid/view/ViewRoot$RunQueue;->mActions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3095
    :try_start_b
    iget-object v0, p0, Landroid/view/ViewRoot$RunQueue;->mActions:Ljava/util/ArrayList;

    .line 3097
    .local v0, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/ViewRoot$RunQueue$HandlerAction;>;"
    :cond_d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 3100
    monitor-exit v2

    .line 3101
    return-void

    .line 3100
    .end local v0           #actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/ViewRoot$RunQueue$HandlerAction;>;"
    :catchall_15
    move-exception v3

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v3
.end method
