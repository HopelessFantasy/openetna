.class final Ljava/util/concurrent/Executors$PrivilegedCallable;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PrivilegedCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final acc:Ljava/security/AccessControlContext;

.field private exception:Ljava/lang/Exception;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final task:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 456
    .local p0, this:Ljava/util/concurrent/Executors$PrivilegedCallable;,"Ljava/util/concurrent/Executors$PrivilegedCallable<TT;>;"
    .local p1, task:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedCallable;->task:Ljava/util/concurrent/Callable;

    .line 458
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedCallable;->acc:Ljava/security/AccessControlContext;

    .line 459
    return-void
.end method

.method static synthetic access$002(Ljava/util/concurrent/Executors$PrivilegedCallable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 451
    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedCallable;->result:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Ljava/util/concurrent/Executors$PrivilegedCallable;)Ljava/util/concurrent/Callable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 451
    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedCallable;->task:Ljava/util/concurrent/Callable;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/concurrent/Executors$PrivilegedCallable;Ljava/lang/Exception;)Ljava/lang/Exception;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 451
    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedCallable;->exception:Ljava/lang/Exception;

    return-object p1
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 462
    .local p0, this:Ljava/util/concurrent/Executors$PrivilegedCallable;,"Ljava/util/concurrent/Executors$PrivilegedCallable<TT;>;"
    new-instance v0, Ljava/util/concurrent/Executors$PrivilegedCallable$1;

    invoke-direct {v0, p0}, Ljava/util/concurrent/Executors$PrivilegedCallable$1;-><init>(Ljava/util/concurrent/Executors$PrivilegedCallable;)V

    iget-object v1, p0, Ljava/util/concurrent/Executors$PrivilegedCallable;->acc:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 472
    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedCallable;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_11

    .line 473
    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedCallable;->exception:Ljava/lang/Exception;

    throw v0

    .line 475
    :cond_11
    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedCallable;->result:Ljava/lang/Object;

    return-object v0
.end method
