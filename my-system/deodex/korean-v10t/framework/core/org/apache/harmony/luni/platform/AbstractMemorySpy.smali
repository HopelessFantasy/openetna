.class abstract Lorg/apache/harmony/luni/platform/AbstractMemorySpy;
.super Ljava/lang/Object;
.source "AbstractMemorySpy.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/IMemorySpy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;
    }
.end annotation


# instance fields
.field protected memoryInUse:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/harmony/luni/platform/PlatformAddress;",
            "Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected notifyQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected refToShadow:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ref/Reference;",
            "Lorg/apache/harmony/luni/platform/PlatformAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;->memoryInUse:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;->refToShadow:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;->notifyQueue:Ljava/lang/ref/ReferenceQueue;

    .line 56
    return-void
.end method


# virtual methods
.method public alloc(Lorg/apache/harmony/luni/platform/PlatformAddress;)V
    .registers 6
    .parameter "address"

    .prologue
    .line 59
    new-instance v0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;-><init>(Lorg/apache/harmony/luni/platform/AbstractMemorySpy;Lorg/apache/harmony/luni/platform/PlatformAddress;)V

    .line 60
    .local v0, wrapper:Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;
    monitor-enter p0

    .line 61
    :try_start_6
    iget-object v1, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;->memoryInUse:Ljava/util/Map;

    iget-object v2, v0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;->shadow:Lorg/apache/harmony/luni/platform/PlatformAddress;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;->refToShadow:Ljava/util/Map;

    iget-object v2, v0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;->wrAddress:Ljava/lang/ref/PhantomReference;

    iget-object v3, v0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;->shadow:Lorg/apache/harmony/luni/platform/PlatformAddress;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    monitor-exit p0

    .line 64
    return-void

    .line 63
    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public autoFree(Lorg/apache/harmony/luni/platform/PlatformAddress;)V
    .registers 4
    .parameter "address"

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :try_start_1
    iget-object v1, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;->memoryInUse:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;

    .line 98
    .local v0, wrapper:Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    .line 99
    if-eqz v0, :cond_f

    .line 100
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;->autoFree:Z

    .line 102
    :cond_f
    return-void

    .line 98
    .end local v0           #wrapper:Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public free(Lorg/apache/harmony/luni/platform/PlatformAddress;)Z
    .registers 6
    .parameter "address"

    .prologue
    .line 68
    monitor-enter p0

    .line 69
    :try_start_1
    iget-object v1, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;->memoryInUse:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;

    .line 71
    .local v0, wrapper:Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;
    if-eqz v0, :cond_12

    .line 72
    iget-object v1, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;->refToShadow:Ljava/util/Map;

    iget-object v2, v0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;->wrAddress:Ljava/lang/ref/PhantomReference;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_31

    .line 76
    if-nez v0, :cond_2d

    .line 78
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Memory Spy! Fixed attempt to free memory that was not allocated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    :cond_2d
    if-eqz v0, :cond_34

    const/4 v1, 0x1

    :goto_30
    return v1

    .line 75
    .end local v0           #wrapper:Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1

    .line 81
    .restart local v0       #wrapper:Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;
    :cond_34
    const/4 v1, 0x0

    goto :goto_30
.end method

.method protected orphanedMemory(Ljava/lang/ref/Reference;)V
    .registers 7
    .parameter "ref"

    .prologue
    .line 108
    monitor-enter p0

    .line 109
    :try_start_1
    iget-object v2, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;->refToShadow:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/luni/platform/PlatformAddress;

    .line 110
    .local v0, shadow:Lorg/apache/harmony/luni/platform/PlatformAddress;
    iget-object v2, p0, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;->memoryInUse:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;

    .line 111
    .local v1, wrapper:Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;
    if-eqz v1, :cond_36

    .line 113
    iget-boolean v2, v1, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;->autoFree:Z

    if-nez v2, :cond_31

    .line 114
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Memory Spy! Fixed memory leak by freeing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;->shadow:Lorg/apache/harmony/luni/platform/PlatformAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    :cond_31
    iget-object v2, v1, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;->shadow:Lorg/apache/harmony/luni/platform/PlatformAddress;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/platform/PlatformAddress;->free()V

    .line 119
    :cond_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_3b

    .line 120
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 122
    return-void

    .line 119
    .end local v0           #shadow:Lorg/apache/harmony/luni/platform/PlatformAddress;
    .end local v1           #wrapper:Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;
    :catchall_3b
    move-exception v2

    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method public rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V
    .registers 4
    .parameter "address"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 87
    return-void
.end method
