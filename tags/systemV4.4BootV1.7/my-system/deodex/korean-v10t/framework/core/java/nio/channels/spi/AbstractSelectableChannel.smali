.class public abstract Ljava/nio/channels/spi/AbstractSelectableChannel;
.super Ljava/nio/channels/SelectableChannel;
.source "AbstractSelectableChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/channels/spi/AbstractSelectableChannel$1;,
        Ljava/nio/channels/spi/AbstractSelectableChannel$BlockingLock;
    }
.end annotation


# instance fields
.field private final blockingLock:Ljava/lang/Object;

.field isBlocking:Z

.field private keyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private final provider:Ljava/nio/channels/spi/SelectorProvider;


# direct methods
.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 4
    .parameter "selectorProvider"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/nio/channels/SelectableChannel;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/nio/channels/spi/AbstractSelectableChannel$BlockingLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/nio/channels/spi/AbstractSelectableChannel$BlockingLock;-><init>(Ljava/nio/channels/spi/AbstractSelectableChannel;Ljava/nio/channels/spi/AbstractSelectableChannel$1;)V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z

    .line 63
    iput-object p1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider:Ljava/nio/channels/spi/SelectorProvider;

    .line 64
    return-void
.end method


# virtual methods
.method public final blockingLock()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    return-object v0
.end method

.method public final configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    .registers 4
    .parameter "blockingMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 252
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_9
    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z

    if-ne v1, p1, :cond_f

    .line 254
    monitor-exit v0

    .line 262
    :goto_e
    return-object p0

    .line 256
    :cond_f
    if-eqz p1, :cond_20

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 257
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 261
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_1d

    throw v1

    .line 259
    :cond_20
    :try_start_20
    invoke-virtual {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->implConfigureBlocking(Z)V

    .line 260
    iput-boolean p1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z

    .line 261
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_1d

    goto :goto_e

    .line 264
    :cond_27
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method declared-synchronized deregister(Ljava/nio/channels/SelectionKey;)V
    .registers 3
    .parameter "k"

    .prologue
    .line 285
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 286
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 288
    :cond_a
    monitor-exit p0

    return-void

    .line 285
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized implCloseChannel()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->implCloseSelectableChannel()V

    .line 188
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 189
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 190
    .local v1, key:Ljava/nio/channels/SelectionKey;
    if-eqz v1, :cond_1a

    .line 191
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1f

    .line 188
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 194
    .end local v1           #key:Ljava/nio/channels/SelectionKey;
    :cond_1d
    monitor-exit p0

    return-void

    .line 187
    .end local v0           #i:I
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected abstract implCloseSelectableChannel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract implConfigureBlocking(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final isBlocking()Z
    .registers 3

    .prologue
    .line 214
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_3
    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z

    monitor-exit v0

    return v1

    .line 216
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final declared-synchronized isRegistered()Z
    .registers 2

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .registers 5
    .parameter "selector"

    .prologue
    .line 98
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    :try_start_2
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 99
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 100
    .local v1, key:Ljava/nio/channels/SelectionKey;
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_22

    move-result-object v2

    if-ne v2, p1, :cond_1d

    move-object v2, v1

    .line 104
    .end local v1           #key:Ljava/nio/channels/SelectionKey;
    :goto_1b
    monitor-exit p0

    return-object v2

    .line 98
    .restart local v1       #key:Ljava/nio/channels/SelectionKey;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 104
    .end local v1           #key:Ljava/nio/channels/SelectionKey;
    :cond_20
    const/4 v2, 0x0

    goto :goto_1b

    .line 98
    :catchall_22
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final provider()Ljava/nio/channels/spi/SelectorProvider;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-object v0
.end method

.method public final register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .registers 7
    .parameter "selector"
    .parameter "interestSet"
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_c

    .line 138
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1

    .line 140
    :cond_c
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->validOps()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    if-eqz v1, :cond_1b

    .line 141
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 144
    :cond_1b
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_1e
    iget-boolean v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z

    if-eqz v2, :cond_2b

    .line 146
    new-instance v2, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v2}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v2

    .line 173
    .end local p1
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_28

    throw v2

    .line 148
    .restart local p1
    :cond_2b
    :try_start_2b
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 149
    if-nez p2, :cond_39

    .line 151
    new-instance v2, Ljava/nio/channels/IllegalSelectorException;

    invoke-direct {v2}, Ljava/nio/channels/IllegalSelectorException;-><init>()V

    throw v2

    .line 154
    :cond_39
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 156
    :cond_3f
    if-nez p2, :cond_47

    .line 158
    new-instance v2, Ljava/nio/channels/IllegalSelectorException;

    invoke-direct {v2}, Ljava/nio/channels/IllegalSelectorException;-><init>()V

    throw v2

    .line 160
    :cond_47
    invoke-virtual {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 161
    .local v0, key:Ljava/nio/channels/SelectionKey;
    if-nez v0, :cond_5a

    .line 162
    check-cast p1, Ljava/nio/channels/spi/AbstractSelector;

    .end local p1
    invoke-virtual {p1, p0, p2, p3}, Ljava/nio/channels/spi/AbstractSelector;->register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 164
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :goto_58
    monitor-exit v1

    return-object v0

    .line 166
    .restart local p1
    :cond_5a
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-nez v2, :cond_66

    .line 167
    new-instance v2, Ljava/nio/channels/CancelledKeyException;

    invoke-direct {v2}, Ljava/nio/channels/CancelledKeyException;-><init>()V

    throw v2

    .line 169
    :cond_66
    invoke-virtual {v0, p2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 170
    invoke-virtual {v0, p3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catchall {:try_start_2b .. :try_end_6c} :catchall_28

    goto :goto_58
.end method
