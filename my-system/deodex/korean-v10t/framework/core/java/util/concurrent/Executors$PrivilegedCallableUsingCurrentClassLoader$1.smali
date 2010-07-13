.class Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->call()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)V
    .registers 2
    .parameter

    .prologue
    .line 499
    .local p0, this:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;,"Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader.1;"
    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 7

    .prologue
    .line 500
    .local p0, this:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;,"Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader.1;"
    const/4 v2, 0x0

    .line 501
    .local v2, savedcl:Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 503
    .local v3, t:Ljava/lang/Thread;
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 504
    .local v0, cl:Ljava/lang/ClassLoader;
    iget-object v4, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    invoke-static {v4}, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->access$300(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v4

    if-eq v4, v0, :cond_1b

    .line 505
    iget-object v4, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    invoke-static {v4}, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->access$300(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 506
    move-object v2, v0

    .line 508
    :cond_1b
    iget-object v4, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    iget-object v5, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    invoke-static {v5}, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->access$500(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;)Ljava/util/concurrent/Callable;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->access$402(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_3e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_31

    .line 512
    if-eqz v2, :cond_2f

    .line 513
    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 515
    .end local v0           #cl:Ljava/lang/ClassLoader;
    :cond_2f
    :goto_2f
    const/4 v4, 0x0

    return-object v4

    .line 509
    :catch_31
    move-exception v4

    move-object v1, v4

    .line 510
    .local v1, ex:Ljava/lang/Exception;
    :try_start_33
    iget-object v4, p0, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;

    invoke-static {v4, v1}, Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;->access$602(Ljava/util/concurrent/Executors$PrivilegedCallableUsingCurrentClassLoader;Ljava/lang/Exception;)Ljava/lang/Exception;
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_3e

    .line 512
    if-eqz v2, :cond_2f

    .line 513
    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_2f

    .line 512
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_3e
    move-exception v4

    if-eqz v2, :cond_44

    .line 513
    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_44
    throw v4
.end method
