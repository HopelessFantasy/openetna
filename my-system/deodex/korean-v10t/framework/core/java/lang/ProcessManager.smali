.class final Ljava/lang/ProcessManager;
.super Ljava/lang/Object;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ProcessManager$ProcessOutputStream;,
        Ljava/lang/ProcessManager$ProcessInputStream;,
        Ljava/lang/ProcessManager$ProcessReferenceQueue;,
        Ljava/lang/ProcessManager$ProcessReference;,
        Ljava/lang/ProcessManager$ProcessImpl;
    }
.end annotation


# static fields
.field private static final WAIT_STATUS_NO_CHILDREN:I = -0x2

.field private static final WAIT_STATUS_STRANGE_ERRNO:I = -0x3

.field private static final WAIT_STATUS_UNKNOWN:I = -0x1

.field static final instance:Ljava/lang/ProcessManager;


# instance fields
.field private final processReferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ProcessManager$ProcessReference;",
            ">;"
        }
    .end annotation
.end field

.field private final referenceQueue:Ljava/lang/ProcessManager$ProcessReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/ProcessManager;->staticInitialize()V

    .line 319
    new-instance v0, Ljava/lang/ProcessManager;

    invoke-direct {v0}, Ljava/lang/ProcessManager;-><init>()V

    sput-object v0, Ljava/lang/ProcessManager;->instance:Ljava/lang/ProcessManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    .line 79
    new-instance v1, Ljava/lang/ProcessManager$ProcessReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ProcessManager$ProcessReferenceQueue;-><init>()V

    iput-object v1, p0, Ljava/lang/ProcessManager;->referenceQueue:Ljava/lang/ProcessManager$ProcessReferenceQueue;

    .line 84
    new-instance v0, Ljava/lang/ProcessManager$1;

    const-class v1, Ljava/lang/ProcessManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/ProcessManager$1;-><init>(Ljava/lang/ProcessManager;Ljava/lang/String;)V

    .line 90
    .local v0, processThread:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 91
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 92
    return-void
.end method

.method static synthetic access$200(I)V
    .registers 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0}, Ljava/lang/ProcessManager;->kill(I)V

    return-void
.end method

.method static synthetic access$300(Ljava/io/FileDescriptor;)V
    .registers 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0}, Ljava/lang/ProcessManager;->close(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method private static native close(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native exec([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static getInstance()Ljava/lang/ProcessManager;
    .registers 1

    .prologue
    .line 323
    sget-object v0, Ljava/lang/ProcessManager;->instance:Ljava/lang/ProcessManager;

    return-object v0
.end method

.method private static native kill(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native staticInitialize()V
.end method


# virtual methods
.method cleanUp()V
    .registers 5

    .prologue
    .line 107
    :goto_0
    iget-object v1, p0, Ljava/lang/ProcessManager;->referenceQueue:Ljava/lang/ProcessManager$ProcessReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ProcessManager$ProcessReferenceQueue;->poll()Ljava/lang/ProcessManager$ProcessReference;

    move-result-object v0

    .local v0, reference:Ljava/lang/ProcessManager$ProcessReference;
    if-eqz v0, :cond_1b

    .line 108
    iget-object v1, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    monitor-enter v1

    .line 109
    :try_start_b
    iget-object v2, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    iget v3, v0, Ljava/lang/ProcessManager$ProcessReference;->processId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    monitor-exit v1

    goto :goto_0

    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v2

    .line 112
    :cond_1b
    return-void
.end method

.method exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .registers 16
    .parameter "commands"
    .parameter "environment"
    .parameter "workingDirectory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    .line 182
    .local v3, in:Ljava/io/FileDescriptor;
    new-instance v4, Ljava/io/FileDescriptor;

    invoke-direct {v4}, Ljava/io/FileDescriptor;-><init>()V

    .line 183
    .local v4, out:Ljava/io/FileDescriptor;
    new-instance v5, Ljava/io/FileDescriptor;

    invoke-direct {v5}, Ljava/io/FileDescriptor;-><init>()V

    .line 185
    .local v5, err:Ljava/io/FileDescriptor;
    if-nez p3, :cond_38

    const/4 v0, 0x0

    move-object v2, v0

    .line 191
    .local v2, workingPath:Ljava/lang/String;
    :goto_13
    iget-object v11, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    monitor-enter v11

    move-object v0, p1

    move-object v1, p2

    .line 194
    :try_start_18
    invoke-static/range {v0 .. v5}, Ljava/lang/ProcessManager;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)I
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_77
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_3e

    move-result v7

    .line 203
    .local v7, pid:I
    :try_start_1c
    new-instance v8, Ljava/lang/ProcessManager$ProcessImpl;

    invoke-direct {v8, v7, v3, v4, v5}, Ljava/lang/ProcessManager$ProcessImpl;-><init>(ILjava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 204
    .local v8, process:Ljava/lang/ProcessManager$ProcessImpl;
    new-instance v9, Ljava/lang/ProcessManager$ProcessReference;

    iget-object v0, p0, Ljava/lang/ProcessManager;->referenceQueue:Ljava/lang/ProcessManager$ProcessReferenceQueue;

    invoke-direct {v9, v8, v0}, Ljava/lang/ProcessManager$ProcessReference;-><init>(Ljava/lang/ProcessManager$ProcessImpl;Ljava/lang/ProcessManager$ProcessReferenceQueue;)V

    .line 206
    .local v9, processReference:Ljava/lang/ProcessManager$ProcessReference;
    iget-object v0, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 214
    monitor-exit v11
    :try_end_37
    .catchall {:try_start_1c .. :try_end_37} :catchall_77

    return-object v8

    .line 185
    .end local v2           #workingPath:Ljava/lang/String;
    .end local v7           #pid:I
    .end local v8           #process:Ljava/lang/ProcessManager$ProcessImpl;
    .end local v9           #processReference:Ljava/lang/ProcessManager$ProcessReference;
    :cond_38
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_13

    .line 195
    .restart local v2       #workingPath:Ljava/lang/String;
    :catch_3e
    move-exception v6

    .line 196
    .local v6, e:Ljava/io/IOException;
    :try_start_3f
    new-instance v10, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error running exec(). Commands: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Working Directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Environment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 200
    .local v10, wrapper:Ljava/io/IOException;
    invoke-virtual {v10, v6}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 201
    throw v10

    .line 215
    .end local v6           #e:Ljava/io/IOException;
    .end local v10           #wrapper:Ljava/io/IOException;
    :catchall_77
    move-exception v0

    monitor-exit v11
    :try_end_79
    .catchall {:try_start_3f .. :try_end_79} :catchall_77

    throw v0
.end method

.method onExit(II)V
    .registers 10
    .parameter "pid"
    .parameter "exitValue"

    .prologue
    .line 127
    const/4 v3, 0x0

    .line 129
    .local v3, processReference:Ljava/lang/ProcessManager$ProcessReference;
    iget-object v5, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    monitor-enter v5

    .line 130
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/ProcessManager;->cleanUp()V

    .line 131
    if-ltz p1, :cond_26

    .line 132
    iget-object v4, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/ProcessManager$ProcessReference;

    move-object v3, v0

    .line 158
    :cond_17
    :goto_17
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_41

    .line 160
    if-eqz v3, :cond_25

    .line 161
    invoke-virtual {v3}, Ljava/lang/ProcessManager$ProcessReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ProcessManager$ProcessImpl;

    .line 162
    .local v2, process:Ljava/lang/ProcessManager$ProcessImpl;
    if-eqz v2, :cond_25

    .line 163
    invoke-virtual {v2, p2}, Ljava/lang/ProcessManager$ProcessImpl;->setExitValue(I)V

    .line 166
    .end local v2           #process:Ljava/lang/ProcessManager$ProcessImpl;
    :cond_25
    return-void

    .line 133
    :cond_26
    const/4 v4, -0x2

    if-ne p2, v4, :cond_44

    .line 134
    :try_start_29
    iget-object v4, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_41

    move-result v4

    if-eqz v4, :cond_17

    .line 141
    :try_start_31
    iget-object v4, p0, Ljava/lang/ProcessManager;->processReferences:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_41
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_36} :catch_37

    goto :goto_17

    .line 142
    :catch_37
    move-exception v4

    move-object v1, v4

    .line 144
    .local v1, ex:Ljava/lang/InterruptedException;
    :try_start_39
    new-instance v4, Ljava/lang/AssertionError;

    const-string v6, "unexpected interrupt"

    invoke-direct {v4, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 158
    .end local v1           #ex:Ljava/lang/InterruptedException;
    :catchall_41
    move-exception v4

    monitor-exit v5
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_41

    throw v4

    .line 156
    :cond_44
    :try_start_44
    new-instance v4, Ljava/lang/AssertionError;

    const-string v6, "unexpected wait() behavior"

    invoke-direct {v4, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_41
.end method

.method native watchChildren()V
.end method
