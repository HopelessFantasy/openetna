.class Ljava/lang/ProcessManager$ProcessImpl;
.super Ljava/lang/Process;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessImpl"
.end annotation


# instance fields
.field final errorStream:Ljava/io/InputStream;

.field exitValue:Ljava/lang/Integer;

.field final exitValueMutex:Ljava/lang/Object;

.field final id:I

.field final inputStream:Ljava/io/InputStream;

.field final outputStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(ILjava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .registers 7
    .parameter "id"
    .parameter "in"
    .parameter "out"
    .parameter "err"

    .prologue
    const/4 v1, 0x0

    .line 236
    invoke-direct {p0}, Ljava/lang/Process;-><init>()V

    .line 232
    iput-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    .line 233
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    .line 237
    iput p1, p0, Ljava/lang/ProcessManager$ProcessImpl;->id:I

    .line 239
    new-instance v0, Ljava/lang/ProcessManager$ProcessInputStream;

    invoke-direct {v0, p4, v1}, Ljava/lang/ProcessManager$ProcessInputStream;-><init>(Ljava/io/FileDescriptor;Ljava/lang/ProcessManager$1;)V

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->errorStream:Ljava/io/InputStream;

    .line 240
    new-instance v0, Ljava/lang/ProcessManager$ProcessInputStream;

    invoke-direct {v0, p2, v1}, Ljava/lang/ProcessManager$ProcessInputStream;-><init>(Ljava/io/FileDescriptor;Ljava/lang/ProcessManager$1;)V

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->inputStream:Ljava/io/InputStream;

    .line 241
    new-instance v0, Ljava/lang/ProcessManager$ProcessOutputStream;

    invoke-direct {v0, p3, v1}, Ljava/lang/ProcessManager$ProcessOutputStream;-><init>(Ljava/io/FileDescriptor;Ljava/lang/ProcessManager$1;)V

    iput-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->outputStream:Ljava/io/OutputStream;

    .line 242
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 6

    .prologue
    .line 246
    :try_start_0
    iget v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->id:I

    invoke-static {v1}, Ljava/lang/ProcessManager;->access$200(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 251
    :goto_5
    return-void

    .line 247
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 248
    .local v0, e:Ljava/io/IOException;
    const-class v1, Ljava/lang/Runtime;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to destroy process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljava/lang/ProcessManager$ProcessImpl;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public exitValue()I
    .registers 4

    .prologue
    .line 254
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_3
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    if-nez v1, :cond_12

    .line 256
    new-instance v1, Ljava/lang/IllegalThreadStateException;

    const-string v2, "Process has not yet terminated."

    invoke-direct {v1, v2}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1

    .line 260
    :cond_12
    :try_start_12
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_f

    return v1
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->errorStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method setExitValue(I)V
    .registers 4
    .parameter "exitValue"

    .prologue
    .line 286
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    .line 288
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 289
    monitor-exit v0

    .line 290
    return-void

    .line 289
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public waitFor()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :goto_3
    :try_start_3
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    if-nez v1, :cond_10

    .line 279
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValueMutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 282
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1

    .line 281
    :cond_10
    :try_start_10
    iget-object v1, p0, Ljava/lang/ProcessManager$ProcessImpl;->exitValue:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_d

    return v1
.end method
