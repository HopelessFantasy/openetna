.class Ljava/util/concurrent/Executors$PrivilegedThreadFactory;
.super Ljava/util/concurrent/Executors$DefaultThreadFactory;
.source "Executors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrivilegedThreadFactory"
.end annotation


# instance fields
.field private final acc:Ljava/security/AccessControlContext;

.field private final ccl:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/util/concurrent/Executors$DefaultThreadFactory;-><init>()V

    .line 564
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;->ccl:Ljava/lang/ClassLoader;

    .line 565
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;->acc:Ljava/security/AccessControlContext;

    .line 566
    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;->acc:Ljava/security/AccessControlContext;

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "setContextClassLoader"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/AccessControlContext;->checkPermission(Ljava/security/Permission;)V

    .line 567
    return-void
.end method

.method static synthetic access$700(Ljava/util/concurrent/Executors$PrivilegedThreadFactory;)Ljava/lang/ClassLoader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 558
    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;->ccl:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static synthetic access$800(Ljava/util/concurrent/Executors$PrivilegedThreadFactory;)Ljava/security/AccessControlContext;
    .registers 2
    .parameter "x0"

    .prologue
    .line 558
    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;->acc:Ljava/security/AccessControlContext;

    return-object v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3
    .parameter "r"

    .prologue
    .line 570
    new-instance v0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;-><init>(Ljava/util/concurrent/Executors$PrivilegedThreadFactory;Ljava/lang/Runnable;)V

    invoke-super {p0, v0}, Ljava/util/concurrent/Executors$DefaultThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method
