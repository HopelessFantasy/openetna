.class public Ljava/util/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/logging/Logger$PrivateSecurityManager;
    }
.end annotation


# static fields
.field public static final global:Ljava/util/logging/Logger;


# instance fields
.field private childs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Ljava/util/logging/Filter;

.field private volatile handlerInited:Z

.field private handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private isNamed:Z

.field private volatile levelIntVal:I

.field private volatile levelObjVal:Ljava/util/logging/Level;

.field private manager:Ljava/util/logging/LogManager;

.field private volatile name:Ljava/lang/String;

.field private notifyParentHandlers:Z

.field private parent:Ljava/util/logging/Logger;

.field private resBundle:Ljava/util/ResourceBundle;

.field private resBundleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 83
    new-instance v0, Ljava/util/logging/Logger;

    const-string v1, "global"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "resourceBundleName"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    if-nez p2, :cond_27

    .line 153
    iput-object v1, p0, Ljava/util/logging/Logger;->resBundleName:Ljava/lang/String;

    .line 154
    iput-object v1, p0, Ljava/util/logging/Logger;->resBundle:Ljava/util/ResourceBundle;

    .line 159
    :goto_b
    iput-object p1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    .line 160
    iput-object v1, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    .line 161
    iput-object v1, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/logging/Logger;->childs:Ljava/util/List;

    .line 163
    iput-boolean v2, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    .line 165
    iput-boolean v2, p0, Ljava/util/logging/Logger;->isNamed:Z

    .line 172
    iput-object v1, p0, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    .line 173
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    iput v0, p0, Ljava/util/logging/Logger;->levelIntVal:I

    .line 174
    return-void

    .line 156
    :cond_27
    invoke-static {p2}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/Logger;->resBundle:Ljava/util/ResourceBundle;

    .line 157
    iput-object p2, p0, Ljava/util/logging/Logger;->resBundleName:Ljava/lang/String;

    goto :goto_b
.end method

.method private forceChildsToInherit()V
    .registers 4

    .prologue
    .line 195
    iget-object v2, p0, Ljava/util/logging/Logger;->childs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Logger;

    .line 196
    .local v0, child:Ljava/util/logging/Logger;
    iget-object v2, v0, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    if-nez v2, :cond_6

    .line 197
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/logging/Logger;->setLevelImpl(Ljava/util/logging/Level;)V

    goto :goto_6

    .line 200
    .end local v0           #child:Ljava/util/logging/Logger;
    :cond_1b
    return-void
.end method

.method public static getAnonymousLogger()Ljava/util/logging/Logger;
    .registers 1

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/logging/Logger;->getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getAnonymousLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 4
    .parameter "resourceBundleName"

    .prologue
    .line 313
    new-instance v0, Ljava/util/logging/Logger;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .local v0, l:Ljava/util/logging/Logger;
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljava/util/logging/Logger;->isNamed:Z

    .line 315
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->internalSetParent(Ljava/util/logging/Logger;)V

    .line 316
    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 3
    .parameter "name"

    .prologue
    .line 388
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ljava/util/logging/Logger;->getLoggerWithRes(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 3
    .parameter "name"
    .parameter "resourceBundleName"

    .prologue
    .line 409
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljava/util/logging/Logger;->getLoggerWithRes(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method private static getLoggerWithRes(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/logging/Logger;
    .registers 7
    .parameter "name"
    .parameter "resourceBundleName"
    .parameter "hasResourceName"

    .prologue
    .line 359
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v2

    .line 360
    .local v2, man:Ljava/util/logging/LogManager;
    const/4 v0, 0x0

    .line 361
    .local v0, l:Ljava/util/logging/Logger;
    monitor-enter v2

    .line 363
    :try_start_6
    invoke-virtual {v2, p0}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 365
    if-nez v0, :cond_17

    .line 366
    new-instance v1, Ljava/util/logging/Logger;

    invoke-direct {v1, p0, p1}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_1f

    .line 367
    .end local v0           #l:Ljava/util/logging/Logger;
    .local v1, l:Ljava/util/logging/Logger;
    :try_start_11
    invoke-virtual {v2, v1}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    .line 368
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_22

    move-object v0, v1

    .line 374
    .end local v1           #l:Ljava/util/logging/Logger;
    :goto_16
    return-object v1

    .line 370
    .restart local v0       #l:Ljava/util/logging/Logger;
    :cond_17
    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_1f

    .line 371
    if-eqz p2, :cond_1d

    .line 372
    invoke-static {v0, p1}, Ljava/util/logging/Logger;->updateResourceBundle(Ljava/util/logging/Logger;Ljava/lang/String;)V

    :cond_1d
    move-object v1, v0

    .line 374
    .local v1, l:Ljava/lang/Object;
    goto :goto_16

    .line 370
    .end local v1           #l:Ljava/lang/Object;
    :catchall_1f
    move-exception v3

    :goto_20
    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v3

    .end local v0           #l:Ljava/util/logging/Logger;
    .local v1, l:Ljava/util/logging/Logger;
    :catchall_22
    move-exception v3

    move-object v0, v1

    .end local v1           #l:Ljava/util/logging/Logger;
    .restart local v0       #l:Ljava/util/logging/Logger;
    goto :goto_20
.end method

.method private initHandler()V
    .registers 10

    .prologue
    .line 444
    iget-boolean v6, p0, Ljava/util/logging/Logger;->handlerInited:Z

    if-nez v6, :cond_1c

    .line 445
    monitor-enter p0

    .line 446
    :try_start_5
    iget-boolean v6, p0, Ljava/util/logging/Logger;->handlerInited:Z

    if-nez v6, :cond_94

    .line 452
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    .line 454
    iget-object v6, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    if-nez v6, :cond_17

    .line 455
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    .line 457
    :cond_17
    iget-object v6, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    if-nez v6, :cond_1d

    .line 458
    monitor-exit p0

    .line 489
    :cond_1c
    :goto_1c
    return-void

    .line 461
    :cond_1d
    iget-object v6, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    const-string v7, ""

    iget-object v8, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    const-string v7, "handlers"

    :goto_2b
    invoke-virtual {v6, v7}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, handlerStr:Ljava/lang/String;
    if-nez v3, :cond_4c

    .line 464
    monitor-exit p0

    goto :goto_1c

    .line 487
    .end local v3           #handlerStr:Ljava/lang/String;
    :catchall_33
    move-exception v6

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_33

    throw v6

    .line 461
    :cond_36
    :try_start_36
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".handlers"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2b

    .line 466
    .restart local v3       #handlerStr:Ljava/lang/String;
    :cond_4c
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, " "

    invoke-direct {v5, v3, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .local v5, st:Ljava/util/StringTokenizer;
    :cond_53
    :goto_53
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_91

    .line 468
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_5c
    .catchall {:try_start_36 .. :try_end_5c} :catchall_33

    move-result-object v2

    .line 472
    .local v2, handlerName:Ljava/lang/String;
    :try_start_5d
    invoke-static {v2}, Ljava/util/logging/LogManager;->getInstanceByClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Handler;

    .line 474
    .local v1, handler:Ljava/util/logging/Handler;
    iget-object v6, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v6, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".level"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 477
    .local v4, level:Ljava/lang/String;
    if-eqz v4, :cond_53

    .line 478
    invoke-static {v4}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V
    :try_end_8a
    .catchall {:try_start_5d .. :try_end_8a} :catchall_33
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_8a} :catch_8b

    goto :goto_53

    .line 480
    .end local v1           #handler:Ljava/util/logging/Handler;
    .end local v4           #level:Ljava/lang/String;
    :catch_8b
    move-exception v6

    move-object v0, v6

    .line 481
    .local v0, ex:Ljava/lang/Exception;
    :try_start_8d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_53

    .line 485
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v2           #handlerName:Ljava/lang/String;
    :cond_91
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/util/logging/Logger;->handlerInited:Z

    .line 487
    .end local v3           #handlerStr:Ljava/lang/String;
    .end local v5           #st:Ljava/util/StringTokenizer;
    :cond_94
    monitor-exit p0
    :try_end_95
    .catchall {:try_start_8d .. :try_end_95} :catchall_33

    goto :goto_1c
.end method

.method private internalIsLoggable(Ljava/util/logging/Level;)Z
    .registers 5
    .parameter "l"

    .prologue
    const/4 v2, 0x0

    .line 725
    iget v0, p0, Ljava/util/logging/Logger;->levelIntVal:I

    .line 726
    .local v0, effectiveLevel:I
    sget-object v1, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_d

    move v1, v2

    .line 730
    :goto_c
    return v1

    :cond_d
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    if-lt v1, v0, :cond_15

    const/4 v1, 0x1

    goto :goto_c

    :cond_15
    move v1, v2

    goto :goto_c
.end method

.method static loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .registers 9
    .parameter "resourceBundleName"

    .prologue
    .line 219
    new-instance v5, Ljava/util/logging/Logger$1;

    invoke-direct {v5}, Ljava/util/logging/Logger$1;-><init>()V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    .line 225
    .local v1, cl:Ljava/lang/ClassLoader;
    if-eqz v1, :cond_17

    .line 227
    :try_start_d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {p0, v5, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_14
    .catch Ljava/util/MissingResourceException; {:try_start_d .. :try_end_14} :catch_16

    move-result-object v5

    .line 269
    :goto_15
    return-object v5

    .line 229
    :catch_16
    move-exception v5

    .line 234
    :cond_17
    new-instance v5, Ljava/util/logging/Logger$2;

    invoke-direct {v5}, Ljava/util/logging/Logger$2;-><init>()V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cl:Ljava/lang/ClassLoader;
    check-cast v1, Ljava/lang/ClassLoader;

    .line 240
    .restart local v1       #cl:Ljava/lang/ClassLoader;
    if-eqz v1, :cond_2e

    .line 242
    :try_start_24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {p0, v5, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_2b
    .catch Ljava/util/MissingResourceException; {:try_start_24 .. :try_end_2b} :catch_2d

    move-result-object v5

    goto :goto_15

    .line 244
    :catch_2d
    move-exception v5

    .line 249
    :cond_2e
    new-instance v5, Ljava/util/logging/Logger$3;

    invoke-direct {v5}, Ljava/util/logging/Logger$3;-><init>()V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Class;

    .line 257
    .local v2, classes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    .local v3, i:I
    :goto_3a
    array-length v5, v2

    if-ge v3, v5, :cond_59

    .line 258
    move v4, v3

    .line 260
    .local v4, index:I
    :try_start_3e
    new-instance v5, Ljava/util/logging/Logger$4;

    invoke-direct {v5, v2, v4}, Ljava/util/logging/Logger$4;-><init>([Ljava/lang/Class;I)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/ClassLoader;

    move-object v1, v0

    .line 266
    if-nez v1, :cond_50

    .line 257
    :goto_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 269
    :cond_50
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {p0, v5, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_57
    .catch Ljava/util/MissingResourceException; {:try_start_3e .. :try_end_57} :catch_66

    move-result-object v5

    goto :goto_15

    .line 276
    .end local v4           #index:I
    :cond_59
    new-instance v5, Ljava/util/MissingResourceException;

    const-string v6, "logging.8"

    invoke-static {v6, p0}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, p0, v7}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 271
    .restart local v4       #index:I
    :catch_66
    move-exception v5

    goto :goto_4d
.end method

.method private setLevelImpl(Ljava/util/logging/Level;)V
    .registers 4
    .parameter "newLevel"

    .prologue
    .line 179
    iget v0, p0, Ljava/util/logging/Logger;->levelIntVal:I

    .line 180
    .local v0, oldVal:I
    iput-object p1, p0, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    .line 181
    if-nez p1, :cond_1f

    .line 182
    iget-object v1, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    if-eqz v1, :cond_18

    iget-object v1, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    iget v1, v1, Ljava/util/logging/Logger;->levelIntVal:I

    :goto_e
    iput v1, p0, Ljava/util/logging/Logger;->levelIntVal:I

    .line 188
    :goto_10
    iget v1, p0, Ljava/util/logging/Logger;->levelIntVal:I

    if-eq v0, v1, :cond_17

    .line 189
    invoke-direct {p0}, Ljava/util/logging/Logger;->forceChildsToInherit()V

    .line 191
    :cond_17
    return-void

    .line 182
    :cond_18
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    goto :goto_e

    .line 186
    :cond_1f
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iput v1, p0, Ljava/util/logging/Logger;->levelIntVal:I

    goto :goto_10
.end method

.method private setResourceBundle(Ljava/util/logging/LogRecord;)V
    .registers 4
    .parameter "record"

    .prologue
    .line 756
    iget-object v1, p0, Ljava/util/logging/Logger;->resBundleName:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 757
    iget-object v1, p0, Ljava/util/logging/Logger;->resBundle:Ljava/util/ResourceBundle;

    invoke-virtual {p1, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    .line 758
    iget-object v1, p0, Ljava/util/logging/Logger;->resBundleName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 772
    :cond_e
    :goto_e
    return-void

    .line 760
    :cond_f
    iget-object v0, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    .line 763
    .local v0, anyParent:Ljava/util/logging/Logger;
    :goto_11
    if-eqz v0, :cond_e

    .line 764
    iget-object v1, v0, Ljava/util/logging/Logger;->resBundleName:Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 765
    iget-object v1, v0, Ljava/util/logging/Logger;->resBundle:Ljava/util/ResourceBundle;

    invoke-virtual {p1, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V

    .line 766
    iget-object v1, v0, Ljava/util/logging/Logger;->resBundleName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    goto :goto_e

    .line 769
    :cond_22
    iget-object v0, v0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    goto :goto_11
.end method

.method private static updateResourceBundle(Ljava/util/logging/Logger;Ljava/lang/String;)V
    .registers 5
    .parameter "l"
    .parameter "resourceBundleName"

    .prologue
    .line 325
    monitor-enter p0

    .line 326
    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getResourceBundleName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    .line 327
    if-nez p1, :cond_b

    .line 328
    monitor-exit p0

    .line 349
    :goto_a
    return-void

    .line 334
    :cond_b
    invoke-static {p1}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/Logger;->resBundle:Ljava/util/ResourceBundle;

    .line 335
    iput-object p1, p0, Ljava/util/logging/Logger;->resBundleName:Ljava/lang/String;

    .line 348
    :cond_13
    monitor-exit p0

    goto :goto_a

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0

    .line 336
    :cond_18
    :try_start_18
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getResourceBundleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 344
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "logging.9"

    invoke-virtual {p0}, Ljava/util/logging/Logger;->getResourceBundleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_15
.end method


# virtual methods
.method final addChild(Ljava/util/logging/Logger;)V
    .registers 3
    .parameter "logger"

    .prologue
    .line 676
    iget-object v0, p0, Ljava/util/logging/Logger;->childs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    return-void
.end method

.method public addHandler(Ljava/util/logging/Handler;)V
    .registers 4
    .parameter "handler"

    .prologue
    .line 424
    if-nez p1, :cond_e

    .line 426
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "logging.A"

    invoke-static {v1}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_e
    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v0, :cond_19

    .line 430
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 432
    :cond_19
    invoke-direct {p0}, Ljava/util/logging/Logger;->initHandler()V

    .line 433
    monitor-enter p0

    .line 434
    :try_start_1d
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    monitor-exit p0

    .line 436
    return-void

    .line 435
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_24

    throw v0
.end method

.method public config(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 991
    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 992
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-direct {v0, v1, p1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 993
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 994
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 995
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 997
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_1a
    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "sourceClass"
    .parameter "sourceMethod"

    .prologue
    .line 786
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 787
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "ENTRY"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 788
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 789
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 791
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 792
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 794
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_22
    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "param"

    .prologue
    .line 811
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 812
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "ENTRY {0}"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 813
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 816
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 817
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 818
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 820
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_2b
    return-void
.end method

.method public entering(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "params"

    .prologue
    .line 838
    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v4}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 839
    const-string v1, "ENTRY"

    .line 840
    .local v1, msg:Ljava/lang/String;
    if-eqz p3, :cond_3a

    .line 841
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ENTRY"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 842
    .local v2, msgBuffer:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    array-length v4, p3

    if-ge v0, v4, :cond_36

    .line 843
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 845
    :cond_36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 847
    .end local v0           #i:I
    .end local v2           #msgBuffer:Ljava/lang/StringBuilder;
    :cond_3a
    new-instance v3, Ljava/util/logging/LogRecord;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v3, v4, v1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 848
    .local v3, record:Ljava/util/logging/LogRecord;
    iget-object v4, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 849
    invoke-virtual {v3, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 850
    invoke-virtual {v3, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 851
    invoke-virtual {v3, p3}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 852
    invoke-direct {p0, v3}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 853
    invoke-virtual {p0, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 855
    .end local v1           #msg:Ljava/lang/String;
    .end local v3           #record:Ljava/util/logging/LogRecord;
    :cond_55
    return-void
.end method

.method public exiting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "sourceClass"
    .parameter "sourceMethod"

    .prologue
    .line 869
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 870
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "RETURN"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 871
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 872
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 873
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 874
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 875
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 877
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_22
    return-void
.end method

.method public exiting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "result"

    .prologue
    .line 893
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 894
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "RETURN {0}"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 895
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 896
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 897
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 898
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 899
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 900
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 902
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_2b
    return-void
.end method

.method public fine(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1008
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1009
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v0, v1, p1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1010
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1011
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1012
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 1014
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_1a
    return-void
.end method

.method public finer(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1025
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1026
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v0, v1, p1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1027
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1028
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1029
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 1031
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_1a
    return-void
.end method

.method public finest(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1042
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1043
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-direct {v0, v1, p1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1044
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1045
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1046
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 1048
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_1a
    return-void
.end method

.method public getFilter()Ljava/util/logging/Filter;
    .registers 2

    .prologue
    .line 536
    iget-object v0, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    return-object v0
.end method

.method public getHandlers()[Ljava/util/logging/Handler;
    .registers 3

    .prologue
    .line 498
    invoke-direct {p0}, Ljava/util/logging/Logger;->initHandler()V

    .line 499
    monitor-enter p0

    .line 500
    :try_start_4
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    iget-object v1, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/logging/Handler;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/logging/Handler;

    monitor-exit p0

    return-object v0

    .line 501
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public getLevel()Ljava/util/logging/Level;
    .registers 2

    .prologue
    .line 565
    iget-object v0, p0, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 691
    iget-object v0, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/util/logging/Logger;
    .registers 2

    .prologue
    .line 629
    iget-object v0, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .registers 2

    .prologue
    .line 703
    iget-object v0, p0, Ljava/util/logging/Logger;->resBundle:Ljava/util/ResourceBundle;

    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 715
    iget-object v0, p0, Ljava/util/logging/Logger;->resBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public getUseParentHandlers()Z
    .registers 2

    .prologue
    .line 599
    iget-boolean v0, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 974
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 975
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-direct {v0, v1, p1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 976
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 977
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 978
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 980
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_1a
    return-void
.end method

.method internalSetParent(Ljava/util/logging/Logger;)V
    .registers 4
    .parameter "newParent"

    .prologue
    .line 643
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    monitor-enter v0

    .line 644
    :try_start_5
    iput-object p1, p0, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    .line 647
    iget-object v1, p0, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    if-nez v1, :cond_10

    .line 648
    iget-object v1, p0, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->setLevelImpl(Ljava/util/logging/Level;)V

    .line 650
    :cond_10
    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->addChild(Ljava/util/logging/Logger;)V

    .line 651
    monitor-exit v0

    .line 652
    return-void

    .line 651
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public isLoggable(Ljava/util/logging/Level;)Z
    .registers 3
    .parameter "l"

    .prologue
    .line 745
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .registers 5
    .parameter "logLevel"
    .parameter "msg"

    .prologue
    .line 1061
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1062
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1063
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1064
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1065
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 1067
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_16
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .parameter "logLevel"
    .parameter "msg"
    .parameter "param"

    .prologue
    .line 1082
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1083
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1084
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1085
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1086
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1087
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 1089
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_1f
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "logLevel"
    .parameter "msg"
    .parameter "thrown"

    .prologue
    .line 1127
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1128
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1129
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 1131
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1132
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 1134
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_19
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .parameter "logLevel"
    .parameter "msg"
    .parameter "params"

    .prologue
    .line 1104
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1105
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1106
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1108
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1109
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 1111
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_19
    return-void
.end method

.method public log(Ljava/util/logging/LogRecord;)V
    .registers 12
    .parameter "record"

    .prologue
    .line 1153
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v9

    invoke-direct {p0, v9}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 1155
    iget-object v3, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    .line 1156
    .local v3, f:Ljava/util/logging/Filter;
    if-eqz v3, :cond_15

    invoke-interface {v3, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 1180
    .end local v3           #f:Ljava/util/logging/Filter;
    :cond_14
    return-void

    .line 1159
    .restart local v3       #f:Ljava/util/logging/Filter;
    :cond_15
    invoke-direct {p0}, Ljava/util/logging/Logger;->initHandler()V

    .line 1164
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    .line 1165
    .local v0, allHandlers:[Ljava/util/logging/Handler;
    move-object v1, v0

    .local v1, arr$:[Ljava/util/logging/Handler;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1f
    if-ge v5, v6, :cond_29

    aget-object v2, v1, v5

    .line 1166
    .local v2, element:Ljava/util/logging/Handler;
    invoke-virtual {v2, p1}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    .line 1165
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 1169
    .end local v2           #element:Ljava/util/logging/Handler;
    :cond_29
    move-object v7, p0

    .line 1170
    .local v7, temp:Ljava/util/logging/Logger;
    iget-object v8, v7, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    .line 1171
    .local v8, theParent:Ljava/util/logging/Logger;
    :goto_2c
    if-eqz v8, :cond_14

    invoke-virtual {v7}, Ljava/util/logging/Logger;->getUseParentHandlers()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 1172
    invoke-virtual {v8}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v4

    .line 1173
    .local v4, ha:[Ljava/util/logging/Handler;
    move-object v1, v4

    array-length v6, v1

    const/4 v5, 0x0

    :goto_3b
    if-ge v5, v6, :cond_45

    aget-object v2, v1, v5

    .line 1174
    .restart local v2       #element:Ljava/util/logging/Handler;
    invoke-virtual {v2, p1}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    .line 1173
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 1176
    .end local v2           #element:Ljava/util/logging/Handler;
    :cond_45
    move-object v7, v8

    .line 1177
    iget-object v8, v7, Ljava/util/logging/Logger;->parent:Ljava/util/logging/Logger;

    .line 1178
    goto :goto_2c
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "msg"

    .prologue
    .line 1198
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1199
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1200
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1203
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1204
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 1206
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_1c
    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "msg"
    .parameter "param"

    .prologue
    .line 1226
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1227
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1228
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1229
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1230
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1231
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1232
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1233
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 1235
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_25
    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "msg"
    .parameter "thrown"

    .prologue
    .line 1284
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1285
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1286
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 1290
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1291
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 1293
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_1f
    return-void
.end method

.method public logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "msg"
    .parameter "params"

    .prologue
    .line 1255
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1256
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p4}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1257
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1258
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1259
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1260
    invoke-virtual {v0, p5}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1261
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 1262
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 1264
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_1f
    return-void
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "bundleName"
    .parameter "msg"

    .prologue
    .line 1315
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1316
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1317
    .local v0, record:Ljava/util/logging/LogRecord;
    if-eqz p4, :cond_17

    .line 1319
    :try_start_d
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_14
    .catch Ljava/util/MissingResourceException; {:try_start_d .. :try_end_14} :catch_26

    .line 1323
    :goto_14
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 1325
    :cond_17
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 1330
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_25
    return-void

    .line 1320
    .restart local v0       #record:Ljava/util/logging/LogRecord;
    :catch_26
    move-exception v1

    goto :goto_14
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "bundleName"
    .parameter "msg"
    .parameter "param"

    .prologue
    .line 1354
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1355
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1356
    .local v0, record:Ljava/util/logging/LogRecord;
    if-eqz p4, :cond_17

    .line 1358
    :try_start_d
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_14
    .catch Ljava/util/MissingResourceException; {:try_start_d .. :try_end_14} :catch_2f

    .line 1362
    :goto_14
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 1364
    :cond_17
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1366
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1367
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p6, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1368
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 1370
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_2e
    return-void

    .line 1359
    .restart local v0       #record:Ljava/util/logging/LogRecord;
    :catch_2f
    move-exception v1

    goto :goto_14
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "bundleName"
    .parameter "msg"
    .parameter "thrown"

    .prologue
    .line 1434
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1435
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1436
    .local v0, record:Ljava/util/logging/LogRecord;
    if-eqz p4, :cond_17

    .line 1438
    :try_start_d
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_14
    .catch Ljava/util/MissingResourceException; {:try_start_d .. :try_end_14} :catch_29

    .line 1442
    :goto_14
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 1444
    :cond_17
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1446
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1447
    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 1448
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 1450
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_28
    return-void

    .line 1439
    .restart local v0       #record:Ljava/util/logging/LogRecord;
    :catch_29
    move-exception v1

    goto :goto_14
.end method

.method public logrb(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9
    .parameter "logLevel"
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "bundleName"
    .parameter "msg"
    .parameter "params"

    .prologue
    .line 1394
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1395
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1396
    .local v0, record:Ljava/util/logging/LogRecord;
    if-eqz p4, :cond_17

    .line 1398
    :try_start_d
    invoke-static {p4}, Ljava/util/logging/Logger;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setResourceBundle(Ljava/util/ResourceBundle;)V
    :try_end_14
    .catch Ljava/util/MissingResourceException; {:try_start_d .. :try_end_14} :catch_29

    .line 1402
    :goto_14
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setResourceBundleName(Ljava/lang/String;)V

    .line 1404
    :cond_17
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 1406
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 1407
    invoke-virtual {v0, p6}, Ljava/util/logging/LogRecord;->setParameters([Ljava/lang/Object;)V

    .line 1408
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 1410
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_28
    return-void

    .line 1399
    .restart local v0       #record:Ljava/util/logging/LogRecord;
    :catch_29
    move-exception v1

    goto :goto_14
.end method

.method final removeChild(Ljava/util/logging/Logger;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 680
    iget-object v0, p0, Ljava/util/logging/Logger;->childs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 681
    return-void
.end method

.method public removeHandler(Ljava/util/logging/Handler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 517
    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v0, :cond_b

    .line 518
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 520
    :cond_b
    if-nez p1, :cond_e

    .line 527
    :goto_d
    return-void

    .line 523
    :cond_e
    invoke-direct {p0}, Ljava/util/logging/Logger;->initHandler()V

    .line 524
    monitor-enter p0

    .line 525
    :try_start_12
    iget-object v0, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 526
    monitor-exit p0

    goto :goto_d

    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method declared-synchronized reset()V
    .registers 4

    .prologue
    .line 1478
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Ljava/util/logging/Logger;->levelObjVal:Ljava/util/logging/Level;

    .line 1479
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    iput v2, p0, Ljava/util/logging/Logger;->levelIntVal:I

    .line 1480
    iget-object v2, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    if-eqz v2, :cond_2d

    .line 1481
    iget-object v2, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Handler;
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_32

    .line 1485
    .local v0, element:Ljava/util/logging/Handler;
    :try_start_22
    invoke-virtual {v0}, Ljava/util/logging/Handler;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_16

    .line 1486
    :catch_26
    move-exception v2

    goto :goto_16

    .line 1490
    .end local v0           #element:Ljava/util/logging/Handler;
    :cond_28
    :try_start_28
    iget-object v2, p0, Ljava/util/logging/Logger;->handlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1492
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2d
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/util/logging/Logger;->handlerInited:Z
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_32

    .line 1493
    monitor-exit p0

    return-void

    .line 1478
    :catchall_32
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setFilter(Ljava/util/logging/Filter;)V
    .registers 3
    .parameter "newFilter"

    .prologue
    .line 551
    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v0, :cond_b

    .line 552
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 554
    :cond_b
    iput-object p1, p0, Ljava/util/logging/Logger;->filter:Ljava/util/logging/Filter;

    .line 555
    return-void
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .registers 4
    .parameter "newLevel"

    .prologue
    .line 581
    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v0, :cond_b

    .line 582
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 584
    :cond_b
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    monitor-enter v0

    .line 585
    :try_start_10
    invoke-direct {p0, p1}, Ljava/util/logging/Logger;->setLevelImpl(Ljava/util/logging/Level;)V

    .line 586
    monitor-exit v0

    .line 587
    return-void

    .line 586
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_15

    throw v1
.end method

.method setManager(Ljava/util/logging/LogManager;)V
    .registers 5
    .parameter "manager"

    .prologue
    .line 1462
    iget-object v1, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    if-eq v1, p1, :cond_9

    .line 1463
    iput-object p1, p0, Ljava/util/logging/Logger;->manager:Ljava/util/logging/LogManager;

    .line 1464
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/logging/Logger;->handlerInited:Z

    .line 1467
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1468
    .local v0, configedLevel:Ljava/lang/String;
    if-eqz v0, :cond_2b

    .line 1470
    :try_start_24
    invoke-static {v0}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_2b} :catch_2c

    .line 1475
    :cond_2b
    :goto_2b
    return-void

    .line 1471
    :catch_2c
    move-exception v1

    goto :goto_2b
.end method

.method public setParent(Ljava/util/logging/Logger;)V
    .registers 4
    .parameter "parent"

    .prologue
    .line 666
    if-nez p1, :cond_e

    .line 668
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "logging.B"

    invoke-static {v1}, Lorg/apache/harmony/logging/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_e
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 672
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->internalSetParent(Ljava/util/logging/Logger;)V

    .line 673
    return-void
.end method

.method public setUseParentHandlers(Z)V
    .registers 3
    .parameter "notifyParentHandlers"

    .prologue
    .line 615
    iget-boolean v0, p0, Ljava/util/logging/Logger;->isNamed:Z

    if-eqz v0, :cond_b

    .line 616
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 618
    :cond_b
    iput-boolean p1, p0, Ljava/util/logging/Logger;->notifyParentHandlers:Z

    .line 619
    return-void
.end method

.method public severe(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 940
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 941
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-direct {v0, v1, p1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 942
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 943
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 944
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 946
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_1a
    return-void
.end method

.method public throwing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7
    .parameter "sourceClass"
    .parameter "sourceMethod"
    .parameter "thrown"

    .prologue
    .line 920
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 921
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "THROW"

    invoke-direct {v0, v1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 922
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 923
    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 924
    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 925
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 926
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 927
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 929
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_25
    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 957
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-direct {p0, v1}, Ljava/util/logging/Logger;->internalIsLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 958
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-direct {v0, v1, p1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 959
    .local v0, record:Ljava/util/logging/LogRecord;
    iget-object v1, p0, Ljava/util/logging/Logger;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 960
    invoke-direct {p0, v0}, Ljava/util/logging/Logger;->setResourceBundle(Ljava/util/logging/LogRecord;)V

    .line 961
    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 963
    .end local v0           #record:Ljava/util/logging/LogRecord;
    :cond_1a
    return-void
.end method
