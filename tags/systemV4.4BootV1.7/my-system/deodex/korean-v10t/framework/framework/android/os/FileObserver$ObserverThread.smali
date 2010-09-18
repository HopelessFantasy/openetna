.class Landroid/os/FileObserver$ObserverThread;
.super Ljava/lang/Thread;
.source "FileObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/FileObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObserverThread"
.end annotation


# instance fields
.field private m_fd:I

.field private m_observers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    const-string v0, "FileObserver"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    .line 52
    invoke-direct {p0}, Landroid/os/FileObserver$ObserverThread;->init()I

    move-result v0

    iput v0, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    .line 53
    return-void
.end method

.method private native init()I
.end method

.method private native observe(I)V
.end method

.method private native startWatching(ILjava/lang/String;I)I
.end method

.method private native stopWatching(II)V
.end method


# virtual methods
.method public onEvent(IILjava/lang/String;)V
    .registers 11
    .parameter "wfd"
    .parameter "mask"
    .parameter "path"

    .prologue
    const-string v6, "FileObserver"

    .line 80
    iget-object v3, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    monitor-enter v3

    .line 81
    :try_start_5
    iget-object v4, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 82
    .local v2, weak:Ljava/lang/ref/WeakReference;
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/FileObserver;

    .line 83
    .local v0, observer:Landroid/os/FileObserver;
    if-nez v0, :cond_22

    .line 84
    iget-object v4, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_29

    .line 89
    if-eqz v0, :cond_28

    .line 91
    :try_start_25
    invoke-virtual {v0, p2, p3}, Landroid/os/FileObserver;->onEvent(ILjava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_28} :catch_2c

    .line 98
    :cond_28
    :goto_28
    return-void

    .line 86
    .end local v0           #observer:Landroid/os/FileObserver;
    .end local v2           #weak:Ljava/lang/ref/WeakReference;
    :catchall_29
    move-exception v4

    :try_start_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v4

    .line 92
    .restart local v0       #observer:Landroid/os/FileObserver;
    .restart local v2       #weak:Ljava/lang/ref/WeakReference;
    :catch_2c
    move-exception v1

    .line 93
    .local v1, throwable:Ljava/lang/Throwable;
    const-string v3, "FileObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled throwable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (returned by observer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    const-string v3, "FileObserver"

    invoke-static {v6, v1}, Lcom/android/internal/os/RuntimeInit;->crash(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28
.end method

.method public run()V
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    invoke-direct {p0, v0}, Landroid/os/FileObserver$ObserverThread;->observe(I)V

    .line 57
    return-void
.end method

.method public startWatching(Ljava/lang/String;ILandroid/os/FileObserver;)I
    .registers 9
    .parameter "path"
    .parameter "mask"
    .parameter "observer"

    .prologue
    .line 60
    iget v2, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    invoke-direct {p0, v2, p1, p2}, Landroid/os/FileObserver$ObserverThread;->startWatching(ILjava/lang/String;I)I

    move-result v1

    .line 62
    .local v1, wfd:I
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 63
    .local v0, i:Ljava/lang/Integer;
    if-ltz v1, :cond_1b

    .line 64
    iget-object v2, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    monitor-enter v2

    .line 65
    :try_start_10
    iget-object v3, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_20

    .line 69
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 66
    :catchall_20
    move-exception v3

    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v3
.end method

.method public stopWatching(I)V
    .registers 3
    .parameter "descriptor"

    .prologue
    .line 73
    iget v0, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    invoke-direct {p0, v0, p1}, Landroid/os/FileObserver$ObserverThread;->stopWatching(II)V

    .line 74
    return-void
.end method
