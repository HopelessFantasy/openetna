.class Landroid/os/AsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/AsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>(Landroid/os/AsyncTask;Ljava/util/concurrent/Callable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 191
    .local p0, this:Landroid/os/AsyncTask$3;,"Landroid/os/AsyncTask.3;"
    .local p2, x0:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .registers 11

    .prologue
    .local p0, this:Landroid/os/AsyncTask$3;,"Landroid/os/AsyncTask.3;"
    const/4 v9, 0x1

    const-string v6, "An error occured while executing doInBackground()"

    .line 193
    const/4 v2, 0x0

    .line 196
    .local v2, result:Ljava/lang/Object;,"TResult;"
    :try_start_4
    invoke-virtual {p0}, Landroid/os/AsyncTask$3;->get()Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_20
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_7} :catch_27
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_7} :catch_34
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_4c

    move-result-object v2

    .line 212
    .end local v2           #result:Ljava/lang/Object;,"TResult;"
    :goto_8
    invoke-static {}, Landroid/os/AsyncTask;->access$200()Landroid/os/AsyncTask$InternalHandler;

    move-result-object v4

    new-instance v5, Landroid/os/AsyncTask$AsyncTaskResult;

    iget-object v6, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-direct {v5, v6, v7}, Landroid/os/AsyncTask$AsyncTaskResult;-><init>(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v4, v9, v5}, Landroid/os/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 214
    .local v1, message:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 215
    .end local p0           #this:Landroid/os/AsyncTask$3;,"Landroid/os/AsyncTask.3;"
    :goto_1f
    return-void

    .line 197
    .end local v1           #message:Landroid/os/Message;
    .restart local v2       #result:Ljava/lang/Object;,"TResult;"
    .restart local p0       #this:Landroid/os/AsyncTask$3;,"Landroid/os/AsyncTask.3;"
    :catch_20
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "AsyncTask"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 199
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_27
    move-exception v0

    .line 200
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 202
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :catch_34
    move-exception v0

    .line 203
    .local v0, e:Ljava/util/concurrent/CancellationException;
    invoke-static {}, Landroid/os/AsyncTask;->access$200()Landroid/os/AsyncTask$InternalHandler;

    move-result-object v4

    const/4 v5, 0x3

    new-instance v6, Landroid/os/AsyncTask$AsyncTaskResult;

    iget-object v7, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Object;

    .end local p0           #this:Landroid/os/AsyncTask$3;,"Landroid/os/AsyncTask.3;"
    invoke-direct {v6, v7, p0}, Landroid/os/AsyncTask$AsyncTaskResult;-><init>(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v6}, Landroid/os/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 205
    .restart local v1       #message:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1f

    .line 207
    .end local v0           #e:Ljava/util/concurrent/CancellationException;
    .end local v1           #message:Landroid/os/Message;
    .restart local p0       #this:Landroid/os/AsyncTask$3;,"Landroid/os/AsyncTask.3;"
    :catch_4c
    move-exception v3

    .line 208
    .local v3, t:Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "An error occured while executing doInBackground()"

    invoke-direct {v4, v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
