.class LSQLite/JDBC2y/DatabaseX;
.super LSQLite/Database;
.source "JDBCConnection.java"


# static fields
.field static lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 404
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LSQLite/JDBC2y/DatabaseX;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 407
    invoke-direct {p0}, LSQLite/Database;-><init>()V

    .line 408
    return-void
.end method


# virtual methods
.method public exec(Ljava/lang/String;LSQLite/Callback;)V
    .registers 5
    .parameter "sql"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 421
    invoke-super {p0, p1, p2}, LSQLite/Database;->exec(Ljava/lang/String;LSQLite/Callback;)V

    .line 422
    sget-object v0, LSQLite/JDBC2y/DatabaseX;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 423
    :try_start_6
    sget-object v1, LSQLite/JDBC2y/DatabaseX;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 424
    monitor-exit v0

    .line 425
    return-void

    .line 424
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V
    .registers 6
    .parameter "sql"
    .parameter "cb"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 429
    invoke-super {p0, p1, p2, p3}, LSQLite/Database;->exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V

    .line 430
    sget-object v0, LSQLite/JDBC2y/DatabaseX;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_6
    sget-object v1, LSQLite/JDBC2y/DatabaseX;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 432
    monitor-exit v0

    .line 433
    return-void

    .line 432
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public get_table(Ljava/lang/String;[Ljava/lang/String;)LSQLite/TableResult;
    .registers 6
    .parameter "sql"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 437
    invoke-super {p0, p1, p2}, LSQLite/Database;->get_table(Ljava/lang/String;[Ljava/lang/String;)LSQLite/TableResult;

    move-result-object v0

    .line 438
    .local v0, ret:LSQLite/TableResult;
    sget-object v1, LSQLite/JDBC2y/DatabaseX;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 439
    :try_start_7
    sget-object v2, LSQLite/JDBC2y/DatabaseX;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 440
    monitor-exit v1

    .line 441
    return-object v0

    .line 440
    :catchall_e
    move-exception v2

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v2
.end method

.method public get_table(Ljava/lang/String;[Ljava/lang/String;LSQLite/TableResult;)V
    .registers 6
    .parameter "sql"
    .parameter "args"
    .parameter "tbl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 446
    invoke-super {p0, p1, p2, p3}, LSQLite/Database;->get_table(Ljava/lang/String;[Ljava/lang/String;LSQLite/TableResult;)V

    .line 447
    sget-object v0, LSQLite/JDBC2y/DatabaseX;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 448
    :try_start_6
    sget-object v1, LSQLite/JDBC2y/DatabaseX;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 449
    monitor-exit v0

    .line 450
    return-void

    .line 449
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method wait(I)V
    .registers 6
    .parameter "ms"

    .prologue
    .line 412
    :try_start_0
    sget-object v0, LSQLite/JDBC2y/DatabaseX;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_e

    .line 413
    :try_start_3
    sget-object v1, LSQLite/JDBC2y/DatabaseX;->lock:Ljava/lang/Object;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 414
    monitor-exit v0

    .line 417
    :goto_a
    return-void

    .line 414
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    :try_start_d
    throw v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_e} :catch_e

    .line 415
    :catch_e
    move-exception v0

    goto :goto_a
.end method
