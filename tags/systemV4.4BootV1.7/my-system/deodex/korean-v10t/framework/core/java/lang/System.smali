.class public final Ljava/lang/System;
.super Ljava/lang/Object;
.source "System.java"


# static fields
.field public static final err:Ljava/io/PrintStream;

.field public static final in:Ljava/io/InputStream;

.field public static final out:Ljava/io/PrintStream;

.field private static securityManager:Ljava/lang/SecurityManager;

.field private static systemProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 105
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 106
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 107
    new-instance v0, Ljava/io/FileInputStream;

    sget-object v1, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    sput-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 108
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    return-void
.end method

.method public static native arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
.end method

.method public static clearProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"

    .prologue
    .line 484
    if-nez p0, :cond_8

    .line 485
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 487
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    .line 488
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 491
    :cond_14
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 492
    .local v0, secMgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_24

    .line 493
    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "write"

    invoke-direct {v1, p0, v2}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 495
    :cond_24
    invoke-static {}, Ljava/lang/System;->internalGetProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static native currentTimeMillis()J
.end method

.method public static exit(I)V
    .registers 2
    .parameter "code"

    .prologue
    .line 235
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exit(I)V

    .line 236
    return-void
.end method

.method public static gc()V
    .registers 1

    .prologue
    .line 246
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 247
    return-void
.end method

.method private static native getEnvByIndex(I)Ljava/lang/String;
.end method

.method private static native getEnvByName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getProperties()Ljava/util/Properties;
    .registers 2

    .prologue
    .line 352
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 353
    .local v0, secMgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 354
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkPropertiesAccess()V

    .line 357
    :cond_9
    invoke-static {}, Ljava/lang/System;->internalGetProperties()Ljava/util/Properties;

    move-result-object v1

    return-object v1
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "prop"

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "prop"
    .parameter "defaultValue"

    .prologue
    .line 432
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    .line 433
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 435
    :cond_c
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 436
    .local v0, secMgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_15

    .line 437
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkPropertyAccess(Ljava/lang/String;)V

    .line 440
    :cond_15
    invoke-static {}, Ljava/lang/System;->internalGetProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSecurityManager()Ljava/lang/SecurityManager;
    .registers 1

    .prologue
    .line 505
    sget-object v0, Ljava/lang/System;->securityManager:Ljava/lang/SecurityManager;

    return-object v0
.end method

.method public static getenv(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "name"

    .prologue
    .line 265
    if-nez p0, :cond_8

    .line 266
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 268
    :cond_8
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 269
    .local v0, secMgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_29

    .line 270
    new-instance v1, Ljava/lang/RuntimePermission;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getenv."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 273
    :cond_29
    invoke-static {p0}, Ljava/lang/System;->getEnvByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getenv()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v5

    .line 295
    .local v5, secMgr:Ljava/lang/SecurityManager;
    if-eqz v5, :cond_10

    .line 296
    new-instance v6, Ljava/lang/RuntimePermission;

    const-string v7, "getenv.*"

    invoke-direct {v6, v7}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 299
    :cond_10
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 301
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 302
    .local v1, index:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    invoke-static {v1}, Ljava/lang/System;->getEnvByIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, entry:Ljava/lang/String;
    :goto_1c
    if-eqz v0, :cond_3d

    .line 304
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 305
    .local v4, pos:I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_35

    .line 306
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_35
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    invoke-static {v2}, Ljava/lang/System;->getEnvByIndex(I)Ljava/lang/String;

    move-result-object v0

    move v2, v1

    .line 310
    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_1c

    .line 312
    .end local v4           #pos:I
    :cond_3d
    new-instance v6, Ljava/lang/SystemEnvironment;

    invoke-direct {v6, v3}, Ljava/lang/SystemEnvironment;-><init>(Ljava/util/Map;)V

    return-object v6
.end method

.method public static native identityHashCode(Ljava/lang/Object;)I
.end method

.method public static inheritedChannel()Ljava/nio/channels/Channel;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->inheritedChannel()Ljava/nio/channels/Channel;

    move-result-object v0

    return-object v0
.end method

.method static internalGetProperties()Ljava/util/Properties;
    .registers 2

    .prologue
    .line 367
    sget-object v1, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    if-nez v1, :cond_11

    .line 368
    new-instance v0, Ljava/lang/SystemProperties;

    invoke-direct {v0}, Ljava/lang/SystemProperties;-><init>()V

    .line 369
    .local v0, props:Ljava/lang/SystemProperties;
    invoke-virtual {v0}, Ljava/lang/SystemProperties;->preInit()V

    .line 370
    invoke-virtual {v0}, Ljava/lang/SystemProperties;->postInit()V

    .line 371
    sput-object v0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    .line 374
    .end local v0           #props:Ljava/lang/SystemProperties;
    :cond_11
    sget-object v1, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    return-object v1
.end method

.method public static load(Ljava/lang/String;)V
    .registers 4
    .parameter "pathName"

    .prologue
    .line 532
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 533
    .local v0, smngr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 534
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkLink(Ljava/lang/String;)V

    .line 536
    :cond_9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/Runtime;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 537
    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .registers 4
    .parameter "libName"

    .prologue
    .line 553
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 554
    .local v0, smngr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 555
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkLink(Ljava/lang/String;)V

    .line 557
    :cond_9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/Runtime;->loadLibrary(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 558
    return-void
.end method

.method public static native mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nanoTime()J
.end method

.method public static runFinalization()V
    .registers 1

    .prologue
    .line 567
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 568
    return-void
.end method

.method public static runFinalizersOnExit(Z)V
    .registers 1
    .parameter "flag"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 583
    invoke-static {p0}, Ljava/lang/Runtime;->runFinalizersOnExit(Z)V

    .line 584
    return-void
.end method

.method public static setErr(Ljava/io/PrintStream;)V
    .registers 4
    .parameter "newErr"

    .prologue
    .line 164
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 165
    .local v0, secMgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 166
    sget-object v1, Ljava/lang/RuntimePermission;->permissionToSetIO:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 168
    :cond_b
    const-string v1, "err"

    const-string v2, "Ljava/io/PrintStream;"

    invoke-static {v1, v2, p0}, Ljava/lang/System;->setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method private static native setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public static setIn(Ljava/io/InputStream;)V
    .registers 4
    .parameter "newIn"

    .prologue
    .line 123
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 124
    .local v0, secMgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 125
    sget-object v1, Ljava/lang/RuntimePermission;->permissionToSetIO:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 127
    :cond_b
    const-string v1, "in"

    const-string v2, "Ljava/io/InputStream;"

    invoke-static {v1, v2, p0}, Ljava/lang/System;->setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public static setOut(Ljava/io/PrintStream;)V
    .registers 4
    .parameter "newOut"

    .prologue
    .line 143
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 144
    .local v0, secMgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 145
    sget-object v1, Ljava/lang/RuntimePermission;->permissionToSetIO:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 147
    :cond_b
    const-string v1, "out"

    const-string v2, "Ljava/io/PrintStream;"

    invoke-static {v1, v2, p0}, Ljava/lang/System;->setFieldImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public static setProperties(Ljava/util/Properties;)V
    .registers 2
    .parameter "p"

    .prologue
    .line 597
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 598
    .local v0, secMgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 599
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkPropertiesAccess()V

    .line 602
    :cond_9
    sput-object p0, Ljava/lang/System;->systemProperties:Ljava/util/Properties;

    .line 603
    return-void
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "prop"
    .parameter "value"

    .prologue
    .line 458
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    .line 459
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 461
    :cond_c
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 462
    .local v0, secMgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1c

    .line 463
    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "write"

    invoke-direct {v1, p0, v2}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 465
    :cond_1c
    invoke-static {}, Ljava/lang/System;->internalGetProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static setSecurityManager(Ljava/lang/SecurityManager;)V
    .registers 4
    .parameter "sm"

    .prologue
    .line 619
    sget-object v0, Ljava/lang/System;->securityManager:Ljava/lang/SecurityManager;

    if-eqz v0, :cond_10

    .line 620
    sget-object v0, Ljava/lang/System;->securityManager:Ljava/lang/SecurityManager;

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "setSecurityManager"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 623
    :cond_10
    if-eqz p0, :cond_21

    .line 628
    :try_start_12
    new-instance v0, Ljava/security/SecurityPermission;

    const-string v1, "getProperty.package.access"

    invoke-direct {v0, v1}, Ljava/security/SecurityPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_26

    .line 632
    :goto_1c
    :try_start_1c
    const-string v0, "java.lang"

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_24

    .line 637
    :cond_21
    :goto_21
    sput-object p0, Ljava/lang/System;->securityManager:Ljava/lang/SecurityManager;

    .line 638
    return-void

    .line 633
    :catch_24
    move-exception v0

    goto :goto_21

    .line 629
    :catch_26
    move-exception v0

    goto :goto_1c
.end method
