.class Ljava/io/DeleteOnExit;
.super Ljava/lang/Thread;
.source "File.java"


# static fields
.field private static instance:Ljava/io/DeleteOnExit;


# instance fields
.field private files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 1445
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/io/DeleteOnExit;->files:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized getInstance()Ljava/io/DeleteOnExit;
    .registers 3

    .prologue
    .line 1461
    const-class v0, Ljava/io/DeleteOnExit;

    monitor-enter v0

    :try_start_3
    sget-object v1, Ljava/io/DeleteOnExit;->instance:Ljava/io/DeleteOnExit;

    if-nez v1, :cond_17

    .line 1462
    new-instance v1, Ljava/io/DeleteOnExit;

    invoke-direct {v1}, Ljava/io/DeleteOnExit;-><init>()V

    sput-object v1, Ljava/io/DeleteOnExit;->instance:Ljava/io/DeleteOnExit;

    .line 1463
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    sget-object v2, Ljava/io/DeleteOnExit;->instance:Ljava/io/DeleteOnExit;

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 1466
    :cond_17
    sget-object v1, Ljava/io/DeleteOnExit;->instance:Ljava/io/DeleteOnExit;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v0

    return-object v1

    .line 1461
    :catchall_1b
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addFile(Ljava/lang/String;)V
    .registers 4
    .parameter "filename"

    .prologue
    .line 1475
    iget-object v0, p0, Ljava/io/DeleteOnExit;->files:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1476
    :try_start_3
    iget-object v1, p0, Ljava/io/DeleteOnExit;->files:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1477
    iget-object v1, p0, Ljava/io/DeleteOnExit;->files:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1479
    :cond_10
    monitor-exit v0

    .line 1480
    return-void

    .line 1479
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public run()V
    .registers 4

    .prologue
    .line 1489
    iget-object v1, p0, Ljava/io/DeleteOnExit;->files:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1490
    iget-object v1, p0, Ljava/io/DeleteOnExit;->files:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_e
    if-ltz v0, :cond_23

    .line 1491
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Ljava/io/DeleteOnExit;->files:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1490
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1493
    :cond_23
    return-void
.end method
