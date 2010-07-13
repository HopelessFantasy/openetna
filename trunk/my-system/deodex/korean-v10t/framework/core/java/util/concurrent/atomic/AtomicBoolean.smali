.class public Ljava/util/concurrent/atomic/AtomicBoolean;
.super Ljava/lang/Object;
.source "AtomicBoolean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4098b70a4f3ffc33L

.field private static final unsafe:Lsun/misc/Unsafe;

.field private static final valueOffset:J


# instance fields
.field private volatile value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 25
    sget-object v1, Ljava/util/concurrent/atomic/UnsafeAccess;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v1, Ljava/util/concurrent/atomic/AtomicBoolean;->unsafe:Lsun/misc/Unsafe;

    .line 32
    :try_start_4
    sget-object v1, Ljava/util/concurrent/atomic/AtomicBoolean;->unsafe:Lsun/misc/Unsafe;

    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/atomic/AtomicBoolean;->valueOffset:J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_15

    .line 35
    return-void

    .line 34
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
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .parameter "initialValue"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :goto_6
    iput v0, p0, Ljava/util/concurrent/atomic/AtomicBoolean;->value:I

    .line 46
    return-void

    .line 45
    :cond_9
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public final compareAndSet(ZZ)Z
    .registers 9
    .parameter "expect"
    .parameter "update"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 76
    if-eqz p1, :cond_12

    move v4, v1

    .line 77
    .local v4, e:I
    :goto_5
    if-eqz p2, :cond_14

    move v5, v1

    .line 78
    .local v5, u:I
    :goto_8
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->valueOffset:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0

    .end local v4           #e:I
    .end local v5           #u:I
    :cond_12
    move v4, v0

    .line 76
    goto :goto_5

    .restart local v4       #e:I
    :cond_14
    move v5, v0

    .line 77
    goto :goto_8
.end method

.method public final get()Z
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Ljava/util/concurrent/atomic/AtomicBoolean;->value:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final getAndSet(Z)Z
    .registers 4
    .parameter "newValue"

    .prologue
    .line 112
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 113
    .local v0, current:Z
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    return v0
.end method

.method public final set(Z)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 101
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput v0, p0, Ljava/util/concurrent/atomic/AtomicBoolean;->value:I

    .line 102
    return-void

    .line 101
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public weakCompareAndSet(ZZ)Z
    .registers 9
    .parameter "expect"
    .parameter "update"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 90
    if-eqz p1, :cond_12

    move v4, v1

    .line 91
    .local v4, e:I
    :goto_5
    if-eqz p2, :cond_14

    move v5, v1

    .line 92
    .local v5, u:I
    :goto_8
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->valueOffset:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0

    .end local v4           #e:I
    .end local v5           #u:I
    :cond_12
    move v4, v0

    .line 90
    goto :goto_5

    .restart local v4       #e:I
    :cond_14
    move v5, v0

    .line 91
    goto :goto_8
.end method
