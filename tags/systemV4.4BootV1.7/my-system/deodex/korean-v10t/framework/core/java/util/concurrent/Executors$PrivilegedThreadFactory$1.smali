.class Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/concurrent/Executors$PrivilegedThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/Executors$PrivilegedThreadFactory;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executors$PrivilegedThreadFactory;Ljava/lang/Runnable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedThreadFactory;

    iput-object p2, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 572
    new-instance v0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1$1;

    invoke-direct {v0, p0}, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1$1;-><init>(Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;)V

    iget-object v1, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedThreadFactory;

    invoke-static {v1}, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;->access$800(Ljava/util/concurrent/Executors$PrivilegedThreadFactory;)Ljava/security/AccessControlContext;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 579
    return-void
.end method
