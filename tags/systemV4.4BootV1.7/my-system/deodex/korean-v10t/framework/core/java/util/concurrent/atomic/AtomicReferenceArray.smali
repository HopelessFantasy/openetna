.class public Ljava/util/concurrent/atomic/AtomicReferenceArray;
.super Ljava/lang/Object;
.source "AtomicReferenceArray.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final base:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final scale:I = 0x0

.field private static final serialVersionUID:J = -0x562d215e419a9ff4L

.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final array:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const-class v2, [Ljava/lang/Object;

    .line 24
    sget-object v0, Ljava/util/concurrent/atomic/UnsafeAccess;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    .line 26
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    const-class v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->base:I

    .line 27
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    const-class v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->scale:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 7
    .parameter "length"

    .prologue
    .line 40
    .local p0, this:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    .line 43
    if-lez p1, :cond_16

    .line 44
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->rawIndex(I)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 45
    :cond_16
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p1, :cond_b

    .line 56
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 57
    :cond_b
    array-length v3, p1

    .line 58
    .local v3, length:I
    new-array v4, v3, [Ljava/lang/Object;

    iput-object v4, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    .line 59
    if-lez v3, :cond_2e

    .line 60
    const/4 v4, 0x1

    sub-int v2, v3, v4

    .line 61
    .local v2, last:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    if-ge v1, v2, :cond_21

    .line 62
    iget-object v4, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    aget-object v5, p1, v1

    aput-object v5, v4, v1

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 64
    :cond_21
    aget-object v0, p1, v2

    .line 65
    .local v0, e:Ljava/lang/Object;,"TE;"
    sget-object v4, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v5, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-direct {p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->rawIndex(I)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7, v0}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 67
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    .end local v1           #i:I
    .end local v2           #last:I
    :cond_2e
    return-void
.end method

.method private rawIndex(I)J
    .registers 5
    .parameter "i"

    .prologue
    .line 31
    .local p0, this:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    if-ltz p1, :cond_7

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

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
    sget v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->base:I

    sget v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;->scale:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public final compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .parameter "i"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TE;)Z"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, this:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, expect:Ljava/lang/Object;,"TE;"
    .local p3, update:Ljava/lang/Object;,"TE;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->rawIndex(I)J

    move-result-wide v2

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 6
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->rawIndex(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getAndSet(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "i"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, this:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, newValue:Ljava/lang/Object;,"TE;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, current:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    return-object v0
.end method

.method public final length()I
    .registers 2

    .prologue
    .line 75
    .local p0, this:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public final set(ILjava/lang/Object;)V
    .registers 7
    .parameter "i"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, this:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, newValue:Ljava/lang/Object;,"TE;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->rawIndex(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    .local p0, this:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_9

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 148
    :cond_9
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final weakCompareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter "i"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TE;)Z"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, this:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, expect:Ljava/lang/Object;,"TE;"
    .local p3, update:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
