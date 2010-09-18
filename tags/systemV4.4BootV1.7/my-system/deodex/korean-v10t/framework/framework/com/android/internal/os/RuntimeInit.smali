.class public Lcom/android/internal/os/RuntimeInit;
.super Ljava/lang/Object;
.source "RuntimeInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/RuntimeInit$UncaughtHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidRuntime"

.field private static initialized:Z

.field private static mApplicationObject:Landroid/os/IBinder;

.field private static final sInReportException:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 344
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/internal/os/RuntimeInit;->sInReportException:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 435
    invoke-static {}, Landroid/ddm/DdmRegister;->registerHandlers()V

    .line 436
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method private static final commonInit()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "1"

    .line 83
    new-instance v2, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;

    invoke-direct {v2, v5}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;-><init>(Lcom/android/internal/os/RuntimeInit$1;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 85
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getQwertyKeyboard()I

    move-result v0

    .line 88
    .local v0, hasQwerty:I
    if-ne v0, v4, :cond_19

    .line 89
    const-string v2, "qwerty"

    const-string v3, "1"

    invoke-static {v2, v6}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    :cond_19
    new-instance v2, Lcom/android/internal/os/RuntimeInit$1;

    invoke-direct {v2}, Lcom/android/internal/os/RuntimeInit$1;-><init>()V

    invoke-static {v2}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->setInstance(Lorg/apache/harmony/luni/internal/util/TimezoneGetter;)V

    .line 101
    invoke-static {v5}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 110
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/logging/LogManager;->reset()V

    .line 111
    new-instance v2, Lcom/android/internal/logging/AndroidConfig;

    invoke-direct {v2}, Lcom/android/internal/logging/AndroidConfig;-><init>()V

    .line 119
    const-string v2, "ro.kernel.android.tracing"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, trace:Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 121
    const-string v2, "AndroidRuntime"

    const-string v3, "NOTE: emulator trace profiling enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Landroid/os/Debug;->enableEmulatorTraceOutput()V

    .line 125
    :cond_48
    sput-boolean v4, Lcom/android/internal/os/RuntimeInit;->initialized:Z

    .line 126
    return-void
.end method

.method public static crash(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 13
    .parameter "tag"
    .parameter "t"

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0xa

    const-string v1, "Error reporting crash: "

    const-string v1, "AndroidRuntime"

    .line 274
    sget-object v1, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    if-eqz v1, :cond_9d

    .line 275
    const/4 v6, 0x0

    .line 278
    .local v6, crashData:[B
    :try_start_c
    const-string v1, "AndroidRuntime"

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {p0, p1}, Lcom/android/internal/os/RuntimeInit;->marshallException(Ljava/lang/String;Ljava/lang/Throwable;)[B

    move-result-object v6

    .line 280
    if-nez v6, :cond_41

    .line 281
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Can\'t marshall crash data"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_23} :catch_23

    .line 283
    :catch_23
    move-exception v1

    move-object v8, v1

    .line 286
    .local v8, t2:Ljava/lang/Throwable;
    :try_start_25
    const-string v1, "AndroidRuntime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reporting crash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_41} :catch_da

    .line 295
    .end local v8           #t2:Ljava/lang/Throwable;
    :cond_41
    :goto_41
    :try_start_41
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, msg:Ljava/lang/String;
    if-nez v4, :cond_4b

    .line 297
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 300
    :cond_4b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_91
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_4e} :catch_6b

    move-result-object v0

    .line 302
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_4f
    sget-object v1, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->handleApplicationError(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v7

    .line 309
    .local v7, res:I
    if-ne v7, v10, :cond_c7

    .line 310
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V
    :try_end_60
    .catchall {:try_start_4f .. :try_end_60} :catchall_91
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_60} :catch_c6
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_60} :catch_6b

    .line 325
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 326
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v4           #msg:Ljava/lang/String;
    .end local v7           #res:I
    :goto_67
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    .line 341
    .end local v6           #crashData:[B
    :goto_6a
    return-void

    .line 315
    .restart local v6       #crashData:[B
    :catch_6b
    move-exception v1

    move-object v8, v1

    .line 318
    .restart local v8       #t2:Ljava/lang/Throwable;
    :try_start_6d
    const-string v1, "AndroidRuntime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reporting crash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_6d .. :try_end_89} :catchall_91
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_89} :catch_d8

    .line 325
    :goto_89
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_67

    .end local v8           #t2:Ljava/lang/Throwable;
    :catchall_91
    move-exception v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 326
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    .line 325
    throw v1

    .line 330
    .end local v6           #crashData:[B
    :cond_9d
    :try_start_9d
    const-string v1, "AndroidRuntime"

    const-string v2, "*** EXCEPTION IN SYSTEM PROCESS.  System will crash."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/android/internal/os/RuntimeInit;->reportException(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    :try_end_af
    .catchall {:try_start_9d .. :try_end_af} :catchall_ba
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_af} :catch_cf

    .line 337
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 338
    :goto_b6
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    goto :goto_6a

    .line 337
    :catchall_ba
    move-exception v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 338
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    .line 337
    throw v1

    .line 313
    .restart local v0       #am:Landroid/app/IActivityManager;
    .restart local v4       #msg:Ljava/lang/String;
    .restart local v6       #crashData:[B
    :catch_c6
    move-exception v1

    .line 325
    :cond_c7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_67

    .line 333
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v4           #msg:Ljava/lang/String;
    .end local v6           #crashData:[B
    :catch_cf
    move-exception v1

    .line 337
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_b6

    .line 320
    .restart local v6       #crashData:[B
    .restart local v8       #t2:Ljava/lang/Throwable;
    :catch_d8
    move-exception v1

    goto :goto_89

    .line 288
    :catch_da
    move-exception v1

    goto/16 :goto_41
.end method

.method public static final native finishInit()V
.end method

.method public static native getQwertyKeyboard()I
.end method

.method private static invokeStaticMain(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .parameter "className"
    .parameter "argv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    const/high16 v5, 0x3f40

    invoke-virtual {v4, v5}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 146
    :try_start_9
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_c} :catch_44

    move-result-object v0

    .line 155
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_d
    const-string v4, "main"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_1a} :catch_5e
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_1a} :catch_79

    move-result-object v2

    .line 164
    .local v2, m:Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 165
    .local v3, modifiers:I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_94

    .line 166
    :cond_2b
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Main method is not public and static on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 147
    .end local v0           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #m:Ljava/lang/reflect/Method;
    .end local v3           #modifiers:I
    :catch_44
    move-exception v1

    .line 148
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing class when invoking static main "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 156
    .end local v1           #ex:Ljava/lang/ClassNotFoundException;
    .restart local v0       #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_5e
    move-exception v4

    move-object v1, v4

    .line 157
    .local v1, ex:Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing static main on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 159
    .end local v1           #ex:Ljava/lang/NoSuchMethodException;
    :catch_79
    move-exception v4

    move-object v1, v4

    .line 160
    .local v1, ex:Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem getting static main on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 176
    .end local v1           #ex:Ljava/lang/SecurityException;
    .restart local v2       #m:Ljava/lang/reflect/Method;
    .restart local v3       #modifiers:I
    :cond_94
    new-instance v4, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;

    invoke-direct {v4, v2, p1}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/String;)V

    throw v4
.end method

.method public static final native isComputerOn()I
.end method

.method public static final main([Ljava/lang/String;)V
    .registers 1
    .parameter "argv"

    .prologue
    .line 180
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->commonInit()V

    .line 186
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->finishInit()V

    .line 189
    return-void
.end method

.method private static marshallException(Ljava/lang/String;Ljava/lang/Throwable;)[B
    .registers 6
    .parameter "tag"
    .parameter "t"

    .prologue
    .line 394
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 395
    .local v0, bout:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 397
    .local v1, dout:Ljava/io/DataOutputStream;
    :try_start_a
    new-instance v3, Landroid/server/data/CrashData;

    invoke-direct {v3, p0, p1}, Landroid/server/data/CrashData;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v1}, Landroid/server/data/CrashData;->write(Ljava/io/DataOutput;)V

    .line 398
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_15} :catch_1a

    .line 402
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :goto_19
    return-object v3

    .line 399
    :catch_1a
    move-exception v3

    move-object v2, v3

    .line 400
    .local v2, e:Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_19
.end method

.method public static reportException(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 10
    .parameter "tag"
    .parameter "t"
    .parameter "sync"

    .prologue
    const-string v5, "AndroidRuntime"

    .line 357
    sget-boolean v4, Lcom/android/internal/os/RuntimeInit;->initialized:Z

    if-nez v4, :cond_7

    .line 390
    :goto_6
    return-void

    .line 364
    :cond_7
    sget-object v4, Lcom/android/internal/os/RuntimeInit;->sInReportException:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 365
    .local v2, reenter:I
    if-eqz v2, :cond_1c

    .line 366
    sget-object v4, Lcom/android/internal/os/RuntimeInit;->sInReportException:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 367
    const-string v4, "AndroidRuntime"

    const-string v4, "Crash logging skipped, already logging another crash"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 374
    :cond_1c
    :try_start_1c
    invoke-static {p0, p1}, Lcom/android/internal/os/RuntimeInit;->marshallException(Ljava/lang/String;Ljava/lang/Throwable;)[B

    move-result-object v1

    .line 375
    .local v1, crashData:[B
    const-string v4, "checkin"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ICheckinService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICheckinService;

    move-result-object v0

    .line 377
    .local v0, checkin:Landroid/os/ICheckinService;
    if-nez v0, :cond_39

    .line 378
    const-string v4, "AndroidRuntime"

    const-string v5, "Crash logging skipped, no checkin service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_60
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_33} :catch_3f

    .line 388
    :goto_33
    sget-object v4, Lcom/android/internal/os/RuntimeInit;->sInReportException:Ljava/util/concurrent/atomic/AtomicInteger;

    .end local v0           #checkin:Landroid/os/ICheckinService;
    .end local v1           #crashData:[B
    :goto_35
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_6

    .line 379
    .restart local v0       #checkin:Landroid/os/ICheckinService;
    .restart local v1       #crashData:[B
    :cond_39
    if-eqz p2, :cond_5c

    .line 380
    :try_start_3b
    invoke-interface {v0, v1}, Landroid/os/ICheckinService;->reportCrashSync([B)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_60
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_33

    .line 384
    .end local v0           #checkin:Landroid/os/ICheckinService;
    .end local v1           #crashData:[B
    :catch_3f
    move-exception v4

    move-object v3, v4

    .line 386
    .local v3, t2:Ljava/lang/Throwable;
    :try_start_41
    const-string v4, "AndroidRuntime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Crash logging failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_41 .. :try_end_59} :catchall_60

    .line 388
    sget-object v4, Lcom/android/internal/os/RuntimeInit;->sInReportException:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_35

    .line 382
    .end local v3           #t2:Ljava/lang/Throwable;
    .restart local v0       #checkin:Landroid/os/ICheckinService;
    .restart local v1       #crashData:[B
    :cond_5c
    :try_start_5c
    invoke-interface {v0, v1}, Landroid/os/ICheckinService;->reportCrashAsync([B)V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5f} :catch_3f

    goto :goto_33

    .line 388
    .end local v0           #checkin:Landroid/os/ICheckinService;
    .end local v1           #crashData:[B
    :catchall_60
    move-exception v4

    sget-object v5, Lcom/android/internal/os/RuntimeInit;->sInReportException:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v4
.end method

.method public static final setApplicationObject(Landroid/os/IBinder;)V
    .registers 1
    .parameter "app"

    .prologue
    .line 427
    sput-object p0, Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;

    .line 428
    return-void
.end method

.method public static final native turnComputerOn()V
.end method

.method public static unmarshallException([B)Landroid/server/data/CrashData;
    .registers 5
    .parameter "crashDataBytes"

    .prologue
    .line 414
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 415
    .local v0, bin:Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 416
    .local v1, din:Ljava/io/DataInputStream;
    new-instance v3, Landroid/server/data/CrashData;

    invoke-direct {v3, v1}, Landroid/server/data/CrashData;-><init>(Ljava/io/DataInput;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    .line 418
    .end local v0           #bin:Ljava/io/ByteArrayInputStream;
    .end local v1           #din:Ljava/io/DataInputStream;
    :goto_f
    return-object v3

    .line 417
    :catch_10
    move-exception v3

    move-object v2, v3

    .line 418
    .local v2, e:Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_f
.end method

.method public static final zygoteInit([Ljava/lang/String;)V
    .registers 11
    .parameter "argv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    const-string v9, "--"

    .line 211
    new-instance v6, Lcom/android/internal/os/AndroidPrintStream;

    const/4 v7, 0x4

    const-string v8, "System.out"

    invoke-direct {v6, v7, v8}, Lcom/android/internal/os/AndroidPrintStream;-><init>(ILjava/lang/String;)V

    invoke-static {v6}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 212
    new-instance v6, Lcom/android/internal/os/AndroidPrintStream;

    const/4 v7, 0x5

    const-string v8, "System.err"

    invoke-direct {v6, v7, v8}, Lcom/android/internal/os/AndroidPrintStream;-><init>(ILjava/lang/String;)V

    invoke-static {v6}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 214
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->commonInit()V

    .line 215
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->zygoteInitNative()V

    .line 217
    const/4 v1, 0x0

    .line 218
    .local v1, curArg:I
    :goto_1f
    array-length v6, p0

    if-ge v1, v6, :cond_2e

    .line 219
    aget-object v0, p0, v1

    .line 221
    .local v0, arg:Ljava/lang/String;
    const-string v6, "--"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 222
    add-int/lit8 v1, v1, 0x1

    .line 232
    .end local v0           #arg:Ljava/lang/String;
    :cond_2e
    array-length v6, p0

    if-ne v1, v6, :cond_5b

    .line 233
    const-string v6, "AndroidRuntime"

    const-string v7, "Missing classname argument to RuntimeInit!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_38
    return-void

    .line 224
    .restart local v0       #arg:Ljava/lang/String;
    :cond_39
    const-string v6, "--"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 226
    const-string v6, "--nice-name="

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 227
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, niceName:Ljava/lang/String;
    invoke-static {v3}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 218
    .end local v3           #niceName:Ljava/lang/String;
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 240
    .end local v0           #arg:Ljava/lang/String;
    :cond_5b
    add-int/lit8 v2, v1, 0x1

    .end local v1           #curArg:I
    .local v2, curArg:I
    aget-object v5, p0, v1

    .line 241
    .local v5, startClass:Ljava/lang/String;
    array-length v6, p0

    sub-int/2addr v6, v2

    new-array v4, v6, [Ljava/lang/String;

    .line 243
    .local v4, startArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {p0, v2, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    invoke-static {v5, v4}, Lcom/android/internal/os/RuntimeInit;->invokeStaticMain(Ljava/lang/String;[Ljava/lang/String;)V

    move v1, v2

    .line 245
    .end local v2           #curArg:I
    .restart local v1       #curArg:I
    goto :goto_38
.end method

.method public static final native zygoteInitNative()V
.end method
