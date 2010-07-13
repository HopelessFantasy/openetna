.class public Ljava/util/Stack;
.super Ljava/util/Vector;
.source "Stack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Vector",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x10fe2ac2bb09861dL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    .local p0, this:Ljava/util/Stack;,"Ljava/util/Stack<TE;>;"
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public empty()Z
    .registers 2

    .prologue
    .line 48
    .local p0, this:Ljava/util/Stack;,"Ljava/util/Stack<TE;>;"
    iget v0, p0, Ljava/util/Stack;->elementCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public declared-synchronized peek()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, this:Ljava/util/Stack;,"Ljava/util/Stack<TE;>;"
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Ljava/util/Stack;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Stack;->elementCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_9} :catch_b

    monitor-exit p0

    return-object v1

    .line 63
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 64
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_d
    new-instance v1, Ljava/util/EmptyStackException;

    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    throw v1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_13

    .line 62
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized pop()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, this:Ljava/util/Stack;,"Ljava/util/Stack<TE;>;"
    monitor-enter p0

    :try_start_1
    iget v3, p0, Ljava/util/Stack;->elementCount:I

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .line 81
    .local v1, index:I
    iget-object v3, p0, Ljava/util/Stack;->elementData:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 82
    .local v2, obj:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, v1}, Ljava/util/Stack;->removeElementAt(I)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_17
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_d} :catch_f

    .line 83
    monitor-exit p0

    return-object v2

    .line 84
    .end local v1           #index:I
    .end local v2           #obj:Ljava/lang/Object;,"TE;"
    :catch_f
    move-exception v3

    move-object v0, v3

    .line 85
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_11
    new-instance v3, Ljava/util/EmptyStackException;

    invoke-direct {v3}, Ljava/util/EmptyStackException;-><init>()V

    throw v3
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_17

    .line 80
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catchall_17
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized push(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, this:Ljava/util/Stack;,"Ljava/util/Stack<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 101
    monitor-exit p0

    return-object p1

    .line 100
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized search(Ljava/lang/Object;)I
    .registers 4
    .parameter "o"

    .prologue
    .line 115
    .local p0, this:Ljava/util/Stack;,"Ljava/util/Stack<TE;>;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/Stack;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 116
    .local v0, index:I
    if-ltz v0, :cond_c

    .line 117
    iget v1, p0, Ljava/util/Stack;->elementCount:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_e

    sub-int/2addr v1, v0

    .line 118
    :goto_a
    monitor-exit p0

    return v1

    :cond_c
    const/4 v1, -0x1

    goto :goto_a

    .line 115
    .end local v0           #index:I
    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1
.end method
