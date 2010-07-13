.class public Lcom/lge/sns/BackgroundJobManager;
.super Ljava/lang/Object;
.source "BackgroundJobManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/BackgroundJobManager$JobExecutionThread;,
        Lcom/lge/sns/BackgroundJobManager$JobListener;
    }
.end annotation


# static fields
.field static instance:Lcom/lge/sns/BackgroundJobManager;

.field static secondInstance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/sns/BackgroundJobManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final jobQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/sns/BackgroundJobManager$JobListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lcom/lge/sns/BackgroundJobManager;

    invoke-direct {v0}, Lcom/lge/sns/BackgroundJobManager;-><init>()V

    sput-object v0, Lcom/lge/sns/BackgroundJobManager;->instance:Lcom/lge/sns/BackgroundJobManager;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/BackgroundJobManager;->secondInstance:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/BackgroundJobManager;->listeners:Ljava/util/ArrayList;

    .line 239
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/BackgroundJobManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lge/sns/BackgroundJobManager;->notifyJobStarted()V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/sns/BackgroundJobManager;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lge/sns/BackgroundJobManager;->getFirstJob()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/sns/BackgroundJobManager;Ljava/lang/Runnable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/sns/BackgroundJobManager;->notifyJobExecuting(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/sns/BackgroundJobManager;Ljava/lang/Runnable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/sns/BackgroundJobManager;->notifyJobExecuted(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/sns/BackgroundJobManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/sns/BackgroundJobManager;->getNextJob(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/sns/BackgroundJobManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lge/sns/BackgroundJobManager;->notifyJobCompleted()V

    return-void
.end method

.method private getFirstJob()Ljava/lang/Runnable;
    .registers 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 215
    :try_start_3
    iget-object v1, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 216
    iget-object v1, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Runnable;

    monitor-exit v0

    move-object v0, p0

    .line 219
    :goto_15
    return-object v0

    .line 218
    .restart local p0
    :cond_16
    monitor-exit v0

    .line 219
    const/4 v0, 0x0

    goto :goto_15

    .line 218
    .end local p0
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public static getInstance()Lcom/lge/sns/BackgroundJobManager;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/lge/sns/BackgroundJobManager;->instance:Lcom/lge/sns/BackgroundJobManager;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/lge/sns/BackgroundJobManager;
    .registers 4
    .parameter "key"

    .prologue
    .line 68
    sget-object v1, Lcom/lge/sns/BackgroundJobManager;->secondInstance:Ljava/util/HashMap;

    monitor-enter v1

    .line 69
    :try_start_3
    sget-object v2, Lcom/lge/sns/BackgroundJobManager;->secondInstance:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/BackgroundJobManager;

    .line 70
    .local v0, instance:Lcom/lge/sns/BackgroundJobManager;
    if-nez v0, :cond_17

    .line 71
    new-instance v0, Lcom/lge/sns/BackgroundJobManager;

    .end local v0           #instance:Lcom/lge/sns/BackgroundJobManager;
    invoke-direct {v0}, Lcom/lge/sns/BackgroundJobManager;-><init>()V

    .line 72
    .restart local v0       #instance:Lcom/lge/sns/BackgroundJobManager;
    sget-object v2, Lcom/lge/sns/BackgroundJobManager;->secondInstance:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_17
    monitor-exit v1

    return-object v0

    .line 75
    .end local v0           #instance:Lcom/lge/sns/BackgroundJobManager;
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v2
.end method

.method private getNextJob(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 4
    .parameter "job"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 224
    :try_start_3
    iget-object v1, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 225
    iget-object v1, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 226
    iget-object v1, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Runnable;

    monitor-exit v0

    move-object v0, p0

    .line 229
    :goto_1a
    return-object v0

    .line 228
    .restart local p0
    :cond_1b
    monitor-exit v0

    .line 229
    const/4 v0, 0x0

    goto :goto_1a

    .line 228
    .end local p0
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private notifyJobCompleted()V
    .registers 6

    .prologue
    .line 105
    iget-object v3, p0, Lcom/lge/sns/BackgroundJobManager;->listeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 106
    :try_start_3
    iget-object v4, p0, Lcom/lge/sns/BackgroundJobManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 107
    .local v1, l:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_1a

    .line 108
    iget-object v4, p0, Lcom/lge/sns/BackgroundJobManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/BackgroundJobManager$JobListener;

    .line 109
    .local v2, listener:Lcom/lge/sns/BackgroundJobManager$JobListener;
    invoke-interface {v2, p0}, Lcom/lge/sns/BackgroundJobManager$JobListener;->onJobCompleted(Lcom/lge/sns/BackgroundJobManager;)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 111
    .end local v2           #listener:Lcom/lge/sns/BackgroundJobManager$JobListener;
    :cond_1a
    monitor-exit v3

    .line 112
    return-void

    .line 111
    .end local v0           #i:I
    .end local v1           #l:I
    :catchall_1c
    move-exception v4

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v4
.end method

.method private notifyJobExecuted(Ljava/lang/Runnable;)V
    .registers 7
    .parameter "r"

    .prologue
    .line 125
    iget-object v3, p0, Lcom/lge/sns/BackgroundJobManager;->listeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 126
    :try_start_3
    iget-object v4, p0, Lcom/lge/sns/BackgroundJobManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 127
    .local v1, l:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_1a

    .line 128
    iget-object v4, p0, Lcom/lge/sns/BackgroundJobManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/BackgroundJobManager$JobListener;

    .line 129
    .local v2, listener:Lcom/lge/sns/BackgroundJobManager$JobListener;
    invoke-interface {v2, p0, p1}, Lcom/lge/sns/BackgroundJobManager$JobListener;->onJobExecuting(Lcom/lge/sns/BackgroundJobManager;Ljava/lang/Runnable;)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 131
    .end local v2           #listener:Lcom/lge/sns/BackgroundJobManager$JobListener;
    :cond_1a
    monitor-exit v3

    .line 132
    return-void

    .line 131
    .end local v0           #i:I
    .end local v1           #l:I
    :catchall_1c
    move-exception v4

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v4
.end method

.method private notifyJobExecuting(Ljava/lang/Runnable;)V
    .registers 7
    .parameter "r"

    .prologue
    .line 115
    iget-object v3, p0, Lcom/lge/sns/BackgroundJobManager;->listeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 116
    :try_start_3
    iget-object v4, p0, Lcom/lge/sns/BackgroundJobManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 117
    .local v1, l:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_1a

    .line 118
    iget-object v4, p0, Lcom/lge/sns/BackgroundJobManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/BackgroundJobManager$JobListener;

    .line 119
    .local v2, listener:Lcom/lge/sns/BackgroundJobManager$JobListener;
    invoke-interface {v2, p0, p1}, Lcom/lge/sns/BackgroundJobManager$JobListener;->onJobExecuting(Lcom/lge/sns/BackgroundJobManager;Ljava/lang/Runnable;)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 121
    .end local v2           #listener:Lcom/lge/sns/BackgroundJobManager$JobListener;
    :cond_1a
    monitor-exit v3

    .line 122
    return-void

    .line 121
    .end local v0           #i:I
    .end local v1           #l:I
    :catchall_1c
    move-exception v4

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v4
.end method

.method private notifyJobStarted()V
    .registers 6

    .prologue
    .line 95
    iget-object v3, p0, Lcom/lge/sns/BackgroundJobManager;->listeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 96
    :try_start_3
    iget-object v4, p0, Lcom/lge/sns/BackgroundJobManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 97
    .local v1, l:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_1a

    .line 98
    iget-object v4, p0, Lcom/lge/sns/BackgroundJobManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/BackgroundJobManager$JobListener;

    .line 99
    .local v2, listener:Lcom/lge/sns/BackgroundJobManager$JobListener;
    invoke-interface {v2, p0}, Lcom/lge/sns/BackgroundJobManager$JobListener;->onJobStarted(Lcom/lge/sns/BackgroundJobManager;)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 101
    .end local v2           #listener:Lcom/lge/sns/BackgroundJobManager$JobListener;
    :cond_1a
    monitor-exit v3

    .line 102
    return-void

    .line 101
    .end local v0           #i:I
    .end local v1           #l:I
    :catchall_1c
    move-exception v4

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v4
.end method

.method private startJobExecutionThread()V
    .registers 2

    .prologue
    .line 233
    new-instance v0, Lcom/lge/sns/BackgroundJobManager$JobExecutionThread;

    invoke-direct {v0, p0}, Lcom/lge/sns/BackgroundJobManager$JobExecutionThread;-><init>(Lcom/lge/sns/BackgroundJobManager;)V

    .line 234
    .local v0, t:Lcom/lge/sns/BackgroundJobManager$JobExecutionThread;
    invoke-virtual {v0}, Lcom/lge/sns/BackgroundJobManager$JobExecutionThread;->start()V

    .line 235
    return-void
.end method


# virtual methods
.method public addEmergencyJob(Ljava/lang/Runnable;)V
    .registers 6
    .parameter "job"

    .prologue
    .line 173
    iget-object v1, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 174
    :try_start_3
    iget-object v2, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 175
    .local v0, needStart:Z
    iget-object v2, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 176
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_16

    .line 177
    if-eqz v0, :cond_15

    .line 178
    invoke-direct {p0}, Lcom/lge/sns/BackgroundJobManager;->startJobExecutionThread()V

    .line 180
    :cond_15
    return-void

    .line 176
    .end local v0           #needStart:Z
    :catchall_16
    move-exception v2

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v2
.end method

.method public addJob(Ljava/lang/Runnable;)V
    .registers 5
    .parameter "job"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 141
    :try_start_3
    iget-object v2, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 142
    .local v0, needStart:Z
    iget-object v2, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 143
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_15

    .line 144
    if-eqz v0, :cond_14

    .line 145
    invoke-direct {p0}, Lcom/lge/sns/BackgroundJobManager;->startJobExecutionThread()V

    .line 147
    :cond_14
    return-void

    .line 143
    .end local v0           #needStart:Z
    :catchall_15
    move-exception v2

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v2
.end method

.method public addJobListener(Lcom/lge/sns/BackgroundJobManager$JobListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lge/sns/BackgroundJobManager;->listeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 80
    :try_start_3
    iget-object v1, p0, Lcom/lge/sns/BackgroundJobManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 81
    iget-object v1, p0, Lcom/lge/sns/BackgroundJobManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_10
    monitor-exit v0

    .line 84
    return-void

    .line 83
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public addJobs([Ljava/lang/Runnable;)V
    .registers 9
    .parameter "jobs"

    .prologue
    .line 155
    iget-object v5, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    monitor-enter v5

    .line 156
    :try_start_3
    iget-object v6, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    .line 157
    .local v4, needStart:Z
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Runnable;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_c
    if-ge v1, v3, :cond_18

    aget-object v2, v0, v1

    .line 158
    .local v2, job:Ljava/lang/Runnable;
    iget-object v6, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 160
    .end local v2           #job:Ljava/lang/Runnable;
    :cond_18
    monitor-exit v5
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1f

    .line 161
    if-eqz v4, :cond_1e

    .line 162
    invoke-direct {p0}, Lcom/lge/sns/BackgroundJobManager;->startJobExecutionThread()V

    .line 164
    :cond_1e
    return-void

    .line 160
    .end local v0           #arr$:[Ljava/lang/Runnable;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #needStart:Z
    :catchall_1f
    move-exception v6

    :try_start_20
    monitor-exit v5
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v6
.end method

.method public cancelJob(Ljava/lang/Runnable;)Z
    .registers 4
    .parameter "job"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 189
    :try_start_3
    iget-object v1, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 190
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public clearJob()V
    .registers 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 198
    :try_start_3
    iget-object v1, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 199
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public contains(Ljava/lang/Runnable;)Z
    .registers 6
    .parameter "job"

    .prologue
    .line 203
    iget-object v2, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 204
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/BackgroundJobManager;->jobQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 205
    .local v1, oldJob:Ljava/lang/Runnable;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 206
    const/4 v3, 0x1

    monitor-exit v2

    move v2, v3

    .line 211
    .end local v1           #oldJob:Ljava/lang/Runnable;
    :goto_1e
    return v2

    .line 209
    :cond_1f
    monitor-exit v2

    .line 211
    const/4 v2, 0x0

    goto :goto_1e

    .line 209
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_22
    move-exception v3

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v3
.end method

.method public removeJobListener(Lcom/lge/sns/BackgroundJobManager$JobListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/sns/BackgroundJobManager;->listeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 88
    :try_start_3
    iget-object v1, p0, Lcom/lge/sns/BackgroundJobManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 89
    iget-object v1, p0, Lcom/lge/sns/BackgroundJobManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 91
    :cond_10
    monitor-exit v0

    .line 92
    return-void

    .line 91
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
