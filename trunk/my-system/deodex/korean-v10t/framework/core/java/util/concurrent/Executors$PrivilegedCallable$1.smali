.class Ljava/util/concurrent/Executors$PrivilegedCallable$1;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/concurrent/Executors$PrivilegedCallable;->call()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/Executors$PrivilegedCallable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executors$PrivilegedCallable;)V
    .registers 2
    .parameter

    .prologue
    .line 463
    .local p0, this:Ljava/util/concurrent/Executors$PrivilegedCallable$1;,"Ljava/util/concurrent/Executors$PrivilegedCallable.1;"
    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedCallable$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 465
    .local p0, this:Ljava/util/concurrent/Executors$PrivilegedCallable$1;,"Ljava/util/concurrent/Executors$PrivilegedCallable.1;"
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/Executors$PrivilegedCallable$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallable;

    iget-object v2, p0, Ljava/util/concurrent/Executors$PrivilegedCallable$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallable;

    invoke-static {v2}, Ljava/util/concurrent/Executors$PrivilegedCallable;->access$100(Ljava/util/concurrent/Executors$PrivilegedCallable;)Ljava/util/concurrent/Callable;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/concurrent/Executors$PrivilegedCallable;->access$002(Ljava/util/concurrent/Executors$PrivilegedCallable;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    .line 469
    :goto_f
    const/4 v1, 0x0

    return-object v1

    .line 466
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 467
    .local v0, ex:Ljava/lang/Exception;
    iget-object v1, p0, Ljava/util/concurrent/Executors$PrivilegedCallable$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallable;

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors$PrivilegedCallable;->access$202(Ljava/util/concurrent/Executors$PrivilegedCallable;Ljava/lang/Exception;)Ljava/lang/Exception;

    goto :goto_f
.end method
