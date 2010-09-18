.class public Ljava/sql/DriverManager;
.super Ljava/lang/Object;
.source "DriverManager.java"


# static fields
.field private static final logPermission:Ljava/sql/SQLPermission;

.field private static loginTimeout:I

.field private static final theDriverSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/sql/Driver;",
            ">;"
        }
    .end annotation
.end field

.field private static thePrintStream:Ljava/io/PrintStream;

.field private static thePrintWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x0

    sput v0, Ljava/sql/DriverManager;->loginTimeout:I

    .line 60
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Ljava/sql/DriverManager;->theDriverSet:Ljava/util/Set;

    .line 63
    new-instance v0, Ljava/sql/SQLPermission;

    const-string v1, "setLog"

    invoke-direct {v0, v1}, Ljava/sql/SQLPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/sql/DriverManager;->logPermission:Ljava/sql/SQLPermission;

    .line 69
    invoke-static {}, Ljava/sql/DriverManager;->loadInitialDrivers()V

    .line 70
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method private static checkLogSecurity()V
    .registers 2

    .prologue
    .line 426
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 427
    .local v0, securityManager:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 429
    sget-object v1, Ljava/sql/DriverManager;->logPermission:Ljava/sql/SQLPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 431
    :cond_b
    return-void
.end method

.method public static deregisterDriver(Ljava/sql/Driver;)V
    .registers 4
    .parameter "driver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 125
    if-nez p0, :cond_3

    .line 139
    :goto_2
    return-void

    .line 129
    :cond_3
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 132
    .local v0, callerClassLoader:Ljava/lang/ClassLoader;
    invoke-static {p0, v0}, Ljava/sql/DriverManager;->isClassFromClassLoader(Ljava/lang/Object;Ljava/lang/ClassLoader;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 134
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "sql.1"

    invoke-static {v2}, Lorg/apache/harmony/sql/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_19
    sget-object v1, Ljava/sql/DriverManager;->theDriverSet:Ljava/util/Set;

    monitor-enter v1

    .line 137
    :try_start_1c
    sget-object v2, Ljava/sql/DriverManager;->theDriverSet:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 138
    monitor-exit v1

    goto :goto_2

    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_23

    throw v2
.end method

.method public static getConnection(Ljava/lang/String;)Ljava/sql/Connection;
    .registers 2
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-static {p0, v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .registers 5
    .parameter "url"
    .parameter "user"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 222
    .local v0, theProperties:Ljava/util/Properties;
    if-eqz p1, :cond_c

    .line 223
    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 225
    :cond_c
    if-eqz p2, :cond_13

    .line 226
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 228
    :cond_13
    invoke-static {p0, v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v1

    return-object v1
.end method

.method public static getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .registers 8
    .parameter "url"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 180
    const-string v1, "08001"

    .line 181
    .local v1, sqlState:Ljava/lang/String;
    if-nez p0, :cond_10

    .line 183
    new-instance v4, Ljava/sql/SQLException;

    const-string v5, "sql.5"

    invoke-static {v5}, Lorg/apache/harmony/sql/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 185
    :cond_10
    sget-object v4, Ljava/sql/DriverManager;->theDriverSet:Ljava/util/Set;

    monitor-enter v4

    .line 191
    :try_start_13
    sget-object v5, Ljava/sql/DriverManager;->theDriverSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Driver;

    .line 192
    .local v3, theDriver:Ljava/sql/Driver;
    invoke-interface {v3, p0, p1}, Ljava/sql/Driver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v2

    .line 193
    .local v2, theConnection:Ljava/sql/Connection;
    if-eqz v2, :cond_19

    .line 194
    monitor-exit v4

    return-object v2

    .line 197
    .end local v2           #theConnection:Ljava/sql/Connection;
    .end local v3           #theDriver:Ljava/sql/Driver;
    :cond_2d
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_3a

    .line 200
    new-instance v4, Ljava/sql/SQLException;

    const-string v5, "sql.6"

    invoke-static {v5}, Lorg/apache/harmony/sql/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 197
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_3a
    move-exception v5

    :try_start_3b
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v5
.end method

.method public static getDriver(Ljava/lang/String;)Ljava/sql/Driver;
    .registers 7
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 246
    .local v0, callerClassLoader:Ljava/lang/ClassLoader;
    sget-object v3, Ljava/sql/DriverManager;->theDriverSet:Ljava/util/Set;

    monitor-enter v3

    .line 252
    :try_start_7
    sget-object v4, Ljava/sql/DriverManager;->theDriverSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 253
    .local v2, theIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/sql/Driver;>;"
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 254
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Driver;

    .line 255
    .local v1, theDriver:Ljava/sql/Driver;
    invoke-interface {v1, p0}, Ljava/sql/Driver;->acceptsURL(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v1, v0}, Ljava/sql/DriverManager;->isClassFromClassLoader(Ljava/lang/Object;Ljava/lang/ClassLoader;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 258
    monitor-exit v3

    return-object v1

    .line 261
    .end local v1           #theDriver:Ljava/sql/Driver;
    :cond_27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_36

    .line 266
    new-instance v3, Ljava/sql/SQLException;

    const-string v4, "sql.6"

    invoke-static {v4}, Lorg/apache/harmony/sql/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "08001"

    invoke-direct {v3, v4, v5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 261
    .end local v2           #theIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/sql/Driver;>;"
    :catchall_36
    move-exception v4

    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v4
.end method

.method public static getDrivers()Ljava/util/Enumeration;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/sql/Driver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 285
    .local v0, callerClassLoader:Ljava/lang/ClassLoader;
    sget-object v4, Ljava/sql/DriverManager;->theDriverSet:Ljava/util/Set;

    monitor-enter v4

    .line 290
    :try_start_7
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 291
    .local v3, theVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/sql/Driver;>;"
    sget-object v5, Ljava/sql/DriverManager;->theDriverSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 292
    .local v2, theIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/sql/Driver;>;"
    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 293
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Driver;

    .line 294
    .local v1, theDriver:Ljava/sql/Driver;
    invoke-static {v1, v0}, Ljava/sql/DriverManager;->isClassFromClassLoader(Ljava/lang/Object;Ljava/lang/ClassLoader;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 296
    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 300
    .end local v1           #theDriver:Ljava/sql/Driver;
    .end local v2           #theIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/sql/Driver;>;"
    .end local v3           #theVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/sql/Driver;>;"
    :catchall_28
    move-exception v5

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v5

    .line 299
    .restart local v2       #theIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/sql/Driver;>;"
    .restart local v3       #theVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/sql/Driver;>;"
    :cond_2b
    :try_start_2b
    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_28

    return-object v5
.end method

.method public static getLogStream()Ljava/io/PrintStream;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 323
    sget-object v0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    return-object v0
.end method

.method public static getLogWriter()Ljava/io/PrintWriter;
    .registers 1

    .prologue
    .line 334
    sget-object v0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public static getLoginTimeout()I
    .registers 1

    .prologue
    .line 310
    sget v0, Ljava/sql/DriverManager;->loginTimeout:I

    return v0
.end method

.method private static isClassFromClassLoader(Ljava/lang/Object;Ljava/lang/ClassLoader;)Z
    .registers 8
    .parameter "theObject"
    .parameter "theClassLoader"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 446
    if-eqz p0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move v2, v4

    .line 461
    :goto_7
    return v2

    .line 450
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 453
    .local v1, objectClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_c
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_14} :catch_19

    move-result-object v0

    .line 455
    .local v0, checkClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-ne v0, v1, :cond_1a

    move v2, v5

    .line 456
    goto :goto_7

    .line 458
    .end local v0           #checkClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_19
    move-exception v2

    :cond_1a
    move v2, v4

    .line 461
    goto :goto_7
.end method

.method private static loadInitialDrivers()V
    .registers 8

    .prologue
    .line 77
    const-string v6, "jdbc.drivers"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, theDriverList:Ljava/lang/String;
    if-nez v4, :cond_a

    .line 98
    :cond_9
    return-void

    .line 86
    :cond_a
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, theDriverNames:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_13
    if-ge v2, v3, :cond_9

    aget-object v1, v0, v2

    .line 91
    .local v1, element:Ljava/lang/String;
    const/4 v6, 0x1

    :try_start_18
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v1, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1f} :catch_22

    .line 88
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 94
    :catch_22
    move-exception v6

    goto :goto_1f
.end method

.method public static println(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 346
    sget-object v0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_f

    .line 347
    sget-object v0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    sget-object v0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 357
    :cond_e
    :goto_e
    return-void

    .line 349
    :cond_f
    sget-object v0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    if-eqz v0, :cond_e

    .line 350
    sget-object v0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 351
    sget-object v0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    goto :goto_e
.end method

.method public static registerDriver(Ljava/sql/Driver;)V
    .registers 3
    .parameter "driver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 373
    if-nez p0, :cond_8

    .line 374
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 376
    :cond_8
    sget-object v0, Ljava/sql/DriverManager;->theDriverSet:Ljava/util/Set;

    monitor-enter v0

    .line 377
    :try_start_b
    sget-object v1, Ljava/sql/DriverManager;->theDriverSet:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 378
    monitor-exit v0

    .line 379
    return-void

    .line 378
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static setLogStream(Ljava/io/PrintStream;)V
    .registers 1
    .parameter "out"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 404
    invoke-static {}, Ljava/sql/DriverManager;->checkLogSecurity()V

    .line 405
    sput-object p0, Ljava/sql/DriverManager;->thePrintStream:Ljava/io/PrintStream;

    .line 406
    return-void
.end method

.method public static setLogWriter(Ljava/io/PrintWriter;)V
    .registers 1
    .parameter "out"

    .prologue
    .line 417
    invoke-static {}, Ljava/sql/DriverManager;->checkLogSecurity()V

    .line 418
    sput-object p0, Ljava/sql/DriverManager;->thePrintWriter:Ljava/io/PrintWriter;

    .line 419
    return-void
.end method

.method public static setLoginTimeout(I)V
    .registers 1
    .parameter "seconds"

    .prologue
    .line 389
    sput p0, Ljava/sql/DriverManager;->loginTimeout:I

    .line 390
    return-void
.end method
