.class public Ljava/util/concurrent/atomic/AtomicInteger;
.super Ljava/lang/Number;
.source "AtomicInteger.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x563f5ecc8c6c168aL

.field private static final unsafe:Lsun/misc/Unsafe;

.field private static final valueOffset:J


# instance fields
.field private volatile value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 29
    sget-object v1, Ljava/util/concurrent/atomic/UnsafeAccess;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v1, Ljava/util/concurrent/atomic/AtomicInteger;->unsafe:Lsun/misc/Unsafe;

    .line 35
    :try_start_4
    sget-object v1, Ljava/util/concurrent/atomic/AtomicInteger;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/atomic/AtomicInteger;->valueOffset:J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_15

    .line 38
    return-void

    .line 37
    :catch_15
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "initialValue"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 48
    iput p1, p0, Ljava/util/concurrent/atomic/AtomicInteger;->value:I

    .line 49
    return-void
.end method


# virtual methods
.method public final addAndGet(I)I
    .registers 5
    .parameter "delta"

    .prologue
    .line 191
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 192
    .local v0, current:I
    add-int v1, v0, p1

    .line 193
    .local v1, next:I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    return v1
.end method

.method public final compareAndSet(II)Z
    .registers 9
    .parameter "expect"
    .parameter "update"

    .prologue
    .line 99
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->valueOffset:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method public final decrementAndGet()I
    .registers 4

    .prologue
    .line 176
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 177
    .local v0, current:I
    const/4 v2, 0x1

    sub-int v1, v0, v2

    .line 178
    .local v1, next:I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    return v1
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 220
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .registers 2

    .prologue
    .line 216
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public final get()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Ljava/util/concurrent/atomic/AtomicInteger;->value:I

    return v0
.end method

.method public final getAndAdd(I)I
    .registers 5
    .parameter "delta"

    .prologue
    .line 150
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 151
    .local v0, current:I
    add-int v1, v0, p1

    .line 152
    .local v1, next:I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    return v0
.end method

.method public final getAndDecrement()I
    .registers 4

    .prologue
    .line 135
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 136
    .local v0, current:I
    const/4 v2, 0x1

    sub-int v1, v0, v2

    .line 137
    .local v1, next:I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    return v0
.end method

.method public final getAndIncrement()I
    .registers 4

    .prologue
    .line 121
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 122
    .local v0, current:I
    add-int/lit8 v1, v0, 0x1

    .line 123
    .local v1, next:I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    return v0
.end method

.method public final getAndSet(I)I
    .registers 4
    .parameter "newValue"

    .prologue
    .line 83
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 84
    .local v0, current:I
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    return v0
.end method

.method public final incrementAndGet()I
    .registers 4

    .prologue
    .line 163
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 164
    .local v0, current:I
    add-int/lit8 v1, v0, 0x1

    .line 165
    .local v1, next:I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    return v1
.end method

.method public intValue()I
    .registers 2

    .prologue
    .line 208
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 212
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final set(I)V
    .registers 2
    .parameter "newValue"

    .prologue
    .line 72
    iput p1, p0, Ljava/util/concurrent/atomic/AtomicInteger;->value:I

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final weakCompareAndSet(II)Z
    .registers 9
    .parameter "expect"
    .parameter "update"

    .prologue
    .line 111
    sget-object v0, Ljava/util/concurrent/atomic/AtomicInteger;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicInteger;->valueOffset:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method
