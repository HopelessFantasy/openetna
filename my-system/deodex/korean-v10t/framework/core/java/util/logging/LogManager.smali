.class public Ljava/util/logging/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# static fields
.field public static final LOGGING_MXBEAN_NAME:Ljava/lang/String; = "java.util.logging:type=Logging"

.field private static final lineSeparator:Ljava/lang/String;

.field static manager:Ljava/util/logging/LogManager;

.field private static final perm:Ljava/util/logging/LoggingPermission;


# instance fields
.field private listeners:Ljava/beans/PropertyChangeSupport;

.field private loggers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private props:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 154
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/util/logging/LogManager;->getPrivilegedSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/util/logging/LogManager;->lineSeparator:Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/util/logging/LoggingPermission;

    const-string v1, "control"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LoggingPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljava/util/logging/LogManager;->perm:Ljava/util/logging/LoggingPermission;

    .line 236
    new-instance v0, Ljava/util/logging/LogManager$1;

    invoke-direct {v0}, Ljava/util/logging/LogManager$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 265
    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    .line 275
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    .line 276
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/logging/LogManager;->listeners:Ljava/beans/PropertyChangeSupport;

    .line 279
    new-instance v0, Ljava/util/logging/LogManager$2;

    invoke-direct {v0, p0}, Ljava/util/logging/LogManager$2;-><init>(Ljava/util/logging/LogManager;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 290
    return-void
.end method

.method private addToFamilyTree(Ljava/util/logging/Logger;Ljava/lang/String;)V
    .registers 13
    .parameter "logger"
    .parameter "name"

    .prologue
    const/16 v9, 0x2e

    .line 352
    const/4 v5, 0x0

    .line 355
    .local v5, parent:Ljava/util/logging/Logger;
    move-object v6, p2

    .line 356
    .local v6, parentName:Ljava/lang/String;
    :cond_4
    invoke-virtual {v6, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .local v3, lastSeparator:I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_1d

    .line 357
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 358
    iget-object v7, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    invoke-virtual {v7, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #parent:Ljava/util/logging/Logger;
    check-cast v5, Ljava/util/logging/Logger;

    .line 359
    .restart local v5       #parent:Ljava/util/logging/Logger;
    if-eqz v5, :cond_74

    .line 360
    invoke-virtual {p1, v5}, Ljava/util/logging/Logger;->internalSetParent(Ljava/util/logging/Logger;)V

    .line 369
    :cond_1d
    :goto_1d
    if-nez v5, :cond_2e

    iget-object v7, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #parent:Ljava/util/logging/Logger;
    check-cast v5, Ljava/util/logging/Logger;

    .restart local v5       #parent:Ljava/util/logging/Logger;
    if-eqz v5, :cond_2e

    .line 370
    invoke-virtual {p1, v5}, Ljava/util/logging/Logger;->internalSetParent(Ljava/util/logging/Logger;)V

    .line 375
    :cond_2e
    iget-object v7, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    .line 376
    .local v0, allLoggers:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/logging/Logger;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_38
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_af

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Logger;

    .line 377
    .local v1, child:Ljava/util/logging/Logger;
    invoke-virtual {v1}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object v4

    .line 378
    .local v4, oldParent:Ljava/util/logging/Logger;
    if-ne v5, v4, :cond_38

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6b

    invoke-virtual {v1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 381
    :cond_6b
    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->setParent(Ljava/util/logging/Logger;)V

    .line 382
    if-eqz v4, :cond_38

    .line 384
    invoke-virtual {v4, v1}, Ljava/util/logging/Logger;->removeChild(Ljava/util/logging/Logger;)V

    goto :goto_38

    .line 362
    .end local v0           #allLoggers:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/logging/Logger;>;"
    .end local v1           #child:Ljava/util/logging/Logger;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #oldParent:Ljava/util/logging/Logger;
    :cond_74
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".level"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".handlers"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 364
    :cond_a6
    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    .line 365
    invoke-virtual {p1, v5}, Ljava/util/logging/Logger;->internalSetParent(Ljava/util/logging/Logger;)V

    goto/16 :goto_1d

    .line 388
    .restart local v0       #allLoggers:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/logging/Logger;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_af
    return-void
.end method

.method static getInstanceByClass(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .parameter "className"

    .prologue
    .line 502
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 504
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v3

    .line 515
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_c
    return-object v3

    .line 505
    :catch_d
    move-exception v3

    move-object v1, v3

    .line 507
    .local v1, e:Ljava/lang/Exception;
    :try_start_f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 509
    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1e} :catch_20

    move-result-object v3

    goto :goto_c

    .line 510
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_20
    move-exception v3

    move-object v2, v3

    .line 512
    .local v2, innerE:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "logging.20"

    invoke-static {v4, p0}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 514
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 515
    const/4 v3, 0x0

    goto :goto_c
.end method

.method public static getLogManager()Ljava/util/logging/LogManager;
    .registers 1

    .prologue
    .line 416
    sget-object v0, Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;

    return-object v0
.end method

.method public static getLoggingMXBean()Ljava/util/logging/LoggingMXBean;
    .registers 1

    .prologue
    .line 180
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method static getPrivilegedSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "key"

    .prologue
    .line 492
    new-instance v0, Ljava/util/logging/LogManager$3;

    invoke-direct {v0, p0}, Ljava/util/logging/LogManager$3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static getSystemLineSeparator()Ljava/lang/String;
    .registers 1

    .prologue
    .line 302
    sget-object v0, Ljava/util/logging/LogManager;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized readConfigurationImpl(Ljava/io/InputStream;)V
    .registers 13
    .parameter "ins"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->reset()V

    .line 525
    iget-object v7, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    invoke-virtual {v7, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 528
    iget-object v7, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    const-string v8, "config"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 529
    .local v2, configs:Ljava/lang/String;
    if-eqz v2, :cond_2b

    .line 530
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, " "

    invoke-direct {v6, v2, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    .local v6, st:Ljava/util/StringTokenizer;
    :goto_1a
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 532
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, configerName:Ljava/lang/String;
    invoke-static {v1}, Ljava/util/logging/LogManager;->getInstanceByClass(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_1a

    .line 524
    .end local v1           #configerName:Ljava/lang/String;
    .end local v2           #configs:Ljava/lang/String;
    .end local v6           #st:Ljava/util/StringTokenizer;
    :catchall_28
    move-exception v7

    monitor-exit p0

    throw v7

    .line 538
    .restart local v2       #configs:Ljava/lang/String;
    :cond_2b
    :try_start_2b
    iget-object v7, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    .line 539
    .local v0, allLoggers:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/logging/Logger;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/logging/Logger;

    .line 540
    .local v4, logger:Ljava/util/logging/Logger;
    iget-object v7, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".level"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 542
    .local v5, property:Ljava/lang/String;
    if-eqz v5, :cond_35

    .line 543
    invoke-static {v5}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    goto :goto_35

    .line 546
    .end local v4           #logger:Ljava/util/logging/Logger;
    .end local v5           #property:Ljava/lang/String;
    :cond_68
    iget-object v7, p0, Ljava/util/logging/LogManager;->listeners:Ljava/beans/PropertyChangeSupport;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_70
    .catchall {:try_start_2b .. :try_end_70} :catchall_28

    .line 547
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized addLogger(Ljava/util/logging/Logger;)Z
    .registers 4
    .parameter "logger"

    .prologue
    .line 340
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1d

    move-result-object v1

    if-eqz v1, :cond_10

    .line 342
    const/4 v1, 0x0

    .line 347
    :goto_e
    monitor-exit p0

    return v1

    .line 344
    :cond_10
    :try_start_10
    invoke-direct {p0, p1, v0}, Ljava/util/logging/LogManager;->addToFamilyTree(Ljava/util/logging/Logger;Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->setManager(Ljava/util/logging/LogManager;)V
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_1d

    .line 347
    const/4 v1, 0x1

    goto :goto_e

    .line 340
    .end local v0           #name:Ljava/lang/String;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 610
    if-nez p1, :cond_8

    .line 611
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 613
    :cond_8
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 614
    iget-object v0, p0, Ljava/util/logging/LogManager;->listeners:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 615
    return-void
.end method

.method public checkAccess()V
    .registers 3

    .prologue
    .line 317
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 318
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    sget-object v1, Ljava/util/logging/LogManager;->perm:Ljava/util/logging/LoggingPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 320
    :cond_f
    return-void
.end method

.method public declared-synchronized getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 3
    .parameter "name"

    .prologue
    .line 398
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Logger;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLoggerNames()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 427
    iget-object v0, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readConfiguration()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "logging.properties"

    .line 444
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 446
    const-string v5, "java.util.logging.config.class"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, configClassName:Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-static {v0}, Ljava/util/logging/LogManager;->getInstanceByClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5c

    .line 450
    :cond_13
    const-string v5, "java.util.logging.config.file"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, configFile:Ljava/lang/String;
    if-nez v1, :cond_46

    .line 455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "java.home"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "lib"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "logging.properties"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 461
    :cond_46
    const/4 v3, 0x0

    .line 469
    .local v3, input:Ljava/io/InputStream;
    :try_start_47
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_53
    .catchall {:try_start_47 .. :try_end_53} :catchall_72
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_53} :catch_5d

    .end local v3           #input:Ljava/io/InputStream;
    .local v4, input:Ljava/io/InputStream;
    move-object v3, v4

    .line 478
    .end local v4           #input:Ljava/io/InputStream;
    .restart local v3       #input:Ljava/io/InputStream;
    :goto_54
    :try_start_54
    invoke-direct {p0, v3}, Ljava/util/logging/LogManager;->readConfigurationImpl(Ljava/io/InputStream;)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_72

    .line 480
    if-eqz v3, :cond_5c

    .line 482
    :try_start_59
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_79

    .line 488
    .end local v1           #configFile:Ljava/lang/String;
    .end local v3           #input:Ljava/io/InputStream;
    :cond_5c
    :goto_5c
    return-void

    .line 471
    .restart local v1       #configFile:Ljava/lang/String;
    .restart local v3       #input:Ljava/io/InputStream;
    :catch_5d
    move-exception v5

    move-object v2, v5

    .line 473
    .local v2, ex:Ljava/lang/Exception;
    :try_start_5f
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "logging.properties"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_70
    .catchall {:try_start_5f .. :try_end_70} :catchall_72

    .end local v3           #input:Ljava/io/InputStream;
    .restart local v4       #input:Ljava/io/InputStream;
    move-object v3, v4

    .end local v4           #input:Ljava/io/InputStream;
    .restart local v3       #input:Ljava/io/InputStream;
    goto :goto_54

    .line 480
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_72
    move-exception v5

    if-eqz v3, :cond_78

    .line 482
    :try_start_75
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_7b

    .line 484
    :cond_78
    :goto_78
    throw v5

    .line 483
    :catch_79
    move-exception v5

    goto :goto_5c

    :catch_7b
    move-exception v6

    goto :goto_78
.end method

.method public readConfiguration(Ljava/io/InputStream;)V
    .registers 2
    .parameter "ins"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 567
    invoke-direct {p0, p1}, Ljava/util/logging/LogManager;->readConfigurationImpl(Ljava/io/InputStream;)V

    .line 568
    return-void
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 628
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 629
    iget-object v0, p0, Ljava/util/logging/LogManager;->listeners:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 630
    return-void
.end method

.method public reset()V
    .registers 7

    .prologue
    .line 583
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 584
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    iput-object v4, p0, Ljava/util/logging/LogManager;->props:Ljava/util/Properties;

    .line 585
    invoke-virtual {p0}, Ljava/util/logging/LogManager;->getLoggerNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 586
    .local v2, names:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 587
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 588
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 589
    .local v0, logger:Ljava/util/logging/Logger;
    if-eqz v0, :cond_e

    .line 590
    invoke-virtual {v0}, Ljava/util/logging/Logger;->reset()V

    goto :goto_e

    .line 593
    .end local v0           #logger:Ljava/util/logging/Logger;
    .end local v1           #name:Ljava/lang/String;
    :cond_24
    iget-object v4, p0, Ljava/util/logging/LogManager;->loggers:Ljava/util/Hashtable;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/Logger;

    .line 594
    .local v3, root:Ljava/util/logging/Logger;
    if-eqz v3, :cond_35

    .line 595
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 597
    :cond_35
    return-void
.end method
