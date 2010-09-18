.class Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;
.super Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
.source "AtomicLongFieldUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CASUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final offset:J

.field private final tclass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 212
    sget-object v0, Ljava/util/concurrent/atomic/UnsafeAccess;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->unsafe:Lsun/misc/Unsafe;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater<TT;>;"
    .local p1, tclass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;-><init>()V

    .line 218
    const/4 v1, 0x0

    .line 220
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_18

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 226
    .local v2, fieldt:Ljava/lang/Class;
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_1f

    .line 227
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must be long type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 221
    .end local v2           #fieldt:Ljava/lang/Class;
    :catch_18
    move-exception v0

    .line 222
    .local v0, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 229
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v2       #fieldt:Ljava/lang/Class;
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    move-result v3

    if-nez v3, :cond_31

    .line 230
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must be volatile type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 232
    :cond_31
    iput-object p1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->tclass:Ljava/lang/Class;

    .line 233
    sget-object v3, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v3, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    iput-wide v3, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    .line 234
    return-void
.end method


# virtual methods
.method public compareAndSet(Ljava/lang/Object;JJ)Z
    .registers 14
    .parameter
    .parameter "expect"
    .parameter "update"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->tclass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 238
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 239
    :cond_e
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)J
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->tclass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 256
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 257
    :cond_e
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(Ljava/lang/Object;J)V
    .registers 10
    .parameter
    .parameter "newValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->tclass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 250
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 251
    :cond_e
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 252
    return-void
.end method

.method public weakCompareAndSet(Ljava/lang/Object;JJ)Z
    .registers 14
    .parameter
    .parameter "expect"
    .parameter "update"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->tclass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 244
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 245
    :cond_e
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method
