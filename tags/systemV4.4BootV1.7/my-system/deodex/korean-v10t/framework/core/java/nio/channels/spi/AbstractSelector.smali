.class public abstract Ljava/nio/channels/spi/AbstractSelector;
.super Ljava/nio/channels/Selector;
.source "AbstractSelector.java"


# instance fields
.field private cancelledKeysSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isOpen:Z

.field private provider:Ljava/nio/channels/spi/SelectorProvider;


# direct methods
.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 3
    .parameter "selectorProvider"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/nio/channels/Selector;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelector;->isOpen:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->provider:Ljava/nio/channels/spi/SelectorProvider;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->cancelledKeysSet:Ljava/util/Set;

    .line 52
    iput-object p1, p0, Ljava/nio/channels/spi/AbstractSelector;->provider:Ljava/nio/channels/spi/SelectorProvider;

    .line 53
    return-void
.end method


# virtual methods
.method protected final begin()V
    .registers 7

    .prologue
    .line 148
    sget-object v1, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->setInterruptAction:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_18

    .line 150
    :try_start_4
    sget-object v1, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->setInterruptAction:Ljava/lang/reflect/Method;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/nio/channels/spi/AbstractSelector$1;

    invoke-direct {v5, p0}, Ljava/nio/channels/spi/AbstractSelector$1;-><init>(Ljava/nio/channels/spi/AbstractSelector;)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_19

    .line 160
    :cond_18
    return-void

    .line 156
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 157
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method cancel(Ljava/nio/channels/SelectionKey;)V
    .registers 4
    .parameter "key"

    .prologue
    .line 185
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->cancelledKeysSet:Ljava/util/Set;

    monitor-enter v0

    .line 186
    :try_start_3
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelector;->cancelledKeysSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method protected final cancelledKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->cancelledKeysSet:Ljava/util/Set;

    return-object v0
.end method

.method public final declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelector;->isOpen:Z

    if-eqz v0, :cond_b

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelector;->isOpen:Z

    .line 67
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelector;->implCloseSelector()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 69
    :cond_b
    monitor-exit p0

    return-void

    .line 65
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 134
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractSelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/nio/channels/spi/AbstractSelectableChannel;

    invoke-virtual {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->deregister(Ljava/nio/channels/SelectionKey;)V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p1, Ljava/nio/channels/spi/AbstractSelectionKey;->isValid:Z

    .line 136
    return-void
.end method

.method protected final end()V
    .registers 7

    .prologue
    .line 171
    sget-object v1, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->setInterruptAction:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_14

    .line 173
    :try_start_4
    sget-object v1, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->setInterruptAction:Ljava/lang/reflect/Method;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_15

    .line 179
    :cond_14
    return-void

    .line 175
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 176
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract implCloseSelector()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final isOpen()Z
    .registers 2

    .prologue
    .line 88
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelector;->isOpen:Z

    return v0
.end method

.method public final provider()Ljava/nio/channels/spi/SelectorProvider;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelector;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-object v0
.end method

.method protected abstract register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
.end method
