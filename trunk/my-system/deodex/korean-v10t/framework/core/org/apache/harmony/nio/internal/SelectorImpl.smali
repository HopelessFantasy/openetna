.class final Lorg/apache/harmony/nio/internal/SelectorImpl;
.super Ljava/nio/channels/spi/AbstractSelector;
.source "SelectorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;
    }
.end annotation


# static fields
.field private static final MOCK_READBUF_SIZE:I = 0x8

.field private static final MOCK_WRITEBUF_SIZE:I = 0x1

.field private static final NA:I = 0x0

.field private static final READABLE:I = 0x1

.field private static final SELECT_BLOCK:I = -0x1

.field private static final SELECT_NOW:I = 0x0

.field private static final WRITEABLE:I = 0x2


# instance fields
.field private final keys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field final keysLock:Ljava/lang/Object;

.field private readable:[Ljava/io/FileDescriptor;

.field private readableChannels:[Ljava/nio/channels/SelectionKey;

.field private readableFDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/FileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private sink:Ljava/nio/channels/Pipe$SinkChannel;

.field private source:Ljava/nio/channels/Pipe$SourceChannel;

.field private sourcefd:Ljava/io/FileDescriptor;

.field private unaddableSelectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private unmodifiableKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private writable:[Ljava/io/FileDescriptor;

.field private writableChannels:[Ljava/nio/channels/SelectionKey;

.field private writableFDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/FileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 5
    .parameter "selectorProvider"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelector;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 65
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->keysLock:Ljava/lang/Object;

    .line 67
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->keys:Ljava/util/Set;

    .line 69
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->keys:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->unmodifiableKeys:Ljava/util/Set;

    .line 72
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->selectedKeys:Ljava/util/Set;

    .line 74
    new-instance v1, Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;

    iget-object v2, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->selectedKeys:Ljava/util/Set;

    invoke-direct {v1, v2}, Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;-><init>(Ljava/util/Set;)V

    iput-object v1, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->unaddableSelectedKeys:Ljava/util/Set;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->readableFDs:Ljava/util/List;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->writableFDs:Ljava/util/List;

    .line 99
    :try_start_37
    invoke-virtual {p1}, Ljava/nio/channels/spi/SelectorProvider;->openPipe()Ljava/nio/channels/Pipe;

    move-result-object v0

    .line 100
    .local v0, mockSelector:Ljava/nio/channels/Pipe;
    invoke-virtual {v0}, Ljava/nio/channels/Pipe;->sink()Ljava/nio/channels/Pipe$SinkChannel;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->sink:Ljava/nio/channels/Pipe$SinkChannel;

    .line 101
    invoke-virtual {v0}, Ljava/nio/channels/Pipe;->source()Ljava/nio/channels/Pipe$SourceChannel;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->source:Ljava/nio/channels/Pipe$SourceChannel;

    .line 102
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->source:Ljava/nio/channels/Pipe$SourceChannel;

    check-cast v1, Lorg/apache/harmony/luni/platform/FileDescriptorHandler;

    invoke-interface {v1}, Lorg/apache/harmony/luni/platform/FileDescriptorHandler;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->sourcefd:Ljava/io/FileDescriptor;

    .line 103
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->source:Ljava/nio/channels/Pipe$SourceChannel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/channels/Pipe$SourceChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_57} :catch_58

    .line 107
    .end local v0           #mockSelector:Ljava/nio/channels/Pipe;
    :goto_57
    return-void

    .line 104
    :catch_58
    move-exception v1

    goto :goto_57
.end method

.method private closeCheck()V
    .registers 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SelectorImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 149
    new-instance v0, Ljava/nio/channels/ClosedSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedSelectorException;-><init>()V

    throw v0

    .line 151
    :cond_c
    return-void
.end method

.method private doCancel()V
    .registers 6

    .prologue
    .line 314
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SelectorImpl;->cancelledKeys()Ljava/util/Set;

    move-result-object v1

    .line 315
    .local v1, cancelledKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    monitor-enter v1

    .line 316
    :try_start_5
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_30

    .line 317
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 318
    .local v2, currentkey:Ljava/nio/channels/SelectionKey;
    move-object v0, v2

    check-cast v0, Ljava/nio/channels/spi/AbstractSelectionKey;

    move-object v4, v0

    invoke-virtual {p0, v4}, Lorg/apache/harmony/nio/internal/SelectorImpl;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V

    .line 319
    iget-object v4, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->keys:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 320
    iget-object v4, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->selectedKeys:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_f

    .line 324
    .end local v2           #currentkey:Ljava/nio/channels/SelectionKey;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_2d
    move-exception v4

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_2d

    throw v4

    .line 323
    :cond_30
    :try_start_30
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 324
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_2d

    .line 325
    return-void
.end method

.method private isConnected(Lorg/apache/harmony/nio/internal/SelectionKeyImpl;)Z
    .registers 4
    .parameter "key"

    .prologue
    .line 212
    invoke-virtual {p1}, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    .line 213
    .local v0, channel:Ljava/nio/channels/SelectableChannel;
    instance-of v1, v0, Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_f

    .line 214
    check-cast v0, Ljava/nio/channels/SocketChannel;

    .end local v0           #channel:Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v1

    .line 216
    :goto_e
    return v1

    .restart local v0       #channel:Ljava/nio/channels/SelectableChannel;
    :cond_f
    const/4 v1, 0x1

    goto :goto_e
.end method

.method private prepareChannels()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 221
    iget-object v8, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->readableFDs:Ljava/util/List;

    iget-object v9, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->sourcefd:Ljava/io/FileDescriptor;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v6, readChannelList:Ljava/util/List;,"Ljava/util/List<Ljava/nio/channels/SelectionKey;>;"
    iget-object v8, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->source:Ljava/nio/channels/Pipe$SourceChannel;

    invoke-virtual {v8, p0}, Ljava/nio/channels/Pipe$SourceChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v7, writeChannelList:Ljava/util/List;,"Ljava/util/List<Ljava/nio/channels/SelectionKey;>;"
    iget-object v9, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->keysLock:Ljava/lang/Object;

    monitor-enter v9

    .line 226
    :try_start_1f
    iget-object v8, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->keys:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 227
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;

    .line 228
    .local v5, key:Lorg/apache/harmony/nio/internal/SelectionKeyImpl;
    invoke-virtual {v5}, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->interestOps()I

    move-result v8

    iput v8, v5, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->oldInterestOps:I

    .line 229
    iget v8, v5, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->oldInterestOps:I

    and-int/lit8 v8, v8, 0x11

    if-eqz v8, :cond_77

    move v3, v12

    .line 230
    .local v3, isReadableChannel:Z
    :goto_3e
    iget v8, v5, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->oldInterestOps:I

    and-int/lit8 v8, v8, 0xc

    if-eqz v8, :cond_79

    move v4, v12

    .line 231
    .local v4, isWritableChannel:Z
    :goto_45
    invoke-virtual {v5}, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    .line 232
    .local v1, channel:Ljava/nio/channels/SelectableChannel;
    if-eqz v3, :cond_5f

    .line 233
    invoke-virtual {v1, p0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v10, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->readableFDs:Ljava/util/List;

    move-object v0, v1

    check-cast v0, Lorg/apache/harmony/luni/platform/FileDescriptorHandler;

    move-object v8, v0

    invoke-interface {v8}, Lorg/apache/harmony/luni/platform/FileDescriptorHandler;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_5f
    if-eqz v4, :cond_25

    .line 237
    invoke-virtual {v1, p0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v8, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->writableFDs:Ljava/util/List;

    check-cast v1, Lorg/apache/harmony/luni/platform/FileDescriptorHandler;

    .end local v1           #channel:Ljava/nio/channels/SelectableChannel;
    invoke-interface {v1}, Lorg/apache/harmony/luni/platform/FileDescriptorHandler;->getFD()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 241
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v3           #isReadableChannel:Z
    .end local v4           #isWritableChannel:Z
    .end local v5           #key:Lorg/apache/harmony/nio/internal/SelectionKeyImpl;
    :catchall_74
    move-exception v8

    monitor-exit v9
    :try_end_76
    .catchall {:try_start_1f .. :try_end_76} :catchall_74

    throw v8

    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v5       #key:Lorg/apache/harmony/nio/internal/SelectionKeyImpl;
    :cond_77
    move v3, v11

    .line 229
    goto :goto_3e

    .restart local v3       #isReadableChannel:Z
    :cond_79
    move v4, v11

    .line 230
    goto :goto_45

    .line 241
    .end local v3           #isReadableChannel:Z
    .end local v5           #key:Lorg/apache/harmony/nio/internal/SelectionKeyImpl;
    :cond_7b
    :try_start_7b
    monitor-exit v9
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_74

    .line 242
    new-array v8, v11, [Ljava/nio/channels/SelectionKey;

    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/nio/channels/SelectionKey;

    iput-object v8, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->readableChannels:[Ljava/nio/channels/SelectionKey;

    .line 243
    new-array v8, v11, [Ljava/nio/channels/SelectionKey;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/nio/channels/SelectionKey;

    iput-object v8, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->writableChannels:[Ljava/nio/channels/SelectionKey;

    .line 244
    iget-object v8, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->readableFDs:Ljava/util/List;

    new-array v9, v11, [Ljava/io/FileDescriptor;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/io/FileDescriptor;

    iput-object v8, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->readable:[Ljava/io/FileDescriptor;

    .line 245
    iget-object v8, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->writableFDs:Ljava/util/List;

    new-array v9, v11, [Ljava/io/FileDescriptor;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/io/FileDescriptor;

    iput-object v8, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->writable:[Ljava/io/FileDescriptor;

    .line 246
    return-void
.end method

.method private processSelectResult([I)I
    .registers 11
    .parameter "readyChannels"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 251
    array-length v6, p1

    if-nez v6, :cond_7

    move v6, v7

    .line 302
    :goto_6
    return v6

    .line 255
    :cond_7
    const/4 v6, 0x1

    aget v7, p1, v7

    if-ne v6, v7, :cond_1e

    .line 256
    const/16 v6, 0x8

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 257
    .local v3, readbuf:Ljava/nio/ByteBuffer;
    :goto_12
    iget-object v6, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->source:Ljava/nio/channels/Pipe$SourceChannel;

    invoke-virtual {v6, v3}, Ljava/nio/channels/Pipe$SourceChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    if-lez v6, :cond_1e

    .line 258
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_12

    .line 261
    .end local v3           #readbuf:Ljava/nio/ByteBuffer;
    :cond_1e
    const/4 v4, 0x0

    .line 262
    .local v4, selected:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_20
    array-length v6, p1

    if-ge v0, v6, :cond_84

    .line 263
    iget-object v6, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->readable:[Ljava/io/FileDescriptor;

    array-length v6, v6

    if-lt v0, v6, :cond_39

    iget-object v6, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->writableChannels:[Ljava/nio/channels/SelectionKey;

    iget-object v7, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->readable:[Ljava/io/FileDescriptor;

    array-length v7, v7

    sub-int v7, v0, v7

    aget-object v6, v6, v7

    move-object v2, v6

    :goto_32
    check-cast v2, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;

    .line 266
    .local v2, key:Lorg/apache/harmony/nio/internal/SelectionKeyImpl;
    if-nez v2, :cond_3f

    .line 262
    :cond_36
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 263
    .end local v2           #key:Lorg/apache/harmony/nio/internal/SelectionKeyImpl;
    :cond_39
    iget-object v6, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->readableChannels:[Ljava/nio/channels/SelectionKey;

    aget-object v6, v6, v0

    move-object v2, v6

    goto :goto_32

    .line 269
    .restart local v2       #key:Lorg/apache/harmony/nio/internal/SelectionKeyImpl;
    :cond_3f
    iget-object v6, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->selectedKeys:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 270
    .local v1, isOldSelectedKey:Z
    const/4 v5, 0x0

    .line 272
    .local v5, selectedOp:I
    aget v6, p1, v0

    packed-switch v6, :pswitch_data_8c

    .line 289
    :goto_4b
    if-eqz v5, :cond_36

    .line 290
    if-eqz v1, :cond_77

    invoke-virtual {v2}, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->readyOps()I

    move-result v6

    if-eq v6, v5, :cond_77

    .line 291
    invoke-virtual {v2}, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->readyOps()I

    move-result v6

    or-int/2addr v6, v5

    invoke-virtual {v2, v6}, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->setReadyOps(I)V

    .line 292
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 274
    :pswitch_60
    const/4 v5, 0x0

    .line 275
    goto :goto_4b

    .line 277
    :pswitch_62
    iget v6, v2, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->oldInterestOps:I

    and-int/lit8 v5, v6, 0x11

    .line 279
    goto :goto_4b

    .line 281
    :pswitch_67
    invoke-direct {p0, v2}, Lorg/apache/harmony/nio/internal/SelectorImpl;->isConnected(Lorg/apache/harmony/nio/internal/SelectionKeyImpl;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 282
    iget v6, v2, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->oldInterestOps:I

    and-int/lit8 v5, v6, 0x4

    goto :goto_4b

    .line 284
    :cond_72
    iget v6, v2, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->oldInterestOps:I

    and-int/lit8 v5, v6, 0x8

    goto :goto_4b

    .line 293
    :cond_77
    if-nez v1, :cond_36

    .line 294
    invoke-virtual {v2, v5}, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->setReadyOps(I)V

    .line 295
    iget-object v6, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->selectedKeys:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 300
    .end local v1           #isOldSelectedKey:Z
    .end local v2           #key:Lorg/apache/harmony/nio/internal/SelectionKeyImpl;
    .end local v5           #selectedOp:I
    :cond_84
    iput-object v8, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->readableChannels:[Ljava/nio/channels/SelectionKey;

    .line 301
    iput-object v8, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->writableChannels:[Ljava/nio/channels/SelectionKey;

    move v6, v4

    .line 302
    goto/16 :goto_6

    .line 272
    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_60
        :pswitch_62
        :pswitch_67
    .end packed-switch
.end method

.method private selectInternal(J)I
    .registers 10
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SelectorImpl;->closeCheck()V

    .line 179
    monitor-enter p0

    .line 180
    :try_start_4
    iget-object v2, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->keys:Ljava/util/Set;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_5b

    .line 181
    :try_start_7
    iget-object v3, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->selectedKeys:Ljava/util/Set;

    monitor-enter v3
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_58

    .line 182
    :try_start_a
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SelectorImpl;->doCancel()V

    .line 183
    const/4 v1, 0x0

    .line 184
    .local v1, readyChannels:[I
    const-wide/16 v4, 0x0

    cmp-long v4, v4, p1

    if-eqz v4, :cond_41

    const/4 v4, 0x1

    move v0, v4

    .line 191
    .local v0, isBlock:Z
    :goto_16
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SelectorImpl;->prepareChannels()V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_55

    .line 193
    if-eqz v0, :cond_1e

    .line 194
    :try_start_1b
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SelectorImpl;->begin()V

    .line 196
    :cond_1e
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->readable:[Ljava/io/FileDescriptor;

    iget-object v6, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->writable:[Ljava/io/FileDescriptor;

    invoke-interface {v4, v5, v6, p1, p2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->select([Ljava/io/FileDescriptor;[Ljava/io/FileDescriptor;J)[I
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_44

    move-result-object v1

    .line 199
    :try_start_2a
    iget-object v4, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->readableFDs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 200
    iget-object v4, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->writableFDs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 201
    if-eqz v0, :cond_39

    .line 202
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SelectorImpl;->end()V

    .line 205
    :cond_39
    invoke-direct {p0, v1}, Lorg/apache/harmony/nio/internal/SelectorImpl;->processSelectResult([I)I

    move-result v4

    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_2a .. :try_end_3e} :catchall_55

    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_58

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_5b

    return v4

    .line 184
    .end local v0           #isBlock:Z
    :cond_41
    const/4 v4, 0x0

    move v0, v4

    goto :goto_16

    .line 199
    .restart local v0       #isBlock:Z
    :catchall_44
    move-exception v4

    :try_start_45
    iget-object v5, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->readableFDs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 200
    iget-object v5, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->writableFDs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 201
    if-eqz v0, :cond_54

    .line 202
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SelectorImpl;->end()V

    :cond_54
    throw v4

    .line 206
    .end local v0           #isBlock:Z
    .end local v1           #readyChannels:[I
    :catchall_55
    move-exception v4

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_45 .. :try_end_57} :catchall_55

    :try_start_57
    throw v4

    .line 207
    :catchall_58
    move-exception v3

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_58

    :try_start_5a
    throw v3

    .line 208
    :catchall_5b
    move-exception v2

    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5b

    throw v2
.end method


# virtual methods
.method protected implCloseSelector()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SelectorImpl;->doCancel()V

    .line 114
    iget-object v2, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->keys:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 115
    .local v1, sk:Ljava/nio/channels/SelectionKey;
    check-cast v1, Ljava/nio/channels/spi/AbstractSelectionKey;

    .end local v1           #sk:Ljava/nio/channels/SelectionKey;
    invoke-virtual {p0, v1}, Lorg/apache/harmony/nio/internal/SelectorImpl;->deregister(Ljava/nio/channels/spi/AbstractSelectionKey;)V

    goto :goto_9

    .line 117
    :cond_1b
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SelectorImpl;->wakeup()Ljava/nio/channels/Selector;

    .line 118
    return-void
.end method

.method public declared-synchronized keys()Ljava/util/Set;
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
    .line 143
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SelectorImpl;->closeCheck()V

    .line 144
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->unmodifiableKeys:Ljava/util/Set;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 143
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .registers 7
    .parameter "channel"
    .parameter "operations"
    .parameter "attachment"

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SelectorImpl;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 127
    new-instance v1, Ljava/nio/channels/IllegalSelectorException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalSelectorException;-><init>()V

    throw v1

    .line 129
    :cond_14
    monitor-enter p0

    .line 130
    :try_start_15
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->keys:Ljava/util/Set;

    monitor-enter v1
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_28

    .line 131
    :try_start_18
    new-instance v0, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;

    invoke-direct {v0, p1, p2, p3, p0}, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;-><init>(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;Lorg/apache/harmony/nio/internal/SelectorImpl;)V

    .line 133
    .local v0, sk:Ljava/nio/channels/SelectionKey;
    iget-object v2, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->keys:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_25

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_28

    return-object v0

    .line 135
    .end local v0           #sk:Ljava/nio/channels/SelectionKey;
    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw v2

    .line 136
    :catchall_28
    move-exception v1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public select()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/nio/internal/SelectorImpl;->selectInternal(J)I

    move-result v0

    return v0
.end method

.method public select(J)I
    .registers 6
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 164
    cmp-long v0, p1, v1

    if-gez v0, :cond_c

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 167
    :cond_c
    cmp-long v0, v1, p1

    if-nez v0, :cond_17

    const-wide/16 v0, -0x1

    :goto_12
    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/nio/internal/SelectorImpl;->selectInternal(J)I

    move-result v0

    return v0

    :cond_17
    move-wide v0, p1

    goto :goto_12
.end method

.method public selectNow()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/nio/internal/SelectorImpl;->selectInternal(J)I

    move-result v0

    return v0
.end method

.method public declared-synchronized selectedKeys()Ljava/util/Set;
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
    .line 309
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SelectorImpl;->closeCheck()V

    .line 310
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->unaddableSelectedKeys:Ljava/util/Set;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 309
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public wakeup()Ljava/nio/channels/Selector;
    .registers 3

    .prologue
    .line 332
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SelectorImpl;->sink:Ljava/nio/channels/Pipe$SinkChannel;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/Pipe$SinkChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    .line 336
    :goto_a
    return-object p0

    .line 333
    :catch_b
    move-exception v0

    goto :goto_a
.end method
