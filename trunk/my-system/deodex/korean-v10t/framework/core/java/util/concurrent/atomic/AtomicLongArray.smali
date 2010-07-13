.class public Ljava/util/concurrent/atomic/AtomicLongArray;
.super Ljava/lang/Object;
.source "AtomicLongArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final base:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final scale:I = 0x0

.field private static final serialVersionUID:J = -0x200931f59d1d4008L

.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final array:[J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const-class v2, [J

    .line 23
    sget-object v0, Ljava/util/concurrent/atomic/UnsafeAccess;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    .line 25
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    const-class v1, [J

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljava/util/concurrent/atomic/AtomicLongArray;->base:I

    .line 26
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    const-class v1, [J

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljava/util/concurrent/atomic/AtomicLongArray;->scale:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 8
    .parameter "length"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-array v0, p1, [J

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    .line 42
    if-lez p1, :cond_17

    .line 43
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->rawIndex(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 44
    :cond_17
    return-void
.end method

.method public constructor <init>([J)V
    .registers 11
    .parameter "array"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-nez p1, :cond_b

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56
    :cond_b
    array-length v8, p1

    .line 57
    .local v8, length:I
    new-array v0, v8, [J

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    .line 58
    if-lez v8, :cond_2e

    .line 59
    const/4 v0, 0x1

    sub-int v7, v8, v0

    .line 60
    .local v7, last:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_16
    if-ge v6, v7, :cond_21

    .line 61
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    aget-wide v1, p1, v6

    aput-wide v1, v0, v6

    .line 60
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 63
    :cond_21
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-direct {p0, v7}, Ljava/util/concurrent/atomic/AtomicLongArray;->rawIndex(I)J

    move-result-wide v2

    aget-wide v4, p1, v7

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 65
    .end local v6           #i:I
    .end local v7           #last:I
    :cond_2e
    return-void
.end method

.method private rawIndex(I)J
    .registers 5
    .parameter "i"

    .prologue
    .line 30
    if-ltz p1, :cond_7

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v0, v0

    if-lt p1, v0, :cond_20

    .line 31
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_20
    sget v0, Ljava/util/concurrent/atomic/AtomicLongArray;->base:I

    sget v1, Ljava/util/concurrent/atomic/AtomicLongArray;->scale:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public addAndGet(IJ)J
    .registers 10
    .parameter "i"
    .parameter "delta"

    .prologue
    .line 225
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v2

    .line 226
    .local v2, current:J
    add-long v4, v2, p2

    .local v4, next:J
    move-object v0, p0

    move v1, p1

    .line 227
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    return-wide v4
.end method

.method public final compareAndSet(IJJ)Z
    .registers 14
    .parameter "i"
    .parameter "expect"
    .parameter "update"

    .prologue
    .line 122
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->rawIndex(I)J

    move-result-wide v2

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method public final decrementAndGet(I)J
    .registers 8
    .parameter "i"

    .prologue
    .line 209
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v2

    .line 210
    .local v2, current:J
    const-wide/16 v0, 0x1

    sub-long v4, v2, v0

    .local v4, next:J
    move-object v0, p0

    move v1, p1

    .line 211
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    return-wide v4
.end method

.method public final get(I)J
    .registers 6
    .parameter "i"

    .prologue
    .line 83
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->rawIndex(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndAdd(IJ)J
    .registers 10
    .parameter "i"
    .parameter "delta"

    .prologue
    .line 178
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v2

    .line 179
    .local v2, current:J
    add-long v4, v2, p2

    .local v4, next:J
    move-object v0, p0

    move v1, p1

    .line 180
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    return-wide v2
.end method

.method public final getAndDecrement(I)J
    .registers 8
    .parameter "i"

    .prologue
    .line 162
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v2

    .line 163
    .local v2, current:J
    const-wide/16 v0, 0x1

    sub-long v4, v2, v0

    .local v4, next:J
    move-object v0, p0

    move v1, p1

    .line 164
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    return-wide v2
.end method

.method public final getAndIncrement(I)J
    .registers 8
    .parameter "i"

    .prologue
    .line 147
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v2

    .line 148
    .local v2, current:J
    const-wide/16 v0, 0x1

    add-long v4, v2, v0

    .local v4, next:J
    move-object v0, p0

    move v1, p1

    .line 149
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    return-wide v2
.end method

.method public final getAndSet(IJ)J
    .registers 10
    .parameter "i"
    .parameter "newValue"

    .prologue
    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v2

    .local v2, current:J
    move-object v0, p0

    move v1, p1

    move-wide v4, p2

    .line 107
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    return-wide v2
.end method

.method public final incrementAndGet(I)J
    .registers 8
    .parameter "i"

    .prologue
    .line 194
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v2

    .line 195
    .local v2, current:J
    const-wide/16 v0, 0x1

    add-long v4, v2, v0

    .local v4, next:J
    move-object v0, p0

    move v1, p1

    .line 196
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    return-wide v4
.end method

.method public final length()I
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v0, v0

    return v0
.end method

.method public final set(IJ)V
    .registers 10
    .parameter "i"
    .parameter "newValue"

    .prologue
    .line 93
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;->rawIndex(I)J

    move-result-wide v2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    array-length v0, v0

    if-lez v0, :cond_9

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    .line 239
    :cond_9
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongArray;->array:[J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final weakCompareAndSet(IJJ)Z
    .registers 7
    .parameter "i"
    .parameter "expect"
    .parameter "update"

    .prologue
    .line 136
    invoke-virtual/range {p0 .. p5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    return v0
.end method
