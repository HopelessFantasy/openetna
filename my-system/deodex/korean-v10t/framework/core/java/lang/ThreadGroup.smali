.class public Ljava/lang/ThreadGroup;
.super Ljava/lang/Object;
.source "ThreadGroup.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ThreadGroup$1;,
        Ljava/lang/ThreadGroup$ChildrenThreadsLock;,
        Ljava/lang/ThreadGroup$ChildrenGroupsLock;
    }
.end annotation


# static fields
.field static mMain:Ljava/lang/ThreadGroup;

.field static mSystem:Ljava/lang/ThreadGroup;


# instance fields
.field private childrenGroups:[Ljava/lang/ThreadGroup;

.field private childrenGroupsLock:Ljava/lang/Object;

.field private childrenThreads:[Ljava/lang/Thread;

.field private childrenThreadsLock:Ljava/lang/Object;

.field private isDaemon:Z

.field private isDestroyed:Z

.field private maxPriority:I

.field private name:Ljava/lang/String;

.field numGroups:I

.field numThreads:I

.field parent:Ljava/lang/ThreadGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 82
    new-instance v0, Ljava/lang/ThreadGroup;

    invoke-direct {v0}, Ljava/lang/ThreadGroup;-><init>()V

    sput-object v0, Ljava/lang/ThreadGroup;->mSystem:Ljava/lang/ThreadGroup;

    .line 83
    new-instance v0, Ljava/lang/ThreadGroup;

    sget-object v1, Ljava/lang/ThreadGroup;->mSystem:Ljava/lang/ThreadGroup;

    const-string v2, "main"

    invoke-direct {v0, v1, v2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    sput-object v0, Ljava/lang/ThreadGroup;->mMain:Ljava/lang/ThreadGroup;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0xa

    iput v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Thread;

    iput-object v0, p0, Ljava/lang/ThreadGroup;->childrenThreads:[Ljava/lang/Thread;

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/ThreadGroup;

    iput-object v0, p0, Ljava/lang/ThreadGroup;->childrenGroups:[Ljava/lang/ThreadGroup;

    .line 68
    new-instance v0, Ljava/lang/ThreadGroup$ChildrenGroupsLock;

    invoke-direct {v0, p0, v1}, Ljava/lang/ThreadGroup$ChildrenGroupsLock;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/ThreadGroup$1;)V

    iput-object v0, p0, Ljava/lang/ThreadGroup;->childrenGroupsLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/ThreadGroup$ChildrenThreadsLock;

    invoke-direct {v0, p0, v1}, Ljava/lang/ThreadGroup$ChildrenThreadsLock;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/ThreadGroup$1;)V

    iput-object v0, p0, Ljava/lang/ThreadGroup;->childrenThreadsLock:Ljava/lang/Object;

    .line 150
    const-string v0, "system"

    iput-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    .line 151
    invoke-direct {p0, v1}, Ljava/lang/ThreadGroup;->setParent(Ljava/lang/ThreadGroup;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .registers 5
    .parameter "parent"
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0xa

    iput v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Thread;

    iput-object v0, p0, Ljava/lang/ThreadGroup;->childrenThreads:[Ljava/lang/Thread;

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/ThreadGroup;

    iput-object v0, p0, Ljava/lang/ThreadGroup;->childrenGroups:[Ljava/lang/ThreadGroup;

    .line 68
    new-instance v0, Ljava/lang/ThreadGroup$ChildrenGroupsLock;

    invoke-direct {v0, p0, v1}, Ljava/lang/ThreadGroup$ChildrenGroupsLock;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/ThreadGroup$1;)V

    iput-object v0, p0, Ljava/lang/ThreadGroup;->childrenGroupsLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/ThreadGroup$ChildrenThreadsLock;

    invoke-direct {v0, p0, v1}, Ljava/lang/ThreadGroup$ChildrenThreadsLock;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/ThreadGroup$1;)V

    iput-object v0, p0, Ljava/lang/ThreadGroup;->childrenThreadsLock:Ljava/lang/Object;

    .line 129
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 132
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 135
    :cond_29
    iput-object p2, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    .line 136
    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup;->setParent(Ljava/lang/ThreadGroup;)V

    .line 137
    if-eqz p1, :cond_41

    .line 138
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadGroup;->setMaxPriority(I)V

    .line 139
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->isDaemon()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/ThreadGroup;->setDaemon(Z)V

    .line 143
    :cond_41
    return-void
.end method

.method private add(Ljava/lang/ThreadGroup;)V
    .registers 8
    .parameter "g"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v1, p0, Ljava/lang/ThreadGroup;->childrenGroupsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 239
    :try_start_3
    iget-boolean v2, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    if-nez v2, :cond_38

    .line 240
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenGroups:[Ljava/lang/ThreadGroup;

    array-length v2, v2

    iget v3, p0, Ljava/lang/ThreadGroup;->numGroups:I

    if-ne v2, v3, :cond_2a

    .line 241
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenGroups:[Ljava/lang/ThreadGroup;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [Ljava/lang/ThreadGroup;

    .line 242
    .local v0, newGroups:[Ljava/lang/ThreadGroup;
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenGroups:[Ljava/lang/ThreadGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Ljava/lang/ThreadGroup;->numGroups:I

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iget v2, p0, Ljava/lang/ThreadGroup;->numGroups:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/ThreadGroup;->numGroups:I

    aput-object p1, v0, v2

    .line 244
    iput-object v0, p0, Ljava/lang/ThreadGroup;->childrenGroups:[Ljava/lang/ThreadGroup;

    .line 251
    .end local v0           #newGroups:[Ljava/lang/ThreadGroup;
    :goto_28
    monitor-exit v1

    .line 252
    return-void

    .line 246
    :cond_2a
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenGroups:[Ljava/lang/ThreadGroup;

    iget v3, p0, Ljava/lang/ThreadGroup;->numGroups:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/lang/ThreadGroup;->numGroups:I

    aput-object p1, v2, v3

    goto :goto_28

    .line 251
    :catchall_35
    move-exception v2

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v2

    .line 249
    :cond_38
    :try_start_38
    new-instance v2, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v2}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v2
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_35
.end method

.method private destroyIfEmptyDaemon()V
    .registers 4

    .prologue
    .line 346
    iget-object v0, p0, Ljava/lang/ThreadGroup;->childrenThreadsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_3
    iget-boolean v1, p0, Ljava/lang/ThreadGroup;->isDaemon:Z

    if-eqz v1, :cond_1a

    iget-boolean v1, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    if-nez v1, :cond_1a

    iget v1, p0, Ljava/lang/ThreadGroup;->numThreads:I

    if-nez v1, :cond_1a

    .line 348
    iget-object v1, p0, Ljava/lang/ThreadGroup;->childrenGroupsLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1f

    .line 349
    :try_start_12
    iget v2, p0, Ljava/lang/ThreadGroup;->numGroups:I

    if-nez v2, :cond_19

    .line 350
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->destroy()V

    .line 352
    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1c

    .line 354
    :cond_1a
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1f

    .line 355
    return-void

    .line 352
    :catchall_1c
    move-exception v2

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v2

    .line 354
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private enumerateGeneric([Ljava/lang/Object;ZIZ)I
    .registers 11
    .parameter "enumeration"
    .parameter "recurse"
    .parameter "enumerationIndex"
    .parameter "enumeratingThreads"

    .prologue
    .line 431
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 433
    if-eqz p4, :cond_2c

    iget-object v4, p0, Ljava/lang/ThreadGroup;->childrenThreads:[Ljava/lang/Thread;

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    .line 435
    .local v2, immediateCollection:[Ljava/lang/Object;
    :goto_a
    if-eqz p4, :cond_32

    iget-object v4, p0, Ljava/lang/ThreadGroup;->childrenThreadsLock:Ljava/lang/Object;

    move-object v3, v4

    .line 437
    .local v3, syncLock:Ljava/lang/Object;
    :goto_f
    monitor-enter v3

    .line 438
    if-eqz p4, :cond_36

    :try_start_12
    iget v4, p0, Ljava/lang/ThreadGroup;->numThreads:I
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_54

    move v1, v4

    .local v1, i:I
    :goto_15
    move v0, p3

    .end local p3
    .local v0, enumerationIndex:I
    :cond_16
    :goto_16
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_42

    .line 439
    if-eqz p4, :cond_26

    :try_start_1c
    aget-object v4, v2, v1

    check-cast v4, Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 440
    :cond_26
    array-length v4, p1

    if-lt v0, v4, :cond_3a

    .line 441
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_68

    move p3, v0

    .line 459
    .end local v0           #enumerationIndex:I
    :goto_2b
    return v0

    .line 433
    .end local v1           #i:I
    .end local v2           #immediateCollection:[Ljava/lang/Object;
    .end local v3           #syncLock:Ljava/lang/Object;
    .restart local p3
    :cond_2c
    iget-object v4, p0, Ljava/lang/ThreadGroup;->childrenGroups:[Ljava/lang/ThreadGroup;

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    goto :goto_a

    .line 435
    .restart local v2       #immediateCollection:[Ljava/lang/Object;
    :cond_32
    iget-object v4, p0, Ljava/lang/ThreadGroup;->childrenGroupsLock:Ljava/lang/Object;

    move-object v3, v4

    goto :goto_f

    .line 438
    .restart local v3       #syncLock:Ljava/lang/Object;
    :cond_36
    :try_start_36
    iget v4, p0, Ljava/lang/ThreadGroup;->numGroups:I

    move v1, v4

    goto :goto_15

    .line 443
    .end local p3
    .restart local v0       #enumerationIndex:I
    .restart local v1       #i:I
    :cond_3a
    add-int/lit8 p3, v0, 0x1

    .end local v0           #enumerationIndex:I
    .restart local p3
    aget-object v4, v2, v1

    aput-object v4, p1, v0
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_54

    move v0, p3

    .end local p3
    .restart local v0       #enumerationIndex:I
    goto :goto_16

    .line 446
    :cond_42
    :try_start_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_68

    .line 448
    if-eqz p2, :cond_6b

    .line 449
    iget-object v4, p0, Ljava/lang/ThreadGroup;->childrenGroupsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 450
    const/4 v1, 0x0

    move p3, v0

    .end local v0           #enumerationIndex:I
    .restart local p3
    :goto_4a
    :try_start_4a
    iget v5, p0, Ljava/lang/ThreadGroup;->numGroups:I

    if-ge v1, v5, :cond_62

    .line 451
    array-length v5, p1

    if-lt p3, v5, :cond_57

    .line 452
    monitor-exit v4
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_65

    move v0, p3

    .end local p3
    .restart local v0       #enumerationIndex:I
    goto :goto_2b

    .line 446
    .end local v0           #enumerationIndex:I
    .end local v1           #i:I
    .restart local p3
    :catchall_54
    move-exception v4

    :goto_55
    :try_start_55
    monitor-exit v3
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v4

    .line 454
    .restart local v1       #i:I
    :cond_57
    :try_start_57
    iget-object v5, p0, Ljava/lang/ThreadGroup;->childrenGroups:[Ljava/lang/ThreadGroup;

    aget-object v5, v5, v1

    invoke-direct {v5, p1, p2, p3, p4}, Ljava/lang/ThreadGroup;->enumerateGeneric([Ljava/lang/Object;ZIZ)I

    move-result p3

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 457
    :cond_62
    monitor-exit v4

    :goto_63
    move v0, p3

    .line 459
    .end local p3
    .restart local v0       #enumerationIndex:I
    goto :goto_2b

    .line 457
    .end local v0           #enumerationIndex:I
    .restart local p3
    :catchall_65
    move-exception v5

    monitor-exit v4
    :try_end_67
    .catchall {:try_start_57 .. :try_end_67} :catchall_65

    throw v5

    .line 446
    .end local p3
    .restart local v0       #enumerationIndex:I
    :catchall_68
    move-exception v4

    move p3, v0

    .end local v0           #enumerationIndex:I
    .restart local p3
    goto :goto_55

    .end local p3
    .restart local v0       #enumerationIndex:I
    :cond_6b
    move p3, v0

    .end local v0           #enumerationIndex:I
    .restart local p3
    goto :goto_63
.end method

.method private list(I)V
    .registers 7
    .parameter "levels"

    .prologue
    const-string v4, "    "

    .line 565
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, p1, :cond_f

    .line 566
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "    "

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 570
    :cond_f
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 573
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenThreadsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 574
    const/4 v0, 0x0

    :goto_1c
    :try_start_1c
    iget v3, p0, Ljava/lang/ThreadGroup;->numThreads:I

    if-ge v0, v3, :cond_39

    .line 576
    const/4 v1, 0x0

    .local v1, j:I
    :goto_21
    if-gt v1, p1, :cond_2d

    .line 577
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 576
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 579
    :cond_2d
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v4, p0, Ljava/lang/ThreadGroup;->childrenThreads:[Ljava/lang/Thread;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 574
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 581
    .end local v1           #j:I
    :cond_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_1c .. :try_end_3a} :catchall_4e

    .line 582
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenGroupsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 583
    const/4 v0, 0x0

    :goto_3e
    :try_start_3e
    iget v3, p0, Ljava/lang/ThreadGroup;->numGroups:I

    if-ge v0, v3, :cond_51

    .line 584
    iget-object v3, p0, Ljava/lang/ThreadGroup;->childrenGroups:[Ljava/lang/ThreadGroup;

    aget-object v3, v3, v0

    add-int/lit8 v4, p1, 0x1

    invoke-direct {v3, v4}, Ljava/lang/ThreadGroup;->list(I)V
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_53

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 581
    :catchall_4e
    move-exception v3

    :try_start_4f
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v3

    .line 586
    :cond_51
    :try_start_51
    monitor-exit v2

    .line 587
    return-void

    .line 586
    :catchall_53
    move-exception v3

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_53

    throw v3
.end method

.method private remove(Ljava/lang/ThreadGroup;)V
    .registers 8
    .parameter "g"

    .prologue
    .line 641
    iget-object v1, p0, Ljava/lang/ThreadGroup;->childrenGroupsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 642
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    :try_start_4
    iget v2, p0, Ljava/lang/ThreadGroup;->numGroups:I

    if-ge v0, v2, :cond_2b

    .line 643
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenGroups:[Ljava/lang/ThreadGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 644
    iget v2, p0, Ljava/lang/ThreadGroup;->numGroups:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/lang/ThreadGroup;->numGroups:I

    .line 645
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenGroups:[Ljava/lang/ThreadGroup;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Ljava/lang/ThreadGroup;->childrenGroups:[Ljava/lang/ThreadGroup;

    iget v5, p0, Ljava/lang/ThreadGroup;->numGroups:I

    sub-int/2addr v5, v0

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 646
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenGroups:[Ljava/lang/ThreadGroup;

    iget v3, p0, Ljava/lang/ThreadGroup;->numGroups:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 650
    :cond_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_33

    .line 651
    invoke-direct {p0}, Ljava/lang/ThreadGroup;->destroyIfEmptyDaemon()V

    .line 652
    return-void

    .line 642
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 650
    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v2
.end method

.method private setParent(Ljava/lang/ThreadGroup;)V
    .registers 2
    .parameter "parent"

    .prologue
    .line 751
    if-eqz p1, :cond_5

    .line 752
    invoke-direct {p1, p0}, Ljava/lang/ThreadGroup;->add(Ljava/lang/ThreadGroup;)V

    .line 754
    :cond_5
    iput-object p1, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    .line 755
    return-void
.end method

.method private final stopHelper()Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 783
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 785
    const/4 v2, 0x0

    .line 787
    .local v2, stopCurrent:Z
    iget-object v3, p0, Ljava/lang/ThreadGroup;->childrenThreadsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 788
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 789
    .local v0, current:Ljava/lang/Thread;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    iget v4, p0, Ljava/lang/ThreadGroup;->numThreads:I

    if-ge v1, v4, :cond_25

    .line 790
    iget-object v4, p0, Ljava/lang/ThreadGroup;->childrenThreads:[Ljava/lang/Thread;

    aget-object v4, v4, v1

    if-ne v4, v0, :cond_1a

    .line 791
    const/4 v2, 0x1

    .line 789
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 793
    :cond_1a
    iget-object v4, p0, Ljava/lang/ThreadGroup;->childrenThreads:[Ljava/lang/Thread;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Thread;->stop()V

    goto :goto_17

    .line 796
    .end local v0           #current:Ljava/lang/Thread;
    .end local v1           #i:I
    :catchall_22
    move-exception v4

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw v4

    .restart local v0       #current:Ljava/lang/Thread;
    .restart local v1       #i:I
    :cond_25
    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_22

    .line 798
    iget-object v3, p0, Ljava/lang/ThreadGroup;->childrenGroupsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 799
    const/4 v1, 0x0

    :goto_2a
    :try_start_2a
    iget v4, p0, Ljava/lang/ThreadGroup;->numGroups:I

    if-ge v1, v4, :cond_3a

    .line 800
    iget-object v4, p0, Ljava/lang/ThreadGroup;->childrenGroups:[Ljava/lang/ThreadGroup;

    aget-object v4, v4, v1

    invoke-direct {v4}, Ljava/lang/ThreadGroup;->stopHelper()Z

    move-result v4

    or-int/2addr v2, v4

    .line 799
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 802
    :cond_3a
    monitor-exit v3

    .line 803
    return v2

    .line 802
    :catchall_3c
    move-exception v4

    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_2a .. :try_end_3e} :catchall_3c

    throw v4
.end method

.method private final suspendHelper()Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 832
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 834
    const/4 v2, 0x0

    .line 836
    .local v2, suspendCurrent:Z
    iget-object v3, p0, Ljava/lang/ThreadGroup;->childrenThreadsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 837
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 838
    .local v0, current:Ljava/lang/Thread;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    iget v4, p0, Ljava/lang/ThreadGroup;->numThreads:I

    if-ge v1, v4, :cond_25

    .line 839
    iget-object v4, p0, Ljava/lang/ThreadGroup;->childrenThreads:[Ljava/lang/Thread;

    aget-object v4, v4, v1

    if-ne v4, v0, :cond_1a

    .line 840
    const/4 v2, 0x1

    .line 838
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 842
    :cond_1a
    iget-object v4, p0, Ljava/lang/ThreadGroup;->childrenThreads:[Ljava/lang/Thread;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Thread;->suspend()V

    goto :goto_17

    .line 845
    .end local v0           #current:Ljava/lang/Thread;
    .end local v1           #i:I
    :catchall_22
    move-exception v4

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw v4

    .restart local v0       #current:Ljava/lang/Thread;
    .restart local v1       #i:I
    :cond_25
    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_22

    .line 847
    iget-object v3, p0, Ljava/lang/ThreadGroup;->childrenGroupsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 848
    const/4 v1, 0x0

    :goto_2a
    :try_start_2a
    iget v4, p0, Ljava/lang/ThreadGroup;->numGroups:I

    if-ge v1, v4, :cond_3a

    .line 849
    iget-object v4, p0, Ljava/lang/ThreadGroup;->childrenGroups:[Ljava/lang/ThreadGroup;

    aget-object v4, v4, v1

    invoke-direct {v4}, Ljava/lang/ThreadGroup;->suspendHelper()Z

    move-result v4

    or-int/2addr v2, v4

    .line 848
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 851
    :cond_3a
    monitor-exit v3

    .line 852
    return v2

    .line 851
    :catchall_3c
    move-exception v4

    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_2a .. :try_end_3e} :catchall_3c

    throw v4
.end method


# virtual methods
.method public activeCount()I
    .registers 5

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, count:I
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenThreadsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 166
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    :try_start_5
    iget v3, p0, Ljava/lang/ThreadGroup;->numThreads:I

    if-ge v1, v3, :cond_18

    .line 167
    iget-object v3, p0, Ljava/lang/ThreadGroup;->childrenThreads:[Ljava/lang/Thread;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 168
    add-int/lit8 v0, v0, 0x1

    .line 166
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 171
    :cond_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_2d

    .line 174
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenGroupsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 175
    const/4 v1, 0x0

    :goto_1d
    :try_start_1d
    iget v3, p0, Ljava/lang/ThreadGroup;->numGroups:I

    if-ge v1, v3, :cond_30

    .line 176
    iget-object v3, p0, Ljava/lang/ThreadGroup;->childrenGroups:[Ljava/lang/ThreadGroup;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->activeCount()I
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_32

    move-result v3

    add-int/2addr v0, v3

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 171
    :catchall_2d
    move-exception v3

    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v3

    .line 178
    :cond_30
    :try_start_30
    monitor-exit v2

    .line 179
    return v0

    .line 178
    :catchall_32
    move-exception v3

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_32

    throw v3
.end method

.method public activeGroupCount()I
    .registers 5

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 191
    .local v0, count:I
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenGroupsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 192
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    :try_start_5
    iget v3, p0, Ljava/lang/ThreadGroup;->numGroups:I

    if-ge v1, v3, :cond_17

    .line 194
    iget-object v3, p0, Ljava/lang/ThreadGroup;->childrenGroups:[Ljava/lang/ThreadGroup;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 196
    :cond_17
    monitor-exit v2

    .line 197
    return v0

    .line 196
    :catchall_19
    move-exception v3

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw v3
.end method

.method final add(Ljava/lang/Thread;)V
    .registers 8
    .parameter "thread"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v1, p0, Ljava/lang/ThreadGroup;->childrenThreadsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_3
    iget-boolean v2, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    if-nez v2, :cond_38

    .line 215
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenThreads:[Ljava/lang/Thread;

    array-length v2, v2

    iget v3, p0, Ljava/lang/ThreadGroup;->numThreads:I

    if-ne v2, v3, :cond_2a

    .line 216
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenThreads:[Ljava/lang/Thread;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [Ljava/lang/Thread;

    .line 217
    .local v0, newThreads:[Ljava/lang/Thread;
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenThreads:[Ljava/lang/Thread;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Ljava/lang/ThreadGroup;->numThreads:I

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    iget v2, p0, Ljava/lang/ThreadGroup;->numThreads:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/lang/ThreadGroup;->numThreads:I

    aput-object p1, v0, v2

    .line 219
    iput-object v0, p0, Ljava/lang/ThreadGroup;->childrenThreads:[Ljava/lang/Thread;

    .line 226
    .end local v0           #newThreads:[Ljava/lang/Thread;
    :goto_28
    monitor-exit v1

    .line 227
    return-void

    .line 221
    :cond_2a
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenThreads:[Ljava/lang/Thread;

    iget v3, p0, Ljava/lang/ThreadGroup;->numThreads:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/lang/ThreadGroup;->numThreads:I

    aput-object p1, v2, v3

    goto :goto_28

    .line 226
    :catchall_35
    move-exception v2

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v2

    .line 224
    :cond_38
    :try_start_38
    new-instance v2, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v2}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v2
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_35
.end method

.method addThread(Ljava/lang/Thread;)V
    .registers 2
    .parameter "thread"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    .prologue
    .line 908
    invoke-virtual {p0, p1}, Ljava/lang/ThreadGroup;->add(Ljava/lang/Thread;)V

    .line 909
    return-void
.end method

.method public allowThreadSuspension(Z)Z
    .registers 3
    .parameter "b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method public final checkAccess()V
    .registers 2

    .prologue
    .line 279
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 280
    .local v0, currentManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 281
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkAccess(Ljava/lang/ThreadGroup;)V

    .line 283
    :cond_9
    return-void
.end method

.method public final destroy()V
    .registers 9

    .prologue
    const-string v7, "n/a"

    .line 299
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 302
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenThreadsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 303
    :try_start_8
    iget-object v3, p0, Ljava/lang/ThreadGroup;->childrenGroupsLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_31

    .line 305
    :try_start_b
    iget-boolean v4, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    if-eqz v4, :cond_38

    .line 306
    new-instance v4, Ljava/lang/IllegalThreadStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thread group was already destroyed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    if-eqz v6, :cond_34

    iget-object v6, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    :goto_22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 332
    :catchall_2e
    move-exception v4

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_2e

    :try_start_30
    throw v4

    .line 333
    :catchall_31
    move-exception v3

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_31

    throw v3

    .line 306
    :cond_34
    :try_start_34
    const-string v6, "n/a"

    move-object v6, v7

    goto :goto_22

    .line 310
    :cond_38
    iget v4, p0, Ljava/lang/ThreadGroup;->numThreads:I

    if-lez v4, :cond_5f

    .line 311
    new-instance v4, Ljava/lang/IllegalThreadStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thread group still contains threads: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    if-eqz v6, :cond_5b

    iget-object v6, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    :goto_4f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5b
    const-string v6, "n/a"

    move-object v6, v7

    goto :goto_4f

    .line 316
    :cond_5f
    iget v1, p0, Ljava/lang/ThreadGroup;->numGroups:I

    .line 318
    .local v1, toDestroy:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_62
    if-ge v0, v1, :cond_6f

    .line 322
    iget-object v4, p0, Ljava/lang/ThreadGroup;->childrenGroups:[Ljava/lang/ThreadGroup;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->destroy()V

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 325
    :cond_6f
    iget-object v4, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v4, :cond_78

    .line 326
    iget-object v4, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-direct {v4, p0}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/ThreadGroup;)V

    .line 331
    :cond_78
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    .line 332
    monitor-exit v3
    :try_end_7c
    .catchall {:try_start_34 .. :try_end_7c} :catchall_2e

    .line 333
    :try_start_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_31

    .line 334
    return-void
.end method

.method public enumerate([Ljava/lang/Thread;)I
    .registers 3
    .parameter "threads"

    .prologue
    .line 366
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;Z)I

    move-result v0

    return v0
.end method

.method public enumerate([Ljava/lang/Thread;Z)I
    .registers 5
    .parameter "threads"
    .parameter "recurse"

    .prologue
    .line 381
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/lang/ThreadGroup;->enumerateGeneric([Ljava/lang/Object;ZIZ)I

    move-result v0

    return v0
.end method

.method public enumerate([Ljava/lang/ThreadGroup;)I
    .registers 3
    .parameter "groups"

    .prologue
    .line 394
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;Z)I

    move-result v0

    return v0
.end method

.method public enumerate([Ljava/lang/ThreadGroup;Z)I
    .registers 4
    .parameter "groups"
    .parameter "recurse"

    .prologue
    const/4 v0, 0x0

    .line 409
    invoke-direct {p0, p1, p2, v0, v0}, Ljava/lang/ThreadGroup;->enumerateGeneric([Ljava/lang/Object;ZIZ)I

    move-result v0

    return v0
.end method

.method public final getMaxPriority()I
    .registers 2

    .prologue
    .line 470
    iget v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 479
    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getParent()Ljava/lang/ThreadGroup;
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_9

    .line 491
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 493
    :cond_9
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    return-object v0
.end method

.method public final interrupt()V
    .registers 4

    .prologue
    .line 506
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 508
    iget-object v1, p0, Ljava/lang/ThreadGroup;->childrenThreadsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 509
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    :try_start_7
    iget v2, p0, Ljava/lang/ThreadGroup;->numThreads:I

    if-ge v0, v2, :cond_15

    .line 510
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenThreads:[Ljava/lang/Thread;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 512
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_28

    .line 514
    iget-object v1, p0, Ljava/lang/ThreadGroup;->childrenGroupsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 515
    const/4 v0, 0x0

    :goto_1a
    :try_start_1a
    iget v2, p0, Ljava/lang/ThreadGroup;->numGroups:I

    if-ge v0, v2, :cond_2b

    .line 516
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenGroups:[Ljava/lang/ThreadGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/ThreadGroup;->interrupt()V
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_2d

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 512
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2

    .line 518
    :cond_2b
    :try_start_2b
    monitor-exit v1

    .line 519
    return-void

    .line 518
    :catchall_2d
    move-exception v2

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public final isDaemon()Z
    .registers 2

    .prologue
    .line 530
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDaemon:Z

    return v0
.end method

.method public declared-synchronized isDestroyed()Z
    .registers 2

    .prologue
    .line 541
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public list()V
    .registers 2

    .prologue
    .line 552
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 553
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/ThreadGroup;->list(I)V

    .line 554
    return-void
.end method

.method public final parentOf(Ljava/lang/ThreadGroup;)Z
    .registers 3
    .parameter "g"

    .prologue
    .line 599
    :goto_0
    if-eqz p1, :cond_9

    .line 600
    if-ne p0, p1, :cond_6

    .line 601
    const/4 v0, 0x1

    .line 605
    :goto_5
    return v0

    .line 603
    :cond_6
    iget-object p1, p1, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    goto :goto_0

    .line 605
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method final remove(Ljava/lang/Thread;)V
    .registers 8
    .parameter "thread"

    .prologue
    .line 617
    iget-object v1, p0, Ljava/lang/ThreadGroup;->childrenThreadsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 618
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    :try_start_4
    iget v2, p0, Ljava/lang/ThreadGroup;->numThreads:I

    if-ge v0, v2, :cond_2b

    .line 619
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenThreads:[Ljava/lang/Thread;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 620
    iget v2, p0, Ljava/lang/ThreadGroup;->numThreads:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/lang/ThreadGroup;->numThreads:I

    .line 621
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenThreads:[Ljava/lang/Thread;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Ljava/lang/ThreadGroup;->childrenThreads:[Ljava/lang/Thread;

    iget v5, p0, Ljava/lang/ThreadGroup;->numThreads:I

    sub-int/2addr v5, v0

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 624
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenThreads:[Ljava/lang/Thread;

    iget v3, p0, Ljava/lang/ThreadGroup;->numThreads:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 628
    :cond_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_33

    .line 629
    invoke-direct {p0}, Ljava/lang/ThreadGroup;->destroyIfEmptyDaemon()V

    .line 630
    return-void

    .line 618
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 628
    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v2
.end method

.method removeThread(Ljava/lang/Thread;)V
    .registers 2
    .parameter "thread"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    .prologue
    .line 923
    invoke-virtual {p0, p1}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/Thread;)V

    .line 924
    return-void
.end method

.method public final resume()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 669
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 671
    iget-object v1, p0, Ljava/lang/ThreadGroup;->childrenThreadsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 672
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    :try_start_7
    iget v2, p0, Ljava/lang/ThreadGroup;->numThreads:I

    if-ge v0, v2, :cond_15

    .line 673
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenThreads:[Ljava/lang/Thread;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Thread;->resume()V

    .line 672
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 675
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_28

    .line 677
    iget-object v1, p0, Ljava/lang/ThreadGroup;->childrenGroupsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 678
    const/4 v0, 0x0

    :goto_1a
    :try_start_1a
    iget v2, p0, Ljava/lang/ThreadGroup;->numGroups:I

    if-ge v0, v2, :cond_2b

    .line 679
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenGroups:[Ljava/lang/ThreadGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/ThreadGroup;->resume()V
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_2d

    .line 678
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 675
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2

    .line 681
    :cond_2b
    :try_start_2b
    monitor-exit v1

    .line 682
    return-void

    .line 681
    :catchall_2d
    move-exception v2

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public final setDaemon(Z)V
    .registers 2
    .parameter "isDaemon"

    .prologue
    .line 698
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 699
    iput-boolean p1, p0, Ljava/lang/ThreadGroup;->isDaemon:Z

    .line 700
    return-void
.end method

.method public final setMaxPriority(I)V
    .registers 6
    .parameter "newMax"

    .prologue
    .line 720
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 722
    iget v2, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    if-gt p1, v2, :cond_32

    .line 723
    const/4 v2, 0x1

    if-ge p1, v2, :cond_b

    .line 724
    const/4 p1, 0x1

    .line 727
    :cond_b
    iget-object v2, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-nez v2, :cond_27

    move v1, p1

    .line 728
    .local v1, parentPriority:I
    :goto_10
    if-gt v1, p1, :cond_2f

    move v2, v1

    :goto_13
    iput v2, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    .line 730
    iget-object v2, p0, Ljava/lang/ThreadGroup;->childrenGroupsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 732
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    :try_start_19
    iget v3, p0, Ljava/lang/ThreadGroup;->numGroups:I

    if-ge v0, v3, :cond_31

    .line 733
    iget-object v3, p0, Ljava/lang/ThreadGroup;->childrenGroups:[Ljava/lang/ThreadGroup;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljava/lang/ThreadGroup;->setMaxPriority(I)V
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_33

    .line 732
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 727
    .end local v0           #i:I
    .end local v1           #parentPriority:I
    :cond_27
    iget-object v2, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-virtual {v2}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v2

    move v1, v2

    goto :goto_10

    .restart local v1       #parentPriority:I
    :cond_2f
    move v2, p1

    .line 728
    goto :goto_13

    .line 735
    .restart local v0       #i:I
    :cond_31
    :try_start_31
    monitor-exit v2

    .line 737
    .end local v0           #i:I
    .end local v1           #parentPriority:I
    :cond_32
    return-void

    .line 735
    .restart local v0       #i:I
    .restart local v1       #parentPriority:I
    :catchall_33
    move-exception v3

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_33

    throw v3
.end method

.method public final stop()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 772
    invoke-direct {p0}, Ljava/lang/ThreadGroup;->stopHelper()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 773
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    .line 775
    :cond_d
    return-void
.end method

.method public final suspend()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 821
    invoke-direct {p0}, Ljava/lang/ThreadGroup;->suspendHelper()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 822
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->suspend()V

    .line 824
    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",maxpri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "t"
    .parameter "e"

    .prologue
    .line 883
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_a

    .line 884
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-virtual {v0, p1, p2}, Ljava/lang/ThreadGroup;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 893
    :cond_9
    :goto_9
    return-void

    .line 885
    :cond_a
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 887
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 888
    :cond_18
    instance-of v0, p2, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_9

    .line 890
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_9
.end method
