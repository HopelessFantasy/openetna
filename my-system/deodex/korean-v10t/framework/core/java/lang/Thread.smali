.class public Ljava/lang/Thread;
.super Ljava/lang/Object;
.source "Thread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Thread$UncaughtExceptionHandler;,
        Ljava/lang/Thread$State;,
        Ljava/lang/Thread$ParkState;
    }
.end annotation


# static fields
.field public static final MAX_PRIORITY:I = 0xa

.field public static final MIN_PRIORITY:I = 0x1

.field public static final NORM_PRIORITY:I = 0x5

.field private static count:I

.field private static defaultUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private contextClassLoader:Ljava/lang/ClassLoader;

.field volatile daemon:Z

.field volatile group:Ljava/lang/ThreadGroup;

.field hasBeenStarted:Z

.field private id:J

.field inheritableValues:Ljava/lang/ThreadLocal$Values;

.field private interruptAction:Ljava/lang/Runnable;

.field localValues:Ljava/lang/ThreadLocal$Values;

.field volatile name:Ljava/lang/String;

.field private parkState:I

.field volatile priority:I

.field volatile stackSize:J

.field target:Ljava/lang/Runnable;

.field private uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field volatile vmThread:Ljava/lang/VMThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 150
    const/4 v0, 0x0

    sput v0, Ljava/lang/Thread;->count:I

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 200
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 213
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 214
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 8
    .parameter "runnable"

    .prologue
    const/4 v1, 0x0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 200
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 231
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 9
    .parameter "runnable"
    .parameter "threadName"

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 200
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 251
    if-nez p2, :cond_11

    .line 252
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 255
    :cond_11
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 256
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .parameter "threadName"

    .prologue
    const/4 v1, 0x0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 200
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 272
    if-nez p1, :cond_12

    .line 273
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 276
    :cond_12
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 277
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V
    .registers 9
    .parameter "group"
    .parameter "runnable"

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 200
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 303
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 304
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 10
    .parameter "group"
    .parameter "runnable"
    .parameter "threadName"

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 200
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 330
    if-nez p3, :cond_11

    .line 331
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 334
    :cond_11
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 335
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .registers 7
    .parameter "group"
    .parameter "runnable"
    .parameter "threadName"
    .parameter "stackSize"

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 200
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 394
    if-nez p3, :cond_11

    .line 395
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 397
    :cond_11
    invoke-direct/range {p0 .. p5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 398
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .registers 9
    .parameter "group"
    .parameter "threadName"

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 200
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 358
    if-nez p2, :cond_11

    .line 359
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 362
    :cond_11
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 363
    return-void
.end method

.method constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;IZ)V
    .registers 8
    .parameter "group"
    .parameter "name"
    .parameter "priority"
    .parameter "daemon"

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 200
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 408
    const-class v0, Ljava/lang/Thread;

    monitor-enter v0

    .line 409
    :try_start_c
    sget v1, Ljava/lang/Thread;->count:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Ljava/lang/Thread;->count:I

    int-to-long v1, v1

    iput-wide v1, p0, Ljava/lang/Thread;->id:J

    .line 410
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_39

    .line 412
    if-nez p2, :cond_3c

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ljava/lang/Thread;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 417
    :goto_2f
    if-nez p1, :cond_3f

    .line 418
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "group not specified"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1

    .line 415
    :cond_3c
    iput-object p2, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    goto :goto_2f

    .line 421
    :cond_3f
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    .line 424
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/lang/Thread;->stackSize:J

    .line 425
    iput p3, p0, Ljava/lang/Thread;->priority:I

    .line 426
    iput-boolean p4, p0, Ljava/lang/Thread;->daemon:Z

    .line 429
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->addThread(Ljava/lang/Thread;)V

    .line 430
    return-void
.end method

.method public static activeCount()I
    .registers 1

    .prologue
    .line 535
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    return v0
.end method

.method private create(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .registers 12
    .parameter "group"
    .parameter "runnable"
    .parameter "threadName"
    .parameter "stackSize"

    .prologue
    const-class v5, Ljava/lang/Thread;

    const-string v3, "enableContextClassLoaderOverride"

    .line 453
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 454
    .local v2, smgr:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_46

    .line 455
    if-nez p1, :cond_10

    .line 456
    invoke-virtual {v2}, Ljava/lang/SecurityManager;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    .line 465
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Thread;

    if-eq v3, v5, :cond_46

    .line 466
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/ClassLoader;

    aput-object v4, v1, v3

    .line 469
    .local v1, signature:[Ljava/lang/Class;
    :try_start_20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getContextClassLoader"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 470
    new-instance v3, Ljava/lang/RuntimePermission;

    const-string v4, "enableContextClassLoaderOverride"

    invoke-direct {v3, v4}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_33
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_33} :catch_b9

    .line 476
    :goto_33
    :try_start_33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setContextClassLoader"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 477
    new-instance v3, Ljava/lang/RuntimePermission;

    const-string v4, "enableContextClassLoaderOverride"

    invoke-direct {v3, v4}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_46
    .catch Ljava/lang/NoSuchMethodException; {:try_start_33 .. :try_end_46} :catch_b7

    .line 484
    .end local v1           #signature:[Ljava/lang/Class;
    :cond_46
    :goto_46
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 485
    .local v0, currentThread:Ljava/lang/Thread;
    if-nez p1, :cond_50

    .line 486
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    .line 489
    :cond_50
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 490
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 491
    new-instance v3, Ljava/lang/IllegalThreadStateException;

    const-string v4, "Group already destroyed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 494
    :cond_61
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 496
    const-class v3, Ljava/lang/Thread;

    monitor-enter v5

    .line 497
    :try_start_66
    sget v4, Ljava/lang/Thread;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Ljava/lang/Thread;->count:I

    int-to-long v4, v4

    iput-wide v4, p0, Ljava/lang/Thread;->id:J

    .line 498
    monitor-exit v3
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_b1

    .line 500
    if-nez p3, :cond_b4

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Ljava/lang/Thread;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 506
    :goto_89
    iput-object p2, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    .line 507
    iput-wide p4, p0, Ljava/lang/Thread;->stackSize:J

    .line 509
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v3

    iput v3, p0, Ljava/lang/Thread;->priority:I

    .line 511
    iget-object v3, v0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    iput-object v3, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    .line 514
    iget-object v3, v0, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    if-eqz v3, :cond_a4

    .line 515
    new-instance v3, Ljava/lang/ThreadLocal$Values;

    iget-object v4, v0, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    invoke-direct {v3, v4}, Ljava/lang/ThreadLocal$Values;-><init>(Ljava/lang/ThreadLocal$Values;)V

    iput-object v3, p0, Ljava/lang/Thread;->inheritableValues:Ljava/lang/ThreadLocal$Values;

    .line 520
    :cond_a4
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v3

    invoke-static {p0, v3}, Lorg/apache/harmony/security/fortress/SecurityUtils;->putContext(Ljava/lang/Thread;Ljava/security/AccessControlContext;)V

    .line 523
    iget-object v3, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v3, p0}, Ljava/lang/ThreadGroup;->addThread(Ljava/lang/Thread;)V

    .line 524
    return-void

    .line 498
    :catchall_b1
    move-exception v4

    :try_start_b2
    monitor-exit v3
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw v4

    .line 503
    :cond_b4
    iput-object p3, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    goto :goto_89

    .line 478
    .end local v0           #currentThread:Ljava/lang/Thread;
    .restart local v1       #signature:[Ljava/lang/Class;
    :catch_b7
    move-exception v3

    goto :goto_46

    .line 471
    :catch_b9
    move-exception v3

    goto/16 :goto_33
.end method

.method public static currentThread()Ljava/lang/Thread;
    .registers 1

    .prologue
    .line 586
    invoke-static {}, Ljava/lang/VMThread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public static dumpStack()V
    .registers 2

    .prologue
    .line 610
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "stack dump"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 611
    return-void
.end method

.method public static enumerate([Ljava/lang/Thread;)I
    .registers 3
    .parameter "threads"

    .prologue
    .line 631
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 632
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->checkAccess()V

    .line 633
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v1

    return v1
.end method

.method public static getAllStackTraces()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 652
    .local v3, securityManager:Ljava/lang/SecurityManager;
    if-eqz v3, :cond_1a

    .line 653
    new-instance v5, Ljava/lang/RuntimePermission;

    const-string v6, "getStackTrace"

    invoke-direct {v5, v6}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 654
    new-instance v5, Ljava/lang/RuntimePermission;

    const-string v6, "modifyThreadGroup"

    invoke-direct {v5, v6}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 657
    :cond_1a
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 661
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    sget-object v5, Ljava/lang/ThreadGroup;->mSystem:Ljava/lang/ThreadGroup;

    invoke-virtual {v5}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    .line 662
    .local v0, count:I
    div-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v0

    new-array v4, v5, [Ljava/lang/Thread;

    .line 665
    .local v4, threads:[Ljava/lang/Thread;
    sget-object v5, Ljava/lang/ThreadGroup;->mSystem:Ljava/lang/ThreadGroup;

    invoke-virtual {v5, v4}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v0

    .line 666
    const/4 v1, 0x0

    .local v1, i:I
    :goto_31
    if-ge v1, v0, :cond_41

    .line 667
    aget-object v5, v4, v1

    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 670
    :cond_41
    return-object v2
.end method

.method public static getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    .prologue
    .line 724
    sget-object v0, Ljava/lang/Thread;->defaultUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static holdsLock(Ljava/lang/Object;)Z
    .registers 2
    .parameter "object"

    .prologue
    .line 1405
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v0, v0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    invoke-virtual {v0, p0}, Ljava/lang/VMThread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static interrupted()Z
    .registers 1

    .prologue
    .line 908
    invoke-static {}, Ljava/lang/VMThread;->interrupted()Z

    move-result v0

    return v0
.end method

.method public static setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 4
    .parameter "handler"

    .prologue
    .line 1131
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1132
    .local v0, securityManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 1133
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "setDefaultUncaughtExceptionHandler"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1136
    :cond_10
    sput-object p0, Ljava/lang/Thread;->defaultUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1137
    return-void
.end method

.method private setInterruptAction(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "action"

    .prologue
    .line 1152
    iput-object p1, p0, Ljava/lang/Thread;->interruptAction:Ljava/lang/Runnable;

    .line 1153
    return-void
.end method

.method public static sleep(J)V
    .registers 3
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1250
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/Thread;->sleep(JI)V

    .line 1251
    return-void
.end method

.method public static sleep(JI)V
    .registers 3
    .parameter "millis"
    .parameter "nanos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1270
    invoke-static {p0, p1, p2}, Ljava/lang/VMThread;->sleep(JI)V

    .line 1271
    return-void
.end method

.method public static yield()V
    .registers 0

    .prologue
    .line 1391
    invoke-static {}, Ljava/lang/VMThread;->yield()V

    .line 1392
    return-void
.end method


# virtual methods
.method public final checkAccess()V
    .registers 2

    .prologue
    .line 557
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 558
    .local v0, currentManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 559
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkAccess(Ljava/lang/Thread;)V

    .line 561
    :cond_9
    return-void
.end method

.method public countStackFrames()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 575
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public destroy()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 598
    new-instance v0, Ljava/lang/NoSuchMethodError;

    const-string v1, "Thread.destroy()"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 5

    .prologue
    .line 702
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 703
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1e

    .line 704
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 706
    .local v0, calling:Ljava/lang/ClassLoader;
    if-eqz v0, :cond_1e

    iget-object v2, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->isAncestorOf(Ljava/lang/ClassLoader;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 707
    new-instance v2, Ljava/lang/RuntimePermission;

    const-string v3, "getClassLoader"

    invoke-direct {v2, v3}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 711
    .end local v0           #calling:Ljava/lang/ClassLoader;
    :cond_1e
    iget-object v2, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    return-object v2
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 738
    iget-wide v0, p0, Ljava/lang/Thread;->id:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 749
    iget-object v0, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()I
    .registers 2

    .prologue
    .line 761
    iget v0, p0, Ljava/lang/Thread;->priority:I

    return v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .registers 5

    .prologue
    .line 781
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 782
    .local v0, securityManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 783
    new-instance v2, Ljava/lang/RuntimePermission;

    const-string v3, "getStackTrace"

    invoke-direct {v2, v3}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 786
    :cond_10
    invoke-static {p0}, Ldalvik/system/VMStack;->getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 787
    .local v1, ste:[Ljava/lang/StackTraceElement;
    if-eqz v1, :cond_18

    move-object v2, v1

    :goto_17
    return-object v2

    :cond_18
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/StackTraceElement;

    goto :goto_17
.end method

.method public getState()Ljava/lang/Thread$State;
    .registers 5

    .prologue
    .line 800
    iget-object v2, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 804
    .local v2, vmt:Ljava/lang/VMThread;
    iget-object v1, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 805
    .local v1, thread:Ljava/lang/VMThread;
    if-eqz v1, :cond_12

    .line 808
    invoke-virtual {v1}, Ljava/lang/VMThread;->getStatus()I

    move-result v0

    .line 809
    .local v0, state:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_12

    .line 810
    sget-object v3, Ljava/lang/VMThread;->STATE_MAP:[Ljava/lang/Thread$State;

    aget-object v3, v3, v0

    .line 813
    .end local v0           #state:I
    :goto_11
    return-object v3

    :cond_12
    iget-boolean v3, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    if-eqz v3, :cond_19

    sget-object v3, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    goto :goto_11

    :cond_19
    sget-object v3, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    goto :goto_11
.end method

.method public final getThreadGroup()Ljava/lang/ThreadGroup;
    .registers 3

    .prologue
    .line 825
    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_a

    .line 826
    const/4 v0, 0x0

    .line 828
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    goto :goto_9
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 2

    .prologue
    .line 842
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_7

    .line 843
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 845
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    goto :goto_6
.end method

.method public interrupt()V
    .registers 3

    .prologue
    .line 882
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 884
    iget-object v1, p0, Ljava/lang/Thread;->interruptAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_c

    .line 885
    iget-object v1, p0, Ljava/lang/Thread;->interruptAction:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 888
    :cond_c
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 889
    .local v0, vmt:Ljava/lang/VMThread;
    if-eqz v0, :cond_13

    .line 890
    invoke-virtual {v0}, Ljava/lang/VMThread;->interrupt()V

    .line 892
    :cond_13
    return-void
.end method

.method public final isAlive()Z
    .registers 3

    .prologue
    .line 923
    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    .line 925
    .local v0, state:Ljava/lang/Thread$State;
    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_e

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public final isDaemon()Z
    .registers 2

    .prologue
    .line 941
    iget-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    return v0
.end method

.method public isInterrupted()Z
    .registers 3

    .prologue
    .line 956
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 957
    .local v0, vmt:Ljava/lang/VMThread;
    if-eqz v0, :cond_9

    .line 958
    invoke-virtual {v0}, Ljava/lang/VMThread;->isInterrupted()Z

    move-result v1

    .line 961
    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public final join()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 976
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljava/lang/Thread;->join(JI)V

    .line 977
    return-void
.end method

.method public final join(J)V
    .registers 4
    .parameter "millis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 993
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Thread;->join(JI)V

    .line 994
    return-void
.end method

.method public final join(JI)V
    .registers 7
    .parameter "millis"
    .parameter "nanos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1011
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_d

    if-ltz p3, :cond_d

    const v1, 0xf423f

    if-le p3, v1, :cond_13

    .line 1012
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1017
    :cond_13
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1019
    .local v0, t:Ljava/lang/VMThread;
    if-eqz v0, :cond_22

    .line 1020
    monitor-enter v0

    .line 1021
    :try_start_18
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1022
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/Object;->wait(JI)V

    .line 1023
    :cond_21
    monitor-exit v0

    .line 1025
    :cond_22
    return-void

    .line 1023
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_23

    throw v1
.end method

.method parkFor(J)V
    .registers 10
    .parameter "nanos"

    .prologue
    const/4 v6, 0x3

    .line 1480
    iget-object v3, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1482
    .local v3, vmt:Ljava/lang/VMThread;
    if-nez v3, :cond_b

    .line 1484
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1487
    :cond_b
    monitor-enter v3

    .line 1488
    :try_start_c
    iget v4, p0, Ljava/lang/Thread;->parkState:I

    packed-switch v4, :pswitch_data_4e

    .line 1515
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "shouldn\'t happen: attempt to repark"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1519
    :catchall_19
    move-exception v4

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_19

    throw v4

    .line 1490
    :pswitch_1c
    const/4 v4, 0x1

    :try_start_1d
    iput v4, p0, Ljava/lang/Thread;->parkState:I

    .line 1519
    :cond_1f
    :goto_1f
    monitor-exit v3

    .line 1520
    return-void

    .line 1494
    :pswitch_21
    const-wide/32 v4, 0xf4240

    div-long v1, p1, v4

    .line 1495
    .local v1, millis:J
    const-wide/32 v4, 0xf4240

    rem-long/2addr p1, v4

    .line 1497
    const/4 v4, 0x3

    iput v4, p0, Ljava/lang/Thread;->parkState:I
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_19

    .line 1499
    long-to-int v4, p1

    :try_start_2e
    invoke-virtual {v3, v1, v2, v4}, Ljava/lang/Object;->wait(JI)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_45
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_31} :catch_39

    .line 1508
    :try_start_31
    iget v4, p0, Ljava/lang/Thread;->parkState:I

    if-ne v4, v6, :cond_1f

    .line 1509
    const/4 v4, 0x1

    iput v4, p0, Ljava/lang/Thread;->parkState:I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_19

    goto :goto_1f

    .line 1500
    :catch_39
    move-exception v0

    .line 1501
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_3a
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_45

    .line 1508
    :try_start_3d
    iget v4, p0, Ljava/lang/Thread;->parkState:I

    if-ne v4, v6, :cond_1f

    .line 1509
    const/4 v4, 0x1

    iput v4, p0, Ljava/lang/Thread;->parkState:I

    goto :goto_1f

    .line 1508
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_45
    move-exception v4

    iget v5, p0, Ljava/lang/Thread;->parkState:I

    if-ne v5, v6, :cond_4d

    .line 1509
    const/4 v5, 0x1

    iput v5, p0, Ljava/lang/Thread;->parkState:I

    :cond_4d
    throw v4
    :try_end_4e
    .catchall {:try_start_3d .. :try_end_4e} :catchall_19

    .line 1488
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1c
    .end packed-switch
.end method

.method parkUntil(J)V
    .registers 8
    .parameter "time"

    .prologue
    .line 1530
    iget-object v2, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1532
    .local v2, vmt:Ljava/lang/VMThread;
    if-nez v2, :cond_a

    .line 1534
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1537
    :cond_a
    monitor-enter v2

    .line 1552
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, p1, v3

    .line 1554
    .local v0, delayMillis:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1c

    .line 1555
    const/4 v3, 0x1

    iput v3, p0, Ljava/lang/Thread;->parkState:I

    .line 1559
    :goto_1a
    monitor-exit v2

    .line 1560
    return-void

    .line 1557
    :cond_1c
    const-wide/32 v3, 0xf4240

    mul-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Ljava/lang/Thread;->parkFor(J)V

    goto :goto_1a

    .line 1559
    .end local v0           #delayMillis:J
    :catchall_24
    move-exception v3

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_24

    throw v3
.end method

.method public final resume()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1042
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1044
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1045
    .local v0, vmt:Ljava/lang/VMThread;
    if-eqz v0, :cond_a

    .line 1046
    invoke-virtual {v0}, Ljava/lang/VMThread;->resume()V

    .line 1048
    :cond_a
    return-void
.end method

.method public run()V
    .registers 2

    .prologue
    .line 1059
    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 1060
    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1062
    :cond_9
    return-void
.end method

.method public setContextClassLoader(Ljava/lang/ClassLoader;)V
    .registers 5
    .parameter "cl"

    .prologue
    .line 1080
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1081
    .local v0, securityManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 1082
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "setContextClassLoader"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1085
    :cond_10
    iput-object p1, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    .line 1086
    return-void
.end method

.method public final setDaemon(Z)V
    .registers 4
    .parameter "isDaemon"

    .prologue
    .line 1101
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1103
    iget-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    if-eqz v0, :cond_f

    .line 1104
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Thread already started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1107
    :cond_f
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    if-nez v0, :cond_15

    .line 1108
    iput-boolean p1, p0, Ljava/lang/Thread;->daemon:Z

    .line 1110
    :cond_15
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 4
    .parameter "threadName"

    .prologue
    .line 1166
    if-nez p1, :cond_8

    .line 1167
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1170
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1172
    iput-object p1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 1173
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1174
    .local v0, vmt:Ljava/lang/VMThread;
    if-eqz v0, :cond_14

    .line 1176
    invoke-virtual {v0, p1}, Ljava/lang/VMThread;->nameChanged(Ljava/lang/String;)V

    .line 1178
    :cond_14
    return-void
.end method

.method public final setPriority(I)V
    .registers 5
    .parameter "priority"

    .prologue
    .line 1198
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1200
    const/4 v1, 0x1

    if-lt p1, v1, :cond_a

    const/16 v1, 0xa

    if-le p1, v1, :cond_12

    .line 1201
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Prioritiy out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1204
    :cond_12
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v1

    if-le p1, v1, :cond_20

    .line 1205
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result p1

    .line 1208
    :cond_20
    iput p1, p0, Ljava/lang/Thread;->priority:I

    .line 1210
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1211
    .local v0, vmt:Ljava/lang/VMThread;
    if-eqz v0, :cond_29

    .line 1212
    invoke-virtual {v0, p1}, Ljava/lang/VMThread;->setPriority(I)V

    .line 1214
    :cond_29
    return-void
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 1230
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1232
    iput-object p1, p0, Ljava/lang/Thread;->uncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1233
    return-void
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    .line 1285
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    if-eqz v0, :cond_10

    .line 1286
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Thread already started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 1285
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1289
    :cond_10
    const/4 v0, 0x1

    :try_start_11
    iput-boolean v0, p0, Ljava/lang/Thread;->hasBeenStarted:Z

    .line 1291
    iget-wide v0, p0, Ljava/lang/Thread;->stackSize:J

    invoke-static {p0, v0, v1}, Ljava/lang/VMThread;->create(Ljava/lang/Thread;J)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_d

    .line 1292
    monitor-exit p0

    return-void
.end method

.method public final stop()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1308
    new-instance v0, Ljava/lang/ThreadDeath;

    invoke-direct {v0}, Ljava/lang/ThreadDeath;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->stop(Ljava/lang/Throwable;)V

    .line 1309
    return-void
.end method

.method public final declared-synchronized stop(Ljava/lang/Throwable;)V
    .registers 6
    .parameter "throwable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1329
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1330
    .local v0, securityManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1a

    .line 1331
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkAccess(Ljava/lang/Thread;)V

    .line 1332
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v2, p0, :cond_1a

    .line 1333
    new-instance v2, Ljava/lang/RuntimePermission;

    const-string v3, "stopThread"

    invoke-direct {v2, v3}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1337
    :cond_1a
    if-nez p1, :cond_25

    .line 1338
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_22

    .line 1329
    .end local v0           #securityManager:Ljava/lang/SecurityManager;
    :catchall_22
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1341
    .restart local v0       #securityManager:Ljava/lang/SecurityManager;
    :cond_25
    :try_start_25
    iget-object v1, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1342
    .local v1, vmt:Ljava/lang/VMThread;
    if-eqz v1, :cond_2c

    .line 1343
    invoke-virtual {v1, p1}, Ljava/lang/VMThread;->stop(Ljava/lang/Throwable;)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_22

    .line 1345
    :cond_2c
    monitor-exit p0

    return-void
.end method

.method public final suspend()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1363
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1365
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1366
    .local v0, vmt:Ljava/lang/VMThread;
    if-eqz v0, :cond_a

    .line 1367
    invoke-virtual {v0}, Ljava/lang/VMThread;->suspend()V

    .line 1369
    :cond_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const-string v2, ","

    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/lang/Thread;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unpark()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 1434
    iget-object v0, p0, Ljava/lang/Thread;->vmThread:Ljava/lang/VMThread;

    .line 1436
    .local v0, vmt:Ljava/lang/VMThread;
    if-nez v0, :cond_8

    .line 1444
    iput v1, p0, Ljava/lang/Thread;->parkState:I

    .line 1470
    :goto_7
    return-void

    .line 1448
    :cond_8
    monitor-enter v0

    .line 1449
    :try_start_9
    iget v1, p0, Ljava/lang/Thread;->parkState:I

    packed-switch v1, :pswitch_data_1e

    .line 1464
    const/4 v1, 0x1

    iput v1, p0, Ljava/lang/Thread;->parkState:I

    .line 1465
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1469
    :goto_14
    :pswitch_14
    monitor-exit v0

    goto :goto_7

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw v1

    .line 1460
    :pswitch_19
    const/4 v1, 0x2

    :try_start_1a
    iput v1, p0, Ljava/lang/Thread;->parkState:I
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_16

    goto :goto_14

    .line 1449
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_14
    .end packed-switch
.end method
