.class Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
.super Ljava/lang/Object;
.source "SensorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager$SensorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorThreadRunnable"
.end annotation


# instance fields
.field private mDataChannel:Landroid/os/Bundle;

.field final synthetic this$0:Landroid/hardware/SensorManager$SensorThread;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager$SensorThread;Landroid/os/Bundle;)V
    .registers 3
    .parameter
    .parameter "dataChannel"

    .prologue
    .line 313
    iput-object p1, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p2, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->mDataChannel:Landroid/os/Bundle;

    .line 315
    return-void
.end method

.method private open()Z
    .registers 13

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v11, "SensorManager"

    .line 318
    iget-object v7, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->mDataChannel:Landroid/os/Bundle;

    if-nez v7, :cond_1d

    .line 319
    const-string v7, "SensorManager"

    const-string v7, "mDataChannel == NULL, exiting"

    invoke-static {v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget-object v7, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 321
    :try_start_12
    iget-object v8, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    .line 322
    monitor-exit v7

    .line 323
    const/4 v7, 0x0

    .line 355
    :goto_19
    return v7

    .line 322
    :catchall_1a
    move-exception v8

    monitor-exit v7
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v8

    .line 327
    :cond_1d
    iget-object v7, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->mDataChannel:Landroid/os/Bundle;

    const-string v8, "fds"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v6

    .line 329
    .local v6, pfds:[Landroid/os/Parcelable;
    if-eqz v6, :cond_3a

    .line 330
    array-length v4, v6

    .line 331
    .local v4, length:I
    new-array v1, v4, [Ljava/io/FileDescriptor;

    .line 332
    .local v1, fds:[Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2b
    if-ge v2, v4, :cond_3b

    .line 333
    aget-object v5, v6, v2

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 334
    .local v5, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    aput-object v7, v1, v2

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 337
    .end local v1           #fds:[Ljava/io/FileDescriptor;
    .end local v2           #i:I
    .end local v4           #length:I
    .end local v5           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_3a
    const/4 v1, 0x0

    .line 339
    .restart local v1       #fds:[Ljava/io/FileDescriptor;
    :cond_3b
    iget-object v7, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->mDataChannel:Landroid/os/Bundle;

    const-string v8, "ints"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 340
    .local v3, ints:[I
    invoke-static {v1, v3}, Landroid/hardware/SensorManager;->sensors_data_open([Ljava/io/FileDescriptor;[I)I

    .line 341
    if-eqz v6, :cond_60

    .line 345
    :try_start_48
    array-length v7, v6

    sub-int v2, v7, v9

    .restart local v2       #i:I
    :goto_4b
    if-ltz v2, :cond_60

    .line 346
    aget-object v5, v6, v2

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 347
    .restart local v5       #pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_54} :catch_57

    .line 345
    add-int/lit8 v2, v2, -0x1

    goto :goto_4b

    .line 349
    .end local v2           #i:I
    .end local v5           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_57
    move-exception v7

    move-object v0, v7

    .line 351
    .local v0, e:Ljava/io/IOException;
    const-string v7, "SensorManager"

    const-string v7, "IOException: "

    invoke-static {v11, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    .end local v0           #e:Ljava/io/IOException;
    :cond_60
    iput-object v10, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->mDataChannel:Landroid/os/Bundle;

    move v7, v9

    .line 355
    goto :goto_19
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 360
    const/4 v9, 0x3

    new-array v8, v9, [F

    .line 361
    .local v8, values:[F
    const/4 v9, 0x1

    new-array v6, v9, [I

    .line 362
    .local v6, status:[I
    const/4 v9, 0x1

    new-array v7, v9, [J

    .line 363
    .local v7, timestamp:[J
    const/4 v9, -0x4

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 365
    invoke-direct {p0}, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->open()Z

    move-result v9

    if-nez v9, :cond_15

    .line 434
    :goto_13
    return-void

    .line 431
    .local v0, accuracy:I
    .local v3, sensor:I
    .local v4, sensorObject:Landroid/hardware/Sensor;
    :cond_14
    :try_start_14
    monitor-exit v9
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_3e

    .line 371
    .end local v0           #accuracy:I
    .end local v3           #sensor:I
    .end local v4           #sensorObject:Landroid/hardware/Sensor;
    :cond_15
    invoke-static {v8, v6, v7}, Landroid/hardware/SensorManager;->sensors_data_poll([F[I[J)I

    move-result v3

    .line 373
    .restart local v3       #sensor:I
    const/4 v9, 0x0

    aget v0, v6, v9

    .line 374
    .restart local v0       #accuracy:I
    sget-object v9, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v9

    .line 375
    const/4 v10, -0x1

    if-eq v3, v10, :cond_2a

    :try_start_22
    sget-object v10, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_41

    .line 376
    :cond_2a
    const/4 v10, -0x1

    if-ne v3, v10, :cond_34

    .line 379
    const-string v10, "SensorManager"

    const-string v11, "_sensors_data_poll() failed, we bail out."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_34
    invoke-static {}, Landroid/hardware/SensorManager;->sensors_data_close()I

    .line 384
    iget-object v10, p0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;->this$0:Landroid/hardware/SensorManager$SensorThread;

    const/4 v11, 0x0

    iput-object v11, v10, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    .line 385
    monitor-exit v9

    goto :goto_13

    .line 431
    :catchall_3e
    move-exception v10

    monitor-exit v9
    :try_end_40
    .catchall {:try_start_22 .. :try_end_40} :catchall_3e

    throw v10

    .line 387
    :cond_41
    :try_start_41
    sget-object v10, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 391
    .restart local v4       #sensorObject:Landroid/hardware/Sensor;
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_6b

    .line 398
    invoke-static {v3}, Landroid/hardware/SensorManager;->access$102(I)I

    .line 399
    invoke-static {}, Landroid/hardware/SensorManager;->access$000()[F

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    aget v12, v8, v12

    aput v12, v10, v11

    .line 400
    invoke-static {v0}, Landroid/hardware/SensorManager;->access$202(I)I

    .line 401
    invoke-static {}, Landroid/hardware/SensorManager;->access$300()[J

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-wide v12, v7, v12

    aput-wide v12, v10, v11

    .line 417
    :cond_6b
    if-eqz v4, :cond_14

    .line 420
    sget-object v10, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 421
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_74
    if-ge v1, v5, :cond_14

    .line 422
    sget-object v10, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 423
    .local v2, listener:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v10

    if-eqz v10, :cond_87

    .line 426
    invoke-virtual {v2, v4, v8, v7, v0}, Landroid/hardware/SensorManager$ListenerDelegate;->onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V
    :try_end_87
    .catchall {:try_start_41 .. :try_end_87} :catchall_3e

    .line 421
    :cond_87
    add-int/lit8 v1, v1, 0x1

    goto :goto_74
.end method
