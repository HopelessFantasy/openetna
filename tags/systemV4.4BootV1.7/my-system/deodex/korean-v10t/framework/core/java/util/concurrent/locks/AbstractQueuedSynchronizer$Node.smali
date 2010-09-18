.class final Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
.super Ljava/lang/Object;
.source "AbstractQueuedSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# static fields
.field static final CANCELLED:I = 0x1

.field static final CONDITION:I = -0x2

.field static final EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node; = null

.field static final SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node; = null

.field static final SIGNAL:I = -0x1


# instance fields
.field volatile next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field volatile prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field volatile thread:Ljava/lang/Thread;

.field volatile waitStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 344
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;-><init>()V

    sput-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 346
    const/4 v0, 0x0

    sput-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    return-void
.end method

.method constructor <init>(Ljava/lang/Thread;I)V
    .registers 3
    .parameter "thread"
    .parameter "waitStatus"

    .prologue
    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput p2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    .line 453
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 454
    return-void
.end method

.method constructor <init>(Ljava/lang/Thread;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .registers 3
    .parameter "thread"
    .parameter "mode"

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-object p2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 448
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 449
    return-void
.end method


# virtual methods
.method final isShared()Z
    .registers 3

    .prologue
    .line 427
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 437
    .local v0, p:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-nez v0, :cond_a

    .line 438
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 440
    :cond_a
    return-object v0
.end method
