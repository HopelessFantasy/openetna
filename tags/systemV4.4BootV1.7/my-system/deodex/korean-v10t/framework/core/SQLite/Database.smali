.class public LSQLite/Database;
.super Ljava/lang/Object;
.source "Database.java"


# instance fields
.field protected error_code:I

.field protected handle:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 609
    :try_start_0
    invoke-static {}, LSQLite/Database;->internal_init()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 613
    :goto_3
    return-void

    .line 610
    :catch_4
    move-exception v0

    .line 611
    .local v0, t:Ljava/lang/Throwable;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load sqlite: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LSQLite/Database;->handle:J

    .line 19
    const/4 v0, 0x0

    iput v0, p0, LSQLite/Database;->error_code:I

    return-void
.end method

.method private native _busy_handler(LSQLite/BusyHandler;)V
.end method

.method private native _busy_timeout(I)V
.end method

.method private native _changes()J
.end method

.method private native _close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method private static native _complete(Ljava/lang/String;)Z
.end method

.method private native _create_aggregate(Ljava/lang/String;ILSQLite/Function;)V
.end method

.method private native _create_function(Ljava/lang/String;ILSQLite/Function;)V
.end method

.method private native _errmsg()Ljava/lang/String;
.end method

.method private native _exec(Ljava/lang/String;LSQLite/Callback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method private native _exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method private native _finalize()V
.end method

.method private native _function_type(Ljava/lang/String;I)V
.end method

.method private native _interrupt()V
.end method

.method private native _last_insert_rowid()J
.end method

.method private native _open(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method private native _open_aux_file(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method private native _open_blob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLSQLite/Blob;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method private native _progress_handler(ILSQLite/ProgressHandler;)V
.end method

.method private native _set_authorizer(LSQLite/Authorizer;)V
.end method

.method private native _set_encoding(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method private native _trace(LSQLite/Trace;)V
.end method

.method public static declared-synchronized complete(Ljava/lang/String;)Z
    .registers 3
    .parameter "sql"

    .prologue
    .line 288
    const-class v0, LSQLite/Database;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, LSQLite/Database;->_complete(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result v1

    monitor-exit v0

    return v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static native error_string(I)Ljava/lang/String;
.end method

.method private static native internal_init()V
.end method

.method private native stmt_prepare(Ljava/lang/String;LSQLite/Stmt;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method public static native version()Ljava/lang/String;
.end method

.method private native vm_compile(Ljava/lang/String;LSQLite/Vm;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method

.method private native vm_compile_args(Ljava/lang/String;LSQLite/Vm;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation
.end method


# virtual methods
.method public busy_handler(LSQLite/BusyHandler;)V
    .registers 3
    .parameter "bh"

    .prologue
    .line 177
    monitor-enter p0

    .line 178
    :try_start_1
    invoke-direct {p0, p1}, LSQLite/Database;->_busy_handler(LSQLite/BusyHandler;)V

    .line 179
    monitor-exit p0

    .line 180
    return-void

    .line 179
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public busy_timeout(I)V
    .registers 3
    .parameter "ms"

    .prologue
    .line 192
    monitor-enter p0

    .line 193
    :try_start_1
    invoke-direct {p0, p1}, LSQLite/Database;->_busy_timeout(I)V

    .line 194
    monitor-exit p0

    .line 195
    return-void

    .line 194
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public changes()J
    .registers 3

    .prologue
    .line 162
    monitor-enter p0

    .line 163
    :try_start_1
    invoke-direct {p0}, LSQLite/Database;->_changes()J

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 164
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 70
    monitor-enter p0

    .line 71
    :try_start_1
    invoke-direct {p0}, LSQLite/Database;->_close()V

    .line 72
    monitor-exit p0

    .line 73
    return-void

    .line 72
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public compile(Ljava/lang/String;)LSQLite/Vm;
    .registers 4
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 455
    monitor-enter p0

    .line 456
    :try_start_1
    new-instance v0, LSQLite/Vm;

    invoke-direct {v0}, LSQLite/Vm;-><init>()V

    .line 457
    .local v0, vm:LSQLite/Vm;
    invoke-direct {p0, p1, v0}, LSQLite/Database;->vm_compile(Ljava/lang/String;LSQLite/Vm;)V

    .line 458
    monitor-exit p0

    return-object v0

    .line 459
    .end local v0           #vm:LSQLite/Vm;
    :catchall_b
    move-exception v1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public compile(Ljava/lang/String;[Ljava/lang/String;)LSQLite/Vm;
    .registers 5
    .parameter "sql"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 472
    monitor-enter p0

    .line 473
    :try_start_1
    new-instance v0, LSQLite/Vm;

    invoke-direct {v0}, LSQLite/Vm;-><init>()V

    .line 474
    .local v0, vm:LSQLite/Vm;
    invoke-direct {p0, p1, v0, p2}, LSQLite/Database;->vm_compile_args(Ljava/lang/String;LSQLite/Vm;[Ljava/lang/String;)V

    .line 475
    monitor-exit p0

    return-object v0

    .line 476
    .end local v0           #vm:LSQLite/Vm;
    :catchall_b
    move-exception v1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public create_aggregate(Ljava/lang/String;ILSQLite/Function;)V
    .registers 5
    .parameter "name"
    .parameter "nargs"
    .parameter "f"

    .prologue
    .line 333
    monitor-enter p0

    .line 334
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, LSQLite/Database;->_create_aggregate(Ljava/lang/String;ILSQLite/Function;)V

    .line 335
    monitor-exit p0

    .line 336
    return-void

    .line 335
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public create_function(Ljava/lang/String;ILSQLite/Function;)V
    .registers 5
    .parameter "name"
    .parameter "nargs"
    .parameter "f"

    .prologue
    .line 317
    monitor-enter p0

    .line 318
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, LSQLite/Database;->_create_function(Ljava/lang/String;ILSQLite/Function;)V

    .line 319
    monitor-exit p0

    .line 320
    return-void

    .line 319
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public native dbversion()Ljava/lang/String;
.end method

.method public error_message()Ljava/lang/String;
    .registers 2

    .prologue
    .line 386
    monitor-enter p0

    .line 387
    :try_start_1
    invoke-direct {p0}, LSQLite/Database;->_errmsg()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 388
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public exec(Ljava/lang/String;LSQLite/Callback;)V
    .registers 4
    .parameter "sql"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 91
    monitor-enter p0

    .line 92
    :try_start_1
    invoke-direct {p0, p1, p2}, LSQLite/Database;->_exec(Ljava/lang/String;LSQLite/Callback;)V

    .line 93
    monitor-exit p0

    .line 94
    return-void

    .line 93
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V
    .registers 5
    .parameter "sql"
    .parameter "cb"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 124
    monitor-enter p0

    .line 125
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, LSQLite/Database;->_exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V

    .line 126
    monitor-exit p0

    .line 127
    return-void

    .line 126
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 58
    monitor-enter p0

    .line 59
    :try_start_1
    invoke-direct {p0}, LSQLite/Database;->_finalize()V

    .line 60
    monitor-exit p0

    .line 61
    return-void

    .line 60
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public function_type(Ljava/lang/String;I)V
    .registers 4
    .parameter "name"
    .parameter "type"

    .prologue
    .line 349
    monitor-enter p0

    .line 350
    :try_start_1
    invoke-direct {p0, p1, p2}, LSQLite/Database;->_function_type(Ljava/lang/String;I)V

    .line 351
    monitor-exit p0

    .line 352
    return-void

    .line 351
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public get_table(Ljava/lang/String;)LSQLite/TableResult;
    .registers 5
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, LSQLite/TableResult;

    invoke-direct {v0}, LSQLite/TableResult;-><init>()V

    .line 209
    .local v0, ret:LSQLite/TableResult;
    invoke-virtual {p0}, LSQLite/Database;->is3()Z

    move-result v2

    if-nez v2, :cond_f

    .line 210
    invoke-virtual {p0, p1, v0}, LSQLite/Database;->exec(Ljava/lang/String;LSQLite/Callback;)V

    .line 222
    :goto_e
    return-object v0

    .line 212
    :cond_f
    monitor-enter p0

    .line 214
    :try_start_10
    invoke-virtual {p0, p1}, LSQLite/Database;->compile(Ljava/lang/String;)LSQLite/Vm;

    move-result-object v1

    .line 215
    .local v1, vm:LSQLite/Vm;
    iget v2, v1, LSQLite/Vm;->error_code:I

    invoke-virtual {p0, v2}, LSQLite/Database;->set_last_error(I)V

    .line 216
    :goto_19
    invoke-virtual {v1, v0}, LSQLite/Vm;->step(LSQLite/Callback;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 217
    iget v2, v1, LSQLite/Vm;->error_code:I

    invoke-virtual {p0, v2}, LSQLite/Database;->set_last_error(I)V

    goto :goto_19

    .line 220
    .end local v1           #vm:LSQLite/Vm;
    :catchall_25
    move-exception v2

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_25

    throw v2

    .line 219
    .restart local v1       #vm:LSQLite/Vm;
    :cond_28
    :try_start_28
    invoke-virtual {v1}, LSQLite/Vm;->finalize()V

    .line 220
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_25

    goto :goto_e
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
    .line 236
    new-instance v0, LSQLite/TableResult;

    invoke-direct {v0}, LSQLite/TableResult;-><init>()V

    .line 237
    .local v0, ret:LSQLite/TableResult;
    invoke-virtual {p0}, LSQLite/Database;->is3()Z

    move-result v2

    if-nez v2, :cond_f

    .line 238
    invoke-virtual {p0, p1, v0, p2}, LSQLite/Database;->exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V

    .line 250
    :goto_e
    return-object v0

    .line 240
    :cond_f
    monitor-enter p0

    .line 242
    :try_start_10
    invoke-virtual {p0, p1, p2}, LSQLite/Database;->compile(Ljava/lang/String;[Ljava/lang/String;)LSQLite/Vm;

    move-result-object v1

    .line 243
    .local v1, vm:LSQLite/Vm;
    iget v2, v1, LSQLite/Vm;->error_code:I

    invoke-virtual {p0, v2}, LSQLite/Database;->set_last_error(I)V

    .line 244
    :goto_19
    invoke-virtual {v1, v0}, LSQLite/Vm;->step(LSQLite/Callback;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 245
    iget v2, v1, LSQLite/Vm;->error_code:I

    invoke-virtual {p0, v2}, LSQLite/Database;->set_last_error(I)V

    goto :goto_19

    .line 248
    .end local v1           #vm:LSQLite/Vm;
    :catchall_25
    move-exception v2

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_25

    throw v2

    .line 247
    .restart local v1       #vm:LSQLite/Vm;
    :cond_28
    :try_start_28
    invoke-virtual {v1}, LSQLite/Vm;->finalize()V

    .line 248
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_25

    goto :goto_e
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
    .line 265
    invoke-virtual {p3}, LSQLite/TableResult;->clear()V

    .line 266
    invoke-virtual {p0}, LSQLite/Database;->is3()Z

    move-result v1

    if-nez v1, :cond_d

    .line 267
    invoke-virtual {p0, p1, p3, p2}, LSQLite/Database;->exec(Ljava/lang/String;LSQLite/Callback;[Ljava/lang/String;)V

    .line 277
    :goto_c
    return-void

    .line 269
    :cond_d
    monitor-enter p0

    .line 271
    :try_start_e
    invoke-virtual {p0, p1, p2}, LSQLite/Database;->compile(Ljava/lang/String;[Ljava/lang/String;)LSQLite/Vm;

    move-result-object v0

    .line 272
    .local v0, vm:LSQLite/Vm;
    :cond_12
    invoke-virtual {v0, p3}, LSQLite/Vm;->step(LSQLite/Callback;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 274
    invoke-virtual {v0}, LSQLite/Vm;->finalize()V

    .line 275
    monitor-exit p0

    goto :goto_c

    .end local v0           #vm:LSQLite/Vm;
    :catchall_1d
    move-exception v1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public interrupt()V
    .registers 2

    .prologue
    .line 150
    monitor-enter p0

    .line 151
    :try_start_1
    invoke-direct {p0}, LSQLite/Database;->_interrupt()V

    .line 152
    monitor-exit p0

    .line 153
    return-void

    .line 152
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public native is3()Z
.end method

.method public last_error()I
    .registers 2

    .prologue
    .line 367
    iget v0, p0, LSQLite/Database;->error_code:I

    return v0
.end method

.method public last_insert_rowid()J
    .registers 3

    .prologue
    .line 138
    monitor-enter p0

    .line 139
    :try_start_1
    invoke-direct {p0}, LSQLite/Database;->_last_insert_rowid()J

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 140
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public open(Ljava/lang/String;I)V
    .registers 4
    .parameter "filename"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 29
    monitor-enter p0

    .line 30
    :try_start_1
    invoke-direct {p0, p1, p2}, LSQLite/Database;->_open(Ljava/lang/String;I)V

    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 31
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public open_aux_file(Ljava/lang/String;)V
    .registers 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 45
    monitor-enter p0

    .line 46
    :try_start_1
    invoke-direct {p0, p1}, LSQLite/Database;->_open_aux_file(Ljava/lang/String;)V

    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 47
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public open_blob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)LSQLite/Blob;
    .registers 15
    .parameter "db"
    .parameter "table"
    .parameter "column"
    .parameter "row"
    .parameter "rw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 507
    monitor-enter p0

    .line 508
    :try_start_1
    new-instance v7, LSQLite/Blob;

    invoke-direct {v7}, LSQLite/Blob;-><init>()V

    .local v7, blob:LSQLite/Blob;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    .line 509
    invoke-direct/range {v0 .. v7}, LSQLite/Database;->_open_blob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLSQLite/Blob;)V

    .line 510
    monitor-exit p0

    return-object v7

    .line 511
    .end local v7           #blob:LSQLite/Blob;
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public prepare(Ljava/lang/String;)LSQLite/Stmt;
    .registers 4
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 488
    monitor-enter p0

    .line 489
    :try_start_1
    new-instance v0, LSQLite/Stmt;

    invoke-direct {v0}, LSQLite/Stmt;-><init>()V

    .line 490
    .local v0, stmt:LSQLite/Stmt;
    invoke-direct {p0, p1, v0}, LSQLite/Database;->stmt_prepare(Ljava/lang/String;LSQLite/Stmt;)V

    .line 491
    monitor-exit p0

    return-object v0

    .line 492
    .end local v0           #stmt:LSQLite/Stmt;
    :catchall_b
    move-exception v1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public progress_handler(ILSQLite/ProgressHandler;)V
    .registers 4
    .parameter "n"
    .parameter "p"

    .prologue
    .line 572
    monitor-enter p0

    .line 573
    :try_start_1
    invoke-direct {p0, p1, p2}, LSQLite/Database;->_progress_handler(ILSQLite/ProgressHandler;)V

    .line 574
    monitor-exit p0

    .line 575
    return-void

    .line 574
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public set_authorizer(LSQLite/Authorizer;)V
    .registers 3
    .parameter "auth"

    .prologue
    .line 424
    monitor-enter p0

    .line 425
    :try_start_1
    invoke-direct {p0, p1}, LSQLite/Database;->_set_authorizer(LSQLite/Authorizer;)V

    .line 426
    monitor-exit p0

    .line 427
    return-void

    .line 426
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public set_encoding(Ljava/lang/String;)V
    .registers 3
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LSQLite/Exception;
        }
    .end annotation

    .prologue
    .line 408
    monitor-enter p0

    .line 409
    :try_start_1
    invoke-direct {p0, p1}, LSQLite/Database;->_set_encoding(Ljava/lang/String;)V

    .line 410
    monitor-exit p0

    .line 411
    return-void

    .line 410
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method protected set_last_error(I)V
    .registers 2
    .parameter "error_code"

    .prologue
    .line 376
    iput p1, p0, LSQLite/Database;->error_code:I

    .line 377
    return-void
.end method

.method public trace(LSQLite/Trace;)V
    .registers 3
    .parameter "tr"

    .prologue
    .line 439
    monitor-enter p0

    .line 440
    :try_start_1
    invoke-direct {p0, p1}, LSQLite/Database;->_trace(LSQLite/Trace;)V

    .line 441
    monitor-exit p0

    .line 442
    return-void

    .line 441
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method
