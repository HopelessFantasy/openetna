.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    }
.end annotation


# static fields
.field private static final ANDROID_SOCKET_ENV:Ljava/lang/String; = "ANDROID_SOCKET_zygote"

.field static final GC_LOOP_COUNT:I = 0xa

.field private static final LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field private static final PRELOADED_CLASSES:Ljava/lang/String; = "preloaded-classes"

.field private static final PRELOAD_GC_THRESHOLD:I = 0xc350

.field private static final PRELOAD_RESOURCES:Z = true

.field private static final ROOT_GID:I = 0x0

.field private static final ROOT_UID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final UNPRIVILEGED_GID:I = 0x270f

.field private static final UNPRIVILEGED_UID:I = 0x270f

.field private static final ZYGOTE_FORK_MODE:Z

.field private static mResources:Landroid/content/res/Resources;

.field private static sServerSocket:Landroid/net/LocalServerSocket;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    return-void
.end method

.method private static acceptCommandPeer()Lcom/android/internal/os/ZygoteConnection;
    .registers 3

    .prologue
    .line 177
    :try_start_0
    new-instance v1, Lcom/android/internal/os/ZygoteConnection;

    sget-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v1

    .line 178
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 179
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IOException during accept()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static native capgetPermitted(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native closeDescriptor(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static closeServerSocket()V
    .registers 3

    .prologue
    .line 190
    :try_start_0
    sget-object v1, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v1, :cond_9

    .line 191
    sget-object v1, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_d

    .line 197
    :cond_9
    :goto_9
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    .line 198
    return-void

    .line 193
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 194
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Zygote:  error closing sockets"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method static native createFileDescriptor(I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static gc()V
    .registers 1

    .prologue
    .line 427
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 432
    .local v0, runtime:Ldalvik/system/VMRuntime;
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->gcSoftReferences()V

    .line 433
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 434
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->gcSoftReferences()V

    .line 435
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 436
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->gcSoftReferences()V

    .line 437
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 438
    return-void
.end method

.method static native getpgid(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .registers 6
    .parameter "parsedArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    const-wide/32 v3, 0x2000000

    .line 450
    iget v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    if-eqz v1, :cond_24

    .line 455
    iget v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_13

    iget v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_1d

    .line 456
    :cond_13
    iget-wide v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    .line 457
    iget-wide v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    .line 460
    :cond_1d
    :try_start_1d
    iget-wide v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    iget-wide v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/os/ZygoteInit;->setCapabilities(JJ)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_24} :catch_2d

    .line 467
    :cond_24
    :goto_24
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    .line 473
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/os/RuntimeInit;->zygoteInit([Ljava/lang/String;)V

    .line 475
    return-void

    .line 462
    :catch_2d
    move-exception v1

    move-object v0, v1

    .line 463
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Error setting capabilities"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method

.method static invokeStaticMain(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11
    .parameter "loader"
    .parameter "className"
    .parameter "argv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_3b

    move-result-object v0

    .line 121
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_4
    const-string v4, "main"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_11} :catch_55
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_11} :catch_70

    move-result-object v2

    .line 130
    .local v2, m:Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 131
    .local v3, modifiers:I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_8b

    .line 132
    :cond_22
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Main method is not public and static on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 113
    .end local v0           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #m:Ljava/lang/reflect/Method;
    .end local v3           #modifiers:I
    :catch_3b
    move-exception v1

    .line 114
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing class when invoking static main "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 122
    .end local v1           #ex:Ljava/lang/ClassNotFoundException;
    .restart local v0       #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_55
    move-exception v4

    move-object v1, v4

    .line 123
    .local v1, ex:Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing static main on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 125
    .end local v1           #ex:Ljava/lang/NoSuchMethodException;
    :catch_70
    move-exception v4

    move-object v1, v4

    .line 126
    .local v1, ex:Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem getting static main on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 142
    .end local v1           #ex:Ljava/lang/SecurityException;
    .restart local v2       #m:Ljava/lang/reflect/Method;
    .restart local v3       #modifiers:I
    :cond_8b
    new-instance v4, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;

    invoke-direct {v4, v2, p2}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/String;)V

    throw v4
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7
    .parameter "argv"

    .prologue
    const-string v5, "Zygote"

    .line 528
    :try_start_2
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->registerZygoteSocket()V

    .line 529
    const/16 v2, 0xbcc

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 531
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    .line 532
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResources()V

    .line 533
    const/16 v2, 0xbd6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 537
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gc()V

    .line 540
    array-length v2, p0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_32

    .line 541
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ZygoteInit.main expects two arguments"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2c
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_2 .. :try_end_2c} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2c} :catch_4e

    .line 558
    :catch_2c
    move-exception v2

    move-object v0, v2

    .line 559
    .local v0, caller:Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->run()V

    .line 565
    .end local v0           #caller:Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    :goto_31
    return-void

    .line 545
    :cond_32
    const/4 v2, 0x1

    :try_start_33
    aget-object v2, p0, v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 546
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->startSystemServer()Z

    .line 549
    :cond_40
    const-string v2, "Zygote"

    const-string v3, "Accepting command socket connections"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->runSelectLoopMode()V

    .line 557
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V
    :try_end_4d
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_33 .. :try_end_4d} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_4d} :catch_4e

    goto :goto_31

    .line 560
    :catch_4e
    move-exception v2

    move-object v1, v2

    .line 561
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v2, "Zygote"

    const-string v2, "Zygote died with exception"

    invoke-static {v5, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    .line 563
    throw v1
.end method

.method private static preloadClasses()V
    .registers 16

    .prologue
    const/16 v14, 0x270f

    const/4 v15, 0x0

    const-string v13, "Zygote"

    .line 234
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    .line 236
    .local v7, runtime:Ldalvik/system/VMRuntime;
    const-class v11, Lcom/android/internal/os/ZygoteInit;

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    const-string v12, "preloaded-classes"

    invoke-virtual {v11, v12}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 238
    .local v4, is:Ljava/io/InputStream;
    if-nez v4, :cond_1f

    .line 239
    const-string v11, "Zygote"

    const-string v11, "Couldn\'t find preloaded-classes."

    invoke-static {v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_1e
    return-void

    .line 241
    :cond_1f
    const-string v11, "Zygote"

    const-string v11, "Preloading classes..."

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 245
    .local v8, startTime:J
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    .line 246
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 250
    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v2

    .line 251
    .local v2, defaultUtilization:F
    const v11, 0x3f4ccccd

    invoke-virtual {v7, v11}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 254
    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->gcSoftReferences()V

    .line 255
    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 256
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 259
    :try_start_43
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v12, 0x100

    invoke-direct {v0, v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 262
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 264
    .local v1, count:I
    const/4 v6, 0x0

    .line 265
    .local v6, missingClasses:Ljava/lang/String;
    :cond_51
    :goto_51
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_112

    .line 267
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 268
    const-string v11, "#"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_51

    const-string v11, ""

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_68
    .catchall {:try_start_43 .. :try_end_68} :catchall_fe
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_68} :catch_e0

    move-result v11

    if-nez v11, :cond_51

    .line 276
    :try_start_6b
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 277
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v11

    const v12, 0xc350

    if-le v11, v12, :cond_80

    .line 282
    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->gcSoftReferences()V

    .line 283
    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 284
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V
    :try_end_80
    .catchall {:try_start_6b .. :try_end_80} :catchall_fe
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6b .. :try_end_80} :catch_83
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_80} :catch_b9
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_80} :catch_e0

    .line 286
    :cond_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 287
    :catch_83
    move-exception v11

    move-object v3, v11

    .line 288
    .local v3, e:Ljava/lang/ClassNotFoundException;
    :try_start_85
    const-string v11, "Zygote"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Class not found for preloading: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    if-nez v6, :cond_a1

    .line 290
    move-object v6, v5

    goto :goto_51

    .line 292
    :cond_a1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_51

    .line 294
    .end local v3           #e:Ljava/lang/ClassNotFoundException;
    :catch_b9
    move-exception v11

    move-object v10, v11

    .line 295
    .local v10, t:Ljava/lang/Throwable;
    const-string v11, "Zygote"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error preloading "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    instance-of v11, v10, Ljava/lang/Error;

    if-eqz v11, :cond_f7

    .line 297
    check-cast v10, Ljava/lang/Error;

    .end local v10           #t:Ljava/lang/Throwable;
    throw v10
    :try_end_e0
    .catchall {:try_start_85 .. :try_end_e0} :catchall_fe
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_e0} :catch_e0

    .line 315
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #count:I
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #missingClasses:Ljava/lang/String;
    :catch_e0
    move-exception v11

    move-object v3, v11

    .line 316
    .local v3, e:Ljava/io/IOException;
    :try_start_e2
    const-string v11, "Zygote"

    const-string v12, "Error reading preloaded-classes."

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e9
    .catchall {:try_start_e2 .. :try_end_e9} :catchall_fe

    .line 319
    invoke-virtual {v7, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 321
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 324
    invoke-static {v15}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 325
    .end local v3           #e:Ljava/io/IOException;
    :goto_f2
    invoke-static {v15}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    goto/16 :goto_1e

    .line 299
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #count:I
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #missingClasses:Ljava/lang/String;
    .restart local v10       #t:Ljava/lang/Throwable;
    :cond_f7
    :try_start_f7
    instance-of v11, v10, Ljava/lang/RuntimeException;

    if-eqz v11, :cond_10c

    .line 300
    check-cast v10, Ljava/lang/RuntimeException;

    .end local v10           #t:Ljava/lang/Throwable;
    throw v10
    :try_end_fe
    .catchall {:try_start_f7 .. :try_end_fe} :catchall_fe
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fe} :catch_e0

    .line 319
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #count:I
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #missingClasses:Ljava/lang/String;
    :catchall_fe
    move-exception v11

    invoke-virtual {v7, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 321
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 324
    invoke-static {v15}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 325
    invoke-static {v15}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    .line 319
    throw v11

    .line 302
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #count:I
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #missingClasses:Ljava/lang/String;
    .restart local v10       #t:Ljava/lang/Throwable;
    :cond_10c
    :try_start_10c
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 306
    .end local v10           #t:Ljava/lang/Throwable;
    :cond_112
    if-eqz v6, :cond_141

    const-string v11, "1"

    const-string v12, "persist.service.adb.enable"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_141

    .line 308
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Missing class(es) for preloading, update preloaded-classes ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 313
    :cond_141
    const-string v11, "Zygote"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "...preloaded "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " classes in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v8

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16e
    .catchall {:try_start_10c .. :try_end_16e} :catchall_fe
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_16e} :catch_e0

    .line 319
    invoke-virtual {v7, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 321
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 324
    invoke-static {v15}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    goto/16 :goto_f2
.end method

.method private static preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .registers 7
    .parameter "runtime"
    .parameter "ar"

    .prologue
    .line 372
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 373
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_28

    .line 374
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v3

    const v4, 0xc350

    if-le v3, v4, :cond_19

    .line 378
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->gcSoftReferences()V

    .line 379
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 380
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 382
    :cond_19
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 386
    .local v2, id:I
    if-eqz v2, :cond_25

    .line 387
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 373
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 390
    .end local v2           #id:I
    :cond_28
    return v0
.end method

.method private static preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .registers 9
    .parameter "runtime"
    .parameter "ar"

    .prologue
    .line 395
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 396
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v0, :cond_63

    .line 397
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v4

    const v5, 0xc350

    if-le v4, v5, :cond_19

    .line 401
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->gcSoftReferences()V

    .line 402
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 403
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 405
    :cond_19
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 409
    .local v3, id:I
    if-eqz v3, :cond_60

    .line 410
    sget-object v4, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 411
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    const v5, -0x40000001

    and-int/2addr v4, v5

    if-eqz v4, :cond_60

    .line 412
    const-string v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preloaded drawable resource #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") that varies with configuration!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 418
    .end local v3           #id:I
    :cond_63
    return v0
.end method

.method private static preloadResources()V
    .registers 10

    .prologue
    const-string v6, "ms."

    const-string v6, "...preloaded "

    const-string v6, " resources in "

    const-string v6, "Zygote"

    .line 338
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    .line 340
    .local v3, runtime:Ldalvik/system/VMRuntime;
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 342
    :try_start_f
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->gcSoftReferences()V

    .line 343
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 344
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    sput-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 345
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->startPreloading()V

    .line 347
    const-string v6, "Zygote"

    const-string v7, "Preloading resources..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 350
    .local v4, startTime:J
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v7, 0x1070005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 352
    .local v1, ar:Landroid/content/res/TypedArray;
    invoke-static {v3, v1}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 353
    .local v0, N:I
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 357
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v7, 0x1070006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 359
    invoke-static {v3, v1}, Lcom/android/internal/os/ZygoteInit;->preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 360
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_a8
    .catchall {:try_start_f .. :try_end_a8} :catchall_b6
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_a8} :catch_ac

    .line 367
    .end local v0           #N:I
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v4           #startTime:J
    :goto_a8
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 369
    return-void

    .line 364
    :catch_ac
    move-exception v6

    move-object v2, v6

    .line 365
    .local v2, e:Ljava/lang/RuntimeException;
    :try_start_ae
    const-string v6, "Zygote"

    const-string v7, "Failure preloading resources"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b5
    .catchall {:try_start_ae .. :try_end_b5} :catchall_b6

    goto :goto_a8

    .line 367
    .end local v2           #e:Ljava/lang/RuntimeException;
    :catchall_b6
    move-exception v6

    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    throw v6
.end method

.method private static registerZygoteSocket()V
    .registers 6

    .prologue
    .line 151
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    if-nez v3, :cond_19

    .line 154
    :try_start_4
    const-string v3, "ANDROID_SOCKET_zygote"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, env:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_d} :catch_1a

    move-result v2

    .line 162
    .local v2, fileDesc:I
    :try_start_e
    new-instance v3, Landroid/net/LocalServerSocket;

    invoke-static {v2}, Lcom/android/internal/os/ZygoteInit;->createFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    sput-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_19} :catch_24

    .line 169
    .end local v0           #env:Ljava/lang/String;
    .end local v2           #fileDesc:I
    :cond_19
    return-void

    .line 156
    :catch_1a
    move-exception v3

    move-object v1, v3

    .line 157
    .local v1, ex:Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ANDROID_SOCKET_zygote unset or invalid"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 164
    .end local v1           #ex:Ljava/lang/RuntimeException;
    .restart local v0       #env:Ljava/lang/String;
    .restart local v2       #fileDesc:I
    :catch_24
    move-exception v3

    move-object v1, v3

    .line 165
    .local v1, ex:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error binding to local socket \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method static native reopenStdio(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static runForkMode()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 577
    :goto_1
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->acceptCommandPeer()Lcom/android/internal/os/ZygoteConnection;

    move-result-object v1

    .line 581
    .local v1, peer:Lcom/android/internal/os/ZygoteConnection;
    invoke-static {}, Ldalvik/system/Zygote;->fork()I

    move-result v2

    .line 583
    .local v2, pid:I
    if-nez v2, :cond_24

    .line 588
    :try_start_b
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->close()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_20
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_16

    .line 592
    :goto_10
    sput-object v5, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    .line 595
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteConnection;->run()V

    .line 603
    return-void

    .line 589
    :catch_16
    move-exception v3

    move-object v0, v3

    .line 590
    .local v0, ex:Ljava/io/IOException;
    :try_start_18
    const-string v3, "Zygote"

    const-string v4, "Zygote Child: error closing sockets"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_20

    goto :goto_10

    .line 592
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_20
    move-exception v3

    sput-object v5, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    throw v3

    .line 597
    :cond_24
    if-lez v2, :cond_2a

    .line 598
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    goto :goto_1

    .line 600
    :cond_2a
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error invoking fork()"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static runSelectLoopMode()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    const-string v11, "Error in select()"

    .line 614
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v4, fds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v8, peers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    const/4 v9, 0x4

    new-array v3, v9, [Ljava/io/FileDescriptor;

    .line 618
    .local v3, fdArray:[Ljava/io/FileDescriptor;
    sget-object v9, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v9}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    const/16 v6, 0xa

    .line 634
    .local v6, loopCount:I
    :cond_1e
    :goto_1e
    if-gtz v6, :cond_3b

    .line 635
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gc()V

    .line 636
    const/16 v6, 0xa

    .line 643
    :goto_25
    :try_start_25
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [Ljava/io/FileDescriptor;

    move-object v3, v0

    .line 644
    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->selectReadable([Ljava/io/FileDescriptor;)I
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_30} :catch_3e

    move-result v5

    .line 649
    .local v5, index:I
    if-gez v5, :cond_48

    .line 650
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Error in select()"

    invoke-direct {v9, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 638
    .end local v5           #index:I
    :cond_3b
    add-int/lit8 v6, v6, -0x1

    goto :goto_25

    .line 645
    :catch_3e
    move-exception v9

    move-object v2, v9

    .line 646
    .local v2, ex:Ljava/io/IOException;
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Error in select()"

    invoke-direct {v9, v11, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 651
    .end local v2           #ex:Ljava/io/IOException;
    .restart local v5       #index:I
    :cond_48
    if-nez v5, :cond_59

    .line 652
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->acceptCommandPeer()Lcom/android/internal/os/ZygoteConnection;

    move-result-object v7

    .line 653
    .local v7, newPeer:Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    invoke-virtual {v7}, Lcom/android/internal/os/ZygoteConnection;->getFileDesciptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 657
    .end local v7           #newPeer:Lcom/android/internal/os/ZygoteConnection;
    :cond_59
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/ZygoteConnection;

    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteConnection;->runOnce()Z

    move-result v1

    .line 659
    .local v1, done:Z
    if-eqz v1, :cond_1e

    .line 660
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 661
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1e
.end method

.method static native selectReadable([Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native setCapabilities(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native setCloseOnExec(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static setEffectiveGroup(I)V
    .registers 5
    .parameter "gid"

    .prologue
    .line 220
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/android/internal/os/ZygoteInit;->setregid(II)I

    move-result v0

    .line 221
    .local v0, errno:I
    if-eqz v0, :cond_1f

    .line 222
    const-string v1, "Zygote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setregid() failed. errno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_1f
    return-void
.end method

.method private static setEffectiveUser(I)V
    .registers 5
    .parameter "uid"

    .prologue
    .line 210
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/android/internal/os/ZygoteInit;->setreuid(II)I

    move-result v0

    .line 211
    .local v0, errno:I
    if-eqz v0, :cond_1f

    .line 212
    const-string v1, "Zygote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setreuid() failed. errno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_1f
    return-void
.end method

.method static native setpgid(II)I
.end method

.method static native setregid(II)I
.end method

.method static native setreuid(II)I
.end method

.method private static startSystemServer()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 483
    const/4 v6, 0x7

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "--setuid=1000"

    aput-object v7, v0, v6

    const-string v6, "--setgid=1000"

    aput-object v6, v0, v9

    const/4 v6, 0x2

    const-string v7, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,3001,3002,3003,4005"

    aput-object v7, v0, v6

    const/4 v6, 0x3

    const-string v7, "--capabilities=130104352,130104352"

    aput-object v7, v0, v6

    const/4 v6, 0x4

    const-string v7, "--runtime-init"

    aput-object v7, v0, v6

    const/4 v6, 0x5

    const-string v7, "--nice-name=system_server"

    aput-object v7, v0, v6

    const/4 v6, 0x6

    const-string v7, "com.android.server.SystemServer"

    aput-object v7, v0, v6

    .line 494
    .local v0, args:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 499
    .local v3, parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_27
    new-instance v4, Lcom/android/internal/os/ZygoteConnection$Arguments;

    invoke-direct {v4, v0}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_2c} :catch_51

    .line 506
    .end local v3           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v4, parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_2c
    iget v1, v4, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 507
    .local v1, debugFlags:I
    const-string v6, "1"

    const-string v7, "ro.debuggable"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 508
    or-int/lit8 v1, v1, 0x1

    .line 511
    :cond_3e
    iget v6, v4, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iget v7, v4, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    iget-object v8, v4, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    const/4 v0, 0x0

    check-cast v0, [[I

    .end local v0           #args:[Ljava/lang/String;
    invoke-static {v6, v7, v8, v1, v0}, Ldalvik/system/Zygote;->forkSystemServer(II[II[[I)I
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_4a} :catch_59

    move-result v5

    .line 519
    .local v5, pid:I
    if-nez v5, :cond_50

    .line 520
    invoke-static {v4}, Lcom/android/internal/os/ZygoteInit;->handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 523
    :cond_50
    return v9

    .line 514
    .end local v1           #debugFlags:I
    .end local v4           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v5           #pid:I
    .restart local v0       #args:[Ljava/lang/String;
    .restart local v3       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_51
    move-exception v6

    move-object v2, v6

    .line 515
    .end local v0           #args:[Ljava/lang/String;
    .local v2, ex:Ljava/lang/IllegalArgumentException;
    :goto_53
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 514
    .end local v2           #ex:Ljava/lang/IllegalArgumentException;
    .end local v3           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v4       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_59
    move-exception v6

    move-object v2, v6

    move-object v3, v4

    .end local v4           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v3       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_53
.end method
