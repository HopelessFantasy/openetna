.class public Ljava/util/concurrent/atomic/AtomicIntegerArray;
.super Ljava/lang/Object;
.source "AtomicIntegerArray.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final base:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final scale:I = 0x0

.field private static final serialVersionUID:J = 0x27b857513300bd8bL

.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final array:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const-class v2, [I

    .line 24
    sget-object v0, Ljava/util/concurrent/atomic/UnsafeAccess;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->unsafe:Lsun/misc/Unsafe;

    .line 26
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->unsafe:Lsun/misc/Unsafe;

    const-class v1, [I

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->base:I

    .line 27
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->unsafe:Lsun/misc/Unsafe;

    const-class v1, [I

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->scale:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 7
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-array v0, p1, [I

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    .line 44
    if-lez p1, :cond_15

    .line 45
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-direct {p0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->rawIndex(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 46
    :cond_15
    return-void
.end method

.method public constructor <init>([I)V
    .registers 10
    .parameter "array"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-nez p1, :cond_b

    .line 57
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 58
    :cond_b
    array-length v2, p1

    .line 59
    .local v2, length:I
    new-array v3, v2, [I

    iput-object v3, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    .line 60
    if-lez v2, :cond_2e

    .line 61
    const/4 v3, 0x1

    sub-int v1, v2, v3

    .line 62
    .local v1, last:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    if-ge v0, v1, :cond_21

    .line 63
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    aget v4, p1, v0

    aput v4, v3, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 65
    :cond_21
    sget-object v3, Ljava/util/concurrent/atomic/AtomicIntegerArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v4, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-direct {p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->rawIndex(I)J

    move-result-wide v5

    aget v7, p1, v1

    invoke-virtual {v3, v4, v5, v6, v7}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 67
    .end local v0           #i:I
    .end local v1           #last:I
    :cond_2e
    return-void
.end method

.method private rawIndex(I)J
    .registers 5
    .parameter "i"

    .prologue
    .line 31
    if-ltz p1, :cond_7

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    array-length v0, v0

    if-lt p1, v0, :cond_20

    .line 32
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

    .line 33
    :cond_20
    sget v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->base:I

    sget v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;->scale:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public final addAndGet(II)I
    .registers 6
    .parameter "i"
    .parameter "delta"

    .prologue
    .line 228
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v0

    .line 229
    .local v0, current:I
    add-int v1, v0, p2

    .line 230
    .local v1, next:I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSet(III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    return v1
.end method

.method public final compareAndSet(III)Z
    .registers 10
    .parameter "i"
    .parameter "expect"
    .parameter "update"

    .prologue
    .line 125
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->rawIndex(I)J

    move-result-wide v2

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method public final decrementAndGet(I)I
    .registers 5
    .parameter "i"

    .prologue
    .line 212
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v0

    .line 213
    .local v0, current:I
    const/4 v2, 0x1

    sub-int v1, v0, v2

    .line 214
    .local v1, next:I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSet(III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    return v1
.end method

.method public final get(I)I
    .registers 6
    .parameter "i"

    .prologue
    .line 85
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->rawIndex(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method public final getAndAdd(II)I
    .registers 6
    .parameter "i"
    .parameter "delta"

    .prologue
    .line 182
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v0

    .line 183
    .local v0, current:I
    add-int v1, v0, p2

    .line 184
    .local v1, next:I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSet(III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    return v0
.end method

.method public final getAndDecrement(I)I
    .registers 5
    .parameter "i"

    .prologue
    .line 166
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v0

    .line 167
    .local v0, current:I
    const/4 v2, 0x1

    sub-int v1, v0, v2

    .line 168
    .local v1, next:I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSet(III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    return v0
.end method

.method public final getAndIncrement(I)I
    .registers 5
    .parameter "i"

    .prologue
    .line 151
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v0

    .line 152
    .local v0, current:I
    add-int/lit8 v1, v0, 0x1

    .line 153
    .local v1, next:I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSet(III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    return v0
.end method

.method public final getAndSet(II)I
    .registers 5
    .parameter "i"
    .parameter "newValue"

    .prologue
    .line 108
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v0

    .line 109
    .local v0, current:I
    invoke-virtual {p0, p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSet(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    return v0
.end method

.method public final incrementAndGet(I)I
    .registers 5
    .parameter "i"

    .prologue
    .line 197
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v0

    .line 198
    .local v0, current:I
    add-int/lit8 v1, v0, 0x1

    .line 199
    .local v1, next:I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSet(III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    return v1
.end method

.method public final length()I
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    array-length v0, v0

    return v0
.end method

.method public final set(II)V
    .registers 7
    .parameter "i"
    .parameter "newValue"

    .prologue
    .line 95
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->rawIndex(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    array-length v0, v0

    if-lez v0, :cond_9

    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    .line 242
    :cond_9
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;->array:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final weakCompareAndSet(III)Z
    .registers 5
    .parameter "i"
    .parameter "expect"
    .parameter "update"

    .prologue
    .line 140
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSet(III)Z

    move-result v0

    return v0
.end method
