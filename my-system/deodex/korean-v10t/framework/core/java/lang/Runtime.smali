.class public Ljava/lang/Runtime;
.super Ljava/lang/Object;
.source "Runtime.java"


# static fields
.field private static finalizeOnExit:Z

.field private static final mRuntime:Ljava/lang/Runtime;


# instance fields
.field private final mLibPaths:[Ljava/lang/String;

.field private shutdownHooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private shuttingDown:Z

.field private tracingMethods:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    new-instance v0, Ljava/lang/Runtime;

    invoke-direct {v0}, Ljava/lang/Runtime;-><init>()V

    sput-object v0, Ljava/lang/Runtime;->mRuntime:Ljava/lang/Runtime;

    return-void
.end method

.method private constructor <init>()V
    .registers 8

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    .line 101
    const-string v4, "java.library.path"

    const-string v5, "."

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, pathList:Ljava/lang/String;
    const-string v4, "path.separator"

    const-string v5, ":"

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, pathSep:Ljava/lang/String;
    const-string v4, "file.separator"

    const-string v5, "/"

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, fileSep:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    .line 114
    const/4 v1, 0x0

    .local v1, i:I
    :goto_29
    iget-object v4, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_52

    .line 115
    iget-object v4, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    aget-object v6, v5, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    .line 114
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 120
    :cond_52
    return-void
.end method

.method public static getRuntime()Ljava/lang/Runtime;
    .registers 1

    .prologue
    .line 400
    sget-object v0, Ljava/lang/Runtime;->mRuntime:Ljava/lang/Runtime;

    return-object v0
.end method

.method private static native nativeExit(IZ)V
.end method

.method private static native nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Z
.end method

.method private native runFinalization(Z)V
.end method

.method public static runFinalizersOnExit(Z)V
    .registers 3
    .parameter "run"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 530
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 531
    .local v0, smgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_a

    .line 532
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkExit(I)V

    .line 534
    :cond_a
    sput-boolean p0, Ljava/lang/Runtime;->finalizeOnExit:Z

    .line 535
    return-void
.end method


# virtual methods
.method public addShutdownHook(Ljava/lang/Thread;)V
    .registers 6
    .parameter "hook"

    .prologue
    .line 658
    if-nez p1, :cond_a

    .line 659
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Hook may not be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 662
    :cond_a
    iget-boolean v1, p0, Ljava/lang/Runtime;->shuttingDown:Z

    if-eqz v1, :cond_16

    .line 663
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "VM already shutting down"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 666
    :cond_16
    iget-boolean v1, p1, Ljava/lang/Thread;->hasBeenStarted:Z

    if-eqz v1, :cond_22

    .line 667
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Hook has already been started"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 670
    :cond_22
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 671
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_32

    .line 672
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "shutdownHooks"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 675
    :cond_32
    iget-object v1, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    monitor-enter v1

    .line 676
    :try_start_35
    iget-object v2, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 677
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Hook already registered."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 681
    :catchall_45
    move-exception v2

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_35 .. :try_end_47} :catchall_45

    throw v2

    .line 680
    :cond_48
    :try_start_48
    iget-object v2, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_45

    .line 682
    return-void
.end method

.method public availableProcessors()I
    .registers 2

    .prologue
    .line 752
    const/4 v0, 0x1

    return v0
.end method

.method public exec(Ljava/lang/String;)Ljava/lang/Process;
    .registers 3
    .parameter "prog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0, p1, v0, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .registers 4
    .parameter "prog"
    .parameter "envp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .registers 9
    .parameter "prog"
    .parameter "envp"
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    if-nez p1, :cond_8

    .line 299
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 300
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_14

    .line 301
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 305
    :cond_14
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 306
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    .line 307
    .local v1, length:I
    new-array v2, v1, [Ljava/lang/String;

    .line 308
    .local v2, progArray:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    if-ge v0, v1, :cond_2b

    .line 309
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 313
    :cond_2b
    invoke-virtual {p0, v2, p2, p3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v4

    return-object v4
.end method

.method public exec([Ljava/lang/String;)Ljava/lang/Process;
    .registers 3
    .parameter "progArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, p1, v0, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .registers 4
    .parameter "progArray"
    .parameter "envp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .registers 7
    .parameter "progArray"
    .parameter "envp"
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    if-nez p1, :cond_8

    .line 199
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 200
    :cond_8
    array-length v2, p1

    if-nez v2, :cond_11

    .line 201
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 203
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    array-length v2, p1

    if-ge v0, v2, :cond_22

    .line 204
    aget-object v2, p1, v0

    if-nez v2, :cond_1f

    .line 205
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 203
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 210
    :cond_22
    if-eqz p2, :cond_35

    .line 211
    const/4 v0, 0x0

    :goto_25
    array-length v2, p2

    if-ge v0, v2, :cond_35

    .line 212
    aget-object v2, p2, v0

    if-nez v2, :cond_32

    .line 213
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 211
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 219
    :cond_35
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 220
    .local v1, smgr:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_41

    .line 221
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkExec(Ljava/lang/String;)V

    .line 225
    :cond_41
    invoke-static {}, Ljava/lang/ProcessManager;->getInstance()Ljava/lang/ProcessManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Ljava/lang/ProcessManager;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v2

    return-object v2
.end method

.method public exit(I)V
    .registers 11
    .parameter "code"

    .prologue
    .line 333
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v6

    .line 334
    .local v6, smgr:Ljava/lang/SecurityManager;
    if-eqz v6, :cond_9

    .line 335
    invoke-virtual {v6, p1}, Ljava/lang/SecurityManager;->checkExit(I)V

    .line 339
    :cond_9
    monitor-enter p0

    .line 340
    :try_start_a
    iget-boolean v7, p0, Ljava/lang/Runtime;->shuttingDown:Z

    if-nez v7, :cond_4d

    .line 341
    const/4 v7, 0x1

    iput-boolean v7, p0, Ljava/lang/Runtime;->shuttingDown:Z

    .line 344
    iget-object v7, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    monitor-enter v7
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_31

    .line 346
    :try_start_14
    iget-object v8, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v2, v8, [Ljava/lang/Thread;

    .line 347
    .local v2, hooks:[Ljava/lang/Thread;
    iget-object v8, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 348
    monitor-exit v7
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_2e

    .line 351
    const/4 v3, 0x0

    .local v3, i:I
    :goto_23
    :try_start_23
    array-length v7, v2

    if-ge v3, v7, :cond_34

    .line 352
    aget-object v7, v2, v3

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_31

    .line 351
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 348
    .end local v2           #hooks:[Ljava/lang/Thread;
    .end local v3           #i:I
    :catchall_2e
    move-exception v8

    :try_start_2f
    monitor-exit v7
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw v8

    .line 372
    :catchall_31
    move-exception v7

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_31

    throw v7

    .line 356
    .restart local v2       #hooks:[Ljava/lang/Thread;
    .restart local v3       #i:I
    :cond_34
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/Thread;
    :try_start_35
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_37
    if-ge v4, v5, :cond_41

    aget-object v1, v0, v4
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_31

    .line 358
    .local v1, hook:Ljava/lang/Thread;
    :try_start_3b
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_31
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_4f

    .line 356
    :goto_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 365
    .end local v1           #hook:Ljava/lang/Thread;
    :cond_41
    :try_start_41
    sget-boolean v7, Ljava/lang/Runtime;->finalizeOnExit:Z

    if-eqz v7, :cond_49

    .line 366
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Ljava/lang/Runtime;->runFinalization(Z)V

    .line 370
    :cond_49
    const/4 v7, 0x1

    invoke-static {p1, v7}, Ljava/lang/Runtime;->nativeExit(IZ)V

    .line 372
    .end local v0           #arr$:[Ljava/lang/Thread;
    .end local v2           #hooks:[Ljava/lang/Thread;
    .end local v3           #i:I
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_31

    .line 373
    return-void

    .line 359
    .restart local v0       #arr$:[Ljava/lang/Thread;
    .restart local v1       #hook:Ljava/lang/Thread;
    .restart local v2       #hooks:[Ljava/lang/Thread;
    .restart local v3       #i:I
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :catch_4f
    move-exception v7

    goto :goto_3e
.end method

.method public native freeMemory()J
.end method

.method public native gc()V
.end method

.method public getLocalizedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 5
    .parameter "stream"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-string v2, "UTF-8"

    .line 593
    const-string v0, "file.encoding"

    const-string v1, "UTF-8"

    invoke-static {v0, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, p1

    .line 596
    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/ReaderInputStream;

    invoke-direct {v0, p1}, Ljava/lang/ReaderInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_13
.end method

.method public getLocalizedOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 5
    .parameter "stream"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-string v2, "UTF-8"

    .line 613
    const-string v0, "file.encoding"

    const-string v1, "UTF-8"

    invoke-static {v0, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, p1

    .line 616
    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/WriterOutputStream;

    invoke-direct {v0, p1}, Ljava/lang/WriterOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_13
.end method

.method public halt(I)V
    .registers 4
    .parameter "code"

    .prologue
    .line 735
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 736
    .local v0, smgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 737
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkExit(I)V

    .line 741
    :cond_9
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Runtime;->nativeExit(IZ)V

    .line 742
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .registers 4
    .parameter "pathName"

    .prologue
    .line 421
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 422
    .local v0, smgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 423
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkLink(Ljava/lang/String;)V

    .line 426
    :cond_9
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/lang/Runtime;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 427
    return-void
.end method

.method load(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 6
    .parameter "filename"
    .parameter "loader"

    .prologue
    .line 433
    if-nez p1, :cond_a

    .line 434
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "library path was null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_a
    invoke-static {p1, p2}, Ljava/lang/Runtime;->nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 437
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Library "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_2f
    return-void
.end method

.method public loadLibrary(Ljava/lang/String;)V
    .registers 4
    .parameter "libName"

    .prologue
    .line 459
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 460
    .local v0, smgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 461
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkLink(Ljava/lang/String;)V

    .line 464
    :cond_9
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/lang/Runtime;->loadLibrary(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 465
    return-void
.end method

.method loadLibrary(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 8
    .parameter "libname"
    .parameter "loader"

    .prologue
    .line 474
    if-eqz p2, :cond_f

    .line 475
    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, filename:Ljava/lang/String;
    if-eqz v0, :cond_37

    invoke-static {v0, p2}, Ljava/lang/Runtime;->nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 485
    :cond_e
    return-void

    .line 480
    .end local v0           #filename:Ljava/lang/String;
    :cond_f
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    .restart local v0       #filename:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    iget-object v2, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_37

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/lang/Runtime;->nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 489
    .end local v1           #i:I
    :cond_37
    new-instance v2, Ljava/lang/UnsatisfiedLinkError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Library "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public native maxMemory()J
.end method

.method public removeShutdownHook(Ljava/lang/Thread;)Z
    .registers 5
    .parameter "hook"

    .prologue
    .line 699
    if-nez p1, :cond_a

    .line 700
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Hook may not be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 703
    :cond_a
    iget-boolean v1, p0, Ljava/lang/Runtime;->shuttingDown:Z

    if-eqz v1, :cond_16

    .line 704
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "VM already shutting down"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 707
    :cond_16
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 708
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_26

    .line 709
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "shutdownHooks"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 712
    :cond_26
    iget-object v1, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    monitor-enter v1

    .line 713
    :try_start_29
    iget-object v2, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 714
    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_31

    throw v2
.end method

.method public runFinalization()V
    .registers 2

    .prologue
    .line 513
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/Runtime;->runFinalization(Z)V

    .line 514
    return-void
.end method

.method public native totalMemory()J
.end method

.method public traceInstructions(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 557
    return-void
.end method

.method public traceMethodCalls(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 569
    iget-boolean v0, p0, Ljava/lang/Runtime;->tracingMethods:Z

    if-eq p1, v0, :cond_b

    .line 570
    if-eqz p1, :cond_c

    .line 571
    invoke-static {}, Ldalvik/system/VMDebug;->startMethodTracing()V

    .line 575
    :goto_9
    iput-boolean p1, p0, Ljava/lang/Runtime;->tracingMethods:Z

    .line 577
    :cond_b
    return-void

    .line 573
    :cond_c
    invoke-static {}, Ldalvik/system/VMDebug;->stopMethodTracing()V

    goto :goto_9
.end method
