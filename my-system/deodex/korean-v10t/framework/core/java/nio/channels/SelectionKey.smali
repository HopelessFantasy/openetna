.class public abstract Ljava/nio/channels/SelectionKey;
.super Ljava/lang/Object;
.source "SelectionKey.java"


# static fields
.field public static final OP_ACCEPT:I = 0x10

.field public static final OP_CONNECT:I = 0x8

.field public static final OP_READ:I = 0x1

.field public static final OP_WRITE:I = 0x4


# instance fields
.field private volatile attachment:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/channels/SelectionKey;->attachment:Ljava/lang/Object;

    .line 77
    return-void
.end method


# virtual methods
.method public final attach(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "anObject"

    .prologue
    .line 91
    iget-object v0, p0, Ljava/nio/channels/SelectionKey;->attachment:Ljava/lang/Object;

    .line 92
    .local v0, oldAttachment:Ljava/lang/Object;
    iput-object p1, p0, Ljava/nio/channels/SelectionKey;->attachment:Ljava/lang/Object;

    .line 93
    return-object v0
.end method

.method public final attachment()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Ljava/nio/channels/SelectionKey;->attachment:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract cancel()V
.end method

.method public abstract channel()Ljava/nio/channels/SelectableChannel;
.end method

.method public abstract interestOps()I
.end method

.method public abstract interestOps(I)Ljava/nio/channels/SelectionKey;
.end method

.method public final isAcceptable()Z
    .registers 3

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final isConnectable()Z
    .registers 3

    .prologue
    .line 188
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final isReadable()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 203
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_b

    move v0, v1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public abstract isValid()Z
.end method

.method public final isWritable()Z
    .registers 3

    .prologue
    .line 228
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public abstract readyOps()I
.end method

.method public abstract selector()Ljava/nio/channels/Selector;
.end method
