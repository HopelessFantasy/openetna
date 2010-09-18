.class public abstract Ljava/util/concurrent/AbstractExecutorService;
.super Ljava/lang/Object;
.source "AbstractExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Ljava/util/concurrent/AbstractExecutorService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ljava/util/concurrent/AbstractExecutorService;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;
    .registers 27
    .parameter
    .parameter "timed"
    .parameter "nanos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;ZJ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 54
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/concurrent/Callable<TT;>;>;"
    if-nez p1, :cond_8

    .line 55
    new-instance v20, Ljava/lang/NullPointerException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/NullPointerException;-><init>()V

    throw v20

    .line 56
    :cond_8
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v18

    .line 57
    .local v18, ntasks:I
    if-nez v18, :cond_14

    .line 58
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 59
    :cond_14
    new-instance v10, Ljava/util/ArrayList;

    move-object v0, v10

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .local v10, futures:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    new-instance v5, Ljava/util/concurrent/ExecutorCompletionService;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 72
    .local v5, ecs:Ljava/util/concurrent/ExecutorCompletionService;,"Ljava/util/concurrent/ExecutorCompletionService<TT;>;"
    const/4 v6, 0x0

    .line 73
    .local v6, ee:Ljava/util/concurrent/ExecutionException;
    if-eqz p2, :cond_88

    :try_start_27
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 74
    .local v14, lastTime:J
    :goto_2d
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 77
    .local v13, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/concurrent/Callable;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v20

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catchall {:try_start_27 .. :try_end_44} :catchall_97

    .line 78
    add-int/lit8 v18, v18, -0x1

    .line 79
    const/4 v4, 0x1

    .local v4, active:I
    move-object v7, v6

    .line 82
    .end local v6           #ee:Ljava/util/concurrent/ExecutionException;
    .local v7, ee:Ljava/util/concurrent/ExecutionException;
    :goto_48
    :try_start_48
    invoke-virtual {v5}, Ljava/util/concurrent/ExecutorCompletionService;->poll()Ljava/util/concurrent/Future;

    move-result-object v9

    .line 83
    .local v9, f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    if-nez v9, :cond_67

    .line 84
    if-lez v18, :cond_8d

    .line 85
    add-int/lit8 v18, v18, -0x1

    .line 86
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Callable;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v20

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catchall {:try_start_48 .. :try_end_65} :catchall_c6

    .line 87
    add-int/lit8 v4, v4, 0x1

    .line 102
    :cond_67
    :goto_67
    if-eqz v9, :cond_ee

    .line 103
    add-int/lit8 v4, v4, -0x1

    .line 105
    :try_start_6b
    invoke-interface {v9}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_c6
    .catch Ljava/lang/InterruptedException; {:try_start_6b .. :try_end_6e} :catch_d9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6b .. :try_end_6e} :catch_db
    .catch Ljava/lang/RuntimeException; {:try_start_6b .. :try_end_6e} :catch_e0

    move-result-object v20

    .line 121
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_73
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_eb

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .end local v9           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    check-cast v9, Ljava/util/concurrent/Future;

    .line 122
    .restart local v9       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v21, 0x1

    move-object v0, v9

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_73

    .line 73
    .end local v4           #active:I
    .end local v7           #ee:Ljava/util/concurrent/ExecutionException;
    .end local v9           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v14           #lastTime:J
    .restart local v6       #ee:Ljava/util/concurrent/ExecutionException;
    .restart local p0
    :cond_88
    const-wide/16 v20, 0x0

    move-wide/from16 v14, v20

    goto :goto_2d

    .line 89
    .end local v6           #ee:Ljava/util/concurrent/ExecutionException;
    .end local p0
    .restart local v4       #active:I
    .restart local v7       #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v9       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .restart local v13       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local v14       #lastTime:J
    :cond_8d
    if-nez v4, :cond_b1

    .line 116
    if-nez v7, :cond_ec

    .line 117
    :try_start_91
    new-instance v6, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v6}, Ljava/util/concurrent/ExecutionException;-><init>()V
    :try_end_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_c6

    .line 118
    .end local v7           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v6       #ee:Ljava/util/concurrent/ExecutionException;
    :goto_96
    :try_start_96
    throw v6
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_97

    .line 121
    .end local v4           #active:I
    .end local v9           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v13           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v14           #lastTime:J
    :catchall_97
    move-exception v20

    :goto_98
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_9c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_ea

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/Future;

    .line 122
    .restart local v9       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v21, 0x1

    move-object v0, v9

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_9c

    .line 91
    .end local v6           #ee:Ljava/util/concurrent/ExecutionException;
    .end local v11           #i$:Ljava/util/Iterator;
    .restart local v4       #active:I
    .restart local v7       #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v13       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local v14       #lastTime:J
    :cond_b1
    if-eqz p2, :cond_d4

    .line 92
    :try_start_b3
    sget-object v20, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, v5

    move-wide/from16 v1, p3

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorCompletionService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v9

    .line 93
    if-nez v9, :cond_c9

    .line 94
    new-instance v20, Ljava/util/concurrent/TimeoutException;

    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v20

    .line 121
    .end local v9           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :catchall_c6
    move-exception v20

    move-object v6, v7

    .end local v7           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v6       #ee:Ljava/util/concurrent/ExecutionException;
    goto :goto_98

    .line 95
    .end local v6           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v7       #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v9       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :cond_c9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 96
    .local v16, now:J
    sub-long v20, v16, v14

    sub-long p3, p3, v20

    .line 97
    move-wide/from16 v14, v16

    .line 98
    goto :goto_67

    .line 100
    .end local v16           #now:J
    :cond_d4
    invoke-virtual {v5}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v9

    goto :goto_67

    .line 106
    :catch_d9
    move-exception v12

    .line 107
    .local v12, ie:Ljava/lang/InterruptedException;
    throw v12

    .line 108
    .end local v12           #ie:Ljava/lang/InterruptedException;
    :catch_db
    move-exception v8

    .line 109
    .local v8, eex:Ljava/util/concurrent/ExecutionException;
    move-object v6, v8

    .end local v7           #ee:Ljava/util/concurrent/ExecutionException;
    .end local v8           #eex:Ljava/util/concurrent/ExecutionException;
    .restart local v6       #ee:Ljava/util/concurrent/ExecutionException;
    :goto_dd
    move-object v7, v6

    .line 114
    .end local v6           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v7       #ee:Ljava/util/concurrent/ExecutionException;
    goto/16 :goto_48

    .line 110
    :catch_e0
    move-exception v19

    .line 111
    .local v19, rex:Ljava/lang/RuntimeException;
    new-instance v6, Ljava/util/concurrent/ExecutionException;

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
    :try_end_e9
    .catchall {:try_start_b3 .. :try_end_e9} :catchall_c6

    .end local v7           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v6       #ee:Ljava/util/concurrent/ExecutionException;
    goto :goto_dd

    .line 122
    .end local v4           #active:I
    .end local v9           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v13           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v14           #lastTime:J
    .end local v19           #rex:Ljava/lang/RuntimeException;
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_ea
    throw v20

    .end local v6           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v4       #active:I
    .restart local v7       #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v9       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .restart local v13       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local v14       #lastTime:J
    :cond_eb
    return-object v20

    .end local v11           #i$:Ljava/util/Iterator;
    :cond_ec
    move-object v6, v7

    .end local v7           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v6       #ee:Ljava/util/concurrent/ExecutionException;
    goto :goto_96

    .end local v6           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v7       #ee:Ljava/util/concurrent/ExecutionException;
    :cond_ee
    move-object v6, v7

    .end local v7           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v6       #ee:Ljava/util/concurrent/ExecutionException;
    goto :goto_dd
.end method


# virtual methods
.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v8, 0x1

    .line 144
    if-nez p1, :cond_9

    .line 145
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 146
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .local v3, futures:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v0, 0x0

    .line 149
    .local v0, done:Z
    :try_start_13
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Callable;

    .line 150
    .local v5, t:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v2, Ljava/util/concurrent/FutureTask;

    invoke-direct {v2, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 151
    .local v2, f:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {p0, v2}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_2f

    goto :goto_17

    .line 166
    .end local v2           #f:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #t:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    :catchall_2f
    move-exception v6

    if-nez v0, :cond_79

    .line 167
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_79

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 168
    .local v1, f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v1, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_36

    .line 154
    .end local v1           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :cond_46
    :try_start_46
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4a
    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 155
    .restart local v1       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_59
    .catchall {:try_start_46 .. :try_end_59} :catchall_2f

    move-result v6

    if-nez v6, :cond_4a

    .line 157
    :try_start_5c
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_2f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5c .. :try_end_5f} :catch_60
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5c .. :try_end_5f} :catch_7a

    goto :goto_4a

    .line 158
    :catch_60
    move-exception v6

    goto :goto_4a

    .line 163
    .end local v1           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :cond_62
    const/4 v0, 0x1

    .line 166
    if-nez v0, :cond_7c

    .line 167
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_69
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 168
    .restart local v1       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v1, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_69

    .end local v1           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_79
    throw v6

    .line 159
    .restart local v1       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :catch_7a
    move-exception v6

    goto :goto_4a

    .line 168
    .end local v1           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :cond_7c
    return-object v3
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .registers 24
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 175
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/concurrent/Callable<TT;>;>;"
    if-eqz p1, :cond_4

    if-nez p4, :cond_a

    .line 176
    :cond_4
    new-instance v17, Ljava/lang/NullPointerException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/NullPointerException;-><init>()V

    throw v17

    .line 177
    :cond_a
    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v11

    .line 178
    .local v11, nanos:J
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v17

    move-object v0, v6

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 179
    .local v6, futures:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v4, 0x0

    .line 181
    .local v4, done:Z
    :try_start_1f
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_23
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/concurrent/Callable;

    .line 182
    .local v15, t:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v17, Ljava/util/concurrent/FutureTask;

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_1f .. :try_end_3d} :catchall_3e

    goto :goto_23

    .line 217
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v15           #t:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    .end local p1           #tasks:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/concurrent/Callable<TT;>;>;"
    :catchall_3e
    move-exception v17

    if-nez v4, :cond_121

    .line 218
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_45
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_121

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 219
    .local v5, f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v18, 0x1

    move-object v0, v5

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_45

    .line 184
    .end local v5           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .restart local p1       #tasks:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/concurrent/Callable<TT;>;>;"
    :cond_5a
    :try_start_5a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 188
    .local v9, lastTime:J
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 189
    .end local p1           #tasks:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/concurrent/Callable<TT;>;>;"
    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/concurrent/Future<TT;>;>;"
    :cond_62
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9d

    .line 190
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual/range {p0 .. p1}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 191
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_76
    .catchall {:try_start_5a .. :try_end_76} :catchall_3e

    move-result-wide v13

    .line 192
    .local v13, now:J
    sub-long v17, v13, v9

    sub-long v11, v11, v17

    .line 193
    move-wide v9, v13

    .line 194
    const-wide/16 v17, 0x0

    cmp-long v17, v11, v17

    if-gtz v17, :cond_62

    .line 217
    if-nez v4, :cond_122

    .line 218
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_88
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_122

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 219
    .restart local v5       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v17, 0x1

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_88

    .line 198
    .end local v5           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v13           #now:J
    :cond_9d
    :try_start_9d
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a1
    :goto_a1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_105

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 199
    .restart local v5       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v5}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_b0
    .catchall {:try_start_9d .. :try_end_b0} :catchall_3e

    move-result v17

    if-nez v17, :cond_a1

    .line 200
    const-wide/16 v17, 0x0

    cmp-long v17, v11, v17

    if-gtz v17, :cond_d4

    .line 217
    if-nez v4, :cond_122

    .line 218
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_bf
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_122

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    check-cast v5, Ljava/util/concurrent/Future;

    .line 219
    .restart local v5       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v17, 0x1

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_bf

    .line 203
    :cond_d4
    :try_start_d4
    sget-object v17, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, v5

    move-wide v1, v11

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_dd
    .catchall {:try_start_d4 .. :try_end_dd} :catchall_3e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_d4 .. :try_end_dd} :catch_125
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d4 .. :try_end_dd} :catch_123
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d4 .. :try_end_dd} :catch_e7

    .line 209
    :goto_dd
    :try_start_dd
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_e0
    .catchall {:try_start_dd .. :try_end_e0} :catchall_3e

    move-result-wide v13

    .line 210
    .restart local v13       #now:J
    sub-long v17, v13, v9

    sub-long v11, v11, v17

    .line 211
    move-wide v9, v13

    goto :goto_a1

    .line 206
    .end local v13           #now:J
    :catch_e7
    move-exception v17

    move-object/from16 v16, v17

    .line 217
    .local v16, toe:Ljava/util/concurrent/TimeoutException;
    if-nez v4, :cond_122

    .line 218
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_122

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    check-cast v5, Ljava/util/concurrent/Future;

    .line 219
    .restart local v5       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v17, 0x1

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_f0

    .line 214
    .end local v5           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v16           #toe:Ljava/util/concurrent/TimeoutException;
    :cond_105
    const/4 v4, 0x1

    .line 217
    if-nez v4, :cond_122

    .line 218
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_10c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_122

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 219
    .restart local v5       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v17, 0x1

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_10c

    .end local v5           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/concurrent/Future<TT;>;>;"
    .end local v9           #lastTime:J
    :cond_121
    throw v17

    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/concurrent/Future<TT;>;>;"
    .restart local v9       #lastTime:J
    :cond_122
    return-object v6

    .line 205
    .restart local v5       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :catch_123
    move-exception v17

    goto :goto_dd

    .line 204
    :catch_125
    move-exception v17

    goto :goto_dd
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 129
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_3
    invoke-direct {p0, p1, v1, v2, v3}, Ljava/util/concurrent/AbstractExecutorService;->doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object v1

    .line 132
    :goto_7
    return-object v1

    .line 130
    :catch_8
    move-exception v0

    .line 131
    .local v0, cannotHappen:Ljava/util/concurrent/TimeoutException;
    sget-boolean v1, Ljava/util/concurrent/AbstractExecutorService;->$assertionsDisabled:Z

    if-nez v1, :cond_13

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 132
    :cond_13
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 139
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v0, 0x1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/concurrent/AbstractExecutorService;->doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 4
    .parameter "task"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 28
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 29
    :cond_8
    new-instance v0, Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 30
    .local v0, ftask:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 31
    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 5
    .parameter "task"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, result:Ljava/lang/Object;,"TT;"
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 36
    :cond_8
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 37
    .local v0, ftask:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 38
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, task:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 43
    :cond_8
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 44
    .local v0, ftask:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 45
    return-object v0
.end method
