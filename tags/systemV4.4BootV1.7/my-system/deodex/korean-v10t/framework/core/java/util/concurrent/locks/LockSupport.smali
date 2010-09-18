.class public Ljava/util/concurrent/locks/LockSupport;
.super Ljava/lang/Object;
.source "LockSupport.java"


# static fields
.field private static final unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    sget-object v0, Ljava/util/concurrent/locks/UnsafeAccess;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static park()V
    .registers 4

    .prologue
    .line 117
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 118
    return-void
.end method

.method public static parkNanos(J)V
    .registers 4
    .parameter "nanos"

    .prologue
    .line 144
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_c

    .line 145
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 146
    :cond_c
    return-void
.end method

.method public static parkUntil(J)V
    .registers 4
    .parameter "deadline"

    .prologue
    .line 173
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 174
    return-void
.end method

.method public static unpark(Ljava/lang/Thread;)V
    .registers 2
    .parameter "thread"

    .prologue
    .line 93
    if-eqz p0, :cond_7

    .line 94
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 95
    :cond_7
    return-void
.end method
