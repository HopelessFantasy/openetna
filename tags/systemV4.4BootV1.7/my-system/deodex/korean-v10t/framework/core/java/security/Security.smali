.class public final Ljava/security/Security;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Security$SecurityDoor;
    }
.end annotation


# static fields
.field private static secprops:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    .line 66
    new-instance v0, Ljava/security/Security$1;

    invoke-direct {v0}, Ljava/security/Security$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    return-void
.end method

.method static synthetic access$000()Ljava/util/Properties;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 56
    invoke-static {}, Ljava/security/Security;->registerDefaultProviders()V

    return-void
.end method

.method static synthetic access$300()V
    .registers 0

    .prologue
    .line 56
    invoke-static {}, Ljava/security/Security;->renumProviders()V

    return-void
.end method

.method public static addProvider(Ljava/security/Provider;)I
    .registers 2
    .parameter "provider"

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    move-result v0

    return v0
.end method

.method public static getAlgorithmProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "algName"
    .parameter "propName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 181
    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    move-object v5, v7

    .line 197
    :goto_6
    return-object v5

    .line 185
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alg."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, prop:Ljava/lang/String;
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v4

    .line 188
    .local v4, providers:[Ljava/security/Provider;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_29
    array-length v5, v4

    if-ge v1, v5, :cond_4e

    .line 189
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/security/Provider;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 190
    .local v0, e:Ljava/util/Enumeration;
    :cond_32
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 191
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    .local v2, pname:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 193
    aget-object v5, v4, v1

    invoke-virtual {v5, v2}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 188
    .end local v2           #pname:Ljava/lang/String;
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .end local v0           #e:Ljava/util/Enumeration;
    :cond_4e
    move-object v5, v7

    .line 197
    goto :goto_6
.end method

.method public static getAlgorithms(Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .parameter "serviceName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 540
    .local v3, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v2

    .line 541
    .local v2, p:[Ljava/security/Provider;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    array-length v5, v2

    if-ge v0, v5, :cond_38

    .line 542
    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 543
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 544
    .local v4, s:Ljava/security/Provider$Service;
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 545
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 541
    .end local v4           #s:Ljava/security/Provider$Service;
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 549
    .end local v1           #it:Ljava/util/Iterator;
    :cond_38
    return-object v3
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"

    .prologue
    .line 489
    if-nez p0, :cond_e

    .line 490
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "security.2C"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    :cond_e
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 493
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_2a

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProperty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 496
    :cond_2a
    sget-object v1, Ljava/security/Security;->secprops:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .registers 3
    .parameter "name"

    .prologue
    .line 333
    const-class v0, Ljava/security/Security;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lorg/apache/harmony/security/fortress/Services;->getProvider(Ljava/lang/String;)Ljava/security/Provider;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getProviders()[Ljava/security/Provider;
    .registers 2

    .prologue
    .line 319
    const-class v0, Ljava/security/Security;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProviders()[Ljava/security/Provider;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getProviders(Ljava/lang/String;)[Ljava/security/Provider;
    .registers 6
    .parameter "filter"

    .prologue
    const/4 v3, 0x1

    const-string v4, "security.2B"

    .line 361
    if-nez p0, :cond_11

    .line 362
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "security.2A"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 364
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_23

    .line 365
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v3, "security.2B"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 368
    :cond_23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 369
    .local v0, hm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 370
    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_37

    if-nez v1, :cond_43

    .line 371
    :cond_37
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v3, "security.2B"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    :cond_43
    if-ge v1, v3, :cond_4f

    .line 375
    const-string v2, ""

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :goto_4a
    invoke-static {v0}, Ljava/security/Security;->getProviders(Ljava/util/Map;)[Ljava/security/Provider;

    move-result-object v2

    return-object v2

    .line 377
    :cond_4f
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a
.end method

.method public static declared-synchronized getProviders(Ljava/util/Map;)[Ljava/security/Provider;
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/security/Provider;"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, filter:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v7, Ljava/security/Security;

    monitor-enter v7

    if-nez p0, :cond_14

    .line 409
    :try_start_5
    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0           #filter:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "security.2A"

    invoke-static {v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_11

    .line 408
    :catchall_11
    move-exception p0

    monitor-exit v7

    throw p0

    .line 411
    .restart local p0       #filter:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_14
    :try_start_14
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_11

    move-result v0

    if-eqz v0, :cond_1d

    .line 412
    const/4 p0, 0x0

    .line 467
    .end local p0           #filter:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1b
    monitor-exit v7

    return-object p0

    .line 414
    .restart local p0       #filter:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1d
    :try_start_1d
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProvidersList()Ljava/util/List;

    move-result-object v4

    .line 415
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Ljava/security/Provider;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 417
    .local p0, keys:Ljava/util/Set;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0           #keys:Ljava/util/Set;
    .local v1, it:Ljava/util/Iterator;
    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_e9

    .line 418
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 419
    .local p0, entry:Ljava/util/Map$Entry;
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 420
    .local v3, key:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 421
    .local v6, val:Ljava/lang/String;
    const/4 p0, 0x0

    .line 422
    .local p0, attribute:Ljava/lang/String;
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 423
    .local v0, i:I
    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 424
    .local v2, j:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_5d

    .line 425
    new-instance p0, Ljava/security/InvalidParameterException;

    .end local p0           #attribute:Ljava/lang/String;
    const-string v0, "security.2B"

    .end local v0           #i:I
    invoke-static {v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 428
    .restart local v0       #i:I
    .restart local p0       #attribute:Ljava/lang/String;
    :cond_5d
    const/4 v5, -0x1

    if-ne v0, v5, :cond_72

    .line 429
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    .end local v0           #i:I
    if-eqz v0, :cond_100

    .line 430
    new-instance p0, Ljava/security/InvalidParameterException;

    .end local p0           #attribute:Ljava/lang/String;
    const-string v0, "security.2B"

    invoke-static {v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 434
    .restart local v0       #i:I
    .restart local p0       #attribute:Ljava/lang/String;
    :cond_72
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p0

    .end local p0           #attribute:Ljava/lang/String;
    if-nez p0, :cond_84

    .line 435
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string v0, "security.2B"

    .end local v0           #i:I
    invoke-static {v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 438
    .restart local v0       #i:I
    :cond_84
    add-int/lit8 p0, v0, 0x1

    invoke-virtual {v3, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 439
    .restart local p0       #attribute:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a0

    .line 440
    new-instance p0, Ljava/security/InvalidParameterException;

    .end local p0           #attribute:Ljava/lang/String;
    const-string v0, "security.2B"

    .end local v0           #i:I
    invoke-static {v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 443
    .restart local v0       #i:I
    .restart local p0       #attribute:Ljava/lang/String;
    :cond_a0
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v3           #key:Ljava/lang/String;
    .local v0, key:Ljava/lang/String;
    move-object v9, p0

    .end local p0           #attribute:Ljava/lang/String;
    .local v9, attribute:Ljava/lang/String;
    move-object p0, v0

    .end local v0           #key:Ljava/lang/String;
    .local p0, key:Ljava/lang/String;
    move-object v0, v9

    .line 445
    .end local v9           #attribute:Ljava/lang/String;
    .local v0, attribute:Ljava/lang/String;
    :goto_a8
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 446
    .local v5, serv:Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local v2           #j:I
    move-result-object p0

    .line 447
    .local p0, alg:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_bf

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_cb

    .line 448
    :cond_bf
    new-instance p0, Ljava/security/InvalidParameterException;

    .end local p0           #alg:Ljava/lang/String;
    const-string v0, "security.2B"

    .end local v0           #attribute:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 452
    .restart local v0       #attribute:Ljava/lang/String;
    .restart local p0       #alg:Ljava/lang/String;
    :cond_cb
    const/4 v2, 0x0

    .local v2, k:I
    :goto_cc
    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_cf
    .catchall {:try_start_1d .. :try_end_cf} :catchall_11

    move-result v3

    if-ge v2, v3, :cond_29

    .line 454
    :try_start_d2
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;
    :try_end_d8
    .catchall {:try_start_d2 .. :try_end_d8} :catchall_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d2 .. :try_end_d8} :catch_e6

    .line 458
    .local v3, p:Ljava/security/Provider;
    :try_start_d8
    invoke-virtual {v3, v5, p0, v0, v6}, Ljava/security/Provider;->implementsAlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e3

    .line 459
    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 460
    add-int/lit8 v2, v2, -0x1

    .line 452
    :cond_e3
    add-int/lit8 v2, v2, 0x1

    goto :goto_cc

    .line 455
    .end local v3           #p:Ljava/security/Provider;
    :catch_e6
    move-exception p0

    .line 456
    .local p0, e:Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_29

    .line 464
    .end local v0           #attribute:Ljava/lang/String;
    .end local v2           #k:I
    .end local v5           #serv:Ljava/lang/String;
    .end local v6           #val:Ljava/lang/String;
    .end local p0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_e9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_fd

    .line 465
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/security/Provider;

    invoke-interface {v4, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/Provider;
    :try_end_fb
    .catchall {:try_start_d8 .. :try_end_fb} :catchall_11

    goto/16 :goto_1b

    .line 467
    :cond_fd
    const/4 p0, 0x0

    goto/16 :goto_1b

    .local v2, j:I
    .local v3, key:Ljava/lang/String;
    .restart local v6       #val:Ljava/lang/String;
    .local p0, attribute:Ljava/lang/String;
    :cond_100
    move-object v0, p0

    .end local p0           #attribute:Ljava/lang/String;
    .restart local v0       #attribute:Ljava/lang/String;
    move-object p0, v3

    .end local v3           #key:Ljava/lang/String;
    .local p0, key:Ljava/lang/String;
    goto :goto_a8
.end method

.method public static declared-synchronized insertProviderAt(Ljava/security/Provider;I)I
    .registers 7
    .parameter "provider"
    .parameter "position"

    .prologue
    .line 229
    const-class v2, Ljava/security/Security;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 230
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_23

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertProvider."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 233
    :cond_23
    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_39

    move-result-object v3

    if-eqz v3, :cond_30

    .line 234
    const/4 v3, -0x1

    .line 238
    :goto_2e
    monitor-exit v2

    return v3

    .line 236
    :cond_30
    :try_start_30
    invoke-static {p0, p1}, Lorg/apache/harmony/security/fortress/Services;->insertProviderAt(Ljava/security/Provider;I)I

    move-result v0

    .line 237
    .local v0, result:I
    invoke-static {}, Ljava/security/Security;->renumProviders()V
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_39

    move v3, v0

    .line 238
    goto :goto_2e

    .line 229
    .end local v0           #result:I
    .end local v1           #sm:Ljava/lang/SecurityManager;
    :catchall_39
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method private static registerDefaultProviders()V
    .registers 3

    .prologue
    .line 158
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.1"

    const-string v2, "org.apache.harmony.security.provider.cert.DRLCertFactory"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.2"

    const-string v2, "org.apache.harmony.security.provider.crypto.CryptoProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.3"

    const-string v2, "org.apache.harmony.xnet.provider.jsse.JSSEProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Ljava/security/Security;->secprops:Ljava/util/Properties;

    const-string v1, "security.provider.4"

    const-string v2, "org.bouncycastle.jce.provider.BouncyCastleProvider"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method public static declared-synchronized removeProvider(Ljava/lang/String;)V
    .registers 6
    .parameter "name"

    .prologue
    .line 295
    const-class v2, Ljava/security/Security;

    monitor-enter v2

    if-eqz p0, :cond_b

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_3e

    move-result v3

    if-nez v3, :cond_d

    .line 309
    :cond_b
    :goto_b
    monitor-exit v2

    return-void

    .line 298
    :cond_d
    :try_start_d
    invoke-static {p0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 299
    .local v0, p:Ljava/security/Provider;
    if-eqz v0, :cond_b

    .line 302
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 303
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_2f

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeProvider."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 306
    :cond_2f
    invoke-virtual {v0}, Ljava/security/Provider;->getProviderNumber()I

    move-result v3

    invoke-static {v3}, Lorg/apache/harmony/security/fortress/Services;->removeProvider(I)V

    .line 307
    invoke-static {}, Ljava/security/Security;->renumProviders()V

    .line 308
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Ljava/security/Provider;->setProviderNumber(I)V
    :try_end_3d
    .catchall {:try_start_d .. :try_end_3d} :catchall_3e

    goto :goto_b

    .line 295
    .end local v0           #p:Ljava/security/Provider;
    .end local v1           #sm:Ljava/lang/SecurityManager;
    :catchall_3e
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method private static renumProviders()V
    .registers 4

    .prologue
    .line 558
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProviders()[Ljava/security/Provider;

    move-result-object v1

    .line 559
    .local v1, p:[Ljava/security/Provider;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 560
    aget-object v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/security/Provider;->setProviderNumber(I)V

    .line 559
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 562
    :cond_12
    return-void
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "key"
    .parameter "datnum"

    .prologue
    .line 518
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 519
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1c

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProperty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 522
    :cond_1c
    sget-object v1, Ljava/security/Security;->secprops:Ljava/util/Properties;

    invoke-virtual {v1, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    return-void
.end method
