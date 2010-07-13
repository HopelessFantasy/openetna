.class public Lorg/apache/harmony/security/fortress/PolicyUtils;
.super Ljava/lang/Object;
.source "PolicyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/fortress/PolicyUtils$GeneralExpansionHandler;,
        Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;,
        Lorg/apache/harmony/security/fortress/PolicyUtils$ProviderLoader;,
        Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;,
        Lorg/apache/harmony/security/fortress/PolicyUtils$SystemPropertyAccessor;,
        Lorg/apache/harmony/security/fortress/PolicyUtils$SystemKit;,
        Lorg/apache/harmony/security/fortress/PolicyUtils$URLLoader;
    }
.end annotation


# static fields
.field public static final FALSE:Ljava/lang/String; = "false"

.field private static final NO_ARGS:[Ljava/lang/Class; = null

.field private static final ONE_ARGS:[Ljava/lang/Class; = null

.field public static final POLICY_ALLOW_DYNAMIC:Ljava/lang/String; = "policy.allowSystemProperty"

.field public static final POLICY_EXPAND:Ljava/lang/String; = "policy.expandProperties"

.field public static final TRUE:Ljava/lang/String; = "true"

.field private static final TWO_ARGS:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    .line 503
    new-array v0, v2, [Ljava/lang/Class;

    sput-object v0, Lorg/apache/harmony/security/fortress/PolicyUtils;->NO_ARGS:[Ljava/lang/Class;

    .line 506
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v3, v0, v2

    sput-object v0, Lorg/apache/harmony/security/fortress/PolicyUtils;->ONE_ARGS:[Ljava/lang/Class;

    .line 509
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v3, v0, v2

    const-class v1, Ljava/lang/String;

    aput-object v3, v0, v4

    sput-object v0, Lorg/apache/harmony/security/fortress/PolicyUtils;->TWO_ARGS:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canExpandProperties()Z
    .registers 3

    .prologue
    .line 374
    const-string v1, "false"

    new-instance v0, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;

    const-string v2, "policy.expandProperties"

    invoke-direct {v0, v2}, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .registers 14
    .parameter "str"
    .parameter "properties"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;
        }
    .end annotation

    .prologue
    const-string v11, "}"

    const-string v10, "${"

    .line 252
    const-string v2, "${"

    .line 253
    .local v2, START_MARK:Ljava/lang/String;
    const-string v0, "}"

    .line 254
    .local v0, END_MARK:Ljava/lang/String;
    const-string v9, "${"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    .line 255
    .local v3, START_OFFSET:I
    const-string v9, "}"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    .line 257
    .local v1, END_OFFSET:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .local v6, result:Ljava/lang/StringBuilder;
    const-string v9, "${"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 259
    .local v7, start:I
    :goto_1f
    if-ltz v7, :cond_52

    .line 260
    const-string v9, "}"

    invoke-virtual {v6, v11, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 261
    .local v4, end:I
    if-ltz v4, :cond_3f

    .line 262
    add-int v9, v7, v3

    invoke-virtual {v6, v9, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, key:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 264
    .local v8, value:Ljava/lang/String;
    if-eqz v8, :cond_46

    .line 265
    add-int v9, v4, v1

    invoke-virtual {v6, v7, v9, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v7, v9

    .line 271
    .end local v5           #key:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_3f
    const-string v9, "${"

    invoke-virtual {v6, v10, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 272
    goto :goto_1f

    .line 268
    .restart local v5       #key:Ljava/lang/String;
    .restart local v8       #value:Ljava/lang/String;
    :cond_46
    new-instance v9, Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;

    const-string v10, "security.14F"

    invoke-static {v10, v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 273
    .end local v4           #end:I
    .end local v5           #key:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_52
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static expandGeneral(Ljava/lang/String;Lorg/apache/harmony/security/fortress/PolicyUtils$GeneralExpansionHandler;)Ljava/lang/String;
    .registers 9
    .parameter "str"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;
        }
    .end annotation

    .prologue
    .line 318
    const-string v0, "${{"

    .line 319
    .local v0, START_MARK:Ljava/lang/String;
    const-string v0, "}}"

    .line 320
    .local v0, END_MARK:Ljava/lang/String;
    const-string v0, "${{"

    .end local v0           #END_MARK:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 321
    .local v1, START_OFFSET:I
    const-string v0, "}}"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 323
    .local v0, END_OFFSET:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    .local v4, result:Ljava/lang/StringBuilder;
    const-string p0, "${{"

    .end local p0
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p0

    .local p0, start:I
    move v6, p0

    .line 325
    .end local p0           #start:I
    .local v6, start:I
    :goto_1c
    if-ltz v6, :cond_5a

    .line 326
    const-string p0, "}}"

    invoke-virtual {v4, p0, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 327
    .local v2, end:I
    if-ltz v2, :cond_5f

    .line 328
    add-int p0, v6, v1

    invoke-virtual {v4, p0, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 329
    .local p0, key:Ljava/lang/String;
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 330
    .local v5, separator:I
    if-ltz v5, :cond_56

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, protocol:Ljava/lang/String;
    :goto_39
    if-ltz v5, :cond_58

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local v5           #separator:I
    move-result-object p0

    .line 334
    .local p0, data:Ljava/lang/String;
    :goto_41
    invoke-interface {p1, v3, p0}, Lorg/apache/harmony/security/fortress/PolicyUtils$GeneralExpansionHandler;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 335
    .local p0, value:Ljava/lang/String;
    add-int/2addr v2, v0

    invoke-virtual {v4, v6, v2, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .end local v2           #end:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .end local p0           #value:Ljava/lang/String;
    add-int/2addr p0, v6

    .line 338
    .end local v3           #protocol:Ljava/lang/String;
    .end local v6           #start:I
    .local p0, start:I
    :goto_4e
    const-string v2, "${{"

    invoke-virtual {v4, v2, p0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p0

    move v6, p0

    .line 339
    .end local p0           #start:I
    .restart local v6       #start:I
    goto :goto_1c

    .restart local v2       #end:I
    .restart local v5       #separator:I
    .local p0, key:Ljava/lang/String;
    :cond_56
    move-object v3, p0

    .line 330
    goto :goto_39

    .line 332
    .restart local v3       #protocol:Ljava/lang/String;
    :cond_58
    const/4 p0, 0x0

    goto :goto_41

    .line 340
    .end local v2           #end:I
    .end local v3           #protocol:Ljava/lang/String;
    .end local v5           #separator:I
    .end local p0           #key:Ljava/lang/String;
    :cond_5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .restart local v2       #end:I
    :cond_5f
    move p0, v6

    .end local v6           #start:I
    .local p0, start:I
    goto :goto_4e
.end method

.method public static expandURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .registers 5
    .parameter "str"
    .parameter "properties"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/fortress/PolicyUtils$ExpansionFailedException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-static {p0, p1}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expand(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPolicyURLs(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)[Ljava/net/URL;
    .registers 16
    .parameter "system"
    .parameter "systemUrlKey"
    .parameter "securityUrlPrefix"

    .prologue
    .line 413
    new-instance v9, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;

    const/4 v11, 0x0

    invoke-direct {v9, v11}, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;-><init>(Ljava/lang/String;)V

    .line 415
    .local v9, security:Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v10, urls:Ljava/util/List;,"Ljava/util/List<Ljava/net/URL;>;"
    const/4 v2, 0x0

    .line 417
    .local v2, dynamicOnly:Z
    const/4 v3, 0x0

    .line 420
    .local v3, dynamicURL:Ljava/net/URL;
    const-string v12, "false"

    const-string v11, "policy.allowSystemProperty"

    invoke-virtual {v9, v11}, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;->key(Ljava/lang/String;)Ljava/security/PrivilegedAction;

    move-result-object v11

    invoke-static {v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_53

    .line 422
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 423
    .local v8, location:Ljava/lang/String;
    if-eqz v8, :cond_53

    .line 424
    const-string v11, "="

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_35

    .line 426
    const/4 v2, 0x1

    .line 427
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 430
    :cond_35
    :try_start_35
    invoke-static {v8, p0}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expandURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v8

    .line 432
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    .local v5, f:Ljava/io/File;
    new-instance v11, Lorg/apache/harmony/security/fortress/PolicyUtils$1;

    invoke-direct {v11, v5}, Lorg/apache/harmony/security/fortress/PolicyUtils$1;-><init>(Ljava/io/File;)V

    invoke-static {v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/URL;

    move-object v3, v0

    .line 444
    if-nez v3, :cond_53

    .line 445
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_52} :catch_95

    .end local v3           #dynamicURL:Ljava/net/URL;
    .local v4, dynamicURL:Ljava/net/URL;
    move-object v3, v4

    .line 455
    .end local v4           #dynamicURL:Ljava/net/URL;
    .end local v5           #f:Ljava/io/File;
    .end local v8           #location:Ljava/lang/String;
    .restart local v3       #dynamicURL:Ljava/net/URL;
    :cond_53
    :goto_53
    if-nez v2, :cond_71

    .line 456
    const/4 v6, 0x1

    .line 458
    .local v6, i:I
    :goto_56
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v6, 0x1

    .end local v6           #i:I
    .local v7, i:I
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/apache/harmony/security/fortress/PolicyUtils$SecurityPropertyAccessor;->key(Ljava/lang/String;)Ljava/security/PrivilegedAction;

    move-result-object v11

    invoke-static {v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 461
    .restart local v8       #location:Ljava/lang/String;
    if-nez v8, :cond_83

    .line 477
    .end local v7           #i:I
    .end local v8           #location:Ljava/lang/String;
    :cond_71
    if-eqz v3, :cond_76

    .line 478
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_76
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/net/URL;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/net/URL;

    return-object p0

    .line 465
    .restart local v7       #i:I
    .restart local v8       #location:Ljava/lang/String;
    .restart local p0
    :cond_83
    :try_start_83
    invoke-static {v8, p0}, Lorg/apache/harmony/security/fortress/PolicyUtils;->expandURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v8

    .line 466
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 467
    .local v1, anURL:Ljava/net/URL;
    if-eqz v1, :cond_91

    .line 468
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_91} :catch_93

    .end local v1           #anURL:Ljava/net/URL;
    :cond_91
    :goto_91
    move v6, v7

    .line 475
    .end local v7           #i:I
    .restart local v6       #i:I
    goto :goto_56

    .line 471
    .end local v6           #i:I
    .restart local v7       #i:I
    :catch_93
    move-exception v11

    goto :goto_91

    .line 448
    .end local v7           #i:I
    :catch_95
    move-exception v11

    goto :goto_53
.end method

.method public static instantiatePermission(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Permission;
    .registers 13
    .parameter
    .parameter "targetName"
    .parameter "targetActions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/security/Permission;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, targetType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 526
    move-object v0, v5

    check-cast v0, [[Ljava/lang/Class;

    move-object v1, v0

    .line 527
    .local v1, argTypes:[[Ljava/lang/Class;
    move-object v0, v5

    check-cast v0, [[Ljava/lang/Object;

    move-object v2, v0

    .line 528
    .local v2, args:[[Ljava/lang/Object;
    if-eqz p2, :cond_46

    .line 529
    new-array v1, v9, [[Ljava/lang/Class;

    .end local v1           #argTypes:[[Ljava/lang/Class;
    sget-object v5, Lorg/apache/harmony/security/fortress/PolicyUtils;->TWO_ARGS:[Ljava/lang/Class;

    aput-object v5, v1, v6

    sget-object v5, Lorg/apache/harmony/security/fortress/PolicyUtils;->ONE_ARGS:[Ljava/lang/Class;

    aput-object v5, v1, v7

    sget-object v5, Lorg/apache/harmony/security/fortress/PolicyUtils;->NO_ARGS:[Ljava/lang/Class;

    aput-object v5, v1, v8

    .line 530
    .restart local v1       #argTypes:[[Ljava/lang/Class;
    new-array v2, v9, [[Ljava/lang/Object;

    .end local v2           #args:[[Ljava/lang/Object;
    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    aput-object v5, v2, v6

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object v5, v2, v7

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v5, v2, v8

    .line 543
    .restart local v2       #args:[[Ljava/lang/Object;
    :goto_31
    const/4 v4, 0x0

    .local v4, i:I
    :goto_32
    array-length v5, v1

    if-ge v4, v5, :cond_92

    .line 545
    :try_start_35
    aget-object v5, v1, v4

    invoke-virtual {p0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 546
    .local v3, ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    aget-object v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/security/Permission;

    move-object p0, v0
    :try_end_45
    .catch Ljava/lang/NoSuchMethodException; {:try_start_35 .. :try_end_45} :catch_8e

    .end local p0           #targetType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    return-object p0

    .line 532
    .end local v3           #ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v4           #i:I
    .restart local p0       #targetType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_46
    if-eqz p1, :cond_6b

    .line 533
    new-array v1, v9, [[Ljava/lang/Class;

    .end local v1           #argTypes:[[Ljava/lang/Class;
    sget-object v5, Lorg/apache/harmony/security/fortress/PolicyUtils;->ONE_ARGS:[Ljava/lang/Class;

    aput-object v5, v1, v6

    sget-object v5, Lorg/apache/harmony/security/fortress/PolicyUtils;->TWO_ARGS:[Ljava/lang/Class;

    aput-object v5, v1, v7

    sget-object v5, Lorg/apache/harmony/security/fortress/PolicyUtils;->NO_ARGS:[Ljava/lang/Class;

    aput-object v5, v1, v8

    .line 534
    .restart local v1       #argTypes:[[Ljava/lang/Class;
    new-array v2, v9, [[Ljava/lang/Object;

    .end local v2           #args:[[Ljava/lang/Object;
    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object v5, v2, v6

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    aput-object v5, v2, v7

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v5, v2, v8

    .restart local v2       #args:[[Ljava/lang/Object;
    goto :goto_31

    .line 537
    :cond_6b
    new-array v1, v9, [[Ljava/lang/Class;

    .end local v1           #argTypes:[[Ljava/lang/Class;
    sget-object v5, Lorg/apache/harmony/security/fortress/PolicyUtils;->NO_ARGS:[Ljava/lang/Class;

    aput-object v5, v1, v6

    sget-object v5, Lorg/apache/harmony/security/fortress/PolicyUtils;->ONE_ARGS:[Ljava/lang/Class;

    aput-object v5, v1, v7

    sget-object v5, Lorg/apache/harmony/security/fortress/PolicyUtils;->TWO_ARGS:[Ljava/lang/Class;

    aput-object v5, v1, v8

    .line 538
    .restart local v1       #argTypes:[[Ljava/lang/Class;
    new-array v2, v9, [[Ljava/lang/Object;

    .end local v2           #args:[[Ljava/lang/Object;
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v5, v2, v6

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object v5, v2, v7

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    aput-object v5, v2, v8

    .restart local v2       #args:[[Ljava/lang/Object;
    goto :goto_31

    .line 548
    .restart local v4       #i:I
    :catch_8e
    move-exception v5

    .line 543
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 550
    :cond_92
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "security.150"

    invoke-static {v6, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static matchSubset([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 9
    .parameter "what"
    .parameter "where"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 565
    if-nez p0, :cond_6

    move v3, v6

    .line 586
    :goto_5
    return v3

    .line 569
    :cond_6
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v3, p0

    if-ge v1, v3, :cond_2c

    .line 570
    aget-object v3, p0, v1

    if-eqz v3, :cond_29

    .line 571
    if-nez p1, :cond_12

    move v3, v5

    .line 572
    goto :goto_5

    .line 574
    :cond_12
    const/4 v0, 0x0

    .line 575
    .local v0, found:Z
    const/4 v2, 0x0

    .local v2, j:I
    :goto_14
    array-length v3, p1

    if-ge v2, v3, :cond_22

    .line 576
    aget-object v3, p0, v1

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 577
    const/4 v0, 0x1

    .line 581
    :cond_22
    if-nez v0, :cond_29

    move v3, v5

    .line 582
    goto :goto_5

    .line 575
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 569
    .end local v0           #found:Z
    .end local v2           #j:I
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2c
    move v3, v6

    .line 586
    goto :goto_5
.end method

.method public static toPermissionCollection(Ljava/util/Collection;)Ljava/security/PermissionCollection;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/Permission;",
            ">;)",
            "Ljava/security/PermissionCollection;"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, perms:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/security/Permission;>;"
    new-instance v2, Ljava/security/Permissions;

    invoke-direct {v2}, Ljava/security/Permissions;-><init>()V

    .line 493
    .local v2, pc:Ljava/security/Permissions;
    if-eqz p0, :cond_1b

    .line 494
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/Permission;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 495
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Permission;

    .line 496
    .local v0, element:Ljava/security/Permission;
    invoke-virtual {v2, v0}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    goto :goto_b

    .line 499
    .end local v0           #element:Ljava/security/Permission;
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/Permission;>;"
    :cond_1b
    return-object v2
.end method
