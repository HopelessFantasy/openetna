.class final Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;
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
    name = "PrivilegedCallableUsingCurrentClassLoader"
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

.field private final ccl:Ljava/lang/ClassLoader;

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
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 489
    .local p0, this:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;,"Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader<TT;>;"
    .local p1, task:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->task:Ljava/util/concurrent/Callable;

    .line 491
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->ccl:Ljava/lang/ClassLoader;

    .line 492
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->acc:Ljava/security/AccessControlContext;

    .line 493
    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->acc:Ljava/security/AccessControlContext;

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getContextClassLoader"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/AccessControlContext;->checkPermission(Ljava/security/Permission;)V

    .line 494
    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->acc:Ljava/security/AccessControlContext;

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "setContextClassLoader"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/AccessControlContext;->checkPermission(Ljava/security/Permission;)V

    .line 495
    return-void
.end method

.method static synthetic access$300(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)Ljava/lang/ClassLoader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 483
    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->ccl:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static synthetic access$402(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->result:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)Ljava/util/concurrent/Callable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 483
    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->task:Ljava/util/concurrent/Callable;

    return-object v0
.end method

.method static synthetic access$602(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;Ljava/lang/Exception;)Ljava/lang/Exception;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->exception:Ljava/lang/Exception;

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
    .line 498
    .local p0, this:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;,"Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader<TT;>;"
    new-instance v0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;

    invoke-direct {v0, p0}, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;-><init>(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)V

    iget-object v1, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->acc:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 518
    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_11

    .line 519
    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->exception:Ljava/lang/Exception;

    throw v0

    .line 521
    :cond_11
    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->result:Ljava/lang/Object;

    return-object v0
.end method
