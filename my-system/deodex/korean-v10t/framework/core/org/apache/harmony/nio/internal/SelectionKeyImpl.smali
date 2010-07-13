.class final Lorg/apache/harmony/nio/internal/SelectionKeyImpl;
.super Ljava/nio/channels/spi/AbstractSelectionKey;
.source "SelectionKeyImpl.java"


# instance fields
.field private channel:Ljava/nio/channels/spi/AbstractSelectableChannel;

.field private interestOps:I

.field oldInterestOps:I

.field private readyOps:I

.field private selector:Lorg/apache/harmony/nio/internal/SelectorImpl;


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;Lorg/apache/harmony/nio/internal/SelectorImpl;)V
    .registers 5
    .parameter "channel"
    .parameter "operations"
    .parameter "attachment"
    .parameter "selector"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractSelectionKey;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->channel:Ljava/nio/channels/spi/AbstractSelectableChannel;

    .line 45
    iput p2, p0, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->interestOps:I

    .line 46
    iput-object p4, p0, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->selector:Lorg/apache/harmony/nio/internal/SelectorImpl;

    .line 47
    invoke-virtual {p0, p3}, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method private checkValid()V
    .registers 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_c

    .line 90
    new-instance v0, Ljava/nio/channels/CancelledKeyException;

    invoke-direct {v0}, Ljava/nio/channels/CancelledKeyException;-><init>()V

    throw v0

    .line 92
    :cond_c
    return-void
.end method


# virtual methods
.method public channel()Ljava/nio/channels/SelectableChannel;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->channel:Ljava/nio/channels/spi/AbstractSelectableChannel;

    return-object v0
.end method

.method public interestOps()I
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->checkValid()V

    .line 56
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->selector:Lorg/apache/harmony/nio/internal/SelectorImpl;

    iget-object v0, v0, Lorg/apache/harmony/nio/internal/SelectorImpl;->keysLock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_8
    iget v1, p0, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->interestOps:I

    monitor-exit v0

    return v1

    .line 58
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public interestOps(I)Ljava/nio/channels/SelectionKey;
    .registers 4
    .parameter "operations"

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->checkValid()V

    .line 63
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->validOps()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_16

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 66
    :cond_16
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->selector:Lorg/apache/harmony/nio/internal/SelectorImpl;

    iget-object v0, v0, Lorg/apache/harmony/nio/internal/SelectorImpl;->keysLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_1b
    iput p1, p0, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->interestOps:I

    .line 68
    monitor-exit v0

    .line 69
    return-object p0

    .line 68
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public readyOps()I
    .registers 2

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->checkValid()V

    .line 74
    iget v0, p0, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->readyOps:I

    return v0
.end method

.method public selector()Ljava/nio/channels/Selector;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->selector:Lorg/apache/harmony/nio/internal/SelectorImpl;

    return-object v0
.end method

.method setReadyOps(I)V
    .registers 2
    .parameter "readyOps"

    .prologue
    .line 85
    iput p1, p0, Lorg/apache/harmony/nio/internal/SelectionKeyImpl;->readyOps:I

    .line 86
    return-void
.end method
