.class public abstract Ljava/nio/channels/spi/AbstractInterruptibleChannel;
.super Ljava/lang/Object;
.source "AbstractInterruptibleChannel.java"

# interfaces
.implements Ljava/nio/channels/Channel;
.implements Ljava/nio/channels/InterruptibleChannel;


# static fields
.field static setInterruptAction:Ljava/lang/reflect/Method;


# instance fields
.field private volatile closed:Z

.field volatile interrupted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->setInterruptAction:Ljava/lang/reflect/Method;

    .line 49
    :try_start_3
    new-instance v0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;

    invoke-direct {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    sput-object v0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->setInterruptAction:Ljava/lang/reflect/Method;

    .line 58
    sget-object v0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->setInterruptAction:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_17

    .line 64
    :goto_16
    return-void

    .line 59
    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    .line 68
    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Z

    .line 77
    return-void
.end method


# virtual methods
.method protected final begin()V
    .registers 7

    .prologue
    .line 130
    sget-object v1, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->setInterruptAction:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_18

    .line 132
    :try_start_4
    sget-object v1, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->setInterruptAction:Ljava/lang/reflect/Method;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/nio/channels/spi/AbstractInterruptibleChannel$2;

    invoke-direct {v5, p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel$2;-><init>(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_19

    .line 147
    :cond_18
    return-void

    .line 143
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 144
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    if-nez v0, :cond_10

    .line 111
    monitor-enter p0

    .line 112
    :try_start_5
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    if-nez v0, :cond_f

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    .line 114
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->implCloseChannel()V

    .line 116
    :cond_f
    monitor-exit p0

    .line 118
    :cond_10
    return-void

    .line 116
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v0
.end method

.method protected final end(Z)V
    .registers 9
    .parameter "success"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/AsynchronousCloseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 167
    sget-object v1, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->setInterruptAction:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_29

    .line 169
    :try_start_5
    sget-object v1, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->setInterruptAction:Ljava/lang/reflect/Method;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_21

    .line 174
    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Z

    if-eqz v1, :cond_29

    .line 175
    iput-boolean v6, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Z

    .line 176
    new-instance v1, Ljava/nio/channels/ClosedByInterruptException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedByInterruptException;-><init>()V

    throw v1

    .line 171
    :catch_21
    move-exception v1

    move-object v0, v1

    .line 172
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 179
    .end local v0           #e:Ljava/lang/Exception;
    :cond_29
    if-nez p1, :cond_35

    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    if-eqz v1, :cond_35

    .line 180
    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v1

    .line 182
    :cond_35
    return-void
.end method

.method protected abstract implCloseChannel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final declared-synchronized isOpen()Z
    .registers 2

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
